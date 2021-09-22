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
(declare-datatypes ((T@$Memory_188757 0)) ((($Memory_188757 (|domain#$Memory_188757| |T@[Int]Bool|) (|contents#$Memory_188757| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_152322 0)) (((Vec_152322 (|v#Vec_152322| |T@[Int]#0|) (|l#Vec_152322| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_274388 0)) ((($Memory_274388 (|domain#$Memory_274388| |T@[Int]Bool|) (|contents#$Memory_274388| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_268377 0)) ((($Memory_268377 (|domain#$Memory_268377| |T@[Int]Bool|) (|contents#$Memory_268377| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_266444 0)) ((($Memory_266444 (|domain#$Memory_266444| |T@[Int]Bool|) (|contents#$Memory_266444| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_266756 0)) ((($Memory_266756 (|domain#$Memory_266756| |T@[Int]Bool|) (|contents#$Memory_266756| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_266411 0)) ((($Memory_266411 (|domain#$Memory_266411| |T@[Int]Bool|) (|contents#$Memory_266411| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_266191 0)) ((($Memory_266191 (|domain#$Memory_266191| |T@[Int]Bool|) (|contents#$Memory_266191| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_264320 0)) ((($Memory_264320 (|domain#$Memory_264320| |T@[Int]Bool|) (|contents#$Memory_264320| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_261726 0)) ((($Memory_261726 (|domain#$Memory_261726| |T@[Int]Bool|) (|contents#$Memory_261726| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_261662 0)) ((($Memory_261662 (|domain#$Memory_261662| |T@[Int]Bool|) (|contents#$Memory_261662| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_260270 0)) ((($Memory_260270 (|domain#$Memory_260270| |T@[Int]Bool|) (|contents#$Memory_260270| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-sort |T@[Int]$1_XDX_XDX| 0)
(declare-datatypes ((T@Vec_176538 0)) (((Vec_176538 (|v#Vec_176538| |T@[Int]$1_XDX_XDX|) (|l#Vec_176538| Int) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-sort |T@[Int]$1_XUS_XUS| 0)
(declare-datatypes ((T@Vec_179218 0)) (((Vec_179218 (|v#Vec_179218| |T@[Int]$1_XUS_XUS|) (|l#Vec_179218| Int) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_259507 0)) ((($Memory_259507 (|domain#$Memory_259507| |T@[Int]Bool|) (|contents#$Memory_259507| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_259288 0)) ((($Memory_259288 (|domain#$Memory_259288| |T@[Int]Bool|) (|contents#$Memory_259288| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_267940 0)) ((($Memory_267940 (|domain#$Memory_267940| |T@[Int]Bool|) (|contents#$Memory_267940| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_251732 0)) ((($Memory_251732 (|domain#$Memory_251732| |T@[Int]Bool|) (|contents#$Memory_251732| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_251668 0)) ((($Memory_251668 (|domain#$Memory_251668| |T@[Int]Bool|) (|contents#$Memory_251668| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_251604 0)) ((($Memory_251604 (|domain#$Memory_251604| |T@[Int]Bool|) (|contents#$Memory_251604| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_252012 0)) ((($Memory_252012 (|domain#$Memory_252012| |T@[Int]Bool|) (|contents#$Memory_252012| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'#0'| 0)) (((|$1_DiemAccount_Balance'#0'| (|$coin#$1_DiemAccount_Balance'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'#0'| 0)
(declare-datatypes ((T@$Memory_268199 0)) ((($Memory_268199 (|domain#$Memory_268199| |T@[Int]Bool|) (|contents#$Memory_268199| |T@[Int]$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_257839 0)) ((($Memory_257839 (|domain#$Memory_257839| |T@[Int]Bool|) (|contents#$Memory_257839| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_220397 0)) ((($Memory_220397 (|domain#$Memory_220397| |T@[Int]Bool|) (|contents#$Memory_220397| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_257758 0)) ((($Memory_257758 (|domain#$Memory_257758| |T@[Int]Bool|) (|contents#$Memory_257758| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_259941 0)) ((($Memory_259941 (|domain#$Memory_259941| |T@[Int]Bool|) (|contents#$Memory_259941| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_220337 0)) ((($Memory_220337 (|domain#$Memory_220337| |T@[Int]Bool|) (|contents#$Memory_220337| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_257677 0)) ((($Memory_257677 (|domain#$Memory_257677| |T@[Int]Bool|) (|contents#$Memory_257677| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_264141 0)) ((($Memory_264141 (|domain#$Memory_264141| |T@[Int]Bool|) (|contents#$Memory_264141| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'#0'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'#0'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'| 0)
(declare-datatypes ((T@$Memory_206279 0)) ((($Memory_206279 (|domain#$Memory_206279| |T@[Int]Bool|) (|contents#$Memory_206279| |T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_206192 0)) ((($Memory_206192 (|domain#$Memory_206192| |T@[Int]Bool|) (|contents#$Memory_206192| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_206105 0)) ((($Memory_206105 (|domain#$Memory_206105| |T@[Int]Bool|) (|contents#$Memory_206105| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_206018 0)) ((($Memory_206018 (|domain#$Memory_206018| |T@[Int]Bool|) (|contents#$Memory_206018| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_205931 0)) ((($Memory_205931 (|domain#$Memory_205931| |T@[Int]Bool|) (|contents#$Memory_205931| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_250754 0)) ((($Memory_250754 (|domain#$Memory_250754| |T@[Int]Bool|) (|contents#$Memory_250754| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_204418 0)) ((($Memory_204418 (|domain#$Memory_204418| |T@[Int]Bool|) (|contents#$Memory_204418| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_204530 0)) ((($Memory_204530 (|domain#$Memory_204530| |T@[Int]Bool|) (|contents#$Memory_204530| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'#0'| 0)) (((|$1_DiemConfig_DiemConfig'#0'| (|$payload#$1_DiemConfig_DiemConfig'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'#0'| 0)
(declare-datatypes ((T@$Memory_204337 0)) ((($Memory_204337 (|domain#$Memory_204337| |T@[Int]Bool|) (|contents#$Memory_204337| |T@[Int]$1_DiemConfig_DiemConfig'#0'|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_204256 0)) ((($Memory_204256 (|domain#$Memory_204256| |T@[Int]Bool|) (|contents#$Memory_204256| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_203980 0)) ((($Memory_203980 (|domain#$Memory_203980| |T@[Int]Bool|) (|contents#$Memory_203980| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_150491 0)) (((Vec_150491 (|v#Vec_150491| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_150491| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_150491) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_150452 0)) (((Vec_150452 (|v#Vec_150452| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_150452| Int) ) ) ))
(declare-datatypes ((T@$1_RecoveryAddress_RecoveryAddress 0)) ((($1_RecoveryAddress_RecoveryAddress (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| T@Vec_150452) ) ) ))
(declare-sort |T@[Int]$1_RecoveryAddress_RecoveryAddress| 0)
(declare-datatypes ((T@$Memory_274285 0)) ((($Memory_274285 (|domain#$Memory_274285| |T@[Int]Bool|) (|contents#$Memory_274285| |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_150452) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_27708 0)) (((Vec_27708 (|v#Vec_27708| |T@[Int]Int|) (|l#Vec_27708| Int) ) ) ))
(declare-sort |T@[Int]Vec_27708| 0)
(declare-datatypes ((T@Vec_150684 0)) (((Vec_150684 (|v#Vec_150684| |T@[Int]Vec_27708|) (|l#Vec_150684| Int) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_150684) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_204693 0)) ((($Memory_204693 (|domain#$Memory_204693| |T@[Int]Bool|) (|contents#$Memory_204693| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_150684) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_204629 0)) ((($Memory_204629 (|domain#$Memory_204629| |T@[Int]Bool|) (|contents#$Memory_204629| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_27708) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_27708) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_204175 0)) ((($Memory_204175 (|domain#$Memory_204175| |T@[Int]Bool|) (|contents#$Memory_204175| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemConsensusConfig_DiemConsensusConfig 0)) ((($1_DiemConsensusConfig_DiemConsensusConfig (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| T@Vec_27708) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_204094 0)) ((($Memory_204094 (|domain#$Memory_204094| |T@[Int]Bool|) (|contents#$Memory_204094| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_27708) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_266923 0)) ((($Memory_266923 (|domain#$Memory_266923| |T@[Int]Bool|) (|contents#$Memory_266923| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_27708) (|$base_url#$1_DualAttestation_Credential| T@Vec_27708) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_27708) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_220222 0)) ((($Memory_220222 (|domain#$Memory_220222| |T@[Int]Bool|) (|contents#$Memory_220222| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_27708) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_151094 0)) (((Vec_151094 (|v#Vec_151094| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_151094| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_151094) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_260206 0)) ((($Memory_260206 (|domain#$Memory_260206| |T@[Int]Bool|) (|contents#$Memory_260206| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| T@Vec_27708) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'#0'| 0)
(declare-datatypes ((T@Vec_150966 0)) (((Vec_150966 (|v#Vec_150966| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#Vec_150966| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| T@Vec_150966) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_258323 0)) ((($Memory_258323 (|domain#$Memory_258323| |T@[Int]Bool|) (|contents#$Memory_258323| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| T@Vec_27708) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)
(declare-datatypes ((T@Vec_150927 0)) (((Vec_150927 (|v#Vec_150927| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#Vec_150927| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| T@Vec_150927) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_258206 0)) ((($Memory_258206 (|domain#$Memory_258206| |T@[Int]Bool|) (|contents#$Memory_258206| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| T@Vec_27708) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)
(declare-datatypes ((T@Vec_150888 0)) (((Vec_150888 (|v#Vec_150888| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#Vec_150888| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| T@Vec_150888) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_258089 0)) ((($Memory_258089 (|domain#$Memory_258089| |T@[Int]Bool|) (|contents#$Memory_258089| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| T@Vec_27708) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_251323 0)) ((($Memory_251323 (|domain#$Memory_251323| |T@[Int]Bool|) (|contents#$Memory_251323| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_27708) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_251204 0)) ((($Memory_251204 (|domain#$Memory_251204| |T@[Int]Bool|) (|contents#$Memory_251204| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_27708) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_251085 0)) ((($Memory_251085 (|domain#$Memory_251085| |T@[Int]Bool|) (|contents#$Memory_251085| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_27708) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_27708) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_27708) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_150413 0)) (((Vec_150413 (|v#Vec_150413| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_150413| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_150413) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_150627 0)) (((Vec_150627 (|v#Vec_150627| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_150627| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_150627) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_204013 0)) ((($Memory_204013 (|domain#$Memory_204013| |T@[Int]Bool|) (|contents#$Memory_204013| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_27708) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_27708) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_202497 0)) ((($Memory_202497 (|domain#$Memory_202497| |T@[Int]Bool|) (|contents#$Memory_202497| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_27708) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_200933 0)) ((($Memory_200933 (|domain#$Memory_200933| |T@[Int]Bool|) (|contents#$Memory_200933| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_196301 0)) ((($Memory_196301 (|domain#$Memory_196301| |T@[Int]Bool|) (|contents#$Memory_196301| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_196120 0)) ((($Memory_196120 (|domain#$Memory_196120| |T@[Int]Bool|) (|contents#$Memory_196120| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_27708) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_27708) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_27708) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_27708) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_27708) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_27708) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_27708) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_27708) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_27708) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_27708) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_27708) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_27708) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_27708) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_150327 0)) (((Multiset_150327 (|v#Multiset_150327| |T@[$EventRep]Int|) (|l#Multiset_150327| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_150327| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_150327|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_262045 0)) ((($Mutation_262045 (|l#$Mutation_262045| T@$Location) (|p#$Mutation_262045| T@Vec_27708) (|v#$Mutation_262045| T@$1_VASP_ParentVASP) ) ) ))
(declare-datatypes ((T@$Mutation_217040 0)) ((($Mutation_217040 (|l#$Mutation_217040| T@$Location) (|p#$Mutation_217040| T@Vec_27708) (|v#$Mutation_217040| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-datatypes ((T@$Mutation_216994 0)) ((($Mutation_216994 (|l#$Mutation_216994| T@$Location) (|p#$Mutation_216994| T@Vec_27708) (|v#$Mutation_216994| |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$Mutation_214390 0)) ((($Mutation_214390 (|l#$Mutation_214390| T@$Location) (|p#$Mutation_214390| T@Vec_27708) (|v#$Mutation_214390| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-datatypes ((T@$Mutation_214344 0)) ((($Mutation_214344 (|l#$Mutation_214344| T@$Location) (|p#$Mutation_214344| T@Vec_27708) (|v#$Mutation_214344| |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$Mutation_211740 0)) ((($Mutation_211740 (|l#$Mutation_211740| T@$Location) (|p#$Mutation_211740| T@Vec_27708) (|v#$Mutation_211740| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-datatypes ((T@$Mutation_211694 0)) ((($Mutation_211694 (|l#$Mutation_211694| T@$Location) (|p#$Mutation_211694| T@Vec_27708) (|v#$Mutation_211694| |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$Mutation_209090 0)) ((($Mutation_209090 (|l#$Mutation_209090| T@$Location) (|p#$Mutation_209090| T@Vec_27708) (|v#$Mutation_209090| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-datatypes ((T@$Mutation_209044 0)) ((($Mutation_209044 (|l#$Mutation_209044| T@$Location) (|p#$Mutation_209044| T@Vec_27708) (|v#$Mutation_209044| |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$Mutation_206358 0)) ((($Mutation_206358 (|l#$Mutation_206358| T@$Location) (|p#$Mutation_206358| T@Vec_27708) (|v#$Mutation_206358| |T@$1_DiemConfig_DiemConfig'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_189388 0)) ((($Mutation_189388 (|l#$Mutation_189388| T@$Location) (|p#$Mutation_189388| T@Vec_27708) (|v#$Mutation_189388| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_17352 0)) ((($Mutation_17352 (|l#$Mutation_17352| T@$Location) (|p#$Mutation_17352| T@Vec_27708) (|v#$Mutation_17352| Int) ) ) ))
(declare-datatypes ((T@$Mutation_183645 0)) ((($Mutation_183645 (|l#$Mutation_183645| T@$Location) (|p#$Mutation_183645| T@Vec_27708) (|v#$Mutation_183645| T@Vec_27708) ) ) ))
(declare-datatypes ((T@$Mutation_182557 0)) ((($Mutation_182557 (|l#$Mutation_182557| T@$Location) (|p#$Mutation_182557| T@Vec_27708) (|v#$Mutation_182557| T@Vec_150684) ) ) ))
(declare-datatypes ((T@$Mutation_180848 0)) ((($Mutation_180848 (|l#$Mutation_180848| T@$Location) (|p#$Mutation_180848| T@Vec_27708) (|v#$Mutation_180848| T@$1_XUS_XUS) ) ) ))
(declare-datatypes ((T@$Mutation_179861 0)) ((($Mutation_179861 (|l#$Mutation_179861| T@$Location) (|p#$Mutation_179861| T@Vec_27708) (|v#$Mutation_179861| T@Vec_179218) ) ) ))
(declare-datatypes ((T@$Mutation_178168 0)) ((($Mutation_178168 (|l#$Mutation_178168| T@$Location) (|p#$Mutation_178168| T@Vec_27708) (|v#$Mutation_178168| T@$1_XDX_XDX) ) ) ))
(declare-datatypes ((T@$Mutation_177181 0)) ((($Mutation_177181 (|l#$Mutation_177181| T@$Location) (|p#$Mutation_177181| T@Vec_27708) (|v#$Mutation_177181| T@Vec_176538) ) ) ))
(declare-datatypes ((T@$Mutation_175488 0)) ((($Mutation_175488 (|l#$Mutation_175488| T@$Location) (|p#$Mutation_175488| T@Vec_27708) (|v#$Mutation_175488| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_174501 0)) ((($Mutation_174501 (|l#$Mutation_174501| T@$Location) (|p#$Mutation_174501| T@Vec_27708) (|v#$Mutation_174501| T@Vec_150413) ) ) ))
(declare-datatypes ((T@$Mutation_172846 0)) ((($Mutation_172846 (|l#$Mutation_172846| T@$Location) (|p#$Mutation_172846| T@Vec_27708) (|v#$Mutation_172846| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_171859 0)) ((($Mutation_171859 (|l#$Mutation_171859| T@$Location) (|p#$Mutation_171859| T@Vec_27708) (|v#$Mutation_171859| T@Vec_151094) ) ) ))
(declare-datatypes ((T@$Mutation_170181 0)) ((($Mutation_170181 (|l#$Mutation_170181| T@$Location) (|p#$Mutation_170181| T@Vec_27708) (|v#$Mutation_170181| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_169194 0)) ((($Mutation_169194 (|l#$Mutation_169194| T@$Location) (|p#$Mutation_169194| T@Vec_27708) (|v#$Mutation_169194| T@Vec_150888) ) ) ))
(declare-datatypes ((T@$Mutation_167485 0)) ((($Mutation_167485 (|l#$Mutation_167485| T@$Location) (|p#$Mutation_167485| T@Vec_27708) (|v#$Mutation_167485| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_166498 0)) ((($Mutation_166498 (|l#$Mutation_166498| T@$Location) (|p#$Mutation_166498| T@Vec_27708) (|v#$Mutation_166498| T@Vec_150927) ) ) ))
(declare-datatypes ((T@$Mutation_164789 0)) ((($Mutation_164789 (|l#$Mutation_164789| T@$Location) (|p#$Mutation_164789| T@Vec_27708) (|v#$Mutation_164789| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_163802 0)) ((($Mutation_163802 (|l#$Mutation_163802| T@$Location) (|p#$Mutation_163802| T@Vec_27708) (|v#$Mutation_163802| T@Vec_150966) ) ) ))
(declare-datatypes ((T@$Mutation_162093 0)) ((($Mutation_162093 (|l#$Mutation_162093| T@$Location) (|p#$Mutation_162093| T@Vec_27708) (|v#$Mutation_162093| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_161106 0)) ((($Mutation_161106 (|l#$Mutation_161106| T@$Location) (|p#$Mutation_161106| T@Vec_27708) (|v#$Mutation_161106| T@Vec_150627) ) ) ))
(declare-datatypes ((T@$Mutation_159306 0)) ((($Mutation_159306 (|l#$Mutation_159306| T@$Location) (|p#$Mutation_159306| T@Vec_27708) (|v#$Mutation_159306| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_158319 0)) ((($Mutation_158319 (|l#$Mutation_158319| T@$Location) (|p#$Mutation_158319| T@Vec_27708) (|v#$Mutation_158319| T@Vec_150491) ) ) ))
(declare-datatypes ((T@$Mutation_156654 0)) ((($Mutation_156654 (|l#$Mutation_156654| T@$Location) (|p#$Mutation_156654| T@Vec_27708) (|v#$Mutation_156654| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_155667 0)) ((($Mutation_155667 (|l#$Mutation_155667| T@$Location) (|p#$Mutation_155667| T@Vec_27708) (|v#$Mutation_155667| T@Vec_150452) ) ) ))
(declare-datatypes ((T@$Mutation_153954 0)) ((($Mutation_153954 (|l#$Mutation_153954| T@$Location) (|p#$Mutation_153954| T@Vec_27708) (|v#$Mutation_153954| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_152967 0)) ((($Mutation_152967 (|l#$Mutation_152967| T@$Location) (|p#$Mutation_152967| T@Vec_27708) (|v#$Mutation_152967| T@Vec_152322) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_152322 T@Vec_152322) Bool)
(declare-fun InRangeVec_134569 (T@Vec_152322 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_152322) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_152322 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_150452 T@Vec_150452) Bool)
(declare-fun InRangeVec_134770 (T@Vec_150452 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_150452) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_150452 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_150491 T@Vec_150491) Bool)
(declare-fun InRangeVec_134971 (T@Vec_150491 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_150491) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_150491 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_150627 T@Vec_150627) Bool)
(declare-fun InRangeVec_135172 (T@Vec_150627 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_27708 T@Vec_27708) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_150627) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_150627 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_150966 T@Vec_150966) Bool)
(declare-fun InRangeVec_135373 (T@Vec_150966 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int) |T@$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_150966) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|T@$1_Diem_PreburnWithMetadata'#0'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| (T@Vec_150966 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_150927 T@Vec_150927) Bool)
(declare-fun InRangeVec_135574 (T@Vec_150927 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_150927) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (T@Vec_150927 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_150888 T@Vec_150888) Bool)
(declare-fun InRangeVec_135775 (T@Vec_150888 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_150888) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (T@Vec_150888 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_151094 T@Vec_151094) Bool)
(declare-fun InRangeVec_135976 (T@Vec_151094 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_151094) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_151094 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_150413 T@Vec_150413) Bool)
(declare-fun InRangeVec_136177 (T@Vec_150413 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_150413) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_150413 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'$1_XDX_XDX''| (T@Vec_176538 T@Vec_176538) Bool)
(declare-fun InRangeVec_136378 (T@Vec_176538 Int) Bool)
(declare-fun |Select__T@[Int]$1_XDX_XDX_| (|T@[Int]$1_XDX_XDX| Int) T@$1_XDX_XDX)
(declare-fun |$IsValid'vec'$1_XDX_XDX''| (T@Vec_176538) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IndexOfVec'$1_XDX_XDX'| (T@Vec_176538 T@$1_XDX_XDX) Int)
(declare-fun |$IsEqual'vec'$1_XUS_XUS''| (T@Vec_179218 T@Vec_179218) Bool)
(declare-fun InRangeVec_136579 (T@Vec_179218 Int) Bool)
(declare-fun |Select__T@[Int]$1_XUS_XUS_| (|T@[Int]$1_XUS_XUS| Int) T@$1_XUS_XUS)
(declare-fun |$IsValid'vec'$1_XUS_XUS''| (T@Vec_179218) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IndexOfVec'$1_XUS_XUS'| (T@Vec_179218 T@$1_XUS_XUS) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_150684 T@Vec_150684) Bool)
(declare-fun InRangeVec_181980 (T@Vec_150684 Int) Bool)
(declare-fun |Select__T@[Int]Vec_27708_| (|T@[Int]Vec_27708| Int) T@Vec_27708)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_150684) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_27708) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_150684 T@Vec_27708) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_27708 T@Vec_27708) Bool)
(declare-fun InRangeVec_16728 (T@Vec_27708 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_27708) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_27708 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_27708 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_27708) T@Vec_27708)
(declare-fun $1_Hash_sha3 (T@Vec_27708) T@Vec_27708)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_27708) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_27708 T@Vec_27708 T@Vec_27708) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_150327_| (|T@[$1_Event_EventHandle]Multiset_150327| T@$1_Event_EventHandle) T@Multiset_150327)
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
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'#0''| (|T@$1_DiemConfig_DiemConfig'#0'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_Configuration'| (T@$1_DiemConfig_Configuration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DisableReconfiguration'| (T@$1_DiemConfig_DisableReconfiguration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'#0''| (|T@$1_DiemConfig_ModifyConfigCapability'#0'|) Bool)
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
(declare-fun IndexOfVec_27708 (T@Vec_27708 Int) Int)
(declare-fun IndexOfVec_150413 (T@Vec_150413 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_150452 (T@Vec_150452 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_150491 (T@Vec_150491 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_150627 (T@Vec_150627 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_150684 (T@Vec_150684 T@Vec_27708) Int)
(declare-fun IndexOfVec_150888 (T@Vec_150888 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun IndexOfVec_150927 (T@Vec_150927 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun IndexOfVec_150966 (T@Vec_150966 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun IndexOfVec_151094 (T@Vec_151094 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun IndexOfVec_152322 (T@Vec_152322 |T@#0|) Int)
(declare-fun IndexOfVec_176538 (T@Vec_176538 T@$1_XDX_XDX) Int)
(declare-fun IndexOfVec_179218 (T@Vec_179218 T@$1_XUS_XUS) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_150327| |T@[$1_Event_EventHandle]Multiset_150327|) |T@[$1_Event_EventHandle]Multiset_150327|)
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
(declare-fun |lambda#36| (Int Int Int |T@[Int]Vec_27708| |T@[Int]Vec_27708| Int T@Vec_27708) |T@[Int]Vec_27708|)
(declare-fun |lambda#37| (Int Int |T@[Int]Vec_27708| Int Int T@Vec_27708) |T@[Int]Vec_27708|)
(declare-fun |lambda#38| (Int Int Int |T@[Int]Vec_27708| |T@[Int]Vec_27708| Int T@Vec_27708) |T@[Int]Vec_27708|)
(declare-fun |lambda#39| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#40| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#41| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DiemConsensusConfigbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DiemConsensusConfigbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DiemConsensusConfigbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DiemConsensusConfigbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DiemConsensusConfigbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DiemConsensusConfigbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DiemConsensusConfigbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DiemConsensusConfigbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_152322) (v2 T@Vec_152322) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_152322| v1) (|l#Vec_152322| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_134569 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_152322| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_152322| v2) i@@0)))
 :qid |DiemConsensusConfigbpl.615:13|
 :skolemid |17|
))))
 :qid |DiemConsensusConfigbpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_152322) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_152322| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_134569 v@@4 i@@1) true)
 :qid |DiemConsensusConfigbpl.621:13|
 :skolemid |19|
))))
 :qid |DiemConsensusConfigbpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_152322) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_134569 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_152322| v@@5) i@@3) e))
 :qid |DiemConsensusConfigbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_134569 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_152322| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_152322| v@@5) j) e)))
 :qid |DiemConsensusConfigbpl.634:17|
 :skolemid |22|
)))))
 :qid |DiemConsensusConfigbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_150452) (v2@@0 T@Vec_150452) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_150452| v1@@0) (|l#Vec_150452| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_134770 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_150452| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_150452| v2@@0) i@@4)))
 :qid |DiemConsensusConfigbpl.796:13|
 :skolemid |24|
))))
 :qid |DiemConsensusConfigbpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_150452) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_150452| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_134770 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_150452| v@@6) i@@5)))
 :qid |DiemConsensusConfigbpl.802:13|
 :skolemid |26|
))))
 :qid |DiemConsensusConfigbpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_150452) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_134770 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_150452| v@@7) i@@7) e@@0))
 :qid |DiemConsensusConfigbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_134770 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_150452| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_150452| v@@7) j@@0) e@@0)))
 :qid |DiemConsensusConfigbpl.815:17|
 :skolemid |29|
)))))
 :qid |DiemConsensusConfigbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_150491) (v2@@1 T@Vec_150491) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_150491| v1@@1) (|l#Vec_150491| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_134971 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_150491| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_150491| v2@@1) i@@8)))
 :qid |DiemConsensusConfigbpl.977:13|
 :skolemid |31|
))))
 :qid |DiemConsensusConfigbpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_150491) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_150491| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_134971 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_150491| v@@8) i@@9)))
 :qid |DiemConsensusConfigbpl.983:13|
 :skolemid |33|
))))
 :qid |DiemConsensusConfigbpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_150491) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_134971 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_150491| v@@9) i@@11) e@@1))
 :qid |DiemConsensusConfigbpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_134971 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_150491| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_150491| v@@9) j@@1) e@@1)))
 :qid |DiemConsensusConfigbpl.996:17|
 :skolemid |36|
)))))
 :qid |DiemConsensusConfigbpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_150627) (v2@@2 T@Vec_150627) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_150627| v1@@2) (|l#Vec_150627| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_135172 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v2@@2) i@@12)))))
 :qid |DiemConsensusConfigbpl.1158:13|
 :skolemid |38|
))))
 :qid |DiemConsensusConfigbpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_150627) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_150627| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_135172 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@10) i@@13)))
 :qid |DiemConsensusConfigbpl.1164:13|
 :skolemid |40|
))))
 :qid |DiemConsensusConfigbpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_150627) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_135172 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |DiemConsensusConfigbpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_135172 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |DiemConsensusConfigbpl.1177:17|
 :skolemid |43|
)))))
 :qid |DiemConsensusConfigbpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_150966) (v2@@3 T@Vec_150966) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3)  (and (= (|l#Vec_150966| v1@@3) (|l#Vec_150966| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_135373 v1@@3 i@@16) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_150966| v1@@3) i@@16)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_150966| v2@@3) i@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_150966| v1@@3) i@@16)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_150966| v2@@3) i@@16)))))
 :qid |DiemConsensusConfigbpl.1339:13|
 :skolemid |45|
))))
 :qid |DiemConsensusConfigbpl.1337:57|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_150966) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_150966| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_135373 v@@12 i@@17) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_150966| v@@12) i@@17)))
 :qid |DiemConsensusConfigbpl.1345:13|
 :skolemid |47|
))))
 :qid |DiemConsensusConfigbpl.1343:57|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_150966) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@18 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_135373 v@@13 i@@19)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_150966| v@@13) i@@19)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_150966| v@@13) i@@19)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3))))
 :qid |DiemConsensusConfigbpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_135373 v@@13 i@@18)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_150966| v@@13) i@@18)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_150966| v@@13) i@@18)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_150966| v@@13) j@@3)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_150966| v@@13) j@@3)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))))
 :qid |DiemConsensusConfigbpl.1358:17|
 :skolemid |50|
)))))
 :qid |DiemConsensusConfigbpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_150927) (v2@@4 T@Vec_150927) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4)  (and (= (|l#Vec_150927| v1@@4) (|l#Vec_150927| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_135574 v1@@4 i@@20) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_150927| v1@@4) i@@20)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_150927| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_150927| v1@@4) i@@20)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_150927| v2@@4) i@@20)))))
 :qid |DiemConsensusConfigbpl.1520:13|
 :skolemid |52|
))))
 :qid |DiemConsensusConfigbpl.1518:65|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_150927) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_150927| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_135574 v@@14 i@@21) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_150927| v@@14) i@@21)))
 :qid |DiemConsensusConfigbpl.1526:13|
 :skolemid |54|
))))
 :qid |DiemConsensusConfigbpl.1524:65|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_150927) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@22 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_135574 v@@15 i@@23)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_150927| v@@15) i@@23)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_150927| v@@15) i@@23)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4))))
 :qid |DiemConsensusConfigbpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_135574 v@@15 i@@22)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_150927| v@@15) i@@22)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_150927| v@@15) i@@22)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_150927| v@@15) j@@4)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_150927| v@@15) j@@4)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))))
 :qid |DiemConsensusConfigbpl.1539:17|
 :skolemid |57|
)))))
 :qid |DiemConsensusConfigbpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_150888) (v2@@5 T@Vec_150888) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5)  (and (= (|l#Vec_150888| v1@@5) (|l#Vec_150888| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_135775 v1@@5 i@@24) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_150888| v1@@5) i@@24)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_150888| v2@@5) i@@24))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_150888| v1@@5) i@@24)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_150888| v2@@5) i@@24)))))
 :qid |DiemConsensusConfigbpl.1701:13|
 :skolemid |59|
))))
 :qid |DiemConsensusConfigbpl.1699:65|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_150888) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_150888| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_135775 v@@16 i@@25) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_150888| v@@16) i@@25)))
 :qid |DiemConsensusConfigbpl.1707:13|
 :skolemid |61|
))))
 :qid |DiemConsensusConfigbpl.1705:65|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_150888) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@26 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_135775 v@@17 i@@27)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_150888| v@@17) i@@27)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_150888| v@@17) i@@27)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5))))
 :qid |DiemConsensusConfigbpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_135775 v@@17 i@@26)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_150888| v@@17) i@@26)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_150888| v@@17) i@@26)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_150888| v@@17) j@@5)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_150888| v@@17) j@@5)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))))
 :qid |DiemConsensusConfigbpl.1720:17|
 :skolemid |64|
)))))
 :qid |DiemConsensusConfigbpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_151094) (v2@@6 T@Vec_151094) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6)  (and (= (|l#Vec_151094| v1@@6) (|l#Vec_151094| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_135976 v1@@6 i@@28) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_151094| v1@@6) i@@28)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_151094| v2@@6) i@@28))))
 :qid |DiemConsensusConfigbpl.1882:13|
 :skolemid |66|
))))
 :qid |DiemConsensusConfigbpl.1880:50|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_151094) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_151094| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_135976 v@@18 i@@29) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_151094| v@@18) i@@29)))
 :qid |DiemConsensusConfigbpl.1888:13|
 :skolemid |68|
))))
 :qid |DiemConsensusConfigbpl.1886:50|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_151094) (e@@6 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@30 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_135976 v@@19 i@@31)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_151094| v@@19) i@@31)) (|$domain#$1_VASPDomain_VASPDomain| e@@6)))
 :qid |DiemConsensusConfigbpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_135976 v@@19 i@@30)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_151094| v@@19) i@@30)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_151094| v@@19) j@@6)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))))
 :qid |DiemConsensusConfigbpl.1901:17|
 :skolemid |71|
)))))
 :qid |DiemConsensusConfigbpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_150413) (v2@@7 T@Vec_150413) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7)  (and (= (|l#Vec_150413| v1@@7) (|l#Vec_150413| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_136177 v1@@7 i@@32) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_150413| v1@@7) i@@32)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_150413| v2@@7) i@@32))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_150413| v1@@7) i@@32)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_150413| v2@@7) i@@32)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_150413| v1@@7) i@@32)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_150413| v2@@7) i@@32)))))
 :qid |DiemConsensusConfigbpl.2063:13|
 :skolemid |73|
))))
 :qid |DiemConsensusConfigbpl.2061:51|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_150413) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_150413| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_136177 v@@20 i@@33) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_150413| v@@20) i@@33)))
 :qid |DiemConsensusConfigbpl.2069:13|
 :skolemid |75|
))))
 :qid |DiemConsensusConfigbpl.2067:51|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_150413) (e@@7 T@$1_ValidatorConfig_Config) ) (! (let ((i@@34 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_136177 v@@21 i@@35)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_150413| v@@21) i@@35)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_150413| v@@21) i@@35)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_150413| v@@21) i@@35)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7))))
 :qid |DiemConsensusConfigbpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_136177 v@@21 i@@34)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_150413| v@@21) i@@34)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_150413| v@@21) i@@34)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_150413| v@@21) i@@34)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_150413| v@@21) j@@7)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_150413| v@@21) j@@7)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_150413| v@@21) j@@7)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))))
 :qid |DiemConsensusConfigbpl.2082:17|
 :skolemid |78|
)))))
 :qid |DiemConsensusConfigbpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_176538) (v2@@8 T@Vec_176538) ) (! (= (|$IsEqual'vec'$1_XDX_XDX''| v1@@8 v2@@8)  (and (= (|l#Vec_176538| v1@@8) (|l#Vec_176538| v2@@8)) (forall ((i@@36 Int) ) (!  (=> (InRangeVec_136378 v1@@8 i@@36) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_176538| v1@@8) i@@36) (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_176538| v2@@8) i@@36)))
 :qid |DiemConsensusConfigbpl.2244:13|
 :skolemid |80|
))))
 :qid |DiemConsensusConfigbpl.2242:36|
 :skolemid |81|
 :pattern ( (|$IsEqual'vec'$1_XDX_XDX''| v1@@8 v2@@8))
)))
(assert (forall ((v@@22 T@Vec_176538) ) (! (= (|$IsValid'vec'$1_XDX_XDX''| v@@22)  (and (|$IsValid'u64'| (|l#Vec_176538| v@@22)) (forall ((i@@37 Int) ) (!  (=> (InRangeVec_136378 v@@22 i@@37) (|$IsValid'$1_XDX_XDX'| (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_176538| v@@22) i@@37)))
 :qid |DiemConsensusConfigbpl.2250:13|
 :skolemid |82|
))))
 :qid |DiemConsensusConfigbpl.2248:36|
 :skolemid |83|
 :pattern ( (|$IsValid'vec'$1_XDX_XDX''| v@@22))
)))
(assert (forall ((v@@23 T@Vec_176538) (e@@8 T@$1_XDX_XDX) ) (! (let ((i@@38 (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8)))
(ite  (not (exists ((i@@39 Int) ) (!  (and (and (|$IsValid'u64'| i@@39) (InRangeVec_136378 v@@23 i@@39)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_176538| v@@23) i@@39) e@@8))
 :qid |DiemConsensusConfigbpl.2255:13|
 :skolemid |84|
))) (= i@@38 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@38) (InRangeVec_136378 v@@23 i@@38)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_176538| v@@23) i@@38) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@38)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_176538| v@@23) j@@8) e@@8)))
 :qid |DiemConsensusConfigbpl.2263:17|
 :skolemid |85|
)))))
 :qid |DiemConsensusConfigbpl.2259:15|
 :skolemid |86|
 :pattern ( (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8))
)))
(assert (forall ((v1@@9 T@Vec_179218) (v2@@9 T@Vec_179218) ) (! (= (|$IsEqual'vec'$1_XUS_XUS''| v1@@9 v2@@9)  (and (= (|l#Vec_179218| v1@@9) (|l#Vec_179218| v2@@9)) (forall ((i@@40 Int) ) (!  (=> (InRangeVec_136579 v1@@9 i@@40) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_179218| v1@@9) i@@40) (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_179218| v2@@9) i@@40)))
 :qid |DiemConsensusConfigbpl.2425:13|
 :skolemid |87|
))))
 :qid |DiemConsensusConfigbpl.2423:36|
 :skolemid |88|
 :pattern ( (|$IsEqual'vec'$1_XUS_XUS''| v1@@9 v2@@9))
)))
(assert (forall ((v@@24 T@Vec_179218) ) (! (= (|$IsValid'vec'$1_XUS_XUS''| v@@24)  (and (|$IsValid'u64'| (|l#Vec_179218| v@@24)) (forall ((i@@41 Int) ) (!  (=> (InRangeVec_136579 v@@24 i@@41) (|$IsValid'$1_XUS_XUS'| (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_179218| v@@24) i@@41)))
 :qid |DiemConsensusConfigbpl.2431:13|
 :skolemid |89|
))))
 :qid |DiemConsensusConfigbpl.2429:36|
 :skolemid |90|
 :pattern ( (|$IsValid'vec'$1_XUS_XUS''| v@@24))
)))
(assert (forall ((v@@25 T@Vec_179218) (e@@9 T@$1_XUS_XUS) ) (! (let ((i@@42 (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9)))
(ite  (not (exists ((i@@43 Int) ) (!  (and (and (|$IsValid'u64'| i@@43) (InRangeVec_136579 v@@25 i@@43)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_179218| v@@25) i@@43) e@@9))
 :qid |DiemConsensusConfigbpl.2436:13|
 :skolemid |91|
))) (= i@@42 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@42) (InRangeVec_136579 v@@25 i@@42)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_179218| v@@25) i@@42) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@42)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_179218| v@@25) j@@9) e@@9)))
 :qid |DiemConsensusConfigbpl.2444:17|
 :skolemid |92|
)))))
 :qid |DiemConsensusConfigbpl.2440:15|
 :skolemid |93|
 :pattern ( (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9))
)))
(assert (forall ((v1@@10 T@Vec_150684) (v2@@10 T@Vec_150684) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@10 v2@@10)  (and (= (|l#Vec_150684| v1@@10) (|l#Vec_150684| v2@@10)) (forall ((i@@44 Int) ) (!  (=> (InRangeVec_181980 v1@@10 i@@44) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_27708_| (|v#Vec_150684| v1@@10) i@@44) (|Select__T@[Int]Vec_27708_| (|v#Vec_150684| v2@@10) i@@44)))
 :qid |DiemConsensusConfigbpl.2606:13|
 :skolemid |94|
))))
 :qid |DiemConsensusConfigbpl.2604:33|
 :skolemid |95|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@10 v2@@10))
)))
(assert (forall ((v@@26 T@Vec_150684) ) (! (= (|$IsValid'vec'vec'u8'''| v@@26)  (and (|$IsValid'u64'| (|l#Vec_150684| v@@26)) (forall ((i@@45 Int) ) (!  (=> (InRangeVec_181980 v@@26 i@@45) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_27708_| (|v#Vec_150684| v@@26) i@@45)))
 :qid |DiemConsensusConfigbpl.2612:13|
 :skolemid |96|
))))
 :qid |DiemConsensusConfigbpl.2610:33|
 :skolemid |97|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@26))
)))
(assert (forall ((v@@27 T@Vec_150684) (e@@10 T@Vec_27708) ) (! (let ((i@@46 (|$IndexOfVec'vec'u8''| v@@27 e@@10)))
(ite  (not (exists ((i@@47 Int) ) (!  (and (and (|$IsValid'u64'| i@@47) (InRangeVec_181980 v@@27 i@@47)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_27708_| (|v#Vec_150684| v@@27) i@@47) e@@10))
 :qid |DiemConsensusConfigbpl.2617:13|
 :skolemid |98|
))) (= i@@46 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@46) (InRangeVec_181980 v@@27 i@@46)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_27708_| (|v#Vec_150684| v@@27) i@@46) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@46)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_27708_| (|v#Vec_150684| v@@27) j@@10) e@@10)))
 :qid |DiemConsensusConfigbpl.2625:17|
 :skolemid |99|
)))))
 :qid |DiemConsensusConfigbpl.2621:15|
 :skolemid |100|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@27 e@@10))
)))
(assert (forall ((v1@@11 T@Vec_27708) (v2@@11 T@Vec_27708) ) (! (= (|$IsEqual'vec'address''| v1@@11 v2@@11)  (and (= (|l#Vec_27708| v1@@11) (|l#Vec_27708| v2@@11)) (forall ((i@@48 Int) ) (!  (=> (InRangeVec_16728 v1@@11 i@@48) (= (|Select__T@[Int]Int_| (|v#Vec_27708| v1@@11) i@@48) (|Select__T@[Int]Int_| (|v#Vec_27708| v2@@11) i@@48)))
 :qid |DiemConsensusConfigbpl.2787:13|
 :skolemid |101|
))))
 :qid |DiemConsensusConfigbpl.2785:33|
 :skolemid |102|
 :pattern ( (|$IsEqual'vec'address''| v1@@11 v2@@11))
)))
(assert (forall ((v@@28 T@Vec_27708) ) (! (= (|$IsValid'vec'address''| v@@28)  (and (|$IsValid'u64'| (|l#Vec_27708| v@@28)) (forall ((i@@49 Int) ) (!  (=> (InRangeVec_16728 v@@28 i@@49) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_27708| v@@28) i@@49)))
 :qid |DiemConsensusConfigbpl.2793:13|
 :skolemid |103|
))))
 :qid |DiemConsensusConfigbpl.2791:33|
 :skolemid |104|
 :pattern ( (|$IsValid'vec'address''| v@@28))
)))
(assert (forall ((v@@29 T@Vec_27708) (e@@11 Int) ) (! (let ((i@@50 (|$IndexOfVec'address'| v@@29 e@@11)))
(ite  (not (exists ((i@@51 Int) ) (!  (and (and (|$IsValid'u64'| i@@51) (InRangeVec_16728 v@@29 i@@51)) (= (|Select__T@[Int]Int_| (|v#Vec_27708| v@@29) i@@51) e@@11))
 :qid |DiemConsensusConfigbpl.2798:13|
 :skolemid |105|
))) (= i@@50 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@50) (InRangeVec_16728 v@@29 i@@50)) (= (|Select__T@[Int]Int_| (|v#Vec_27708| v@@29) i@@50) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@11) (>= j@@11 0)) (< j@@11 i@@50)) (not (= (|Select__T@[Int]Int_| (|v#Vec_27708| v@@29) j@@11) e@@11)))
 :qid |DiemConsensusConfigbpl.2806:17|
 :skolemid |106|
)))))
 :qid |DiemConsensusConfigbpl.2802:15|
 :skolemid |107|
 :pattern ( (|$IndexOfVec'address'| v@@29 e@@11))
)))
(assert (forall ((v1@@12 T@Vec_27708) (v2@@12 T@Vec_27708) ) (! (= (|$IsEqual'vec'u8''| v1@@12 v2@@12)  (and (= (|l#Vec_27708| v1@@12) (|l#Vec_27708| v2@@12)) (forall ((i@@52 Int) ) (!  (=> (InRangeVec_16728 v1@@12 i@@52) (= (|Select__T@[Int]Int_| (|v#Vec_27708| v1@@12) i@@52) (|Select__T@[Int]Int_| (|v#Vec_27708| v2@@12) i@@52)))
 :qid |DiemConsensusConfigbpl.2968:13|
 :skolemid |108|
))))
 :qid |DiemConsensusConfigbpl.2966:28|
 :skolemid |109|
 :pattern ( (|$IsEqual'vec'u8''| v1@@12 v2@@12))
)))
(assert (forall ((v@@30 T@Vec_27708) ) (! (= (|$IsValid'vec'u8''| v@@30)  (and (|$IsValid'u64'| (|l#Vec_27708| v@@30)) (forall ((i@@53 Int) ) (!  (=> (InRangeVec_16728 v@@30 i@@53) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_27708| v@@30) i@@53)))
 :qid |DiemConsensusConfigbpl.2974:13|
 :skolemid |110|
))))
 :qid |DiemConsensusConfigbpl.2972:28|
 :skolemid |111|
 :pattern ( (|$IsValid'vec'u8''| v@@30))
)))
(assert (forall ((v@@31 T@Vec_27708) (e@@12 Int) ) (! (let ((i@@54 (|$IndexOfVec'u8'| v@@31 e@@12)))
(ite  (not (exists ((i@@55 Int) ) (!  (and (and (|$IsValid'u64'| i@@55) (InRangeVec_16728 v@@31 i@@55)) (= (|Select__T@[Int]Int_| (|v#Vec_27708| v@@31) i@@55) e@@12))
 :qid |DiemConsensusConfigbpl.2979:13|
 :skolemid |112|
))) (= i@@54 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@54) (InRangeVec_16728 v@@31 i@@54)) (= (|Select__T@[Int]Int_| (|v#Vec_27708| v@@31) i@@54) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@12) (>= j@@12 0)) (< j@@12 i@@54)) (not (= (|Select__T@[Int]Int_| (|v#Vec_27708| v@@31) j@@12) e@@12)))
 :qid |DiemConsensusConfigbpl.2987:17|
 :skolemid |113|
)))))
 :qid |DiemConsensusConfigbpl.2983:15|
 :skolemid |114|
 :pattern ( (|$IndexOfVec'u8'| v@@31 e@@12))
)))
(assert (forall ((v1@@13 T@Vec_27708) (v2@@13 T@Vec_27708) ) (! (= (|$IsEqual'vec'u8''| v1@@13 v2@@13) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@13) ($1_Hash_sha2 v2@@13)))
 :qid |DiemConsensusConfigbpl.3160:15|
 :skolemid |115|
 :pattern ( ($1_Hash_sha2 v1@@13) ($1_Hash_sha2 v2@@13))
)))
(assert (forall ((v1@@14 T@Vec_27708) (v2@@14 T@Vec_27708) ) (! (= (|$IsEqual'vec'u8''| v1@@14 v2@@14) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@14) ($1_Hash_sha3 v2@@14)))
 :qid |DiemConsensusConfigbpl.3176:15|
 :skolemid |116|
 :pattern ( ($1_Hash_sha3 v1@@14) ($1_Hash_sha3 v2@@14))
)))
(assert (forall ((k1 T@Vec_27708) (k2 T@Vec_27708) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DiemConsensusConfigbpl.3247:15|
 :skolemid |117|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_27708) (s2 T@Vec_27708) (k1@@0 T@Vec_27708) (k2@@0 T@Vec_27708) (m1 T@Vec_27708) (m2 T@Vec_27708) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DiemConsensusConfigbpl.3250:15|
 :skolemid |118|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_150327_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_150327| stream) 0) (forall ((v@@32 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_150327| stream) v@@32) 0)
 :qid |DiemConsensusConfigbpl.159:13|
 :skolemid |4|
))))
 :qid |DiemConsensusConfigbpl.3311:13|
 :skolemid |119|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |DiemConsensusConfigbpl.3352:80|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@15 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@15 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@15) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@15)))
 :qid |DiemConsensusConfigbpl.3358:15|
 :skolemid |122|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@15) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@15))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |DiemConsensusConfigbpl.3408:82|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@16 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@16 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@16) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@16)))
 :qid |DiemConsensusConfigbpl.3414:15|
 :skolemid |124|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@16) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@16))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |DiemConsensusConfigbpl.3464:80|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@17 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@17 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@17) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@17)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@17) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@17))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@17) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@17))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@17) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@17)))
 :qid |DiemConsensusConfigbpl.3470:15|
 :skolemid |126|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@17) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@17))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |DiemConsensusConfigbpl.3520:79|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@18 T@$1_DiemAccount_AdminTransactionEvent) (v2@@18 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@18 v2@@18) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@18) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@18)))
 :qid |DiemConsensusConfigbpl.3526:15|
 :skolemid |128|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@18) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@18))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |DiemConsensusConfigbpl.3576:76|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@19 T@$1_DiemAccount_CreateAccountEvent) (v2@@19 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@19 v2@@19) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@19)))
 :qid |DiemConsensusConfigbpl.3582:15|
 :skolemid |130|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@19))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |DiemConsensusConfigbpl.3632:78|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@20 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@20 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@20)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@20))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@20))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@20) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@20)))
 :qid |DiemConsensusConfigbpl.3638:15|
 :skolemid |132|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@20) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@20))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |DiemConsensusConfigbpl.3688:74|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@21 T@$1_DiemAccount_SentPaymentEvent) (v2@@21 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@21)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@21))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@21))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@21))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@21) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@21)))
 :qid |DiemConsensusConfigbpl.3694:15|
 :skolemid |134|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@21) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@21))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |DiemConsensusConfigbpl.3744:69|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@22 T@$1_DiemBlock_NewBlockEvent) (v2@@22 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@22) (|$round#$1_DiemBlock_NewBlockEvent| v2@@22)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@22) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@22))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@22) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@22))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@22) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@22))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@22) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@22)))
 :qid |DiemConsensusConfigbpl.3750:15|
 :skolemid |136|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@22) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@22))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |DiemConsensusConfigbpl.3800:70|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@23 T@$1_DiemConfig_NewEpochEvent) (v2@@23 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@23 v2@@23) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@23) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@23)))
 :qid |DiemConsensusConfigbpl.3806:15|
 :skolemid |138|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@23) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@23))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |DiemConsensusConfigbpl.3856:60|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@24 T@$1_Diem_BurnEvent) (v2@@24 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@24) (|$amount#$1_Diem_BurnEvent| v2@@24)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@24) (|$currency_code#$1_Diem_BurnEvent| v2@@24))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@24) (|$preburn_address#$1_Diem_BurnEvent| v2@@24))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@24) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@24)))
 :qid |DiemConsensusConfigbpl.3862:15|
 :skolemid |140|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@24) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@24))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |DiemConsensusConfigbpl.3912:66|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@25 T@$1_Diem_CancelBurnEvent) (v2@@25 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@25) (|$amount#$1_Diem_CancelBurnEvent| v2@@25)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@25) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@25))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@25) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@25))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@25) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@25)))
 :qid |DiemConsensusConfigbpl.3918:15|
 :skolemid |142|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@25) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@25))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |DiemConsensusConfigbpl.3968:60|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@26 T@$1_Diem_MintEvent) (v2@@26 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@26) (|$amount#$1_Diem_MintEvent| v2@@26)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@26) (|$currency_code#$1_Diem_MintEvent| v2@@26))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@26) (|$ToEventRep'$1_Diem_MintEvent'| v2@@26)))
 :qid |DiemConsensusConfigbpl.3974:15|
 :skolemid |144|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@26) (|$ToEventRep'$1_Diem_MintEvent'| v2@@26))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |DiemConsensusConfigbpl.4024:63|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@27 T@$1_Diem_PreburnEvent) (v2@@27 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@27) (|$amount#$1_Diem_PreburnEvent| v2@@27)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@27) (|$currency_code#$1_Diem_PreburnEvent| v2@@27))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@27) (|$preburn_address#$1_Diem_PreburnEvent| v2@@27))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@27) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@27)))
 :qid |DiemConsensusConfigbpl.4030:15|
 :skolemid |146|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@27) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@27))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |DiemConsensusConfigbpl.4080:79|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@28 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@28 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@28) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@28)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@28) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@28))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@28) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@28)))
 :qid |DiemConsensusConfigbpl.4086:15|
 :skolemid |148|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@28) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@28))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |DiemConsensusConfigbpl.4136:82|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@29 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@29 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@29) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@29)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@29) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@29))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@29) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@29)))
 :qid |DiemConsensusConfigbpl.4142:15|
 :skolemid |150|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@29) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@29))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |DiemConsensusConfigbpl.4192:88|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@30 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@30 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@30) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@30)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@30) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@30))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@30) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@30)))
 :qid |DiemConsensusConfigbpl.4198:15|
 :skolemid |152|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@30) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@30))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |DiemConsensusConfigbpl.4248:72|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@31 T@$1_VASPDomain_VASPDomainEvent) (v2@@31 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@31) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@31)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@31)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@31)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@31) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@31))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@31) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@31)))
 :qid |DiemConsensusConfigbpl.4254:15|
 :skolemid |154|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@31) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@31))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |DiemConsensusConfigbpl.4333:61|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |DiemConsensusConfigbpl.4402:36|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |DiemConsensusConfigbpl.5903:71|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |DiemConsensusConfigbpl.6272:46|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |DiemConsensusConfigbpl.6284:64|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |DiemConsensusConfigbpl.6296:75|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |DiemConsensusConfigbpl.6308:72|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |DiemConsensusConfigbpl.6341:55|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |DiemConsensusConfigbpl.6364:46|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |DiemConsensusConfigbpl.6646:49|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |DiemConsensusConfigbpl.6736:71|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |DiemConsensusConfigbpl.6749:91|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |DiemConsensusConfigbpl.6762:113|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12) (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@12)))
 :qid |DiemConsensusConfigbpl.6775:89|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |DiemConsensusConfigbpl.6788:75|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |DiemConsensusConfigbpl.6801:73|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 |T@$1_DiemConfig_DiemConfig'#0'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'#0''| s@@15) true)
 :qid |DiemConsensusConfigbpl.6815:49|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'#0''| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@16)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@16)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@16))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@16))))
 :qid |DiemConsensusConfigbpl.6835:48|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@16))
)))
(assert (forall ((s@@17 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@17) true)
 :qid |DiemConsensusConfigbpl.6852:57|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@18) true)
 :qid |DiemConsensusConfigbpl.6866:83|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@19) true)
 :qid |DiemConsensusConfigbpl.6880:101|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20) true)
 :qid |DiemConsensusConfigbpl.6894:87|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21) true)
 :qid |DiemConsensusConfigbpl.6908:85|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_DiemConfig_ModifyConfigCapability'#0'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'#0''| s@@22) true)
 :qid |DiemConsensusConfigbpl.6922:61|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'#0''| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@23)))
 :qid |DiemConsensusConfigbpl.6936:48|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@24)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@24))))
 :qid |DiemConsensusConfigbpl.15529:45|
 :skolemid |473|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@25)))
 :qid |DiemConsensusConfigbpl.15543:51|
 :skolemid |474|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@26)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@26))))
 :qid |DiemConsensusConfigbpl.15566:48|
 :skolemid |475|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26))
)))
(assert (forall ((s@@27 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@27)))
 :qid |DiemConsensusConfigbpl.15584:49|
 :skolemid |476|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27))
)))
(assert (forall ((s@@28 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@28)))
 :qid |DiemConsensusConfigbpl.15597:65|
 :skolemid |477|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@29)))
 :qid |DiemConsensusConfigbpl.15684:45|
 :skolemid |478|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@30)))
 :qid |DiemConsensusConfigbpl.15697:45|
 :skolemid |479|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@31) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@31)))
 :qid |DiemConsensusConfigbpl.15710:37|
 :skolemid |480|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32) true)
 :qid |DiemConsensusConfigbpl.15723:55|
 :skolemid |481|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@33)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@33))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@33))))
 :qid |DiemConsensusConfigbpl.15743:38|
 :skolemid |482|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@34))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@34))))
 :qid |DiemConsensusConfigbpl.15765:44|
 :skolemid |483|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))))
 :qid |DiemConsensusConfigbpl.15817:53|
 :skolemid |484|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))))
 :qid |DiemConsensusConfigbpl.15890:53|
 :skolemid |485|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@37)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@37)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@37))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@37))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@37))))
 :qid |DiemConsensusConfigbpl.15963:45|
 :skolemid |486|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@38) true)
 :qid |DiemConsensusConfigbpl.16000:55|
 :skolemid |487|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@39) true)
 :qid |DiemConsensusConfigbpl.16014:55|
 :skolemid |488|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@40) true)
 :qid |DiemConsensusConfigbpl.16028:47|
 :skolemid |489|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@40))
)))
(assert (forall ((s@@41 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@41)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@41)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@41))))
 :qid |DiemConsensusConfigbpl.16045:38|
 :skolemid |490|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@42) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@42)))
 :qid |DiemConsensusConfigbpl.16059:48|
 :skolemid |491|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@43) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@43)))
 :qid |DiemConsensusConfigbpl.16073:48|
 :skolemid |492|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@44) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@44)))
 :qid |DiemConsensusConfigbpl.16087:40|
 :skolemid |493|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@44))
)))
(assert (forall ((s@@45 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@45)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@45)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@45))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@45))))
 :qid |DiemConsensusConfigbpl.16107:41|
 :skolemid |494|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@46) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@46)))
 :qid |DiemConsensusConfigbpl.16123:53|
 :skolemid |495|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@46))
)))
(assert (forall ((s@@47 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@47) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@47)))
 :qid |DiemConsensusConfigbpl.16136:53|
 :skolemid |496|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@48) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@48)))
 :qid |DiemConsensusConfigbpl.16149:45|
 :skolemid |497|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@49)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@49)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@49))))
 :qid |DiemConsensusConfigbpl.16165:60|
 :skolemid |498|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@50)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@50)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@50))))
 :qid |DiemConsensusConfigbpl.16182:60|
 :skolemid |499|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@51)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@51)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@51))))
 :qid |DiemConsensusConfigbpl.16199:52|
 :skolemid |500|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@51))
)))
(assert (forall ((s@@52 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@52)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@52)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@52))))
 :qid |DiemConsensusConfigbpl.16216:57|
 :skolemid |501|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@52))
)))
(assert (forall ((s@@53 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@53) true)
 :qid |DiemConsensusConfigbpl.16431:68|
 :skolemid |502|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@53))
)))
(assert (forall ((s@@54 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@54)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@54)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@54))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@54))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@54))))
 :qid |DiemConsensusConfigbpl.16453:66|
 :skolemid |503|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@54))
)))
(assert (forall ((s@@55 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@55)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@55)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@55))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@55))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@55))))
 :qid |DiemConsensusConfigbpl.16479:66|
 :skolemid |504|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@55))
)))
(assert (forall ((s@@56 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@56) true)
 :qid |DiemConsensusConfigbpl.16608:31|
 :skolemid |505|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@56))
)))
(assert (forall ((s@@57 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@57) true)
 :qid |DiemConsensusConfigbpl.16626:31|
 :skolemid |506|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@57))
)))
(assert (forall ((s@@58 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@58)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@58)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@58))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@58))))
 :qid |DiemConsensusConfigbpl.16645:35|
 :skolemid |507|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@58))
)))
(assert (forall ((s@@59 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@59) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@59)))
 :qid |DiemConsensusConfigbpl.16671:45|
 :skolemid |508|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@59))
)))
(assert (forall ((s@@60 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@60)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@60))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@60))))
 :qid |DiemConsensusConfigbpl.16689:50|
 :skolemid |509|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@60))
)))
(assert (forall ((s@@61 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@61) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@61)))
 :qid |DiemConsensusConfigbpl.16705:52|
 :skolemid |510|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@61))
)))
(assert (forall ((s@@62 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@62) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@62)))
 :qid |DiemConsensusConfigbpl.16718:46|
 :skolemid |511|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@62))
)))
(assert (forall ((s@@63 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@63) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@63)))
 :qid |DiemConsensusConfigbpl.17099:38|
 :skolemid |512|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@63))
)))
(assert (forall ((s@@64 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@64) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@64)))
 :qid |DiemConsensusConfigbpl.17113:39|
 :skolemid |513|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@64))
)))
(assert (forall ((s@@65 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@65)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@65)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@65))))
 :qid |DiemConsensusConfigbpl.17800:65|
 :skolemid |514|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@65))
)))
(assert (forall ((s@@66 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@66)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@66)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@66))))
 :qid |DiemConsensusConfigbpl.17828:60|
 :skolemid |515|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@67)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@67)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@67))))
 :qid |DiemConsensusConfigbpl.17845:66|
 :skolemid |516|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@68)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@68)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@68))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@68))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@68))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@68))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@68))))
 :qid |DiemConsensusConfigbpl.17874:50|
 :skolemid |517|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@69) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@69)))
 :qid |DiemConsensusConfigbpl.17897:45|
 :skolemid |518|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@70)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@70)) true))
 :qid |DiemConsensusConfigbpl.18180:87|
 :skolemid |519|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@71) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@71)))
 :qid |DiemConsensusConfigbpl.18194:47|
 :skolemid |520|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@72)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@72)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@72))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@72))))
 :qid |DiemConsensusConfigbpl.18213:58|
 :skolemid |521|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@73) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@73)))
 :qid |DiemConsensusConfigbpl.18229:39|
 :skolemid |522|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@73))
)))
(assert (forall ((s@@74 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@74)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@74)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@74))))
 :qid |DiemConsensusConfigbpl.18251:58|
 :skolemid |523|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@74))
)))
(assert (forall ((s@@75 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@75)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@75)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@75))))
 :qid |DiemConsensusConfigbpl.18268:58|
 :skolemid |524|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@75))
)))
(assert (forall ((s@@76 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@76) true)
 :qid |DiemConsensusConfigbpl.18283:51|
 :skolemid |525|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@76))
)))
(assert (forall ((s@@77 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@77)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@77)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@77))))
 :qid |DiemConsensusConfigbpl.18300:60|
 :skolemid |526|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@78)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@78)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@78))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@78))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@78))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@78))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@78))))
 :qid |DiemConsensusConfigbpl.18384:47|
 :skolemid |527|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@79)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@79)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@79))))
 :qid |DiemConsensusConfigbpl.18410:63|
 :skolemid |528|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@80) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@80)))
 :qid |DiemConsensusConfigbpl.18425:57|
 :skolemid |529|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@80))
)))
(assert (forall ((s@@81 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@81) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@81)))
 :qid |DiemConsensusConfigbpl.18438:55|
 :skolemid |530|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@81))
)))
(assert (forall ((s@@82 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@82) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@82)))
 :qid |DiemConsensusConfigbpl.18452:55|
 :skolemid |531|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@82))
)))
(assert (forall ((s@@83 |T@$1_DiemAccount_Balance'#0'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'#0''| s@@83) (|$IsValid'$1_Diem_Diem'#0''| (|$coin#$1_DiemAccount_Balance'#0'| s@@83)))
 :qid |DiemConsensusConfigbpl.18466:47|
 :skolemid |532|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'#0''| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@84)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@84)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@84))))
 :qid |DiemConsensusConfigbpl.18483:54|
 :skolemid |533|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@85) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@85)))
 :qid |DiemConsensusConfigbpl.18497:55|
 :skolemid |534|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@86) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@86)))
 :qid |DiemConsensusConfigbpl.18510:57|
 :skolemid |535|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@87)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@87)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@87))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@87))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@87))))
 :qid |DiemConsensusConfigbpl.18532:56|
 :skolemid |536|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@88)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@88)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@88))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@88))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@88))))
 :qid |DiemConsensusConfigbpl.18559:52|
 :skolemid |537|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@89) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@89)))
 :qid |DiemConsensusConfigbpl.18577:54|
 :skolemid |538|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@89))
)))
(assert (forall ((s@@90 T@$1_RecoveryAddress_RecoveryAddress) ) (! (= (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@90) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| s@@90)))
 :qid |DiemConsensusConfigbpl.34812:55|
 :skolemid |1486|
 :pattern ( (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@91)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@91)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@91))))
 :qid |DiemConsensusConfigbpl.34833:47|
 :skolemid |1487|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@91))
)))
(assert (forall ((s@@92 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@92)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@92)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@92))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@92))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@92))))
 :qid |DiemConsensusConfigbpl.34857:47|
 :skolemid |1488|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@92))
)))
(assert (forall ((s@@93 T@$1_DiemConsensusConfig_DiemConsensusConfig) ) (! (= (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@93) (|$IsValid'vec'u8''| (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| s@@93)))
 :qid |DiemConsensusConfigbpl.34875:63|
 :skolemid |1489|
 :pattern ( (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@93))
)))
(assert (forall ((s@@94 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@94) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@94)))
 :qid |DiemConsensusConfigbpl.35849:49|
 :skolemid |1559|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@94))
)))
(assert (forall ((s@@95 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@95)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@95)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@95))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@95))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@95))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@95))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@95))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@95))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@95))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@95))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@95))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@95))))
 :qid |DiemConsensusConfigbpl.35891:49|
 :skolemid |1560|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@95))
)))
(assert (forall ((s@@96 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@96)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@96)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@96))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@96))))
 :qid |DiemConsensusConfigbpl.35920:48|
 :skolemid |1561|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@96))
)))
(assert (forall ((s@@97 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@97) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@97)))
 :qid |DiemConsensusConfigbpl.35936:47|
 :skolemid |1562|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@97))
)))
(assert (forall ((v@@33 T@Vec_152322) (i@@56 Int) ) (! (= (InRangeVec_134569 v@@33 i@@56)  (and (>= i@@56 0) (< i@@56 (|l#Vec_152322| v@@33))))
 :qid |DiemConsensusConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_134569 v@@33 i@@56))
)))
(assert (forall ((v@@34 T@Vec_150452) (i@@57 Int) ) (! (= (InRangeVec_134770 v@@34 i@@57)  (and (>= i@@57 0) (< i@@57 (|l#Vec_150452| v@@34))))
 :qid |DiemConsensusConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_134770 v@@34 i@@57))
)))
(assert (forall ((v@@35 T@Vec_150491) (i@@58 Int) ) (! (= (InRangeVec_134971 v@@35 i@@58)  (and (>= i@@58 0) (< i@@58 (|l#Vec_150491| v@@35))))
 :qid |DiemConsensusConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_134971 v@@35 i@@58))
)))
(assert (forall ((v@@36 T@Vec_150627) (i@@59 Int) ) (! (= (InRangeVec_135172 v@@36 i@@59)  (and (>= i@@59 0) (< i@@59 (|l#Vec_150627| v@@36))))
 :qid |DiemConsensusConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_135172 v@@36 i@@59))
)))
(assert (forall ((v@@37 T@Vec_150966) (i@@60 Int) ) (! (= (InRangeVec_135373 v@@37 i@@60)  (and (>= i@@60 0) (< i@@60 (|l#Vec_150966| v@@37))))
 :qid |DiemConsensusConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_135373 v@@37 i@@60))
)))
(assert (forall ((v@@38 T@Vec_150927) (i@@61 Int) ) (! (= (InRangeVec_135574 v@@38 i@@61)  (and (>= i@@61 0) (< i@@61 (|l#Vec_150927| v@@38))))
 :qid |DiemConsensusConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_135574 v@@38 i@@61))
)))
(assert (forall ((v@@39 T@Vec_150888) (i@@62 Int) ) (! (= (InRangeVec_135775 v@@39 i@@62)  (and (>= i@@62 0) (< i@@62 (|l#Vec_150888| v@@39))))
 :qid |DiemConsensusConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_135775 v@@39 i@@62))
)))
(assert (forall ((v@@40 T@Vec_151094) (i@@63 Int) ) (! (= (InRangeVec_135976 v@@40 i@@63)  (and (>= i@@63 0) (< i@@63 (|l#Vec_151094| v@@40))))
 :qid |DiemConsensusConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_135976 v@@40 i@@63))
)))
(assert (forall ((v@@41 T@Vec_150413) (i@@64 Int) ) (! (= (InRangeVec_136177 v@@41 i@@64)  (and (>= i@@64 0) (< i@@64 (|l#Vec_150413| v@@41))))
 :qid |DiemConsensusConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_136177 v@@41 i@@64))
)))
(assert (forall ((v@@42 T@Vec_176538) (i@@65 Int) ) (! (= (InRangeVec_136378 v@@42 i@@65)  (and (>= i@@65 0) (< i@@65 (|l#Vec_176538| v@@42))))
 :qid |DiemConsensusConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_136378 v@@42 i@@65))
)))
(assert (forall ((v@@43 T@Vec_179218) (i@@66 Int) ) (! (= (InRangeVec_136579 v@@43 i@@66)  (and (>= i@@66 0) (< i@@66 (|l#Vec_179218| v@@43))))
 :qid |DiemConsensusConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_136579 v@@43 i@@66))
)))
(assert (forall ((v@@44 T@Vec_150684) (i@@67 Int) ) (! (= (InRangeVec_181980 v@@44 i@@67)  (and (>= i@@67 0) (< i@@67 (|l#Vec_150684| v@@44))))
 :qid |DiemConsensusConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_181980 v@@44 i@@67))
)))
(assert (forall ((v@@45 T@Vec_27708) (i@@68 Int) ) (! (= (InRangeVec_16728 v@@45 i@@68)  (and (>= i@@68 0) (< i@@68 (|l#Vec_27708| v@@45))))
 :qid |DiemConsensusConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_16728 v@@45 i@@68))
)))
(assert (forall ((v@@46 T@Vec_27708) (e@@13 Int) ) (! (let ((i@@69 (IndexOfVec_27708 v@@46 e@@13)))
(ite  (not (exists ((i@@70 Int) ) (!  (and (InRangeVec_16728 v@@46 i@@70) (= (|Select__T@[Int]Int_| (|v#Vec_27708| v@@46) i@@70) e@@13))
 :qid |DiemConsensusConfigbpl.109:13|
 :skolemid |0|
))) (= i@@69 (- 0 1))  (and (and (InRangeVec_16728 v@@46 i@@69) (= (|Select__T@[Int]Int_| (|v#Vec_27708| v@@46) i@@69) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@69)) (not (= (|Select__T@[Int]Int_| (|v#Vec_27708| v@@46) j@@13) e@@13)))
 :qid |DiemConsensusConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemConsensusConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_27708 v@@46 e@@13))
)))
(assert (forall ((v@@47 T@Vec_150413) (e@@14 T@$1_ValidatorConfig_Config) ) (! (let ((i@@71 (IndexOfVec_150413 v@@47 e@@14)))
(ite  (not (exists ((i@@72 Int) ) (!  (and (InRangeVec_136177 v@@47 i@@72) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_150413| v@@47) i@@72) e@@14))
 :qid |DiemConsensusConfigbpl.109:13|
 :skolemid |0|
))) (= i@@71 (- 0 1))  (and (and (InRangeVec_136177 v@@47 i@@71) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_150413| v@@47) i@@71) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@71)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_150413| v@@47) j@@14) e@@14)))
 :qid |DiemConsensusConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemConsensusConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_150413 v@@47 e@@14))
)))
(assert (forall ((v@@48 T@Vec_150452) (e@@15 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@73 (IndexOfVec_150452 v@@48 e@@15)))
(ite  (not (exists ((i@@74 Int) ) (!  (and (InRangeVec_134770 v@@48 i@@74) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_150452| v@@48) i@@74) e@@15))
 :qid |DiemConsensusConfigbpl.109:13|
 :skolemid |0|
))) (= i@@73 (- 0 1))  (and (and (InRangeVec_134770 v@@48 i@@73) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_150452| v@@48) i@@73) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@73)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_150452| v@@48) j@@15) e@@15)))
 :qid |DiemConsensusConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemConsensusConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_150452 v@@48 e@@15))
)))
(assert (forall ((v@@49 T@Vec_150491) (e@@16 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@75 (IndexOfVec_150491 v@@49 e@@16)))
(ite  (not (exists ((i@@76 Int) ) (!  (and (InRangeVec_134971 v@@49 i@@76) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_150491| v@@49) i@@76) e@@16))
 :qid |DiemConsensusConfigbpl.109:13|
 :skolemid |0|
))) (= i@@75 (- 0 1))  (and (and (InRangeVec_134971 v@@49 i@@75) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_150491| v@@49) i@@75) e@@16)) (forall ((j@@16 Int) ) (!  (=> (and (>= j@@16 0) (< j@@16 i@@75)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_150491| v@@49) j@@16) e@@16)))
 :qid |DiemConsensusConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemConsensusConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_150491 v@@49 e@@16))
)))
(assert (forall ((v@@50 T@Vec_150627) (e@@17 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@77 (IndexOfVec_150627 v@@50 e@@17)))
(ite  (not (exists ((i@@78 Int) ) (!  (and (InRangeVec_135172 v@@50 i@@78) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@50) i@@78) e@@17))
 :qid |DiemConsensusConfigbpl.109:13|
 :skolemid |0|
))) (= i@@77 (- 0 1))  (and (and (InRangeVec_135172 v@@50 i@@77) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@50) i@@77) e@@17)) (forall ((j@@17 Int) ) (!  (=> (and (>= j@@17 0) (< j@@17 i@@77)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@50) j@@17) e@@17)))
 :qid |DiemConsensusConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemConsensusConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_150627 v@@50 e@@17))
)))
(assert (forall ((v@@51 T@Vec_150684) (e@@18 T@Vec_27708) ) (! (let ((i@@79 (IndexOfVec_150684 v@@51 e@@18)))
(ite  (not (exists ((i@@80 Int) ) (!  (and (InRangeVec_181980 v@@51 i@@80) (= (|Select__T@[Int]Vec_27708_| (|v#Vec_150684| v@@51) i@@80) e@@18))
 :qid |DiemConsensusConfigbpl.109:13|
 :skolemid |0|
))) (= i@@79 (- 0 1))  (and (and (InRangeVec_181980 v@@51 i@@79) (= (|Select__T@[Int]Vec_27708_| (|v#Vec_150684| v@@51) i@@79) e@@18)) (forall ((j@@18 Int) ) (!  (=> (and (>= j@@18 0) (< j@@18 i@@79)) (not (= (|Select__T@[Int]Vec_27708_| (|v#Vec_150684| v@@51) j@@18) e@@18)))
 :qid |DiemConsensusConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemConsensusConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_150684 v@@51 e@@18))
)))
(assert (forall ((v@@52 T@Vec_150888) (e@@19 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@81 (IndexOfVec_150888 v@@52 e@@19)))
(ite  (not (exists ((i@@82 Int) ) (!  (and (InRangeVec_135775 v@@52 i@@82) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_150888| v@@52) i@@82) e@@19))
 :qid |DiemConsensusConfigbpl.109:13|
 :skolemid |0|
))) (= i@@81 (- 0 1))  (and (and (InRangeVec_135775 v@@52 i@@81) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_150888| v@@52) i@@81) e@@19)) (forall ((j@@19 Int) ) (!  (=> (and (>= j@@19 0) (< j@@19 i@@81)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_150888| v@@52) j@@19) e@@19)))
 :qid |DiemConsensusConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemConsensusConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_150888 v@@52 e@@19))
)))
(assert (forall ((v@@53 T@Vec_150927) (e@@20 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@83 (IndexOfVec_150927 v@@53 e@@20)))
(ite  (not (exists ((i@@84 Int) ) (!  (and (InRangeVec_135574 v@@53 i@@84) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_150927| v@@53) i@@84) e@@20))
 :qid |DiemConsensusConfigbpl.109:13|
 :skolemid |0|
))) (= i@@83 (- 0 1))  (and (and (InRangeVec_135574 v@@53 i@@83) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_150927| v@@53) i@@83) e@@20)) (forall ((j@@20 Int) ) (!  (=> (and (>= j@@20 0) (< j@@20 i@@83)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_150927| v@@53) j@@20) e@@20)))
 :qid |DiemConsensusConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemConsensusConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_150927 v@@53 e@@20))
)))
(assert (forall ((v@@54 T@Vec_150966) (e@@21 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@85 (IndexOfVec_150966 v@@54 e@@21)))
(ite  (not (exists ((i@@86 Int) ) (!  (and (InRangeVec_135373 v@@54 i@@86) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_150966| v@@54) i@@86) e@@21))
 :qid |DiemConsensusConfigbpl.109:13|
 :skolemid |0|
))) (= i@@85 (- 0 1))  (and (and (InRangeVec_135373 v@@54 i@@85) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_150966| v@@54) i@@85) e@@21)) (forall ((j@@21 Int) ) (!  (=> (and (>= j@@21 0) (< j@@21 i@@85)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_150966| v@@54) j@@21) e@@21)))
 :qid |DiemConsensusConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemConsensusConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_150966 v@@54 e@@21))
)))
(assert (forall ((v@@55 T@Vec_151094) (e@@22 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@87 (IndexOfVec_151094 v@@55 e@@22)))
(ite  (not (exists ((i@@88 Int) ) (!  (and (InRangeVec_135976 v@@55 i@@88) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_151094| v@@55) i@@88) e@@22))
 :qid |DiemConsensusConfigbpl.109:13|
 :skolemid |0|
))) (= i@@87 (- 0 1))  (and (and (InRangeVec_135976 v@@55 i@@87) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_151094| v@@55) i@@87) e@@22)) (forall ((j@@22 Int) ) (!  (=> (and (>= j@@22 0) (< j@@22 i@@87)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_151094| v@@55) j@@22) e@@22)))
 :qid |DiemConsensusConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemConsensusConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_151094 v@@55 e@@22))
)))
(assert (forall ((v@@56 T@Vec_152322) (e@@23 |T@#0|) ) (! (let ((i@@89 (IndexOfVec_152322 v@@56 e@@23)))
(ite  (not (exists ((i@@90 Int) ) (!  (and (InRangeVec_134569 v@@56 i@@90) (= (|Select__T@[Int]#0_| (|v#Vec_152322| v@@56) i@@90) e@@23))
 :qid |DiemConsensusConfigbpl.109:13|
 :skolemid |0|
))) (= i@@89 (- 0 1))  (and (and (InRangeVec_134569 v@@56 i@@89) (= (|Select__T@[Int]#0_| (|v#Vec_152322| v@@56) i@@89) e@@23)) (forall ((j@@23 Int) ) (!  (=> (and (>= j@@23 0) (< j@@23 i@@89)) (not (= (|Select__T@[Int]#0_| (|v#Vec_152322| v@@56) j@@23) e@@23)))
 :qid |DiemConsensusConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemConsensusConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_152322 v@@56 e@@23))
)))
(assert (forall ((v@@57 T@Vec_176538) (e@@24 T@$1_XDX_XDX) ) (! (let ((i@@91 (IndexOfVec_176538 v@@57 e@@24)))
(ite  (not (exists ((i@@92 Int) ) (!  (and (InRangeVec_136378 v@@57 i@@92) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_176538| v@@57) i@@92) e@@24))
 :qid |DiemConsensusConfigbpl.109:13|
 :skolemid |0|
))) (= i@@91 (- 0 1))  (and (and (InRangeVec_136378 v@@57 i@@91) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_176538| v@@57) i@@91) e@@24)) (forall ((j@@24 Int) ) (!  (=> (and (>= j@@24 0) (< j@@24 i@@91)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_176538| v@@57) j@@24) e@@24)))
 :qid |DiemConsensusConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemConsensusConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_176538 v@@57 e@@24))
)))
(assert (forall ((v@@58 T@Vec_179218) (e@@25 T@$1_XUS_XUS) ) (! (let ((i@@93 (IndexOfVec_179218 v@@58 e@@25)))
(ite  (not (exists ((i@@94 Int) ) (!  (and (InRangeVec_136579 v@@58 i@@94) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_179218| v@@58) i@@94) e@@25))
 :qid |DiemConsensusConfigbpl.109:13|
 :skolemid |0|
))) (= i@@93 (- 0 1))  (and (and (InRangeVec_136579 v@@58 i@@93) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_179218| v@@58) i@@93) e@@25)) (forall ((j@@25 Int) ) (!  (=> (and (>= j@@25 0) (< j@@25 i@@93)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_179218| v@@58) j@@25) e@@25)))
 :qid |DiemConsensusConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemConsensusConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_179218 v@@58 e@@25))
)))
(assert (forall ((|l#0| Bool) (i@@95 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@95) |l#0|)
 :qid |DiemConsensusConfigbpl.275:54|
 :skolemid |1563|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@95))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_150327|) (|l#1| |T@[$1_Event_EventHandle]Multiset_150327|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_150327_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_150327| (|Select__T@[$1_Event_EventHandle]Multiset_150327_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_150327| (|Select__T@[$1_Event_EventHandle]Multiset_150327_| |l#1| handle@@0))))
(Multiset_150327 (|lambda#42| (|v#Multiset_150327| (|Select__T@[$1_Event_EventHandle]Multiset_150327_| |l#0@@0| handle@@0)) (|v#Multiset_150327| (|Select__T@[$1_Event_EventHandle]Multiset_150327_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DiemConsensusConfigbpl.3321:13|
 :skolemid |1564|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_150327_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@96 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@96) (ite  (and (>= i@@96 |l#0@@1|) (< i@@96 |l#1@@0|)) (ite (< i@@96 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@96) (|Select__T@[Int]#0_| |l#4| (- i@@96 |l#5|))) |l#6|))
 :qid |DiemConsensusConfigbpl.73:19|
 :skolemid |1565|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@96))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@97 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@97) (ite  (and (<= |l#0@@2| i@@97) (< i@@97 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@97) |l#4@@0|)) |l#5@@0|))
 :qid |DiemConsensusConfigbpl.82:30|
 :skolemid |1566|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@97))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@26 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@26) (ite  (and (>= j@@26 |l#0@@3|) (< j@@26 |l#1@@2|)) (ite (< j@@26 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@26) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@26 |l#5@@1|))) |l#6@@0|))
 :qid |DiemConsensusConfigbpl.63:20|
 :skolemid |1567|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@26))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@98 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@98) (ite  (and (>= i@@98 |l#0@@4|) (< i@@98 |l#1@@3|)) (ite (< i@@98 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@98) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@98 |l#5@@2|))) |l#6@@1|))
 :qid |DiemConsensusConfigbpl.73:19|
 :skolemid |1568|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@98))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@99 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@99) (ite  (and (<= |l#0@@5| i@@99) (< i@@99 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@99) |l#4@@3|)) |l#5@@3|))
 :qid |DiemConsensusConfigbpl.82:30|
 :skolemid |1569|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@99))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@27 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@27) (ite  (and (>= j@@27 |l#0@@6|) (< j@@27 |l#1@@5|)) (ite (< j@@27 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@27) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@27 |l#5@@4|))) |l#6@@2|))
 :qid |DiemConsensusConfigbpl.63:20|
 :skolemid |1570|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@27))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@100 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@100) (ite  (and (>= i@@100 |l#0@@7|) (< i@@100 |l#1@@6|)) (ite (< i@@100 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@100) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@100 |l#5@@5|))) |l#6@@3|))
 :qid |DiemConsensusConfigbpl.73:19|
 :skolemid |1571|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@100))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@101 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@101) (ite  (and (<= |l#0@@8| i@@101) (< i@@101 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@101) |l#4@@6|)) |l#5@@6|))
 :qid |DiemConsensusConfigbpl.82:30|
 :skolemid |1572|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@101))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@28 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@28) (ite  (and (>= j@@28 |l#0@@9|) (< j@@28 |l#1@@8|)) (ite (< j@@28 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@28) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@28 |l#5@@7|))) |l#6@@4|))
 :qid |DiemConsensusConfigbpl.63:20|
 :skolemid |1573|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@28))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@102 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@102) (ite  (and (>= i@@102 |l#0@@10|) (< i@@102 |l#1@@9|)) (ite (< i@@102 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@102) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@102 |l#5@@8|))) |l#6@@5|))
 :qid |DiemConsensusConfigbpl.73:19|
 :skolemid |1574|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@102))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@103 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@103) (ite  (and (<= |l#0@@11| i@@103) (< i@@103 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@103) |l#4@@9|)) |l#5@@9|))
 :qid |DiemConsensusConfigbpl.82:30|
 :skolemid |1575|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@103))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@29 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@29) (ite  (and (>= j@@29 |l#0@@12|) (< j@@29 |l#1@@11|)) (ite (< j@@29 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@29) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@29 |l#5@@10|))) |l#6@@6|))
 :qid |DiemConsensusConfigbpl.63:20|
 :skolemid |1576|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@29))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@11| Int) (|l#6@@7| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@104 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@104) (ite  (and (>= i@@104 |l#0@@13|) (< i@@104 |l#1@@12|)) (ite (< i@@104 |l#2@@11|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@11| i@@104) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@11| (- i@@104 |l#5@@11|))) |l#6@@7|))
 :qid |DiemConsensusConfigbpl.73:19|
 :skolemid |1577|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@104))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@105 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@105) (ite  (and (<= |l#0@@14| i@@105) (< i@@105 |l#1@@13|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#2@@12| (- (- |l#3@@12| i@@105) |l#4@@12|)) |l#5@@12|))
 :qid |DiemConsensusConfigbpl.82:30|
 :skolemid |1578|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@105))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@13| Int) (|l#6@@8| |T@$1_Diem_PreburnWithMetadata'#0'|) (j@@30 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@30) (ite  (and (>= j@@30 |l#0@@15|) (< j@@30 |l#1@@14|)) (ite (< j@@30 |l#2@@13|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@13| j@@30) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@13| (+ j@@30 |l#5@@13|))) |l#6@@8|))
 :qid |DiemConsensusConfigbpl.63:20|
 :skolemid |1579|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@30))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@14| Int) (|l#6@@9| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@106 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@106) (ite  (and (>= i@@106 |l#0@@16|) (< i@@106 |l#1@@15|)) (ite (< i@@106 |l#2@@14|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@14| i@@106) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@14| (- i@@106 |l#5@@14|))) |l#6@@9|))
 :qid |DiemConsensusConfigbpl.73:19|
 :skolemid |1580|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@106))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@107 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@107) (ite  (and (<= |l#0@@17| i@@107) (< i@@107 |l#1@@16|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#2@@15| (- (- |l#3@@15| i@@107) |l#4@@15|)) |l#5@@15|))
 :qid |DiemConsensusConfigbpl.82:30|
 :skolemid |1581|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@107))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@16| Int) (|l#6@@10| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (j@@31 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@31) (ite  (and (>= j@@31 |l#0@@18|) (< j@@31 |l#1@@17|)) (ite (< j@@31 |l#2@@16|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@16| j@@31) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@16| (+ j@@31 |l#5@@16|))) |l#6@@10|))
 :qid |DiemConsensusConfigbpl.63:20|
 :skolemid |1582|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@31))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@17| Int) (|l#6@@11| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@108 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@108) (ite  (and (>= i@@108 |l#0@@19|) (< i@@108 |l#1@@18|)) (ite (< i@@108 |l#2@@17|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@17| i@@108) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@17| (- i@@108 |l#5@@17|))) |l#6@@11|))
 :qid |DiemConsensusConfigbpl.73:19|
 :skolemid |1583|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@108))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@109 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@109) (ite  (and (<= |l#0@@20| i@@109) (< i@@109 |l#1@@19|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#2@@18| (- (- |l#3@@18| i@@109) |l#4@@18|)) |l#5@@18|))
 :qid |DiemConsensusConfigbpl.82:30|
 :skolemid |1584|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@109))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@19| Int) (|l#6@@12| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (j@@32 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@32) (ite  (and (>= j@@32 |l#0@@21|) (< j@@32 |l#1@@20|)) (ite (< j@@32 |l#2@@19|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@19| j@@32) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@19| (+ j@@32 |l#5@@19|))) |l#6@@12|))
 :qid |DiemConsensusConfigbpl.63:20|
 :skolemid |1585|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@32))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@20| Int) (|l#6@@13| T@$1_VASPDomain_VASPDomain) (i@@110 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@110) (ite  (and (>= i@@110 |l#0@@22|) (< i@@110 |l#1@@21|)) (ite (< i@@110 |l#2@@20|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@20| i@@110) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@20| (- i@@110 |l#5@@20|))) |l#6@@13|))
 :qid |DiemConsensusConfigbpl.73:19|
 :skolemid |1586|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@110))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| T@$1_VASPDomain_VASPDomain) (i@@111 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@111) (ite  (and (<= |l#0@@23| i@@111) (< i@@111 |l#1@@22|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@21| (- (- |l#3@@21| i@@111) |l#4@@21|)) |l#5@@21|))
 :qid |DiemConsensusConfigbpl.82:30|
 :skolemid |1587|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@111))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@22| Int) (|l#6@@14| T@$1_VASPDomain_VASPDomain) (j@@33 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@33) (ite  (and (>= j@@33 |l#0@@24|) (< j@@33 |l#1@@23|)) (ite (< j@@33 |l#2@@22|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@22| j@@33) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@22| (+ j@@33 |l#5@@22|))) |l#6@@14|))
 :qid |DiemConsensusConfigbpl.63:20|
 :skolemid |1588|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@33))
)))
(assert (forall ((|l#0@@25| Int) (|l#1@@24| Int) (|l#2@@23| Int) (|l#3@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@23| Int) (|l#6@@15| T@$1_ValidatorConfig_Config) (i@@112 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@112) (ite  (and (>= i@@112 |l#0@@25|) (< i@@112 |l#1@@24|)) (ite (< i@@112 |l#2@@23|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@23| i@@112) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@23| (- i@@112 |l#5@@23|))) |l#6@@15|))
 :qid |DiemConsensusConfigbpl.73:19|
 :skolemid |1589|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@112))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@24| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@24| Int) (|l#4@@24| Int) (|l#5@@24| T@$1_ValidatorConfig_Config) (i@@113 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@113) (ite  (and (<= |l#0@@26| i@@113) (< i@@113 |l#1@@25|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@24| (- (- |l#3@@24| i@@113) |l#4@@24|)) |l#5@@24|))
 :qid |DiemConsensusConfigbpl.82:30|
 :skolemid |1590|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@113))
)))
(assert (forall ((|l#0@@27| Int) (|l#1@@26| Int) (|l#2@@25| Int) (|l#3@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@25| Int) (|l#6@@16| T@$1_ValidatorConfig_Config) (j@@34 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@34) (ite  (and (>= j@@34 |l#0@@27|) (< j@@34 |l#1@@26|)) (ite (< j@@34 |l#2@@25|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@25| j@@34) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@25| (+ j@@34 |l#5@@25|))) |l#6@@16|))
 :qid |DiemConsensusConfigbpl.63:20|
 :skolemid |1591|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@34))
)))
(assert (forall ((|l#0@@28| Int) (|l#1@@27| Int) (|l#2@@26| Int) (|l#3@@26| |T@[Int]$1_XDX_XDX|) (|l#4@@26| |T@[Int]$1_XDX_XDX|) (|l#5@@26| Int) (|l#6@@17| T@$1_XDX_XDX) (i@@114 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@114) (ite  (and (>= i@@114 |l#0@@28|) (< i@@114 |l#1@@27|)) (ite (< i@@114 |l#2@@26|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@26| i@@114) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@26| (- i@@114 |l#5@@26|))) |l#6@@17|))
 :qid |DiemConsensusConfigbpl.73:19|
 :skolemid |1592|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@114))
)))
(assert (forall ((|l#0@@29| Int) (|l#1@@28| Int) (|l#2@@27| |T@[Int]$1_XDX_XDX|) (|l#3@@27| Int) (|l#4@@27| Int) (|l#5@@27| T@$1_XDX_XDX) (i@@115 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@115) (ite  (and (<= |l#0@@29| i@@115) (< i@@115 |l#1@@28|)) (|Select__T@[Int]$1_XDX_XDX_| |l#2@@27| (- (- |l#3@@27| i@@115) |l#4@@27|)) |l#5@@27|))
 :qid |DiemConsensusConfigbpl.82:30|
 :skolemid |1593|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@115))
)))
(assert (forall ((|l#0@@30| Int) (|l#1@@29| Int) (|l#2@@28| Int) (|l#3@@28| |T@[Int]$1_XDX_XDX|) (|l#4@@28| |T@[Int]$1_XDX_XDX|) (|l#5@@28| Int) (|l#6@@18| T@$1_XDX_XDX) (j@@35 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@35) (ite  (and (>= j@@35 |l#0@@30|) (< j@@35 |l#1@@29|)) (ite (< j@@35 |l#2@@28|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@28| j@@35) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@28| (+ j@@35 |l#5@@28|))) |l#6@@18|))
 :qid |DiemConsensusConfigbpl.63:20|
 :skolemid |1594|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@35))
)))
(assert (forall ((|l#0@@31| Int) (|l#1@@30| Int) (|l#2@@29| Int) (|l#3@@29| |T@[Int]$1_XUS_XUS|) (|l#4@@29| |T@[Int]$1_XUS_XUS|) (|l#5@@29| Int) (|l#6@@19| T@$1_XUS_XUS) (i@@116 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@116) (ite  (and (>= i@@116 |l#0@@31|) (< i@@116 |l#1@@30|)) (ite (< i@@116 |l#2@@29|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@29| i@@116) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@29| (- i@@116 |l#5@@29|))) |l#6@@19|))
 :qid |DiemConsensusConfigbpl.73:19|
 :skolemid |1595|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@116))
)))
(assert (forall ((|l#0@@32| Int) (|l#1@@31| Int) (|l#2@@30| |T@[Int]$1_XUS_XUS|) (|l#3@@30| Int) (|l#4@@30| Int) (|l#5@@30| T@$1_XUS_XUS) (i@@117 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@117) (ite  (and (<= |l#0@@32| i@@117) (< i@@117 |l#1@@31|)) (|Select__T@[Int]$1_XUS_XUS_| |l#2@@30| (- (- |l#3@@30| i@@117) |l#4@@30|)) |l#5@@30|))
 :qid |DiemConsensusConfigbpl.82:30|
 :skolemid |1596|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@117))
)))
(assert (forall ((|l#0@@33| Int) (|l#1@@32| Int) (|l#2@@31| Int) (|l#3@@31| |T@[Int]$1_XUS_XUS|) (|l#4@@31| |T@[Int]$1_XUS_XUS|) (|l#5@@31| Int) (|l#6@@20| T@$1_XUS_XUS) (j@@36 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@36) (ite  (and (>= j@@36 |l#0@@33|) (< j@@36 |l#1@@32|)) (ite (< j@@36 |l#2@@31|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@31| j@@36) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@31| (+ j@@36 |l#5@@31|))) |l#6@@20|))
 :qid |DiemConsensusConfigbpl.63:20|
 :skolemid |1597|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@36))
)))
(assert (forall ((|l#0@@34| Int) (|l#1@@33| Int) (|l#2@@32| Int) (|l#3@@32| |T@[Int]Vec_27708|) (|l#4@@32| |T@[Int]Vec_27708|) (|l#5@@32| Int) (|l#6@@21| T@Vec_27708) (i@@118 Int) ) (! (= (|Select__T@[Int]Vec_27708_| (|lambda#36| |l#0@@34| |l#1@@33| |l#2@@32| |l#3@@32| |l#4@@32| |l#5@@32| |l#6@@21|) i@@118) (ite  (and (>= i@@118 |l#0@@34|) (< i@@118 |l#1@@33|)) (ite (< i@@118 |l#2@@32|) (|Select__T@[Int]Vec_27708_| |l#3@@32| i@@118) (|Select__T@[Int]Vec_27708_| |l#4@@32| (- i@@118 |l#5@@32|))) |l#6@@21|))
 :qid |DiemConsensusConfigbpl.73:19|
 :skolemid |1598|
 :pattern ( (|Select__T@[Int]Vec_27708_| (|lambda#36| |l#0@@34| |l#1@@33| |l#2@@32| |l#3@@32| |l#4@@32| |l#5@@32| |l#6@@21|) i@@118))
)))
(assert (forall ((|l#0@@35| Int) (|l#1@@34| Int) (|l#2@@33| |T@[Int]Vec_27708|) (|l#3@@33| Int) (|l#4@@33| Int) (|l#5@@33| T@Vec_27708) (i@@119 Int) ) (! (= (|Select__T@[Int]Vec_27708_| (|lambda#37| |l#0@@35| |l#1@@34| |l#2@@33| |l#3@@33| |l#4@@33| |l#5@@33|) i@@119) (ite  (and (<= |l#0@@35| i@@119) (< i@@119 |l#1@@34|)) (|Select__T@[Int]Vec_27708_| |l#2@@33| (- (- |l#3@@33| i@@119) |l#4@@33|)) |l#5@@33|))
 :qid |DiemConsensusConfigbpl.82:30|
 :skolemid |1599|
 :pattern ( (|Select__T@[Int]Vec_27708_| (|lambda#37| |l#0@@35| |l#1@@34| |l#2@@33| |l#3@@33| |l#4@@33| |l#5@@33|) i@@119))
)))
(assert (forall ((|l#0@@36| Int) (|l#1@@35| Int) (|l#2@@34| Int) (|l#3@@34| |T@[Int]Vec_27708|) (|l#4@@34| |T@[Int]Vec_27708|) (|l#5@@34| Int) (|l#6@@22| T@Vec_27708) (j@@37 Int) ) (! (= (|Select__T@[Int]Vec_27708_| (|lambda#38| |l#0@@36| |l#1@@35| |l#2@@34| |l#3@@34| |l#4@@34| |l#5@@34| |l#6@@22|) j@@37) (ite  (and (>= j@@37 |l#0@@36|) (< j@@37 |l#1@@35|)) (ite (< j@@37 |l#2@@34|) (|Select__T@[Int]Vec_27708_| |l#3@@34| j@@37) (|Select__T@[Int]Vec_27708_| |l#4@@34| (+ j@@37 |l#5@@34|))) |l#6@@22|))
 :qid |DiemConsensusConfigbpl.63:20|
 :skolemid |1600|
 :pattern ( (|Select__T@[Int]Vec_27708_| (|lambda#38| |l#0@@36| |l#1@@35| |l#2@@34| |l#3@@34| |l#4@@34| |l#5@@34| |l#6@@22|) j@@37))
)))
(assert (forall ((|l#0@@37| Int) (|l#1@@36| Int) (|l#2@@35| Int) (|l#3@@35| |T@[Int]Int|) (|l#4@@35| |T@[Int]Int|) (|l#5@@35| Int) (|l#6@@23| Int) (i@@120 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#39| |l#0@@37| |l#1@@36| |l#2@@35| |l#3@@35| |l#4@@35| |l#5@@35| |l#6@@23|) i@@120) (ite  (and (>= i@@120 |l#0@@37|) (< i@@120 |l#1@@36|)) (ite (< i@@120 |l#2@@35|) (|Select__T@[Int]Int_| |l#3@@35| i@@120) (|Select__T@[Int]Int_| |l#4@@35| (- i@@120 |l#5@@35|))) |l#6@@23|))
 :qid |DiemConsensusConfigbpl.73:19|
 :skolemid |1601|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#39| |l#0@@37| |l#1@@36| |l#2@@35| |l#3@@35| |l#4@@35| |l#5@@35| |l#6@@23|) i@@120))
)))
(assert (forall ((|l#0@@38| Int) (|l#1@@37| Int) (|l#2@@36| |T@[Int]Int|) (|l#3@@36| Int) (|l#4@@36| Int) (|l#5@@36| Int) (i@@121 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#40| |l#0@@38| |l#1@@37| |l#2@@36| |l#3@@36| |l#4@@36| |l#5@@36|) i@@121) (ite  (and (<= |l#0@@38| i@@121) (< i@@121 |l#1@@37|)) (|Select__T@[Int]Int_| |l#2@@36| (- (- |l#3@@36| i@@121) |l#4@@36|)) |l#5@@36|))
 :qid |DiemConsensusConfigbpl.82:30|
 :skolemid |1602|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#40| |l#0@@38| |l#1@@37| |l#2@@36| |l#3@@36| |l#4@@36| |l#5@@36|) i@@121))
)))
(assert (forall ((|l#0@@39| Int) (|l#1@@38| Int) (|l#2@@37| Int) (|l#3@@37| |T@[Int]Int|) (|l#4@@37| |T@[Int]Int|) (|l#5@@37| Int) (|l#6@@24| Int) (j@@38 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#41| |l#0@@39| |l#1@@38| |l#2@@37| |l#3@@37| |l#4@@37| |l#5@@37| |l#6@@24|) j@@38) (ite  (and (>= j@@38 |l#0@@39|) (< j@@38 |l#1@@38|)) (ite (< j@@38 |l#2@@37|) (|Select__T@[Int]Int_| |l#3@@37| j@@38) (|Select__T@[Int]Int_| |l#4@@37| (+ j@@38 |l#5@@37|))) |l#6@@24|))
 :qid |DiemConsensusConfigbpl.63:20|
 :skolemid |1603|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#41| |l#0@@39| |l#1@@38| |l#2@@37| |l#3@@37| |l#4@@37| |l#5@@37| |l#6@@24|) j@@38))
)))
(assert (forall ((|l#0@@40| |T@[$EventRep]Int|) (|l#1@@39| |T@[$EventRep]Int|) (v@@59 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#42| |l#0@@40| |l#1@@39|) v@@59) (- (|Select__T@[$EventRep]Int_| |l#0@@40| v@@59) (|Select__T@[$EventRep]Int_| |l#1@@39| v@@59)))
 :qid |DiemConsensusConfigbpl.154:29|
 :skolemid |1604|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#42| |l#0@@40| |l#1@@39|) v@@59))
)))
; Valid
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_196301)
(declare-fun _$t1 () Int)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_196120)
(declare-fun $t5 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_261726)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_261662)
(declare-fun $t6 () Int)
(declare-fun |Select__T@[Int]$1_VASP_ParentVASP_| (|T@[Int]$1_VASP_ParentVASP| Int) T@$1_VASP_ParentVASP)
(declare-fun $t7 () Int)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_251204)
(declare-fun _$t3 () Bool)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_220337)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_251085)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_220397)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_266444)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory () T@$Memory_267940)
(declare-fun _$t2 () T@Vec_27708)
(declare-fun $t9@0 () Int)
(declare-fun $abort_flag@62 () Bool)
(declare-fun $abort_code@54 () Int)
(declare-fun $t22 () Bool)
(declare-fun $t18 () Int)
(declare-fun $t9 () Int)
(declare-fun $abort_flag@4 () Bool)
(declare-fun $abort_code@5 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $t11 () Bool)
(declare-fun $t10 () Int)
(declare-fun $t8 () Bool)
(declare-fun $t29 () T@$1_Event_EventHandle)
(declare-fun |Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|T@[Int]$1_DiemAccount_AccountOperationsCapability| Int) T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@2 () T@$Memory_267940)
(declare-fun $t30 () T@$1_DiemAccount_CreateAccountEvent)
(declare-fun $1_Roles_RoleId_$memory@3 () T@$Memory_196301)
(declare-fun $1_DiemAccount_DiemAccount_$memory@2 () T@$Memory_266923)
(declare-fun $1_VASP_ParentVASP_$memory@2 () T@$Memory_261726)
(declare-fun _$t0 () T@$signer)
(declare-fun $1_VASP_ChildVASP_$memory@3 () T@$Memory_261662)
(declare-fun |Select__T@[Int]$1_VASP_ChildVASP_| (|T@[Int]$1_VASP_ChildVASP| Int) T@$1_VASP_ChildVASP)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@11| () T@$Memory_220397)
(declare-fun |Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| Int) |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7| () T@$Memory_220337)
(declare-fun |Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| Int) |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_266923)
(declare-fun |Select__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int) T@$1_DiemAccount_DiemAccount)
(declare-fun $es@0 () T@$EventStore)
(declare-fun $es () T@$EventStore)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_150327_| (|T@[$1_Event_EventHandle]Multiset_150327| T@$1_Event_EventHandle T@Multiset_150327) |T@[$1_Event_EventHandle]Multiset_150327|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_150327|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_150327)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_150327_| (|Store__T@[$1_Event_EventHandle]Multiset_150327_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_150327|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_150327)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_150327_| (|Store__T@[$1_Event_EventHandle]Multiset_150327_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_150327_| ?x0 ?y1))) :weight 0)))
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@10| () T@$Memory_220397)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t6@1| () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6| () T@$Memory_220337)
(declare-fun $abort_flag@40 () Bool)
(declare-fun $abort_code@35 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3| () T@$Memory_220397)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3| () T@$Memory_220337)
(declare-fun $abort_flag@59 () Bool)
(declare-fun $abort_code@51 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7| () T@$Memory_220397)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@4| () T@$Memory_220337)
(declare-fun $abort_flag@22 () Bool)
(declare-fun $abort_code@20 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@9| () T@$Memory_220397)
(declare-fun $abort_code@53 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@5| () T@$Memory_220337)
(declare-fun $abort_flag@61 () Bool)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@8| () T@$Memory_220397)
(declare-fun $abort_code@52 () Int)
(declare-fun $abort_flag@60 () Bool)
(declare-fun $abort_flag@58 () Bool)
(declare-fun $abort_code@50 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@5| () T@$Memory_220397)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t11@1| () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6| () T@$Memory_220397)
(declare-fun inline$$1_DiemAccount_create_signer$0$signer@1 () T@$signer)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@4| () T@$Memory_220397)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| Int |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ( ?x1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)) (! (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t23@1| () |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)
(declare-fun $abort_code@49 () Int)
(declare-fun $abort_flag@57 () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$1$$ret0@1| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$1$$t0@0| () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$1$$t3@1| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun $abort_flag@56 () Bool)
(declare-fun $abort_code@48 () Int)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$1$$t1@0| () Int)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$1$$ret0@0| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun inline$$Not$4$dst@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t21@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t18@1| () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$1$$ret0@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t9@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t17@0| () Int)
(declare-fun inline$$1_Roles_can_hold_balance$1$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$1$$t4@1 () Int)
(declare-fun $abort_flag@54 () Bool)
(declare-fun $abort_code@46 () Int)
(declare-fun $abort_flag@49 () Bool)
(declare-fun $abort_code@42 () Int)
(declare-fun $abort_flag@45 () Bool)
(declare-fun $abort_code@39 () Int)
(declare-fun inline$$1_Roles_can_hold_balance$1$$t2@1 () Bool)
(declare-fun $abort_flag@55 () Bool)
(declare-fun $abort_code@47 () Int)
(declare-fun inline$$1_Roles_has_designated_dealer_role$1$$ret0@1 () Bool)
(declare-fun $abort_flag@53 () Bool)
(declare-fun inline$$1_Roles_has_role$5$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_designated_dealer_role$1$$ret0@0 () Bool)
(declare-fun $abort_flag@51 () Bool)
(declare-fun $abort_code@44 () Int)
(declare-fun inline$$1_Roles_has_role$5$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$5$$t2@1 () Bool)
(declare-fun $abort_flag@52 () Bool)
(declare-fun $abort_code@45 () Int)
(declare-fun inline$$1_Roles_has_role$5$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$5$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$5$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$5$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$5$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$5$$t6@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@43 () Int)
(declare-fun $abort_flag@50 () Bool)
(declare-fun inline$$1_Roles_has_role$5$$t5@1 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$1$$t1@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$1$$ret0@1 () Bool)
(declare-fun $abort_flag@48 () Bool)
(declare-fun inline$$1_Roles_has_role$4$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$1$$ret0@0 () Bool)
(declare-fun $abort_flag@46 () Bool)
(declare-fun $abort_code@40 () Int)
(declare-fun inline$$1_Roles_has_role$4$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$4$$t2@1 () Bool)
(declare-fun $abort_code@41 () Int)
(declare-fun $abort_flag@47 () Bool)
(declare-fun inline$$1_Roles_has_role$4$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$4$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$4$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$4$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$4$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$4$$t6@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$4$$t5@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$1$$ret0@1 () Bool)
(declare-fun $abort_flag@44 () Bool)
(declare-fun inline$$1_Roles_has_role$3$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$1$$ret0@0 () Bool)
(declare-fun $abort_flag@42 () Bool)
(declare-fun $abort_code@37 () Int)
(declare-fun inline$$1_Roles_has_role$3$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$3$$t2@1 () Bool)
(declare-fun $abort_code@38 () Int)
(declare-fun $abort_flag@43 () Bool)
(declare-fun inline$$1_Roles_has_role$3$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$3$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$3$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$3$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$3$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$3$$t6@1 () T@$1_Roles_RoleId)
(declare-fun $abort_flag@41 () Bool)
(declare-fun $abort_code@36 () Int)
(declare-fun inline$$1_Roles_has_role$3$$t5@1 () Bool)
(declare-fun inline$$1_DiemAccount_exists_at$1$$t1@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t14@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t10@0| () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t11@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t8@0| () Int)
(declare-fun inline$$Not$3$dst@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t12@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t10@1| () Bool)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t4@0| () Int)
(declare-fun $abort_flag@39 () Bool)
(declare-fun $abort_code@34 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1| () T@$Memory_220337)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| () T@$Memory_220337)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@0| () T@$Memory_220337)
(declare-fun |Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| Int |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ( ?x1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)) (! (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t23@1| () |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)
(declare-fun $abort_code@33 () Int)
(declare-fun $abort_flag@38 () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@1| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t0@0| () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun $abort_flag@37 () Bool)
(declare-fun $abort_code@32 () Int)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0| () Int)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@0| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun inline$$Not$5$dst@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t18@1| () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$2$$ret0@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0| () Int)
(declare-fun inline$$1_Roles_can_hold_balance$2$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$2$$t4@1 () Int)
(declare-fun $abort_flag@35 () Bool)
(declare-fun $abort_code@30 () Int)
(declare-fun $abort_flag@30 () Bool)
(declare-fun $abort_code@26 () Int)
(declare-fun $abort_flag@26 () Bool)
(declare-fun $abort_code@23 () Int)
(declare-fun inline$$1_Roles_can_hold_balance$2$$t2@1 () Bool)
(declare-fun $abort_flag@36 () Bool)
(declare-fun $abort_code@31 () Int)
(declare-fun inline$$1_Roles_has_designated_dealer_role$2$$ret0@1 () Bool)
(declare-fun $abort_flag@34 () Bool)
(declare-fun inline$$1_Roles_has_role$8$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_designated_dealer_role$2$$ret0@0 () Bool)
(declare-fun $abort_flag@32 () Bool)
(declare-fun $abort_code@28 () Int)
(declare-fun inline$$1_Roles_has_role$8$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$8$$t2@1 () Bool)
(declare-fun $abort_flag@33 () Bool)
(declare-fun $abort_code@29 () Int)
(declare-fun inline$$1_Roles_has_role$8$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$8$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$8$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$8$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$8$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$8$$t6@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@27 () Int)
(declare-fun $abort_flag@31 () Bool)
(declare-fun inline$$1_Roles_has_role$8$$t5@1 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$2$$t1@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$2$$ret0@1 () Bool)
(declare-fun $abort_flag@29 () Bool)
(declare-fun inline$$1_Roles_has_role$7$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$2$$ret0@0 () Bool)
(declare-fun $abort_flag@27 () Bool)
(declare-fun $abort_code@24 () Int)
(declare-fun inline$$1_Roles_has_role$7$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$7$$t2@1 () Bool)
(declare-fun $abort_code@25 () Int)
(declare-fun $abort_flag@28 () Bool)
(declare-fun inline$$1_Roles_has_role$7$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$7$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$7$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$7$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$7$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$7$$t6@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$7$$t5@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$2$$ret0@1 () Bool)
(declare-fun $abort_flag@25 () Bool)
(declare-fun inline$$1_Roles_has_role$6$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$2$$ret0@0 () Bool)
(declare-fun $abort_flag@23 () Bool)
(declare-fun $abort_code@21 () Int)
(declare-fun inline$$1_Roles_has_role$6$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$6$$t2@1 () Bool)
(declare-fun $abort_flag@24 () Bool)
(declare-fun $abort_code@22 () Int)
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
(declare-fun inline$$Not$2$dst@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t9@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t7@1| () Bool)
(declare-fun $abort_flag@21 () Bool)
(declare-fun $abort_code@19 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1| () T@$Memory_220397)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| () T@$Memory_220397)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@0| () T@$Memory_220397)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t23@1| () |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)
(declare-fun $abort_code@18 () Int)
(declare-fun $abort_flag@20 () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0| () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun $abort_flag@19 () Bool)
(declare-fun $abort_code@17 () Int)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0| () Int)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@0| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun inline$$Not$1$dst@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t18@1| () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$0$$ret0@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0| () Int)
(declare-fun inline$$1_Roles_can_hold_balance$0$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$0$$t4@1 () Int)
(declare-fun $abort_flag@17 () Bool)
(declare-fun $abort_code@15 () Int)
(declare-fun $abort_flag@12 () Bool)
(declare-fun $abort_code@11 () Int)
(declare-fun $abort_flag@8 () Bool)
(declare-fun $abort_code@8 () Int)
(declare-fun inline$$1_Roles_can_hold_balance$0$$t2@1 () Bool)
(declare-fun $abort_flag@18 () Bool)
(declare-fun $abort_code@16 () Int)
(declare-fun inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 () Bool)
(declare-fun $abort_flag@16 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_designated_dealer_role$0$$ret0@0 () Bool)
(declare-fun $abort_flag@14 () Bool)
(declare-fun $abort_code@13 () Int)
(declare-fun inline$$1_Roles_has_role$2$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t2@1 () Bool)
(declare-fun $abort_flag@15 () Bool)
(declare-fun $abort_code@14 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$2$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$2$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t6@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@12 () Int)
(declare-fun $abort_flag@13 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t5@1 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$0$$t1@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$0$$ret0@1 () Bool)
(declare-fun $abort_flag@11 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$0$$ret0@0 () Bool)
(declare-fun $abort_flag@9 () Bool)
(declare-fun $abort_code@9 () Int)
(declare-fun inline$$1_Roles_has_role$1$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t2@1 () Bool)
(declare-fun $abort_code@10 () Int)
(declare-fun $abort_flag@10 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$1$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$1$$t6@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t5@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 () Bool)
(declare-fun $abort_flag@7 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$0$$ret0@0 () Bool)
(declare-fun $abort_flag@5 () Bool)
(declare-fun $abort_code@6 () Int)
(declare-fun inline$$1_Roles_has_role$0$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t2@1 () Bool)
(declare-fun $abort_flag@6 () Bool)
(declare-fun $abort_code@7 () Int)
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
(declare-fun $t23 () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun $t24 () T@$1_Event_EventHandle)
(declare-fun $t25 () T@$1_DiemAccount_CreateAccountEvent)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@2 () T@$Memory_266444)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int) T@$1_AccountFreezing_FreezingBit)
(declare-fun $t19 () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun $t26 () T@$1_DiemAccount_CreateAccountEvent)
(declare-fun $t27 () T@$1_Event_EventHandle)
(declare-fun $t28 () Int)
(declare-fun |$temp_0'bool'@3| () Bool)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@1 () T@$Memory_267940)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@0 () T@$Memory_267940)
(declare-fun |Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|T@[Int]$1_DiemAccount_AccountOperationsCapability| Int T@$1_DiemAccount_AccountOperationsCapability) |T@[Int]$1_DiemAccount_AccountOperationsCapability|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ( ?x1 Int) ( ?x2 T@$1_DiemAccount_AccountOperationsCapability)) (! (= (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemAccount_AccountOperationsCapability)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemAccount_AccountOperationsCapability'@0| () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun |$temp_0'bool'@2| () Bool)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@1 () T@$Memory_266444)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@0 () T@$Memory_266444)
(declare-fun |Store__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int T@$1_AccountFreezing_FreezingBit) |T@[Int]$1_AccountFreezing_FreezingBit|)
(assert (forall ( ( ?x0 |T@[Int]$1_AccountFreezing_FreezingBit|) ( ?x1 Int) ( ?x2 T@$1_AccountFreezing_FreezingBit)) (! (= (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_AccountFreezing_FreezingBit|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_AccountFreezing_FreezingBit)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_AccountFreezing_FreezingBit'@0| () T@$1_AccountFreezing_FreezingBit)
(declare-fun |$temp_0'bool'@1| () Bool)
(declare-fun $1_Event_EventHandleGenerator_$memory@1 () T@$Memory_188757)
(declare-fun $1_Event_EventHandleGenerator_$memory () T@$Memory_188757)
(declare-fun $1_Event_EventHandleGenerator_$memory@0 () T@$Memory_188757)
(declare-fun |Store__T@[Int]$1_Event_EventHandleGenerator_| (|T@[Int]$1_Event_EventHandleGenerator| Int T@$1_Event_EventHandleGenerator) |T@[Int]$1_Event_EventHandleGenerator|)
(declare-fun |Select__T@[Int]$1_Event_EventHandleGenerator_| (|T@[Int]$1_Event_EventHandleGenerator| Int) T@$1_Event_EventHandleGenerator)
(assert (forall ( ( ?x0 |T@[Int]$1_Event_EventHandleGenerator|) ( ?x1 Int) ( ?x2 T@$1_Event_EventHandleGenerator)) (! (= (|Select__T@[Int]$1_Event_EventHandleGenerator_| (|Store__T@[Int]$1_Event_EventHandleGenerator_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Event_EventHandleGenerator|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Event_EventHandleGenerator)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Event_EventHandleGenerator_| (|Store__T@[Int]$1_Event_EventHandleGenerator_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Event_EventHandleGenerator_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Event_EventHandleGenerator'@0| () T@$1_Event_EventHandleGenerator)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $1_DiemAccount_DiemAccount_$memory@1 () T@$Memory_266923)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0 () T@$Memory_266923)
(declare-fun |Store__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int T@$1_DiemAccount_DiemAccount) |T@[Int]$1_DiemAccount_DiemAccount|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemAccount_DiemAccount'@0| () T@$1_DiemAccount_DiemAccount)
(declare-fun $t20 () Int)
(declare-fun $t21 () Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun $1_VASP_ChildVASP_$memory@1 () T@$Memory_261662)
(declare-fun $1_VASP_ParentVASP_$memory@0 () T@$Memory_261726)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t16@1 () Int)
(declare-fun $1_VASP_ChildVASP_$memory@2 () T@$Memory_261662)
(declare-fun $1_VASP_ParentVASP_$memory@1 () T@$Memory_261726)
(declare-fun $1_VASP_ChildVASP_$memory@0 () T@$Memory_261662)
(declare-fun |Store__T@[Int]$1_VASP_ChildVASP_| (|T@[Int]$1_VASP_ChildVASP| Int T@$1_VASP_ChildVASP) |T@[Int]$1_VASP_ChildVASP|)
(assert (forall ( ( ?x0 |T@[Int]$1_VASP_ChildVASP|) ( ?x1 Int) ( ?x2 T@$1_VASP_ChildVASP)) (! (= (|Select__T@[Int]$1_VASP_ChildVASP_| (|Store__T@[Int]$1_VASP_ChildVASP_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_VASP_ChildVASP|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_VASP_ChildVASP)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_VASP_ChildVASP_| (|Store__T@[Int]$1_VASP_ChildVASP_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_VASP_ChildVASP_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t37@1 () T@$1_VASP_ChildVASP)
(declare-fun $abort_code@3 () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t28@2 () T@$Mutation_17352)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t28@1 () T@$Mutation_17352)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t27@3 () T@$Mutation_262045)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t27@2 () T@$Mutation_262045)
(declare-fun |Store__T@[Int]$1_VASP_ParentVASP_| (|T@[Int]$1_VASP_ParentVASP| Int T@$1_VASP_ParentVASP) |T@[Int]$1_VASP_ParentVASP|)
(assert (forall ( ( ?x0 |T@[Int]$1_VASP_ParentVASP|) ( ?x1 Int) ( ?x2 T@$1_VASP_ParentVASP)) (! (= (|Select__T@[Int]$1_VASP_ParentVASP_| (|Store__T@[Int]$1_VASP_ParentVASP_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_VASP_ParentVASP|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_VASP_ParentVASP)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_VASP_ParentVASP_| (|Store__T@[Int]$1_VASP_ParentVASP_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_VASP_ParentVASP_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t23@0 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t34@1 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t33@0 () Int)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t29@1 () Int)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_VASP_publish_child_vasp_credential$0$$temp_0'u64'@1| () Int)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t27@0 () T@$Mutation_262045)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t27@1 () T@$Mutation_262045)
(declare-fun MapConstVec_16957 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_16957 () Int)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t24@0 () Bool)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t26@0 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t22@0 () Int)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t19@0 () Bool)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t17@0 () Bool)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t18@0 () Int)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t16@0 () Int)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t15@0 () Bool)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t14@0 () Int)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t9@0 () T@$Mutation_17352)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t28@0 () T@$Mutation_17352)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t11@0 () Int)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t12@0 () Int)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t13@0 () Int)
(declare-fun $t15 () Int)
(declare-fun $t16 () Int)
(declare-fun $t17 () Int)
(declare-fun inline$$1_Roles_new_child_vasp_role$0$$t6@0 () Int)
(declare-fun inline$$1_Roles_new_child_vasp_role$0$$t9@0 () Bool)
(declare-fun inline$$1_Roles_new_child_vasp_role$0$$t5@0 () Bool)
(declare-fun inline$$1_Roles_new_child_vasp_role$0$$t4@0 () Int)
(declare-fun $1_Roles_RoleId_$memory@2 () T@$Memory_196301)
(declare-fun $abort_code@0 () Int)
(declare-fun |inline$$1_Roles_new_child_vasp_role$0$$temp_0'bool'@1| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1 () T@$Memory_196301)
(declare-fun $1_Roles_RoleId_$memory@0 () T@$Memory_196301)
(declare-fun |Store__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int T@$1_Roles_RoleId) |T@[Int]$1_Roles_RoleId|)
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Roles_RoleId_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Roles_new_child_vasp_role$0$$temp_0'$1_Roles_RoleId'@1| () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_new_child_vasp_role$0$$t8@0 () Int)
(declare-fun inline$$1_Roles_new_child_vasp_role$0$$t2@0 () Int)
(declare-fun inline$$1_Roles_new_child_vasp_role$0$$t3@0 () Int)
(declare-fun $t13 () Int)
(declare-fun $t14 () Int)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_200933)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_202497)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_203980)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_204530)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_204013)
(declare-fun $1_DiemSystem_CapabilityHolder_$memory () T@$Memory_250754)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_204629)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory| () T@$Memory_251604)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |$1_Diem_MintCapability'$1_XDX_XDX'_$memory| () T@$Memory_251668)
(declare-fun |$1_Diem_Preburn'$1_XUS_XUS'_$memory| () T@$Memory_257677)
(declare-fun |$1_Diem_Preburn'$1_XDX_XDX'_$memory| () T@$Memory_257758)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory| () T@$Memory_259288)
(declare-fun $1_XDX_Reserve_$memory () T@$Memory_259941)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory| () T@$Memory_259507)
(declare-fun |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory| () T@$Memory_264141)
(declare-fun $1_DualAttestation_Limit_$memory () T@$Memory_264320)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_220222)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory| () T@$Memory_204693)
(declare-fun $1_ChainId_ChainId_$memory () T@$Memory_266411)
(declare-fun $1_AccountFreezing_FreezeEventsHolder_$memory () T@$Memory_266756)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory () T@$Memory_268377)
(declare-fun $1_VASPDomain_VASPDomainManager_$memory () T@$Memory_260270)
(declare-fun $1_VASPDomain_VASPDomains_$memory () T@$Memory_260206)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_266191)
(declare-fun $1_RecoveryAddress_RecoveryAddress_$memory () T@$Memory_274285)
(declare-fun $1_DiemBlock_BlockMetadata_$memory () T@$Memory_274388)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory| () T@$Memory_204175)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory| () T@$Memory_204256)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(push 1)
(set-info :boogie-vc-id $1_DiemAccount_create_child_vasp_account$verify_instantiated_1)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 693955) (let ((L2_correct  (and (=> (= (ControlFlow 0 473366) (- 0 706390)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) _$t1) (not (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) $t5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) $t5)) 5))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_261726| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_261662| $1_VASP_ChildVASP_$memory) _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_261726| $1_VASP_ParentVASP_$memory) $t6))) (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_261726| $1_VASP_ParentVASP_$memory) $t6)) 1) 65536)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) $t7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) $t7)) 5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_251204| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_220337| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_251085| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_251204| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (= _$t1 0)) (= _$t1 1)) (|Select__T@[Int]Bool_| (|domain#$Memory_266444| $1_AccountFreezing_FreezingBit_$memory) _$t1)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_267940| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)))) (not (= (+ 16 (|l#Vec_27708| _$t2)) 32)))) (=> (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) _$t1) (not (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) $t5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) $t5)) 5))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_261726| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_261662| $1_VASP_ChildVASP_$memory) _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_261726| $1_VASP_ParentVASP_$memory) $t6))) (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_261726| $1_VASP_ParentVASP_$memory) $t6)) 1) 65536)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) $t7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) $t7)) 5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_251204| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_220337| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_251085| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_251204| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (= _$t1 0)) (= _$t1 1)) (|Select__T@[Int]Bool_| (|domain#$Memory_266444| $1_AccountFreezing_FreezingBit_$memory) _$t1)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_267940| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)))) (not (= (+ 16 (|l#Vec_27708| _$t2)) 32))) (=> (= (ControlFlow 0 473366) (- 0 706572)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) _$t1) (= 6 $t9@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t9@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) $t5)) (= 5 $t9@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) $t5)) 5)) (= 3 $t9@0))) (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_261726| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_261662| $1_VASP_ChildVASP_$memory) _$t1)) (= 6 $t9@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_261726| $1_VASP_ParentVASP_$memory) $t6)) (= 7 $t9@0))) (and (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_261726| $1_VASP_ParentVASP_$memory) $t6)) 1) 65536) (= 8 $t9@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) $t7)) (= 5 $t9@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) $t7)) 5)) (= 3 $t9@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_251204| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 $t9@0))) (and (and (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_220337| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_251085| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= 5 $t9@0))) (and (and (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_251204| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (= 5 $t9@0))) (and (= _$t1 0) (= 7 $t9@0))) (and (= _$t1 1) (= 7 $t9@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_266444| $1_AccountFreezing_FreezingBit_$memory) _$t1) (= 6 $t9@0))) (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_267940| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (= 5 $t9@0))) (and (not (= (+ 16 (|l#Vec_27708| _$t2)) 32)) (= 7 $t9@0))))))))
(let ((anon41_Then_correct  (=> (and (and $abort_flag@62 (= $abort_code@54 $abort_code@54)) (and (= $t9@0 $abort_code@54) (= (ControlFlow 0 472802) 473366))) L2_correct)))
(let ((anon36_Then_correct  (=> $t22 (=> (and (and (or (or (or (or (and (= $t18 0) (= 7 $t9)) (and (= $t18 1) (= 7 $t9))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_266444| $1_AccountFreezing_FreezingBit_$memory) $t18) (= 6 $t9))) (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_267940| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (= 5 $t9))) (and (not (= (+ 16 (|l#Vec_27708| _$t2)) 32)) (= 7 $t9))) (= $t9 $t9)) (and (= $t9@0 $t9) (= (ControlFlow 0 473520) 473366))) L2_correct))))
(let ((anon35_Then_correct  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= $t9@0 $abort_code@5) (= (ControlFlow 0 473534) 473366))) L2_correct)))
(let ((anon34_Then_correct  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= $t9@0 $abort_code@5) (= (ControlFlow 0 473548) 473366))) L2_correct)))
(let ((anon33_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t9@0 $abort_code@1) (= (ControlFlow 0 473562) 473366))) L2_correct)))
(let ((anon31_Then_correct  (=> $t11 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) $t10)) (= 5 $t9)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) $t10)) 5)) (= 3 $t9))) (= $t9 $t9)) (and (= $t9@0 $t9) (= (ControlFlow 0 473628) 473366))) L2_correct))))
(let ((anon30_Then_correct  (=> $t8 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t9)) (= $t9 $t9)) (and (= $t9@0 $t9) (= (ControlFlow 0 473654) 473366))) L2_correct))))
(let ((anon41_Else_correct  (=> (not $abort_flag@62) (=> (and (= $t29 (|$creation_events#$1_DiemAccount_AccountOperationsCapability| (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_267940| $1_DiemAccount_AccountOperationsCapability_$memory@2) 173345816))) (= $t30 ($1_DiemAccount_CreateAccountEvent _$t1 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory@3) _$t1))))) (and (=> (= (ControlFlow 0 472788) (- 0 705824)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) _$t1))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) _$t1)) (and (=> (= (ControlFlow 0 472788) (- 0 705833)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 472788) (- 0 705843)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) $t5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) $t5))) (and (=> (= (ControlFlow 0 472788) (- 0 705855)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) $t5)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) $t5)) 5))) (and (=> (= (ControlFlow 0 472788) (- 0 705873)) (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_261726| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_261662| $1_VASP_ChildVASP_$memory) _$t1)))) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_261726| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_261662| $1_VASP_ChildVASP_$memory) _$t1))) (and (=> (= (ControlFlow 0 472788) (- 0 705883)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_261726| $1_VASP_ParentVASP_$memory) $t6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_261726| $1_VASP_ParentVASP_$memory) $t6))) (and (=> (= (ControlFlow 0 472788) (- 0 705895)) (not (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_261726| $1_VASP_ParentVASP_$memory) $t6)) 1) 65536))) (=> (not (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_261726| $1_VASP_ParentVASP_$memory) $t6)) 1) 65536)) (and (=> (= (ControlFlow 0 472788) (- 0 705913)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) $t7)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) $t7))) (and (=> (= (ControlFlow 0 472788) (- 0 705925)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) $t7)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) $t7)) 5))) (and (=> (= (ControlFlow 0 472788) (- 0 705943)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_251204| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_251204| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 472788) (- 0 705950)) (not (and (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_220337| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_251085| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (=> (not (and (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_220337| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_251085| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 472788) (- 0 705968)) (not (and (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_251204| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (=> (not (and (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_251204| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 472788) (- 0 705989)) (not (= _$t1 0))) (=> (not (= _$t1 0)) (and (=> (= (ControlFlow 0 472788) (- 0 705999)) (not (= _$t1 1))) (=> (not (= _$t1 1)) (and (=> (= (ControlFlow 0 472788) (- 0 706009)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_266444| $1_AccountFreezing_FreezingBit_$memory) _$t1))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_266444| $1_AccountFreezing_FreezingBit_$memory) _$t1)) (and (=> (= (ControlFlow 0 472788) (- 0 706018)) (not (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_267940| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))))) (=> (not (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_267940| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)))) (and (=> (= (ControlFlow 0 472788) (- 0 706035)) (not (not (= (+ 16 (|l#Vec_27708| _$t2)) 32)))) (=> (not (not (= (+ 16 (|l#Vec_27708| _$t2)) 32))) (and (=> (= (ControlFlow 0 472788) (- 0 706053)) (|Select__T@[Int]Bool_| (|domain#$Memory_266923| $1_DiemAccount_DiemAccount_$memory@2) _$t1)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_266923| $1_DiemAccount_DiemAccount_$memory@2) _$t1) (and (=> (= (ControlFlow 0 472788) (- 0 706060)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory@3) _$t1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory@3) _$t1)) 6))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory@3) _$t1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory@3) _$t1)) 6)) (and (=> (= (ControlFlow 0 472788) (- 0 706067)) (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_261726| $1_VASP_ParentVASP_$memory@2) (|$addr#$signer| _$t0))) (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_261726| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0))) 1))) (=> (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_261726| $1_VASP_ParentVASP_$memory@2) (|$addr#$signer| _$t0))) (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_261726| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0))) 1)) (and (=> (= (ControlFlow 0 472788) (- 0 706088)) (|Select__T@[Int]Bool_| (|domain#$Memory_261662| $1_VASP_ChildVASP_$memory@3) _$t1)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_261662| $1_VASP_ChildVASP_$memory@3) _$t1) (and (=> (= (ControlFlow 0 472788) (- 0 706095)) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_261726| $1_VASP_ParentVASP_$memory@2) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_261662| $1_VASP_ChildVASP_$memory@3) _$t1))) (|$addr#$signer| _$t0))) (=> (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_261726| $1_VASP_ParentVASP_$memory@2) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_261662| $1_VASP_ChildVASP_$memory@3) _$t1))) (|$addr#$signer| _$t0)) (and (=> (= (ControlFlow 0 472788) (- 0 706108)) (|Select__T@[Int]Bool_| (|domain#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@11|) _$t1)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@11|) _$t1) (and (=> (= (ControlFlow 0 472788) (- 0 706115)) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@11|) _$t1) (|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$1_Diem_Diem'$1_XDX_XDX'| 0)))) (=> (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@11|) _$t1) (|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$1_Diem_Diem'$1_XDX_XDX'| 0))) (and (=> (= (ControlFlow 0 472788) (- 0 706130)) (=> (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_220337| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1))) (|Select__T@[Int]Bool_| (|domain#$Memory_220337| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1))) (=> (=> (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_220337| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1))) (|Select__T@[Int]Bool_| (|domain#$Memory_220337| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1)) (and (=> (= (ControlFlow 0 472788) (- 0 706148)) (=> (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_220337| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1))) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_220337| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1) (|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$1_Diem_Diem'$1_XUS_XUS'| 0))))) (=> (=> (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_220337| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1))) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_220337| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1) (|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$1_Diem_Diem'$1_XUS_XUS'| 0)))) (and (=> (= (ControlFlow 0 472788) (- 0 706174)) (=> (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@11|) _$t1))) (|Select__T@[Int]Bool_| (|domain#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@11|) _$t1))) (=> (=> (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@11|) _$t1))) (|Select__T@[Int]Bool_| (|domain#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@11|) _$t1)) (and (=> (= (ControlFlow 0 472788) (- 0 706192)) (=> (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@11|) _$t1))) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@11|) _$t1) (|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$1_Diem_Diem'$1_XDX_XDX'| 0))))) (=> (=> (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@11|) _$t1))) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@11|) _$t1) (|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$1_Diem_Diem'$1_XDX_XDX'| 0)))) (and (=> (= (ControlFlow 0 472788) (- 0 706218)) (forall ((addr Int) ) (!  (=> (|$IsValid'address'| addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_266923| $1_DiemAccount_DiemAccount_$memory) addr) (|$IsEqual'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_266923| $1_DiemAccount_DiemAccount_$memory@2) addr)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_266923| $1_DiemAccount_DiemAccount_$memory) addr)))))
 :qid |DiemConsensusConfigbpl.23191:15|
 :skolemid |747|
))) (=> (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_266923| $1_DiemAccount_DiemAccount_$memory) addr@@0) (|$IsEqual'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_266923| $1_DiemAccount_DiemAccount_$memory@2) addr@@0)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_266923| $1_DiemAccount_DiemAccount_$memory) addr@@0)))))
 :qid |DiemConsensusConfigbpl.23191:15|
 :skolemid |747|
)) (and (=> (= (ControlFlow 0 472788) (- 0 706253)) (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@1) (>= (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@11|) addr@@1))) (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@1))))))
 :qid |DiemConsensusConfigbpl.23196:15|
 :skolemid |748|
))) (=> (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@2) (>= (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@11|) addr@@2))) (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@2))))))
 :qid |DiemConsensusConfigbpl.23196:15|
 :skolemid |748|
)) (and (=> (= (ControlFlow 0 472788) (- 0 706292)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_150327_| (|streams#$EventStore| $EmptyEventStore) $t29)))
(let ((stream_new (let ((len (|l#Multiset_150327| stream@@0)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_150327| stream@@0) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t30))))
(Multiset_150327 (|Store__T@[$EventRep]Int_| (|v#Multiset_150327| stream@@0) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t30) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_150327_| (|streams#$EventStore| $EmptyEventStore) $t29 stream_new))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@1 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_150327| (|Select__T@[$1_Event_EventHandle]Multiset_150327_| (|streams#$EventStore| expected) handle@@1)) (|l#Multiset_150327| (|Select__T@[$1_Event_EventHandle]Multiset_150327_| (|streams#$EventStore| actual) handle@@1))) (forall ((v@@60 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_150327| (|Select__T@[$1_Event_EventHandle]Multiset_150327_| (|streams#$EventStore| expected) handle@@1)) v@@60) (|Select__T@[$EventRep]Int_| (|v#Multiset_150327| (|Select__T@[$1_Event_EventHandle]Multiset_150327_| (|streams#$EventStore| actual) handle@@1)) v@@60))
 :qid |DiemConsensusConfigbpl.164:13|
 :skolemid |5|
)))
 :qid |DiemConsensusConfigbpl.3327:13|
 :skolemid |120|
)))))) (=> (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@0 (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_150327_| (|streams#$EventStore| $EmptyEventStore) $t29)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_150327| stream@@1)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_150327| stream@@1) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t30))))
(Multiset_150327 (|Store__T@[$EventRep]Int_| (|v#Multiset_150327| stream@@1) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t30) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_150327_| (|streams#$EventStore| $EmptyEventStore) $t29 stream_new@@0))))))
 (and (<= (|counter#$EventStore| expected@@0) (|counter#$EventStore| actual@@0)) (forall ((handle@@2 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_150327| (|Select__T@[$1_Event_EventHandle]Multiset_150327_| (|streams#$EventStore| expected@@0) handle@@2)) (|l#Multiset_150327| (|Select__T@[$1_Event_EventHandle]Multiset_150327_| (|streams#$EventStore| actual@@0) handle@@2))) (forall ((v@@61 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_150327| (|Select__T@[$1_Event_EventHandle]Multiset_150327_| (|streams#$EventStore| expected@@0) handle@@2)) v@@61) (|Select__T@[$EventRep]Int_| (|v#Multiset_150327| (|Select__T@[$1_Event_EventHandle]Multiset_150327_| (|streams#$EventStore| actual@@0) handle@@2)) v@@61))
 :qid |DiemConsensusConfigbpl.164:13|
 :skolemid |5|
)))
 :qid |DiemConsensusConfigbpl.3327:13|
 :skolemid |120|
))))) (=> (= (ControlFlow 0 472788) (- 0 706317)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@1 (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_150327_| (|streams#$EventStore| $EmptyEventStore) $t29)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_150327| stream@@2)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_150327| stream@@2) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t30))))
(Multiset_150327 (|Store__T@[$EventRep]Int_| (|v#Multiset_150327| stream@@2) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t30) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_150327_| (|streams#$EventStore| $EmptyEventStore) $t29 stream_new@@1))))))
 (and (<= (|counter#$EventStore| actual@@1) (|counter#$EventStore| expected@@1)) (forall ((handle@@3 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_150327| (|Select__T@[$1_Event_EventHandle]Multiset_150327_| (|streams#$EventStore| actual@@1) handle@@3)) (|l#Multiset_150327| (|Select__T@[$1_Event_EventHandle]Multiset_150327_| (|streams#$EventStore| expected@@1) handle@@3))) (forall ((v@@62 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_150327| (|Select__T@[$1_Event_EventHandle]Multiset_150327_| (|streams#$EventStore| actual@@1) handle@@3)) v@@62) (|Select__T@[$EventRep]Int_| (|v#Multiset_150327| (|Select__T@[$1_Event_EventHandle]Multiset_150327_| (|streams#$EventStore| expected@@1) handle@@3)) v@@62))
 :qid |DiemConsensusConfigbpl.164:13|
 :skolemid |5|
)))
 :qid |DiemConsensusConfigbpl.3327:13|
 :skolemid |120|
))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$L12_correct|  (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@11| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@10|) (= $abort_code@54 |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t6@1|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6|) (= $abort_flag@62 true))) (and (=> (= (ControlFlow 0 468228) 472802) anon41_Then_correct) (=> (= (ControlFlow 0 468228) 472788) anon41_Else_correct)))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon21_Then_correct|  (=> (and $abort_flag@40 (= $abort_code@35 $abort_code@35)) (=> (and (and (= |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t6@1| $abort_code@35) (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@10| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3|) (= (ControlFlow 0 472150) 468228))) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$L12_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon23_Then_correct|  (=> (and $abort_flag@59 (= $abort_code@51 $abort_code@51)) (=> (and (and (= |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t6@1| $abort_code@51) (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@10| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@4|) (= (ControlFlow 0 468222) 468228))) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$L12_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon18_Then_correct|  (=> (and $abort_flag@22 (= $abort_code@20 $abort_code@20)) (=> (and (and (= |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t6@1| $abort_code@20) (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@10| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 472164) 468228))) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$L12_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$L10_correct|  (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@11| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@9|) (= $abort_code@54 $abort_code@53)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@5|) (= $abort_flag@62 $abort_flag@61))) (and (=> (= (ControlFlow 0 464192) 472802) anon41_Then_correct) (=> (= (ControlFlow 0 464192) 472788) anon41_Else_correct)))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$L9_correct|  (=> (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@9| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@8|) (=> (and (and (= $abort_code@53 $abort_code@52) (= $abort_flag@61 $abort_flag@60)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@5| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@4|) (= (ControlFlow 0 464302) 464192))) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$L10_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon23_Else_correct|  (=> (not $abort_flag@59) (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@8| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7|) (= $abort_code@52 $abort_code@51)) (and (= $abort_flag@60 $abort_flag@59) (= (ControlFlow 0 468208) 464302))) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$L9_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon31_Else_correct|  (=> (and (and (not $abort_flag@58) (= $abort_flag@59 $abort_flag@58)) (and (= $abort_code@51 $abort_code@50) (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@5|))) (and (=> (= (ControlFlow 0 468062) 468222) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 468062) 468208) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon23_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$L7_correct|  (=> (= $abort_flag@59 true) (=> (and (= $abort_code@51 |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t11@1|) (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6|)) (and (=> (= (ControlFlow 0 465143) 468222) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 465143) 468208) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon23_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon31_Then_correct|  (=> $abort_flag@58 (=> (and (and (= $abort_code@50 $abort_code@50) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t11@1| $abort_code@50)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@5|) (= (ControlFlow 0 468076) 465143))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon30_Then$1_correct|  (=> (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@5| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (=> (and (= $abort_code@50 $EXEC_FAILURE_CODE) (= $abort_flag@58 true)) (and (=> (= (ControlFlow 0 468128) 468076) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon31_Then_correct|) (=> (= (ControlFlow 0 468128) 468062) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon30_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 468126) 468128)) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon30_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon30_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@4| ($Memory_220397 (|Store__T@[Int]Bool_| (|domain#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t23@1|))) (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@5| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@4|)) (and (= $abort_code@50 $abort_code@49) (= $abort_flag@58 $abort_flag@57))) (and (=> (= (ControlFlow 0 468052) 468076) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon31_Then_correct|) (=> (= (ControlFlow 0 468052) 468062) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon29_Else_correct|  (=> (and (not $abort_flag@57) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t23@1| (|$1_DiemAccount_Balance'$1_XDX_XDX'| |inline$$1_Diem_zero'$1_XDX_XDX'$1$$ret0@1|))) (and (=> (= (ControlFlow 0 468030) 468126) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon30_Then_correct|) (=> (= (ControlFlow 0 468030) 468052) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon30_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon29_Then_correct|  (=> $abort_flag@57 (=> (and (and (= $abort_code@49 $abort_code@49) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t11@1| $abort_code@49)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (= (ControlFlow 0 468142) 465143))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$L7_correct|))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$1$anon3_Else_correct|  (=> (not |inline$$1_Diem_zero'$1_XDX_XDX'$1$$t0@0|) (=> (and (|$IsValid'u64'| 0) (= |inline$$1_Diem_zero'$1_XDX_XDX'$1$$t3@1| (|$1_Diem_Diem'$1_XDX_XDX'| 0))) (=> (and (and (= |inline$$1_Diem_zero'$1_XDX_XDX'$1$$t3@1| |inline$$1_Diem_zero'$1_XDX_XDX'$1$$t3@1|) (= $abort_flag@57 $abort_flag@56)) (and (= $abort_code@49 $abort_code@48) (= |inline$$1_Diem_zero'$1_XDX_XDX'$1$$ret0@1| |inline$$1_Diem_zero'$1_XDX_XDX'$1$$t3@1|))) (and (=> (= (ControlFlow 0 467982) 468142) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon29_Then_correct|) (=> (= (ControlFlow 0 467982) 468030) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$1$anon3_Then_correct|  (=> |inline$$1_Diem_zero'$1_XDX_XDX'$1$$t0@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_251204| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 |inline$$1_Diem_zero'$1_XDX_XDX'$1$$t1@0|)) (=> (and (and (= |inline$$1_Diem_zero'$1_XDX_XDX'$1$$t1@0| |inline$$1_Diem_zero'$1_XDX_XDX'$1$$t1@0|) (= $abort_flag@57 true)) (and (= $abort_code@49 |inline$$1_Diem_zero'$1_XDX_XDX'$1$$t1@0|) (= |inline$$1_Diem_zero'$1_XDX_XDX'$1$$ret0@1| |inline$$1_Diem_zero'$1_XDX_XDX'$1$$ret0@0|))) (and (=> (= (ControlFlow 0 468012) 468142) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon29_Then_correct|) (=> (= (ControlFlow 0 468012) 468030) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$1$anon0_correct|  (=> (= |inline$$1_Diem_zero'$1_XDX_XDX'$1$$t0@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_251204| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 467954) 468012) |inline$$1_Diem_zero'$1_XDX_XDX'$1$anon3_Then_correct|) (=> (= (ControlFlow 0 467954) 467982) |inline$$1_Diem_zero'$1_XDX_XDX'$1$anon3_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon28_Then_correct|  (=> (and inline$$Not$4$dst@1 (= (ControlFlow 0 468018) 467954)) |inline$$1_Diem_zero'$1_XDX_XDX'$1$anon0_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon28_Else_correct|  (=> (not inline$$Not$4$dst@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t21@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t21@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t21@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (= (ControlFlow 0 467801) 465143))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon27_Then$1_correct|  (=> (|$IsValid'u64'| 15) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t21@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t21@0| 6)) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t21@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t21@0|) (= inline$$Not$4$dst@1 inline$$Not$4$dst@1))) (and (=> (= (ControlFlow 0 467785) 468018) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon28_Then_correct|) (=> (= (ControlFlow 0 467785) 467801) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon28_Else_correct|))))))
(let ((inline$$Not$4$anon0_correct  (=> (and (= inline$$Not$4$dst@1  (not |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t18@1|)) (= (ControlFlow 0 467745) 467785)) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon27_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon27_Then_correct|  (=> inline$$1_Roles_can_hold_balance$1$$ret0@1 (=> (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t18@1| (|Select__T@[Int]Bool_| (|domain#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t9@0|)) (= (ControlFlow 0 467751) 467745)) inline$$Not$4$anon0_correct))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon27_Else_correct|  (=> (not inline$$1_Roles_can_hold_balance$1$$ret0@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t17@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t17@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t17@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (= (ControlFlow 0 467705) 465143))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon26_Else_correct|  (=> (and (not $abort_flag@56) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t17@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t17@0| 7)) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t17@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t17@0|) (= inline$$1_Roles_can_hold_balance$1$$ret0@1 inline$$1_Roles_can_hold_balance$1$$ret0@1))) (and (=> (= (ControlFlow 0 467689) 467751) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon27_Then_correct|) (=> (= (ControlFlow 0 467689) 467705) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon27_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon26_Then_correct|  (=> $abort_flag@56 (=> (and (and (= $abort_code@48 $abort_code@48) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t11@1| $abort_code@48)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (= (ControlFlow 0 468156) 465143))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$L7_correct|))))
(let ((inline$$1_Roles_can_hold_balance$1$L9_correct  (=> (= $abort_flag@56 true) (=> (and (= inline$$1_Roles_can_hold_balance$1$$ret0@1 inline$$1_Roles_can_hold_balance$1$$ret0@0) (= $abort_code@48 inline$$1_Roles_can_hold_balance$1$$t4@1)) (and (=> (= (ControlFlow 0 467579) 468156) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon26_Then_correct|) (=> (= (ControlFlow 0 467579) 467689) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon26_Else_correct|))))))
(let ((inline$$1_Roles_can_hold_balance$1$anon17_Then_correct  (=> (and (and $abort_flag@54 (= $abort_code@46 $abort_code@46)) (and (= inline$$1_Roles_can_hold_balance$1$$t4@1 $abort_code@46) (= (ControlFlow 0 467573) 467579))) inline$$1_Roles_can_hold_balance$1$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$1$anon15_Then_correct  (=> (and (and $abort_flag@49 (= $abort_code@42 $abort_code@42)) (and (= inline$$1_Roles_can_hold_balance$1$$t4@1 $abort_code@42) (= (ControlFlow 0 467611) 467579))) inline$$1_Roles_can_hold_balance$1$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$1$anon13_Then_correct  (=> (and (and $abort_flag@45 (= $abort_code@39 $abort_code@39)) (and (= inline$$1_Roles_can_hold_balance$1$$t4@1 $abort_code@39) (= (ControlFlow 0 467643) 467579))) inline$$1_Roles_can_hold_balance$1$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$1$L7_correct  (=> (and (and (= inline$$1_Roles_can_hold_balance$1$$t2@1 inline$$1_Roles_can_hold_balance$1$$t2@1) (= $abort_flag@56 $abort_flag@55)) (and (= inline$$1_Roles_can_hold_balance$1$$ret0@1 inline$$1_Roles_can_hold_balance$1$$t2@1) (= $abort_code@48 $abort_code@47))) (and (=> (= (ControlFlow 0 467559) 468156) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon26_Then_correct|) (=> (= (ControlFlow 0 467559) 467689) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon26_Else_correct|)))))
(let ((inline$$1_Roles_can_hold_balance$1$anon17_Else_correct  (=> (and (not $abort_flag@54) (= inline$$1_Roles_has_designated_dealer_role$1$$ret0@1 inline$$1_Roles_has_designated_dealer_role$1$$ret0@1)) (=> (and (and (= inline$$1_Roles_can_hold_balance$1$$t2@1 inline$$1_Roles_has_designated_dealer_role$1$$ret0@1) (= $abort_code@47 $abort_code@46)) (and (= $abort_flag@55 $abort_flag@54) (= (ControlFlow 0 467547) 467559))) inline$$1_Roles_can_hold_balance$1$L7_correct))))
(let ((inline$$1_Roles_has_designated_dealer_role$1$anon3_Else_correct  (=> (and (and (not $abort_flag@53) (= inline$$1_Roles_has_role$5$$ret0@1 inline$$1_Roles_has_role$5$$ret0@1)) (and (= inline$$1_Roles_has_designated_dealer_role$1$$ret0@1 inline$$1_Roles_has_role$5$$ret0@1) (= $abort_flag@54 $abort_flag@53))) (and (=> (= (ControlFlow 0 467505) 467573) inline$$1_Roles_can_hold_balance$1$anon17_Then_correct) (=> (= (ControlFlow 0 467505) 467547) inline$$1_Roles_can_hold_balance$1$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_designated_dealer_role$1$anon3_Then_correct  (=> (and (and $abort_flag@53 (= $abort_code@46 $abort_code@46)) (and (= inline$$1_Roles_has_designated_dealer_role$1$$ret0@1 inline$$1_Roles_has_designated_dealer_role$1$$ret0@0) (= $abort_flag@54 true))) (and (=> (= (ControlFlow 0 467523) 467573) inline$$1_Roles_can_hold_balance$1$anon17_Then_correct) (=> (= (ControlFlow 0 467523) 467547) inline$$1_Roles_can_hold_balance$1$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_role$5$anon11_Then_correct  (=> $abort_flag@51 (=> (and (and (= $abort_code@44 $abort_code@44) (= $abort_flag@53 true)) (and (= $abort_code@46 $abort_code@44) (= inline$$1_Roles_has_role$5$$ret0@1 inline$$1_Roles_has_role$5$$ret0@0))) (and (=> (= (ControlFlow 0 467429) 467523) inline$$1_Roles_has_designated_dealer_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 467429) 467505) inline$$1_Roles_has_designated_dealer_role$1$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$5$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$5$$t2@1 inline$$1_Roles_has_role$5$$t2@1) (= $abort_flag@53 $abort_flag@52)) (and (= $abort_code@46 $abort_code@45) (= inline$$1_Roles_has_role$5$$ret0@1 inline$$1_Roles_has_role$5$$t2@1))) (and (=> (= (ControlFlow 0 467365) 467523) inline$$1_Roles_has_designated_dealer_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 467365) 467505) inline$$1_Roles_has_designated_dealer_role$1$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$5$anon11_Else_correct  (=> (and (and (and (not $abort_flag@51) (= inline$$1_Roles_has_role$5$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$5$$t6@2))) (and (= inline$$1_Roles_has_role$5$$t9@1 (= inline$$1_Roles_has_role$5$$t8@1 2)) (= inline$$1_Roles_has_role$5$$t9@1 inline$$1_Roles_has_role$5$$t9@1))) (and (and (= $abort_flag@52 $abort_flag@51) (= inline$$1_Roles_has_role$5$$t2@1 inline$$1_Roles_has_role$5$$t9@1)) (and (= $abort_code@45 $abort_code@44) (= (ControlFlow 0 467411) 467365)))) inline$$1_Roles_has_role$5$L3_correct)))
(let ((inline$$1_Roles_has_role$5$anon10_Then$1_correct  (=> (= $abort_code@44 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@51 true) (= inline$$1_Roles_has_role$5$$t6@2 inline$$1_Roles_has_role$5$$t6@0)) (and (=> (= (ControlFlow 0 467481) 467429) inline$$1_Roles_has_role$5$anon11_Then_correct) (=> (= (ControlFlow 0 467481) 467411) inline$$1_Roles_has_role$5$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$5$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$5$$t4@0)) (= (ControlFlow 0 467479) 467481)) inline$$1_Roles_has_role$5$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$5$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$5$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$5$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$5$$t4@0)) (= $abort_code@44 $abort_code@43)) (and (= $abort_flag@51 $abort_flag@50) (= inline$$1_Roles_has_role$5$$t6@2 inline$$1_Roles_has_role$5$$t6@1))) (and (=> (= (ControlFlow 0 467383) 467429) inline$$1_Roles_has_role$5$anon11_Then_correct) (=> (= (ControlFlow 0 467383) 467411) inline$$1_Roles_has_role$5$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$5$anon9_Then_correct  (=> inline$$1_Roles_has_role$5$$t5@1 (and (=> (= (ControlFlow 0 467369) 467479) inline$$1_Roles_has_role$5$anon10_Then_correct) (=> (= (ControlFlow 0 467369) 467383) inline$$1_Roles_has_role$5$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$5$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$5$$t5@1) (= false false)) (=> (and (and (= $abort_flag@52 $abort_flag@50) (= inline$$1_Roles_has_role$5$$t2@1 false)) (and (= $abort_code@45 $abort_code@43) (= (ControlFlow 0 467353) 467365))) inline$$1_Roles_has_role$5$L3_correct))))
(let ((inline$$1_Roles_has_role$5$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 2 2)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$5$$t4@0) (= inline$$1_Roles_has_role$5$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$5$$t4@0 inline$$1_Roles_has_role$5$$t4@0) (= inline$$1_Roles_has_role$5$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$5$$t4@0)))) (and (=> (= (ControlFlow 0 467333) 467369) inline$$1_Roles_has_role$5$anon9_Then_correct) (=> (= (ControlFlow 0 467333) 467353) inline$$1_Roles_has_role$5$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_designated_dealer_role$1$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 2) (= (ControlFlow 0 467487) 467333)) inline$$1_Roles_has_role$5$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$1$anon16_Else_correct  (=> (and (not inline$$1_Roles_can_hold_balance$1$$t1@1) (= (ControlFlow 0 467529) 467487)) inline$$1_Roles_has_designated_dealer_role$1$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$1$anon16_Then_correct  (=> (and inline$$1_Roles_can_hold_balance$1$$t1@1 (= true true)) (=> (and (and (= inline$$1_Roles_can_hold_balance$1$$t2@1 true) (= $abort_code@47 $abort_code@43)) (and (= $abort_flag@55 $abort_flag@50) (= (ControlFlow 0 467597) 467559))) inline$$1_Roles_can_hold_balance$1$L7_correct))))
(let ((inline$$1_Roles_can_hold_balance$1$anon15_Else_correct  (=> (not $abort_flag@49) (=> (and (and (= inline$$1_Roles_has_child_VASP_role$1$$ret0@1 inline$$1_Roles_has_child_VASP_role$1$$ret0@1) (= inline$$1_Roles_can_hold_balance$1$$t1@1 inline$$1_Roles_has_child_VASP_role$1$$ret0@1)) (and (= $abort_flag@50 $abort_flag@49) (= $abort_code@43 $abort_code@42))) (and (=> (= (ControlFlow 0 466847) 467597) inline$$1_Roles_can_hold_balance$1$anon16_Then_correct) (=> (= (ControlFlow 0 466847) 467529) inline$$1_Roles_can_hold_balance$1$anon16_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$1$anon3_Else_correct  (=> (and (and (not $abort_flag@48) (= inline$$1_Roles_has_role$4$$ret0@1 inline$$1_Roles_has_role$4$$ret0@1)) (and (= inline$$1_Roles_has_child_VASP_role$1$$ret0@1 inline$$1_Roles_has_role$4$$ret0@1) (= $abort_flag@49 $abort_flag@48))) (and (=> (= (ControlFlow 0 466805) 467611) inline$$1_Roles_can_hold_balance$1$anon15_Then_correct) (=> (= (ControlFlow 0 466805) 466847) inline$$1_Roles_can_hold_balance$1$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_child_VASP_role$1$anon3_Then_correct  (=> (and (and $abort_flag@48 (= $abort_code@42 $abort_code@42)) (and (= inline$$1_Roles_has_child_VASP_role$1$$ret0@1 inline$$1_Roles_has_child_VASP_role$1$$ret0@0) (= $abort_flag@49 true))) (and (=> (= (ControlFlow 0 466823) 467611) inline$$1_Roles_can_hold_balance$1$anon15_Then_correct) (=> (= (ControlFlow 0 466823) 466847) inline$$1_Roles_can_hold_balance$1$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_role$4$anon11_Then_correct  (=> $abort_flag@46 (=> (and (and (= $abort_code@40 $abort_code@40) (= $abort_code@42 $abort_code@40)) (and (= $abort_flag@48 true) (= inline$$1_Roles_has_role$4$$ret0@1 inline$$1_Roles_has_role$4$$ret0@0))) (and (=> (= (ControlFlow 0 466729) 466823) inline$$1_Roles_has_child_VASP_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 466729) 466805) inline$$1_Roles_has_child_VASP_role$1$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$4$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$4$$t2@1 inline$$1_Roles_has_role$4$$t2@1) (= $abort_code@42 $abort_code@41)) (and (= $abort_flag@48 $abort_flag@47) (= inline$$1_Roles_has_role$4$$ret0@1 inline$$1_Roles_has_role$4$$t2@1))) (and (=> (= (ControlFlow 0 466665) 466823) inline$$1_Roles_has_child_VASP_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 466665) 466805) inline$$1_Roles_has_child_VASP_role$1$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$4$anon11_Else_correct  (=> (and (and (and (not $abort_flag@46) (= inline$$1_Roles_has_role$4$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$4$$t6@2))) (and (= inline$$1_Roles_has_role$4$$t9@1 (= inline$$1_Roles_has_role$4$$t8@1 6)) (= inline$$1_Roles_has_role$4$$t9@1 inline$$1_Roles_has_role$4$$t9@1))) (and (and (= $abort_code@41 $abort_code@40) (= inline$$1_Roles_has_role$4$$t2@1 inline$$1_Roles_has_role$4$$t9@1)) (and (= $abort_flag@47 $abort_flag@46) (= (ControlFlow 0 466711) 466665)))) inline$$1_Roles_has_role$4$L3_correct)))
(let ((inline$$1_Roles_has_role$4$anon10_Then$1_correct  (=> (= $abort_flag@46 true) (=> (and (= $abort_code@40 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$4$$t6@2 inline$$1_Roles_has_role$4$$t6@0)) (and (=> (= (ControlFlow 0 466781) 466729) inline$$1_Roles_has_role$4$anon11_Then_correct) (=> (= (ControlFlow 0 466781) 466711) inline$$1_Roles_has_role$4$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$4$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$4$$t4@0)) (= (ControlFlow 0 466779) 466781)) inline$$1_Roles_has_role$4$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$4$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$4$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$4$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$4$$t4@0)) (= $abort_flag@46 $abort_flag@45)) (and (= $abort_code@40 $abort_code@39) (= inline$$1_Roles_has_role$4$$t6@2 inline$$1_Roles_has_role$4$$t6@1))) (and (=> (= (ControlFlow 0 466683) 466729) inline$$1_Roles_has_role$4$anon11_Then_correct) (=> (= (ControlFlow 0 466683) 466711) inline$$1_Roles_has_role$4$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$4$anon9_Then_correct  (=> inline$$1_Roles_has_role$4$$t5@1 (and (=> (= (ControlFlow 0 466669) 466779) inline$$1_Roles_has_role$4$anon10_Then_correct) (=> (= (ControlFlow 0 466669) 466683) inline$$1_Roles_has_role$4$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$4$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$4$$t5@1) (= false false)) (=> (and (and (= $abort_code@41 $abort_code@39) (= inline$$1_Roles_has_role$4$$t2@1 false)) (and (= $abort_flag@47 $abort_flag@45) (= (ControlFlow 0 466653) 466665))) inline$$1_Roles_has_role$4$L3_correct))))
(let ((inline$$1_Roles_has_role$4$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 6 6)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$4$$t4@0) (= inline$$1_Roles_has_role$4$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$4$$t4@0 inline$$1_Roles_has_role$4$$t4@0) (= inline$$1_Roles_has_role$4$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$4$$t4@0)))) (and (=> (= (ControlFlow 0 466633) 466669) inline$$1_Roles_has_role$4$anon9_Then_correct) (=> (= (ControlFlow 0 466633) 466653) inline$$1_Roles_has_role$4$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$1$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 6) (= (ControlFlow 0 466787) 466633)) inline$$1_Roles_has_role$4$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$1$anon14_Else_correct  (=> (and (not inline$$1_Roles_has_parent_VASP_role$1$$ret0@1) (= (ControlFlow 0 466829) 466787)) inline$$1_Roles_has_child_VASP_role$1$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$1$anon14_Then_correct  (=> inline$$1_Roles_has_parent_VASP_role$1$$ret0@1 (=> (and (and (= true true) (= inline$$1_Roles_can_hold_balance$1$$t1@1 true)) (and (= $abort_flag@50 $abort_flag@45) (= $abort_code@43 $abort_code@39))) (and (=> (= (ControlFlow 0 467629) 467597) inline$$1_Roles_can_hold_balance$1$anon16_Then_correct) (=> (= (ControlFlow 0 467629) 467529) inline$$1_Roles_can_hold_balance$1$anon16_Else_correct))))))
(let ((inline$$1_Roles_can_hold_balance$1$anon13_Else_correct  (=> (not $abort_flag@45) (and (=> (= (ControlFlow 0 466149) 467629) inline$$1_Roles_can_hold_balance$1$anon14_Then_correct) (=> (= (ControlFlow 0 466149) 466829) inline$$1_Roles_can_hold_balance$1$anon14_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$1$anon3_Else_correct  (=> (and (and (not $abort_flag@44) (= inline$$1_Roles_has_role$3$$ret0@1 inline$$1_Roles_has_role$3$$ret0@1)) (and (= inline$$1_Roles_has_parent_VASP_role$1$$ret0@1 inline$$1_Roles_has_role$3$$ret0@1) (= $abort_flag@45 $abort_flag@44))) (and (=> (= (ControlFlow 0 466117) 467643) inline$$1_Roles_can_hold_balance$1$anon13_Then_correct) (=> (= (ControlFlow 0 466117) 466149) inline$$1_Roles_can_hold_balance$1$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$1$anon3_Then_correct  (=> (and (and $abort_flag@44 (= $abort_code@39 $abort_code@39)) (and (= inline$$1_Roles_has_parent_VASP_role$1$$ret0@1 inline$$1_Roles_has_parent_VASP_role$1$$ret0@0) (= $abort_flag@45 true))) (and (=> (= (ControlFlow 0 466135) 467643) inline$$1_Roles_can_hold_balance$1$anon13_Then_correct) (=> (= (ControlFlow 0 466135) 466149) inline$$1_Roles_can_hold_balance$1$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_role$3$anon11_Then_correct  (=> $abort_flag@42 (=> (and (and (= $abort_code@37 $abort_code@37) (= $abort_code@39 $abort_code@37)) (and (= $abort_flag@44 true) (= inline$$1_Roles_has_role$3$$ret0@1 inline$$1_Roles_has_role$3$$ret0@0))) (and (=> (= (ControlFlow 0 466041) 466135) inline$$1_Roles_has_parent_VASP_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 466041) 466117) inline$$1_Roles_has_parent_VASP_role$1$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$3$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$3$$t2@1 inline$$1_Roles_has_role$3$$t2@1) (= $abort_code@39 $abort_code@38)) (and (= $abort_flag@44 $abort_flag@43) (= inline$$1_Roles_has_role$3$$ret0@1 inline$$1_Roles_has_role$3$$t2@1))) (and (=> (= (ControlFlow 0 465977) 466135) inline$$1_Roles_has_parent_VASP_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 465977) 466117) inline$$1_Roles_has_parent_VASP_role$1$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$3$anon11_Else_correct  (=> (and (and (and (not $abort_flag@42) (= inline$$1_Roles_has_role$3$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$3$$t6@2))) (and (= inline$$1_Roles_has_role$3$$t9@1 (= inline$$1_Roles_has_role$3$$t8@1 5)) (= inline$$1_Roles_has_role$3$$t9@1 inline$$1_Roles_has_role$3$$t9@1))) (and (and (= $abort_code@38 $abort_code@37) (= inline$$1_Roles_has_role$3$$t2@1 inline$$1_Roles_has_role$3$$t9@1)) (and (= $abort_flag@43 $abort_flag@42) (= (ControlFlow 0 466023) 465977)))) inline$$1_Roles_has_role$3$L3_correct)))
(let ((inline$$1_Roles_has_role$3$anon10_Then$1_correct  (=> (= $abort_flag@42 true) (=> (and (= $abort_code@37 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$3$$t6@2 inline$$1_Roles_has_role$3$$t6@0)) (and (=> (= (ControlFlow 0 466093) 466041) inline$$1_Roles_has_role$3$anon11_Then_correct) (=> (= (ControlFlow 0 466093) 466023) inline$$1_Roles_has_role$3$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$3$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$3$$t4@0)) (= (ControlFlow 0 466091) 466093)) inline$$1_Roles_has_role$3$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$3$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$3$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$3$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$3$$t4@0)) (= $abort_flag@42 $abort_flag@41)) (and (= $abort_code@37 $abort_code@36) (= inline$$1_Roles_has_role$3$$t6@2 inline$$1_Roles_has_role$3$$t6@1))) (and (=> (= (ControlFlow 0 465995) 466041) inline$$1_Roles_has_role$3$anon11_Then_correct) (=> (= (ControlFlow 0 465995) 466023) inline$$1_Roles_has_role$3$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$3$anon9_Then_correct  (=> inline$$1_Roles_has_role$3$$t5@1 (and (=> (= (ControlFlow 0 465981) 466091) inline$$1_Roles_has_role$3$anon10_Then_correct) (=> (= (ControlFlow 0 465981) 465995) inline$$1_Roles_has_role$3$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$3$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$3$$t5@1) (= false false)) (=> (and (and (= $abort_code@38 $abort_code@36) (= inline$$1_Roles_has_role$3$$t2@1 false)) (and (= $abort_flag@43 $abort_flag@41) (= (ControlFlow 0 465965) 465977))) inline$$1_Roles_has_role$3$L3_correct))))
(let ((inline$$1_Roles_has_role$3$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 5 5)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$3$$t4@0) (= inline$$1_Roles_has_role$3$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$3$$t4@0 inline$$1_Roles_has_role$3$$t4@0) (= inline$$1_Roles_has_role$3$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$3$$t4@0)))) (and (=> (= (ControlFlow 0 465945) 465981) inline$$1_Roles_has_role$3$anon9_Then_correct) (=> (= (ControlFlow 0 465945) 465965) inline$$1_Roles_has_role$3$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_parent_VASP_role$1$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 5) (= (ControlFlow 0 466099) 465945)) inline$$1_Roles_has_role$3$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$1$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= (ControlFlow 0 466141) 466099)) inline$$1_Roles_has_parent_VASP_role$1$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon25_Then_correct|  (=> (and inline$$1_DiemAccount_exists_at$1$$t1@1 (= (ControlFlow 0 467649) 466141)) inline$$1_Roles_can_hold_balance$1$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon25_Else_correct|  (=> (not inline$$1_DiemAccount_exists_at$1$$t1@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t14@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t14@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t14@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (= (ControlFlow 0 465137) 465143))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon24_Else_correct|  (=> (and (not $abort_flag@41) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t14@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t14@0| 5)) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t14@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t14@0|) (= inline$$1_DiemAccount_exists_at$1$$t1@1 inline$$1_DiemAccount_exists_at$1$$t1@1))) (and (=> (= (ControlFlow 0 465121) 467649) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon25_Then_correct|) (=> (= (ControlFlow 0 465121) 465137) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon25_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon24_Then_correct|  (=> $abort_flag@41 (=> (and (and (= $abort_code@36 $abort_code@36) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t11@1| $abort_code@36)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (= (ControlFlow 0 468170) 465143))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$L7_correct|))))
(let ((inline$$1_DiemAccount_exists_at$1$anon0_correct  (=> (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t9@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t9@0|) (=> (and (= inline$$1_DiemAccount_exists_at$1$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_266923| $1_DiemAccount_DiemAccount_$memory@2) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t9@0|)) (= inline$$1_DiemAccount_exists_at$1$$t1@1 inline$$1_DiemAccount_exists_at$1$$t1@1)) (and (=> (= (ControlFlow 0 465079) 468170) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon24_Then_correct|) (=> (= (ControlFlow 0 465079) 465121) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon24_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon23_Else_correct|  (=> (and (not |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t10@0|) (= (ControlFlow 0 465085) 465079)) inline$$1_DiemAccount_exists_at$1$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon23_Then_correct|  (=> |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t10@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_251204| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t11@0|)) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t11@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t11@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t11@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (= (ControlFlow 0 468196) 465143))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$L7_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon0_correct|  (=> (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t8@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (and (and (|$IsValid'address'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t9@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t9@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t9@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t9@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$$t10@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_251204| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 464974) 468196) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon23_Then_correct|) (=> (= (ControlFlow 0 464974) 465085) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon23_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon22_Then_correct|  (=> inline$$Not$3$dst@1 (=> (and (= |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t12@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 468200) 464974)) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$1$anon0_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon22_Else_correct|  (=> (not inline$$Not$3$dst@1) (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@8| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (= $abort_code@52 $abort_code@36)) (and (= $abort_flag@60 $abort_flag@41) (= (ControlFlow 0 464300) 464302))) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$L9_correct|))))
(let ((inline$$Not$3$anon0_correct  (=> (= inline$$Not$3$dst@1  (not |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t10@1|)) (and (=> (= (ControlFlow 0 464284) 468200) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon22_Then_correct|) (=> (= (ControlFlow 0 464284) 464300) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon22_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$L5_correct|  (=> (and (= |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t10@1| (|Select__T@[Int]Bool_| (|domain#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t4@0|)) (= (ControlFlow 0 464290) 464284)) inline$$Not$3$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon21_Else_correct|  (=> (not $abort_flag@40) (=> (and (and (= $abort_code@36 $abort_code@35) (= $abort_flag@41 $abort_flag@40)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@4| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3|) (= (ControlFlow 0 472136) 464290))) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$L5_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Else_correct|  (=> (and (and (not $abort_flag@39) (= $abort_code@35 $abort_code@34)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1|) (= $abort_flag@40 $abort_flag@39))) (and (=> (= (ControlFlow 0 471988) 472150) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon21_Then_correct|) (=> (= (ControlFlow 0 471988) 472136) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon21_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|  (=> (= $abort_code@35 |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1|) (=> (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2|) (= $abort_flag@40 true)) (and (=> (= (ControlFlow 0 469069) 472150) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon21_Then_correct|) (=> (= (ControlFlow 0 469069) 472136) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon21_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Then_correct|  (=> $abort_flag@39 (=> (and (and (= $abort_code@34 $abort_code@34) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| $abort_code@34)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1|) (= (ControlFlow 0 472002) 469069))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Then$1_correct|  (=> (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (=> (and (= $abort_code@34 $EXEC_FAILURE_CODE) (= $abort_flag@39 true)) (and (=> (= (ControlFlow 0 472054) 472002) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 472054) 471988) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_220337| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 472052) 472054)) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_220337| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (and (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@0| ($Memory_220337 (|Store__T@[Int]Bool_| (|domain#$Memory_220337| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_220337| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t23@1|))) (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@0|)) (and (= $abort_code@34 $abort_code@33) (= $abort_flag@39 $abort_flag@38))) (and (=> (= (ControlFlow 0 471978) 472002) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 471978) 471988) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Else_correct|  (=> (and (not $abort_flag@38) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t23@1| (|$1_DiemAccount_Balance'$1_XUS_XUS'| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@1|))) (and (=> (= (ControlFlow 0 471956) 472052) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Then_correct|) (=> (= (ControlFlow 0 471956) 471978) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Then_correct|  (=> $abort_flag@38 (=> (and (and (= $abort_code@33 $abort_code@33) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| $abort_code@33)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 472068) 469069))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Else_correct|  (=> (not |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t0@0|) (=> (and (|$IsValid'u64'| 0) (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1| (|$1_Diem_Diem'$1_XUS_XUS'| 0))) (=> (and (and (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1|) (= $abort_flag@38 $abort_flag@37)) (and (= $abort_code@33 $abort_code@32) (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@1| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1|))) (and (=> (= (ControlFlow 0 471908) 472068) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 471908) 471956) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Then_correct|  (=> |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t0@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_251085| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0|)) (=> (and (and (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0|) (= $abort_flag@38 true)) (and (= $abort_code@33 |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0|) (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@1| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@0|))) (and (=> (= (ControlFlow 0 471938) 472068) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 471938) 471956) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XUS_XUS'$0$anon0_correct|  (=> (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t0@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_251085| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 471880) 471938) |inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 471880) 471908) |inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon28_Then_correct|  (=> (and inline$$Not$5$dst@1 (= (ControlFlow 0 471944) 471880)) |inline$$1_Diem_zero'$1_XUS_XUS'$0$anon0_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon28_Else_correct|  (=> (not inline$$Not$5$dst@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 471727) 469069))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Then$1_correct|  (=> (|$IsValid'u64'| 15) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0| 6)) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0|) (= inline$$Not$5$dst@1 inline$$Not$5$dst@1))) (and (=> (= (ControlFlow 0 471711) 471944) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon28_Then_correct|) (=> (= (ControlFlow 0 471711) 471727) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon28_Else_correct|))))))
(let ((inline$$Not$5$anon0_correct  (=> (and (= inline$$Not$5$dst@1  (not |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t18@1|)) (= (ControlFlow 0 471671) 471711)) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Then_correct|  (=> inline$$1_Roles_can_hold_balance$2$$ret0@1 (=> (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t18@1| (|Select__T@[Int]Bool_| (|domain#$Memory_220337| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0|)) (= (ControlFlow 0 471677) 471671)) inline$$Not$5$anon0_correct))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Else_correct|  (=> (not inline$$1_Roles_can_hold_balance$2$$ret0@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 471631) 469069))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Else_correct|  (=> (and (not $abort_flag@37) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0| 7)) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0|) (= inline$$1_Roles_can_hold_balance$2$$ret0@1 inline$$1_Roles_can_hold_balance$2$$ret0@1))) (and (=> (= (ControlFlow 0 471615) 471677) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Then_correct|) (=> (= (ControlFlow 0 471615) 471631) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Then_correct|  (=> $abort_flag@37 (=> (and (and (= $abort_code@32 $abort_code@32) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| $abort_code@32)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 472082) 469069))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((inline$$1_Roles_can_hold_balance$2$L9_correct  (=> (= $abort_flag@37 true) (=> (and (= inline$$1_Roles_can_hold_balance$2$$ret0@1 inline$$1_Roles_can_hold_balance$2$$ret0@0) (= $abort_code@32 inline$$1_Roles_can_hold_balance$2$$t4@1)) (and (=> (= (ControlFlow 0 471505) 472082) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 471505) 471615) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Else_correct|))))))
(let ((inline$$1_Roles_can_hold_balance$2$anon17_Then_correct  (=> (and (and $abort_flag@35 (= $abort_code@30 $abort_code@30)) (and (= inline$$1_Roles_can_hold_balance$2$$t4@1 $abort_code@30) (= (ControlFlow 0 471499) 471505))) inline$$1_Roles_can_hold_balance$2$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$2$anon15_Then_correct  (=> (and (and $abort_flag@30 (= $abort_code@26 $abort_code@26)) (and (= inline$$1_Roles_can_hold_balance$2$$t4@1 $abort_code@26) (= (ControlFlow 0 471537) 471505))) inline$$1_Roles_can_hold_balance$2$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$2$anon13_Then_correct  (=> (and (and $abort_flag@26 (= $abort_code@23 $abort_code@23)) (and (= inline$$1_Roles_can_hold_balance$2$$t4@1 $abort_code@23) (= (ControlFlow 0 471569) 471505))) inline$$1_Roles_can_hold_balance$2$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$2$L7_correct  (=> (and (and (= inline$$1_Roles_can_hold_balance$2$$t2@1 inline$$1_Roles_can_hold_balance$2$$t2@1) (= $abort_flag@37 $abort_flag@36)) (and (= inline$$1_Roles_can_hold_balance$2$$ret0@1 inline$$1_Roles_can_hold_balance$2$$t2@1) (= $abort_code@32 $abort_code@31))) (and (=> (= (ControlFlow 0 471485) 472082) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 471485) 471615) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Else_correct|)))))
(let ((inline$$1_Roles_can_hold_balance$2$anon17_Else_correct  (=> (and (not $abort_flag@35) (= inline$$1_Roles_has_designated_dealer_role$2$$ret0@1 inline$$1_Roles_has_designated_dealer_role$2$$ret0@1)) (=> (and (and (= inline$$1_Roles_can_hold_balance$2$$t2@1 inline$$1_Roles_has_designated_dealer_role$2$$ret0@1) (= $abort_code@31 $abort_code@30)) (and (= $abort_flag@36 $abort_flag@35) (= (ControlFlow 0 471473) 471485))) inline$$1_Roles_can_hold_balance$2$L7_correct))))
(let ((inline$$1_Roles_has_designated_dealer_role$2$anon3_Else_correct  (=> (and (and (not $abort_flag@34) (= inline$$1_Roles_has_role$8$$ret0@1 inline$$1_Roles_has_role$8$$ret0@1)) (and (= inline$$1_Roles_has_designated_dealer_role$2$$ret0@1 inline$$1_Roles_has_role$8$$ret0@1) (= $abort_flag@35 $abort_flag@34))) (and (=> (= (ControlFlow 0 471431) 471499) inline$$1_Roles_can_hold_balance$2$anon17_Then_correct) (=> (= (ControlFlow 0 471431) 471473) inline$$1_Roles_can_hold_balance$2$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_designated_dealer_role$2$anon3_Then_correct  (=> (and (and $abort_flag@34 (= $abort_code@30 $abort_code@30)) (and (= inline$$1_Roles_has_designated_dealer_role$2$$ret0@1 inline$$1_Roles_has_designated_dealer_role$2$$ret0@0) (= $abort_flag@35 true))) (and (=> (= (ControlFlow 0 471449) 471499) inline$$1_Roles_can_hold_balance$2$anon17_Then_correct) (=> (= (ControlFlow 0 471449) 471473) inline$$1_Roles_can_hold_balance$2$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_role$8$anon11_Then_correct  (=> $abort_flag@32 (=> (and (and (= $abort_code@28 $abort_code@28) (= $abort_flag@34 true)) (and (= $abort_code@30 $abort_code@28) (= inline$$1_Roles_has_role$8$$ret0@1 inline$$1_Roles_has_role$8$$ret0@0))) (and (=> (= (ControlFlow 0 471355) 471449) inline$$1_Roles_has_designated_dealer_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 471355) 471431) inline$$1_Roles_has_designated_dealer_role$2$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$8$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$8$$t2@1 inline$$1_Roles_has_role$8$$t2@1) (= $abort_flag@34 $abort_flag@33)) (and (= $abort_code@30 $abort_code@29) (= inline$$1_Roles_has_role$8$$ret0@1 inline$$1_Roles_has_role$8$$t2@1))) (and (=> (= (ControlFlow 0 471291) 471449) inline$$1_Roles_has_designated_dealer_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 471291) 471431) inline$$1_Roles_has_designated_dealer_role$2$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$8$anon11_Else_correct  (=> (and (and (and (not $abort_flag@32) (= inline$$1_Roles_has_role$8$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$8$$t6@2))) (and (= inline$$1_Roles_has_role$8$$t9@1 (= inline$$1_Roles_has_role$8$$t8@1 2)) (= inline$$1_Roles_has_role$8$$t9@1 inline$$1_Roles_has_role$8$$t9@1))) (and (and (= $abort_flag@33 $abort_flag@32) (= inline$$1_Roles_has_role$8$$t2@1 inline$$1_Roles_has_role$8$$t9@1)) (and (= $abort_code@29 $abort_code@28) (= (ControlFlow 0 471337) 471291)))) inline$$1_Roles_has_role$8$L3_correct)))
(let ((inline$$1_Roles_has_role$8$anon10_Then$1_correct  (=> (= $abort_code@28 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@32 true) (= inline$$1_Roles_has_role$8$$t6@2 inline$$1_Roles_has_role$8$$t6@0)) (and (=> (= (ControlFlow 0 471407) 471355) inline$$1_Roles_has_role$8$anon11_Then_correct) (=> (= (ControlFlow 0 471407) 471337) inline$$1_Roles_has_role$8$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$8$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$8$$t4@0)) (= (ControlFlow 0 471405) 471407)) inline$$1_Roles_has_role$8$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$8$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$8$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$8$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$8$$t4@0)) (= $abort_code@28 $abort_code@27)) (and (= $abort_flag@32 $abort_flag@31) (= inline$$1_Roles_has_role$8$$t6@2 inline$$1_Roles_has_role$8$$t6@1))) (and (=> (= (ControlFlow 0 471309) 471355) inline$$1_Roles_has_role$8$anon11_Then_correct) (=> (= (ControlFlow 0 471309) 471337) inline$$1_Roles_has_role$8$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$8$anon9_Then_correct  (=> inline$$1_Roles_has_role$8$$t5@1 (and (=> (= (ControlFlow 0 471295) 471405) inline$$1_Roles_has_role$8$anon10_Then_correct) (=> (= (ControlFlow 0 471295) 471309) inline$$1_Roles_has_role$8$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$8$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$8$$t5@1) (= false false)) (=> (and (and (= $abort_flag@33 $abort_flag@31) (= inline$$1_Roles_has_role$8$$t2@1 false)) (and (= $abort_code@29 $abort_code@27) (= (ControlFlow 0 471279) 471291))) inline$$1_Roles_has_role$8$L3_correct))))
(let ((inline$$1_Roles_has_role$8$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 2 2)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$8$$t4@0) (= inline$$1_Roles_has_role$8$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$8$$t4@0 inline$$1_Roles_has_role$8$$t4@0) (= inline$$1_Roles_has_role$8$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$8$$t4@0)))) (and (=> (= (ControlFlow 0 471259) 471295) inline$$1_Roles_has_role$8$anon9_Then_correct) (=> (= (ControlFlow 0 471259) 471279) inline$$1_Roles_has_role$8$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_designated_dealer_role$2$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 2) (= (ControlFlow 0 471413) 471259)) inline$$1_Roles_has_role$8$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$2$anon16_Else_correct  (=> (and (not inline$$1_Roles_can_hold_balance$2$$t1@1) (= (ControlFlow 0 471455) 471413)) inline$$1_Roles_has_designated_dealer_role$2$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$2$anon16_Then_correct  (=> (and inline$$1_Roles_can_hold_balance$2$$t1@1 (= true true)) (=> (and (and (= inline$$1_Roles_can_hold_balance$2$$t2@1 true) (= $abort_code@31 $abort_code@27)) (and (= $abort_flag@36 $abort_flag@31) (= (ControlFlow 0 471523) 471485))) inline$$1_Roles_can_hold_balance$2$L7_correct))))
(let ((inline$$1_Roles_can_hold_balance$2$anon15_Else_correct  (=> (not $abort_flag@30) (=> (and (and (= inline$$1_Roles_has_child_VASP_role$2$$ret0@1 inline$$1_Roles_has_child_VASP_role$2$$ret0@1) (= inline$$1_Roles_can_hold_balance$2$$t1@1 inline$$1_Roles_has_child_VASP_role$2$$ret0@1)) (and (= $abort_flag@31 $abort_flag@30) (= $abort_code@27 $abort_code@26))) (and (=> (= (ControlFlow 0 470773) 471523) inline$$1_Roles_can_hold_balance$2$anon16_Then_correct) (=> (= (ControlFlow 0 470773) 471455) inline$$1_Roles_can_hold_balance$2$anon16_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$2$anon3_Else_correct  (=> (and (and (not $abort_flag@29) (= inline$$1_Roles_has_role$7$$ret0@1 inline$$1_Roles_has_role$7$$ret0@1)) (and (= inline$$1_Roles_has_child_VASP_role$2$$ret0@1 inline$$1_Roles_has_role$7$$ret0@1) (= $abort_flag@30 $abort_flag@29))) (and (=> (= (ControlFlow 0 470731) 471537) inline$$1_Roles_can_hold_balance$2$anon15_Then_correct) (=> (= (ControlFlow 0 470731) 470773) inline$$1_Roles_can_hold_balance$2$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_child_VASP_role$2$anon3_Then_correct  (=> (and (and $abort_flag@29 (= $abort_code@26 $abort_code@26)) (and (= inline$$1_Roles_has_child_VASP_role$2$$ret0@1 inline$$1_Roles_has_child_VASP_role$2$$ret0@0) (= $abort_flag@30 true))) (and (=> (= (ControlFlow 0 470749) 471537) inline$$1_Roles_can_hold_balance$2$anon15_Then_correct) (=> (= (ControlFlow 0 470749) 470773) inline$$1_Roles_can_hold_balance$2$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_role$7$anon11_Then_correct  (=> $abort_flag@27 (=> (and (and (= $abort_code@24 $abort_code@24) (= $abort_code@26 $abort_code@24)) (and (= $abort_flag@29 true) (= inline$$1_Roles_has_role$7$$ret0@1 inline$$1_Roles_has_role$7$$ret0@0))) (and (=> (= (ControlFlow 0 470655) 470749) inline$$1_Roles_has_child_VASP_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 470655) 470731) inline$$1_Roles_has_child_VASP_role$2$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$7$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$7$$t2@1 inline$$1_Roles_has_role$7$$t2@1) (= $abort_code@26 $abort_code@25)) (and (= $abort_flag@29 $abort_flag@28) (= inline$$1_Roles_has_role$7$$ret0@1 inline$$1_Roles_has_role$7$$t2@1))) (and (=> (= (ControlFlow 0 470591) 470749) inline$$1_Roles_has_child_VASP_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 470591) 470731) inline$$1_Roles_has_child_VASP_role$2$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$7$anon11_Else_correct  (=> (and (and (and (not $abort_flag@27) (= inline$$1_Roles_has_role$7$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$7$$t6@2))) (and (= inline$$1_Roles_has_role$7$$t9@1 (= inline$$1_Roles_has_role$7$$t8@1 6)) (= inline$$1_Roles_has_role$7$$t9@1 inline$$1_Roles_has_role$7$$t9@1))) (and (and (= $abort_code@25 $abort_code@24) (= inline$$1_Roles_has_role$7$$t2@1 inline$$1_Roles_has_role$7$$t9@1)) (and (= $abort_flag@28 $abort_flag@27) (= (ControlFlow 0 470637) 470591)))) inline$$1_Roles_has_role$7$L3_correct)))
(let ((inline$$1_Roles_has_role$7$anon10_Then$1_correct  (=> (= $abort_flag@27 true) (=> (and (= $abort_code@24 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$7$$t6@2 inline$$1_Roles_has_role$7$$t6@0)) (and (=> (= (ControlFlow 0 470707) 470655) inline$$1_Roles_has_role$7$anon11_Then_correct) (=> (= (ControlFlow 0 470707) 470637) inline$$1_Roles_has_role$7$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$7$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$7$$t4@0)) (= (ControlFlow 0 470705) 470707)) inline$$1_Roles_has_role$7$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$7$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$7$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$7$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$7$$t4@0)) (= $abort_flag@27 $abort_flag@26)) (and (= $abort_code@24 $abort_code@23) (= inline$$1_Roles_has_role$7$$t6@2 inline$$1_Roles_has_role$7$$t6@1))) (and (=> (= (ControlFlow 0 470609) 470655) inline$$1_Roles_has_role$7$anon11_Then_correct) (=> (= (ControlFlow 0 470609) 470637) inline$$1_Roles_has_role$7$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$7$anon9_Then_correct  (=> inline$$1_Roles_has_role$7$$t5@1 (and (=> (= (ControlFlow 0 470595) 470705) inline$$1_Roles_has_role$7$anon10_Then_correct) (=> (= (ControlFlow 0 470595) 470609) inline$$1_Roles_has_role$7$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$7$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$7$$t5@1) (= false false)) (=> (and (and (= $abort_code@25 $abort_code@23) (= inline$$1_Roles_has_role$7$$t2@1 false)) (and (= $abort_flag@28 $abort_flag@26) (= (ControlFlow 0 470579) 470591))) inline$$1_Roles_has_role$7$L3_correct))))
(let ((inline$$1_Roles_has_role$7$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 6 6)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$7$$t4@0) (= inline$$1_Roles_has_role$7$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$7$$t4@0 inline$$1_Roles_has_role$7$$t4@0) (= inline$$1_Roles_has_role$7$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$7$$t4@0)))) (and (=> (= (ControlFlow 0 470559) 470595) inline$$1_Roles_has_role$7$anon9_Then_correct) (=> (= (ControlFlow 0 470559) 470579) inline$$1_Roles_has_role$7$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$2$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 6) (= (ControlFlow 0 470713) 470559)) inline$$1_Roles_has_role$7$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$2$anon14_Else_correct  (=> (and (not inline$$1_Roles_has_parent_VASP_role$2$$ret0@1) (= (ControlFlow 0 470755) 470713)) inline$$1_Roles_has_child_VASP_role$2$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$2$anon14_Then_correct  (=> inline$$1_Roles_has_parent_VASP_role$2$$ret0@1 (=> (and (and (= true true) (= inline$$1_Roles_can_hold_balance$2$$t1@1 true)) (and (= $abort_flag@31 $abort_flag@26) (= $abort_code@27 $abort_code@23))) (and (=> (= (ControlFlow 0 471555) 471523) inline$$1_Roles_can_hold_balance$2$anon16_Then_correct) (=> (= (ControlFlow 0 471555) 471455) inline$$1_Roles_can_hold_balance$2$anon16_Else_correct))))))
(let ((inline$$1_Roles_can_hold_balance$2$anon13_Else_correct  (=> (not $abort_flag@26) (and (=> (= (ControlFlow 0 470075) 471555) inline$$1_Roles_can_hold_balance$2$anon14_Then_correct) (=> (= (ControlFlow 0 470075) 470755) inline$$1_Roles_can_hold_balance$2$anon14_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$2$anon3_Else_correct  (=> (and (and (not $abort_flag@25) (= inline$$1_Roles_has_role$6$$ret0@1 inline$$1_Roles_has_role$6$$ret0@1)) (and (= inline$$1_Roles_has_parent_VASP_role$2$$ret0@1 inline$$1_Roles_has_role$6$$ret0@1) (= $abort_flag@26 $abort_flag@25))) (and (=> (= (ControlFlow 0 470043) 471569) inline$$1_Roles_can_hold_balance$2$anon13_Then_correct) (=> (= (ControlFlow 0 470043) 470075) inline$$1_Roles_can_hold_balance$2$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$2$anon3_Then_correct  (=> (and (and $abort_flag@25 (= $abort_code@23 $abort_code@23)) (and (= inline$$1_Roles_has_parent_VASP_role$2$$ret0@1 inline$$1_Roles_has_parent_VASP_role$2$$ret0@0) (= $abort_flag@26 true))) (and (=> (= (ControlFlow 0 470061) 471569) inline$$1_Roles_can_hold_balance$2$anon13_Then_correct) (=> (= (ControlFlow 0 470061) 470075) inline$$1_Roles_can_hold_balance$2$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_role$6$anon11_Then_correct  (=> $abort_flag@23 (=> (and (and (= $abort_code@21 $abort_code@21) (= $abort_flag@25 true)) (and (= $abort_code@23 $abort_code@21) (= inline$$1_Roles_has_role$6$$ret0@1 inline$$1_Roles_has_role$6$$ret0@0))) (and (=> (= (ControlFlow 0 469967) 470061) inline$$1_Roles_has_parent_VASP_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 469967) 470043) inline$$1_Roles_has_parent_VASP_role$2$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$6$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$6$$t2@1 inline$$1_Roles_has_role$6$$t2@1) (= $abort_flag@25 $abort_flag@24)) (and (= $abort_code@23 $abort_code@22) (= inline$$1_Roles_has_role$6$$ret0@1 inline$$1_Roles_has_role$6$$t2@1))) (and (=> (= (ControlFlow 0 469903) 470061) inline$$1_Roles_has_parent_VASP_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 469903) 470043) inline$$1_Roles_has_parent_VASP_role$2$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$6$anon11_Else_correct  (=> (and (and (and (not $abort_flag@23) (= inline$$1_Roles_has_role$6$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$6$$t6@2))) (and (= inline$$1_Roles_has_role$6$$t9@1 (= inline$$1_Roles_has_role$6$$t8@1 5)) (= inline$$1_Roles_has_role$6$$t9@1 inline$$1_Roles_has_role$6$$t9@1))) (and (and (= $abort_flag@24 $abort_flag@23) (= inline$$1_Roles_has_role$6$$t2@1 inline$$1_Roles_has_role$6$$t9@1)) (and (= $abort_code@22 $abort_code@21) (= (ControlFlow 0 469949) 469903)))) inline$$1_Roles_has_role$6$L3_correct)))
(let ((inline$$1_Roles_has_role$6$anon10_Then$1_correct  (=> (= $abort_code@21 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@23 true) (= inline$$1_Roles_has_role$6$$t6@2 inline$$1_Roles_has_role$6$$t6@0)) (and (=> (= (ControlFlow 0 470019) 469967) inline$$1_Roles_has_role$6$anon11_Then_correct) (=> (= (ControlFlow 0 470019) 469949) inline$$1_Roles_has_role$6$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$6$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$6$$t4@0)) (= (ControlFlow 0 470017) 470019)) inline$$1_Roles_has_role$6$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$6$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$6$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$6$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$6$$t4@0)) (= $abort_code@21 $abort_code@20)) (and (= $abort_flag@23 $abort_flag@22) (= inline$$1_Roles_has_role$6$$t6@2 inline$$1_Roles_has_role$6$$t6@1))) (and (=> (= (ControlFlow 0 469921) 469967) inline$$1_Roles_has_role$6$anon11_Then_correct) (=> (= (ControlFlow 0 469921) 469949) inline$$1_Roles_has_role$6$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$6$anon9_Then_correct  (=> inline$$1_Roles_has_role$6$$t5@1 (and (=> (= (ControlFlow 0 469907) 470017) inline$$1_Roles_has_role$6$anon10_Then_correct) (=> (= (ControlFlow 0 469907) 469921) inline$$1_Roles_has_role$6$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$6$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$6$$t5@1) (= false false)) (=> (and (and (= $abort_flag@24 $abort_flag@22) (= inline$$1_Roles_has_role$6$$t2@1 false)) (and (= $abort_code@22 $abort_code@20) (= (ControlFlow 0 469891) 469903))) inline$$1_Roles_has_role$6$L3_correct))))
(let ((inline$$1_Roles_has_role$6$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 5 5)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$6$$t4@0) (= inline$$1_Roles_has_role$6$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$6$$t4@0 inline$$1_Roles_has_role$6$$t4@0) (= inline$$1_Roles_has_role$6$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$6$$t4@0)))) (and (=> (= (ControlFlow 0 469871) 469907) inline$$1_Roles_has_role$6$anon9_Then_correct) (=> (= (ControlFlow 0 469871) 469891) inline$$1_Roles_has_role$6$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_parent_VASP_role$2$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 5) (= (ControlFlow 0 470025) 469871)) inline$$1_Roles_has_role$6$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$2$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= (ControlFlow 0 470067) 470025)) inline$$1_Roles_has_parent_VASP_role$2$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon25_Then_correct|  (=> (and inline$$1_DiemAccount_exists_at$2$$t1@1 (= (ControlFlow 0 471575) 470067)) inline$$1_Roles_can_hold_balance$2$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon25_Else_correct|  (=> (not inline$$1_DiemAccount_exists_at$2$$t1@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t14@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t14@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t14@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 469063) 469069))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon24_Else_correct|  (=> (and (not $abort_flag@22) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t14@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t14@0| 5)) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t14@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t14@0|) (= inline$$1_DiemAccount_exists_at$2$$t1@1 inline$$1_DiemAccount_exists_at$2$$t1@1))) (and (=> (= (ControlFlow 0 469047) 471575) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon25_Then_correct|) (=> (= (ControlFlow 0 469047) 469063) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon25_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon24_Then_correct|  (=> $abort_flag@22 (=> (and (and (= $abort_code@20 $abort_code@20) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| $abort_code@20)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 472096) 469069))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((inline$$1_DiemAccount_exists_at$2$anon0_correct  (=> (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0|) (=> (and (= inline$$1_DiemAccount_exists_at$2$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_266923| $1_DiemAccount_DiemAccount_$memory@2) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0|)) (= inline$$1_DiemAccount_exists_at$2$$t1@1 inline$$1_DiemAccount_exists_at$2$$t1@1)) (and (=> (= (ControlFlow 0 469005) 472096) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon24_Then_correct|) (=> (= (ControlFlow 0 469005) 469047) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon24_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon23_Else_correct|  (=> (and (not |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@0|) (= (ControlFlow 0 469011) 469005)) inline$$1_DiemAccount_exists_at$2$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon23_Then_correct|  (=> |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_251085| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@0|)) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 472122) 469069))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon0_correct|  (=> (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (and (and (|$IsValid'address'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_251085| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 468900) 472122) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 468900) 469011) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon23_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon20_Then_correct|  (=> inline$$Not$2$dst@1 (=> (and (= |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t9@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 472126) 468900)) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon0_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon20_Else_correct|  (=> (not inline$$Not$2$dst@1) (=> (and (and (= $abort_code@36 $abort_code@20) (= $abort_flag@41 $abort_flag@22)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@4| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 464246) 464290))) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$L5_correct|))))
(let ((inline$$Not$2$anon0_correct  (=> (= inline$$Not$2$dst@1  (not |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t7@1|)) (and (=> (= (ControlFlow 0 464232) 472126) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon20_Then_correct|) (=> (= (ControlFlow 0 464232) 464246) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon20_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon19_Then_correct|  (=> _$t3 (=> (and (= |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t7@1| (|Select__T@[Int]Bool_| (|domain#$Memory_220337| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t4@0|)) (= (ControlFlow 0 464238) 464232)) inline$$Not$2$anon0_correct))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon19_Else_correct|  (=> (and (not _$t3) (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@9| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|)) (=> (and (and (= $abort_code@53 $abort_code@20) (= $abort_flag@61 $abort_flag@22)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@5| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 464188) 464192))) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$L10_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon18_Else_correct|  (=> (not $abort_flag@22) (and (=> (= (ControlFlow 0 464180) 464238) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon19_Then_correct|) (=> (= (ControlFlow 0 464180) 464188) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon19_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Else_correct|  (=> (and (and (not $abort_flag@21) (= $abort_code@20 $abort_code@19)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1|) (= $abort_flag@22 $abort_flag@21))) (and (=> (= (ControlFlow 0 464032) 472164) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon18_Then_correct|) (=> (= (ControlFlow 0 464032) 464180) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon18_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|  (=> (= $abort_code@20 |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1|) (=> (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2|) (= $abort_flag@22 true)) (and (=> (= (ControlFlow 0 461113) 472164) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon18_Then_correct|) (=> (= (ControlFlow 0 461113) 464180) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon18_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Then_correct|  (=> $abort_flag@21 (=> (and (and (= $abort_code@19 $abort_code@19) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| $abort_code@19)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1|) (= (ControlFlow 0 464046) 461113))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Then$1_correct|  (=> (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (=> (and (= $abort_code@19 $EXEC_FAILURE_CODE) (= $abort_flag@21 true)) (and (=> (= (ControlFlow 0 464098) 464046) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 464098) 464032) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 464096) 464098)) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@0| ($Memory_220397 (|Store__T@[Int]Bool_| (|domain#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t23@1|))) (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@0|)) (and (= $abort_code@19 $abort_code@18) (= $abort_flag@21 $abort_flag@20))) (and (=> (= (ControlFlow 0 464022) 464046) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 464022) 464032) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Else_correct|  (=> (and (not $abort_flag@20) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t23@1| (|$1_DiemAccount_Balance'$1_XDX_XDX'| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1|))) (and (=> (= (ControlFlow 0 464000) 464096) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Then_correct|) (=> (= (ControlFlow 0 464000) 464022) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Then_correct|  (=> $abort_flag@20 (=> (and (and (= $abort_code@18 $abort_code@18) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| $abort_code@18)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 464112) 461113))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Else_correct|  (=> (not |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0|) (=> (and (|$IsValid'u64'| 0) (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1| (|$1_Diem_Diem'$1_XDX_XDX'| 0))) (=> (and (and (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1|) (= $abort_flag@20 $abort_flag@19)) (and (= $abort_code@18 $abort_code@17) (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1|))) (and (=> (= (ControlFlow 0 463952) 464112) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 463952) 464000) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Then_correct|  (=> |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_251204| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0|)) (=> (and (and (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0|) (= $abort_flag@20 true)) (and (= $abort_code@18 |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0|) (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@0|))) (and (=> (= (ControlFlow 0 463982) 464112) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 463982) 464000) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$0$anon0_correct|  (=> (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_251204| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 463924) 463982) |inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 463924) 463952) |inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon28_Then_correct|  (=> (and inline$$Not$1$dst@1 (= (ControlFlow 0 463988) 463924)) |inline$$1_Diem_zero'$1_XDX_XDX'$0$anon0_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon28_Else_correct|  (=> (not inline$$Not$1$dst@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 463771) 461113))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Then$1_correct|  (=> (|$IsValid'u64'| 15) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0| 6)) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0|) (= inline$$Not$1$dst@1 inline$$Not$1$dst@1))) (and (=> (= (ControlFlow 0 463755) 463988) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon28_Then_correct|) (=> (= (ControlFlow 0 463755) 463771) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon28_Else_correct|))))))
(let ((inline$$Not$1$anon0_correct  (=> (and (= inline$$Not$1$dst@1  (not |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t18@1|)) (= (ControlFlow 0 463715) 463755)) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Then_correct|  (=> inline$$1_Roles_can_hold_balance$0$$ret0@1 (=> (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t18@1| (|Select__T@[Int]Bool_| (|domain#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0|)) (= (ControlFlow 0 463721) 463715)) inline$$Not$1$anon0_correct))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Else_correct|  (=> (not inline$$1_Roles_can_hold_balance$0$$ret0@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 463675) 461113))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Else_correct|  (=> (and (not $abort_flag@19) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0| 7)) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0|) (= inline$$1_Roles_can_hold_balance$0$$ret0@1 inline$$1_Roles_can_hold_balance$0$$ret0@1))) (and (=> (= (ControlFlow 0 463659) 463721) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Then_correct|) (=> (= (ControlFlow 0 463659) 463675) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Then_correct|  (=> $abort_flag@19 (=> (and (and (= $abort_code@17 $abort_code@17) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| $abort_code@17)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 464126) 461113))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((inline$$1_Roles_can_hold_balance$0$L9_correct  (=> (= $abort_flag@19 true) (=> (and (= inline$$1_Roles_can_hold_balance$0$$ret0@1 inline$$1_Roles_can_hold_balance$0$$ret0@0) (= $abort_code@17 inline$$1_Roles_can_hold_balance$0$$t4@1)) (and (=> (= (ControlFlow 0 463549) 464126) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 463549) 463659) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Else_correct|))))))
(let ((inline$$1_Roles_can_hold_balance$0$anon17_Then_correct  (=> (and (and $abort_flag@17 (= $abort_code@15 $abort_code@15)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1 $abort_code@15) (= (ControlFlow 0 463543) 463549))) inline$$1_Roles_can_hold_balance$0$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$anon15_Then_correct  (=> (and (and $abort_flag@12 (= $abort_code@11 $abort_code@11)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1 $abort_code@11) (= (ControlFlow 0 463581) 463549))) inline$$1_Roles_can_hold_balance$0$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$anon13_Then_correct  (=> (and (and $abort_flag@8 (= $abort_code@8 $abort_code@8)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1 $abort_code@8) (= (ControlFlow 0 463613) 463549))) inline$$1_Roles_can_hold_balance$0$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$L7_correct  (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1 inline$$1_Roles_can_hold_balance$0$$t2@1) (= $abort_flag@19 $abort_flag@18)) (and (= inline$$1_Roles_can_hold_balance$0$$ret0@1 inline$$1_Roles_can_hold_balance$0$$t2@1) (= $abort_code@17 $abort_code@16))) (and (=> (= (ControlFlow 0 463529) 464126) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 463529) 463659) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Else_correct|)))))
(let ((inline$$1_Roles_can_hold_balance$0$anon17_Else_correct  (=> (and (not $abort_flag@17) (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@1)) (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@1) (= $abort_code@16 $abort_code@15)) (and (= $abort_flag@18 $abort_flag@17) (= (ControlFlow 0 463517) 463529))) inline$$1_Roles_can_hold_balance$0$L7_correct))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct  (=> (and (and (not $abort_flag@16) (= inline$$1_Roles_has_role$2$$ret0@1 inline$$1_Roles_has_role$2$$ret0@1)) (and (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 inline$$1_Roles_has_role$2$$ret0@1) (= $abort_flag@17 $abort_flag@16))) (and (=> (= (ControlFlow 0 463475) 463543) inline$$1_Roles_can_hold_balance$0$anon17_Then_correct) (=> (= (ControlFlow 0 463475) 463517) inline$$1_Roles_can_hold_balance$0$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct  (=> (and (and $abort_flag@16 (= $abort_code@15 $abort_code@15)) (and (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@0) (= $abort_flag@17 true))) (and (=> (= (ControlFlow 0 463493) 463543) inline$$1_Roles_can_hold_balance$0$anon17_Then_correct) (=> (= (ControlFlow 0 463493) 463517) inline$$1_Roles_can_hold_balance$0$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_role$2$anon11_Then_correct  (=> $abort_flag@14 (=> (and (and (= $abort_code@13 $abort_code@13) (= $abort_flag@16 true)) (and (= $abort_code@15 $abort_code@13) (= inline$$1_Roles_has_role$2$$ret0@1 inline$$1_Roles_has_role$2$$ret0@0))) (and (=> (= (ControlFlow 0 463399) 463493) inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 463399) 463475) inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$2$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$2$$t2@1 inline$$1_Roles_has_role$2$$t2@1) (= $abort_flag@16 $abort_flag@15)) (and (= $abort_code@15 $abort_code@14) (= inline$$1_Roles_has_role$2$$ret0@1 inline$$1_Roles_has_role$2$$t2@1))) (and (=> (= (ControlFlow 0 463335) 463493) inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 463335) 463475) inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$2$anon11_Else_correct  (=> (and (and (and (not $abort_flag@14) (= inline$$1_Roles_has_role$2$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$2$$t6@2))) (and (= inline$$1_Roles_has_role$2$$t9@1 (= inline$$1_Roles_has_role$2$$t8@1 2)) (= inline$$1_Roles_has_role$2$$t9@1 inline$$1_Roles_has_role$2$$t9@1))) (and (and (= $abort_flag@15 $abort_flag@14) (= inline$$1_Roles_has_role$2$$t2@1 inline$$1_Roles_has_role$2$$t9@1)) (and (= $abort_code@14 $abort_code@13) (= (ControlFlow 0 463381) 463335)))) inline$$1_Roles_has_role$2$L3_correct)))
(let ((inline$$1_Roles_has_role$2$anon10_Then$1_correct  (=> (= $abort_code@13 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@14 true) (= inline$$1_Roles_has_role$2$$t6@2 inline$$1_Roles_has_role$2$$t6@0)) (and (=> (= (ControlFlow 0 463451) 463399) inline$$1_Roles_has_role$2$anon11_Then_correct) (=> (= (ControlFlow 0 463451) 463381) inline$$1_Roles_has_role$2$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$2$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$2$$t4@0)) (= (ControlFlow 0 463449) 463451)) inline$$1_Roles_has_role$2$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$2$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$2$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$2$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$2$$t4@0)) (= $abort_code@13 $abort_code@12)) (and (= $abort_flag@14 $abort_flag@13) (= inline$$1_Roles_has_role$2$$t6@2 inline$$1_Roles_has_role$2$$t6@1))) (and (=> (= (ControlFlow 0 463353) 463399) inline$$1_Roles_has_role$2$anon11_Then_correct) (=> (= (ControlFlow 0 463353) 463381) inline$$1_Roles_has_role$2$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$2$anon9_Then_correct  (=> inline$$1_Roles_has_role$2$$t5@1 (and (=> (= (ControlFlow 0 463339) 463449) inline$$1_Roles_has_role$2$anon10_Then_correct) (=> (= (ControlFlow 0 463339) 463353) inline$$1_Roles_has_role$2$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$2$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$2$$t5@1) (= false false)) (=> (and (and (= $abort_flag@15 $abort_flag@13) (= inline$$1_Roles_has_role$2$$t2@1 false)) (and (= $abort_code@14 $abort_code@12) (= (ControlFlow 0 463323) 463335))) inline$$1_Roles_has_role$2$L3_correct))))
(let ((inline$$1_Roles_has_role$2$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 2 2)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$2$$t4@0) (= inline$$1_Roles_has_role$2$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$2$$t4@0 inline$$1_Roles_has_role$2$$t4@0) (= inline$$1_Roles_has_role$2$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$2$$t4@0)))) (and (=> (= (ControlFlow 0 463303) 463339) inline$$1_Roles_has_role$2$anon9_Then_correct) (=> (= (ControlFlow 0 463303) 463323) inline$$1_Roles_has_role$2$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 2) (= (ControlFlow 0 463457) 463303)) inline$$1_Roles_has_role$2$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$0$anon16_Else_correct  (=> (and (not inline$$1_Roles_can_hold_balance$0$$t1@1) (= (ControlFlow 0 463499) 463457)) inline$$1_Roles_has_designated_dealer_role$0$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$anon16_Then_correct  (=> (and inline$$1_Roles_can_hold_balance$0$$t1@1 (= true true)) (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1 true) (= $abort_code@16 $abort_code@12)) (and (= $abort_flag@18 $abort_flag@13) (= (ControlFlow 0 463567) 463529))) inline$$1_Roles_can_hold_balance$0$L7_correct))))
(let ((inline$$1_Roles_can_hold_balance$0$anon15_Else_correct  (=> (not $abort_flag@12) (=> (and (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@1) (= inline$$1_Roles_can_hold_balance$0$$t1@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@1)) (and (= $abort_flag@13 $abort_flag@12) (= $abort_code@12 $abort_code@11))) (and (=> (= (ControlFlow 0 462817) 463567) inline$$1_Roles_can_hold_balance$0$anon16_Then_correct) (=> (= (ControlFlow 0 462817) 463499) inline$$1_Roles_can_hold_balance$0$anon16_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct  (=> (and (and (not $abort_flag@11) (= inline$$1_Roles_has_role$1$$ret0@1 inline$$1_Roles_has_role$1$$ret0@1)) (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1 inline$$1_Roles_has_role$1$$ret0@1) (= $abort_flag@12 $abort_flag@11))) (and (=> (= (ControlFlow 0 462775) 463581) inline$$1_Roles_can_hold_balance$0$anon15_Then_correct) (=> (= (ControlFlow 0 462775) 462817) inline$$1_Roles_can_hold_balance$0$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct  (=> (and (and $abort_flag@11 (= $abort_code@11 $abort_code@11)) (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@0) (= $abort_flag@12 true))) (and (=> (= (ControlFlow 0 462793) 463581) inline$$1_Roles_can_hold_balance$0$anon15_Then_correct) (=> (= (ControlFlow 0 462793) 462817) inline$$1_Roles_can_hold_balance$0$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_role$1$anon11_Then_correct  (=> $abort_flag@9 (=> (and (and (= $abort_code@9 $abort_code@9) (= $abort_code@11 $abort_code@9)) (and (= $abort_flag@11 true) (= inline$$1_Roles_has_role$1$$ret0@1 inline$$1_Roles_has_role$1$$ret0@0))) (and (=> (= (ControlFlow 0 462699) 462793) inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 462699) 462775) inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$1$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$1$$t2@1 inline$$1_Roles_has_role$1$$t2@1) (= $abort_code@11 $abort_code@10)) (and (= $abort_flag@11 $abort_flag@10) (= inline$$1_Roles_has_role$1$$ret0@1 inline$$1_Roles_has_role$1$$t2@1))) (and (=> (= (ControlFlow 0 462635) 462793) inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 462635) 462775) inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$1$anon11_Else_correct  (=> (and (and (and (not $abort_flag@9) (= inline$$1_Roles_has_role$1$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$1$$t6@2))) (and (= inline$$1_Roles_has_role$1$$t9@1 (= inline$$1_Roles_has_role$1$$t8@1 6)) (= inline$$1_Roles_has_role$1$$t9@1 inline$$1_Roles_has_role$1$$t9@1))) (and (and (= $abort_code@10 $abort_code@9) (= inline$$1_Roles_has_role$1$$t2@1 inline$$1_Roles_has_role$1$$t9@1)) (and (= $abort_flag@10 $abort_flag@9) (= (ControlFlow 0 462681) 462635)))) inline$$1_Roles_has_role$1$L3_correct)))
(let ((inline$$1_Roles_has_role$1$anon10_Then$1_correct  (=> (= $abort_flag@9 true) (=> (and (= $abort_code@9 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$1$$t6@2 inline$$1_Roles_has_role$1$$t6@0)) (and (=> (= (ControlFlow 0 462751) 462699) inline$$1_Roles_has_role$1$anon11_Then_correct) (=> (= (ControlFlow 0 462751) 462681) inline$$1_Roles_has_role$1$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$1$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$1$$t4@0)) (= (ControlFlow 0 462749) 462751)) inline$$1_Roles_has_role$1$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$1$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$1$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$1$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$1$$t4@0)) (= $abort_flag@9 $abort_flag@8)) (and (= $abort_code@9 $abort_code@8) (= inline$$1_Roles_has_role$1$$t6@2 inline$$1_Roles_has_role$1$$t6@1))) (and (=> (= (ControlFlow 0 462653) 462699) inline$$1_Roles_has_role$1$anon11_Then_correct) (=> (= (ControlFlow 0 462653) 462681) inline$$1_Roles_has_role$1$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$1$anon9_Then_correct  (=> inline$$1_Roles_has_role$1$$t5@1 (and (=> (= (ControlFlow 0 462639) 462749) inline$$1_Roles_has_role$1$anon10_Then_correct) (=> (= (ControlFlow 0 462639) 462653) inline$$1_Roles_has_role$1$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$1$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$1$$t5@1) (= false false)) (=> (and (and (= $abort_code@10 $abort_code@8) (= inline$$1_Roles_has_role$1$$t2@1 false)) (and (= $abort_flag@10 $abort_flag@8) (= (ControlFlow 0 462623) 462635))) inline$$1_Roles_has_role$1$L3_correct))))
(let ((inline$$1_Roles_has_role$1$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 6 6)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$1$$t4@0) (= inline$$1_Roles_has_role$1$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$1$$t4@0 inline$$1_Roles_has_role$1$$t4@0) (= inline$$1_Roles_has_role$1$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$1$$t4@0)))) (and (=> (= (ControlFlow 0 462603) 462639) inline$$1_Roles_has_role$1$anon9_Then_correct) (=> (= (ControlFlow 0 462603) 462623) inline$$1_Roles_has_role$1$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 6) (= (ControlFlow 0 462757) 462603)) inline$$1_Roles_has_role$1$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$0$anon14_Else_correct  (=> (and (not inline$$1_Roles_has_parent_VASP_role$0$$ret0@1) (= (ControlFlow 0 462799) 462757)) inline$$1_Roles_has_child_VASP_role$0$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$anon14_Then_correct  (=> inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 (=> (and (and (= true true) (= inline$$1_Roles_can_hold_balance$0$$t1@1 true)) (and (= $abort_flag@13 $abort_flag@8) (= $abort_code@12 $abort_code@8))) (and (=> (= (ControlFlow 0 463599) 463567) inline$$1_Roles_can_hold_balance$0$anon16_Then_correct) (=> (= (ControlFlow 0 463599) 463499) inline$$1_Roles_can_hold_balance$0$anon16_Else_correct))))))
(let ((inline$$1_Roles_can_hold_balance$0$anon13_Else_correct  (=> (not $abort_flag@8) (and (=> (= (ControlFlow 0 462119) 463599) inline$$1_Roles_can_hold_balance$0$anon14_Then_correct) (=> (= (ControlFlow 0 462119) 462799) inline$$1_Roles_can_hold_balance$0$anon14_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct  (=> (and (and (not $abort_flag@7) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@1)) (and (= inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@1) (= $abort_flag@8 $abort_flag@7))) (and (=> (= (ControlFlow 0 462087) 463613) inline$$1_Roles_can_hold_balance$0$anon13_Then_correct) (=> (= (ControlFlow 0 462087) 462119) inline$$1_Roles_can_hold_balance$0$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct  (=> (and (and $abort_flag@7 (= $abort_code@8 $abort_code@8)) (and (= inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 inline$$1_Roles_has_parent_VASP_role$0$$ret0@0) (= $abort_flag@8 true))) (and (=> (= (ControlFlow 0 462105) 463613) inline$$1_Roles_can_hold_balance$0$anon13_Then_correct) (=> (= (ControlFlow 0 462105) 462119) inline$$1_Roles_can_hold_balance$0$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct  (=> $abort_flag@5 (=> (and (and (= $abort_code@6 $abort_code@6) (= $abort_flag@7 true)) (and (= $abort_code@8 $abort_code@6) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@0))) (and (=> (= (ControlFlow 0 462011) 462105) inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 462011) 462087) inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$0$$t2@1 inline$$1_Roles_has_role$0$$t2@1) (= $abort_flag@7 $abort_flag@6)) (and (= $abort_code@8 $abort_code@7) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$t2@1))) (and (=> (= (ControlFlow 0 461947) 462105) inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 461947) 462087) inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct  (=> (and (and (and (not $abort_flag@5) (= inline$$1_Roles_has_role$0$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2))) (and (= inline$$1_Roles_has_role$0$$t9@1 (= inline$$1_Roles_has_role$0$$t8@1 5)) (= inline$$1_Roles_has_role$0$$t9@1 inline$$1_Roles_has_role$0$$t9@1))) (and (and (= $abort_flag@6 $abort_flag@5) (= inline$$1_Roles_has_role$0$$t2@1 inline$$1_Roles_has_role$0$$t9@1)) (and (= $abort_code@7 $abort_code@6) (= (ControlFlow 0 461993) 461947)))) inline$$1_Roles_has_role$0$L3_correct)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct  (=> (= $abort_code@6 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@5 true) (= inline$$1_Roles_has_role$0$$t6@2 inline$$1_Roles_has_role$0$$t6@0)) (and (=> (= (ControlFlow 0 462063) 462011) inline$$1_Roles_has_role$0$anon11_Then_correct) (=> (= (ControlFlow 0 462063) 461993) inline$$1_Roles_has_role$0$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$0$$t4@0)) (= (ControlFlow 0 462061) 462063)) inline$$1_Roles_has_role$0$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$0$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$0$$t4@0)) (= $abort_code@6 $abort_code@5)) (and (= $abort_flag@5 $abort_flag@4) (= inline$$1_Roles_has_role$0$$t6@2 inline$$1_Roles_has_role$0$$t6@1))) (and (=> (= (ControlFlow 0 461965) 462011) inline$$1_Roles_has_role$0$anon11_Then_correct) (=> (= (ControlFlow 0 461965) 461993) inline$$1_Roles_has_role$0$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct  (=> inline$$1_Roles_has_role$0$$t5@1 (and (=> (= (ControlFlow 0 461951) 462061) inline$$1_Roles_has_role$0$anon10_Then_correct) (=> (= (ControlFlow 0 461951) 461965) inline$$1_Roles_has_role$0$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$0$$t5@1) (= false false)) (=> (and (and (= $abort_flag@6 $abort_flag@4) (= inline$$1_Roles_has_role$0$$t2@1 false)) (and (= $abort_code@7 $abort_code@5) (= (ControlFlow 0 461935) 461947))) inline$$1_Roles_has_role$0$L3_correct))))
(let ((inline$$1_Roles_has_role$0$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 5 5)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0) (= inline$$1_Roles_has_role$0$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$0$$t4@0 inline$$1_Roles_has_role$0$$t4@0) (= inline$$1_Roles_has_role$0$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$0$$t4@0)))) (and (=> (= (ControlFlow 0 461915) 461951) inline$$1_Roles_has_role$0$anon9_Then_correct) (=> (= (ControlFlow 0 461915) 461935) inline$$1_Roles_has_role$0$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 5) (= (ControlFlow 0 462069) 461915)) inline$$1_Roles_has_role$0$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$0$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= (ControlFlow 0 462111) 462069)) inline$$1_Roles_has_parent_VASP_role$0$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon25_Then_correct|  (=> (and inline$$1_DiemAccount_exists_at$0$$t1@1 (= (ControlFlow 0 463619) 462111)) inline$$1_Roles_can_hold_balance$0$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon25_Else_correct|  (=> (not inline$$1_DiemAccount_exists_at$0$$t1@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 461107) 461113))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon24_Else_correct|  (=> (and (not $abort_flag@4) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0| 5)) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0|) (= inline$$1_DiemAccount_exists_at$0$$t1@1 inline$$1_DiemAccount_exists_at$0$$t1@1))) (and (=> (= (ControlFlow 0 461091) 463619) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon25_Then_correct|) (=> (= (ControlFlow 0 461091) 461107) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon25_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon24_Then_correct|  (=> $abort_flag@4 (=> (and (and (= $abort_code@5 $abort_code@5) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| $abort_code@5)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 464140) 461113))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct  (=> (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0|) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_266923| $1_DiemAccount_DiemAccount_$memory@2) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0|)) (= inline$$1_DiemAccount_exists_at$0$$t1@1 inline$$1_DiemAccount_exists_at$0$$t1@1)) (and (=> (= (ControlFlow 0 461049) 464140) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon24_Then_correct|) (=> (= (ControlFlow 0 461049) 461091) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon24_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon23_Else_correct|  (=> (and (not |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0|) (= (ControlFlow 0 461055) 461049)) inline$$1_DiemAccount_exists_at$0$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon23_Then_correct|  (=> |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_251204| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@0|)) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 464166) 461113))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon0_correct|  (=> (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (and (and (|$IsValid'address'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_251204| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 460944) 464166) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 460944) 461055) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon23_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon0_correct|  (=> (and (and (and (= |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t3@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1)) (and (= _$t3 _$t3) (|$IsValid'address'| |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t4@0|))) (and (and (= |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t4@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t4@0| |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t4@0|)) (and (= |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$$t5@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 464170) 460944)))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon0_correct|)))
(let ((anon26_correct  (=> (= $t23 (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_267940| $1_DiemAccount_AccountOperationsCapability_$memory@2) 173345816)) (=> (and (= $t24 (|$creation_events#$1_DiemAccount_AccountOperationsCapability| (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_267940| $1_DiemAccount_AccountOperationsCapability_$memory@2) 173345816))) (= $t25 ($1_DiemAccount_CreateAccountEvent (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory@3) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)))))) (=> (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_267940| $1_DiemAccount_AccountOperationsCapability_$memory@2) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_266923| $1_DiemAccount_DiemAccount_$memory@2) $t18)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_266444| $1_AccountFreezing_FreezingBit_$memory@2) $t18) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_266444| $1_AccountFreezing_FreezingBit_$memory@2) $t18))))) (and (and (= (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| $t23) (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| ($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| $t19) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| $t19)))) (= (|$creation_events#$1_DiemAccount_AccountOperationsCapability| $t23) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| ($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| $t19) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| $t19))))) (and (not (= (|l#Vec_150452| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_266923| $1_DiemAccount_DiemAccount_$memory@2) $t18)))) 0)) (= $t18 (|$account_address#$1_DiemAccount_KeyRotationCapability| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_150452| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_266923| $1_DiemAccount_DiemAccount_$memory@2) $t18)))) 0)))))) (and (and (and (not (= (|l#Vec_150491| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_266923| $1_DiemAccount_DiemAccount_$memory@2) $t18)))) 0)) (= $t18 (|$account_address#$1_DiemAccount_WithdrawCapability| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_150491| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_266923| $1_DiemAccount_DiemAccount_$memory@2) $t18)))) 0)))) (= $t26 $t25)) (and (and (= $t27 $t24) (= $es@0 (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_150327_| (|streams#$EventStore| $es) $t27)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_150327| stream@@3)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_150327| stream@@3) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t26))))
(Multiset_150327 (|Store__T@[$EventRep]Int_| (|v#Multiset_150327| stream@@3) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t26) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_150327_| (|streams#$EventStore| $es) $t27 stream_new@@2)))))) (and (= $t28 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 472168) 464170))))) |inline$$1_DiemAccount_add_currencies_for_account'$1_XDX_XDX'$0$anon0_correct|)))))
(let ((anon40_Else_correct  (=> (and (and (not |$temp_0'bool'@3|) (= $1_DiemAccount_AccountOperationsCapability_$memory@1 ($Memory_267940 (|Store__T@[Int]Bool_| (|domain#$Memory_267940| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816 false) (|contents#$Memory_267940| $1_DiemAccount_AccountOperationsCapability_$memory)))) (and (= $1_DiemAccount_AccountOperationsCapability_$memory@2 $1_DiemAccount_AccountOperationsCapability_$memory@1) (= (ControlFlow 0 459700) 472168))) anon26_correct)))
(let ((anon40_Then_correct  (=> (and (and |$temp_0'bool'@3| (= $1_DiemAccount_AccountOperationsCapability_$memory@0 ($Memory_267940 (|Store__T@[Int]Bool_| (|domain#$Memory_267940| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816 true) (|Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_267940| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816 |$temp_0'$1_DiemAccount_AccountOperationsCapability'@0|)))) (and (= $1_DiemAccount_AccountOperationsCapability_$memory@2 $1_DiemAccount_AccountOperationsCapability_$memory@0) (= (ControlFlow 0 473378) 472168))) anon26_correct)))
(let ((anon39_Else_correct  (=> (not |$temp_0'bool'@2|) (=> (and (= $1_AccountFreezing_FreezingBit_$memory@1 ($Memory_266444 (|Store__T@[Int]Bool_| (|domain#$Memory_266444| $1_AccountFreezing_FreezingBit_$memory) $t18 false) (|contents#$Memory_266444| $1_AccountFreezing_FreezingBit_$memory))) (= $1_AccountFreezing_FreezingBit_$memory@2 $1_AccountFreezing_FreezingBit_$memory@1)) (and (=> (= (ControlFlow 0 459686) 473378) anon40_Then_correct) (=> (= (ControlFlow 0 459686) 459700) anon40_Else_correct))))))
(let ((anon39_Then_correct  (=> |$temp_0'bool'@2| (=> (and (= $1_AccountFreezing_FreezingBit_$memory@0 ($Memory_266444 (|Store__T@[Int]Bool_| (|domain#$Memory_266444| $1_AccountFreezing_FreezingBit_$memory) $t18 true) (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_266444| $1_AccountFreezing_FreezingBit_$memory) $t18 |$temp_0'$1_AccountFreezing_FreezingBit'@0|))) (= $1_AccountFreezing_FreezingBit_$memory@2 $1_AccountFreezing_FreezingBit_$memory@0)) (and (=> (= (ControlFlow 0 473390) 473378) anon40_Then_correct) (=> (= (ControlFlow 0 473390) 459700) anon40_Else_correct))))))
(let ((anon38_Else_correct  (=> (and (not |$temp_0'bool'@1|) (= $1_Event_EventHandleGenerator_$memory@1 ($Memory_188757 (|Store__T@[Int]Bool_| (|domain#$Memory_188757| $1_Event_EventHandleGenerator_$memory) $t18 false) (|contents#$Memory_188757| $1_Event_EventHandleGenerator_$memory)))) (and (=> (= (ControlFlow 0 459672) 473390) anon39_Then_correct) (=> (= (ControlFlow 0 459672) 459686) anon39_Else_correct)))))
(let ((anon38_Then_correct  (=> (and |$temp_0'bool'@1| (= $1_Event_EventHandleGenerator_$memory@0 ($Memory_188757 (|Store__T@[Int]Bool_| (|domain#$Memory_188757| $1_Event_EventHandleGenerator_$memory) $t18 true) (|Store__T@[Int]$1_Event_EventHandleGenerator_| (|contents#$Memory_188757| $1_Event_EventHandleGenerator_$memory) $t18 |$temp_0'$1_Event_EventHandleGenerator'@0|)))) (and (=> (= (ControlFlow 0 473402) 473390) anon39_Then_correct) (=> (= (ControlFlow 0 473402) 459686) anon39_Else_correct)))))
(let ((anon37_Else_correct  (=> (not |$temp_0'bool'@0|) (=> (and (= $1_DiemAccount_DiemAccount_$memory@1 ($Memory_266923 (|Store__T@[Int]Bool_| (|domain#$Memory_266923| $1_DiemAccount_DiemAccount_$memory) $t18 false) (|contents#$Memory_266923| $1_DiemAccount_DiemAccount_$memory))) (= $1_DiemAccount_DiemAccount_$memory@2 $1_DiemAccount_DiemAccount_$memory@1)) (and (=> (= (ControlFlow 0 459658) 473402) anon38_Then_correct) (=> (= (ControlFlow 0 459658) 459672) anon38_Else_correct))))))
(let ((anon37_Then_correct  (=> |$temp_0'bool'@0| (=> (and (= $1_DiemAccount_DiemAccount_$memory@0 ($Memory_266923 (|Store__T@[Int]Bool_| (|domain#$Memory_266923| $1_DiemAccount_DiemAccount_$memory) $t18 true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_266923| $1_DiemAccount_DiemAccount_$memory) $t18 |$temp_0'$1_DiemAccount_DiemAccount'@0|))) (= $1_DiemAccount_DiemAccount_$memory@2 $1_DiemAccount_DiemAccount_$memory@0)) (and (=> (= (ControlFlow 0 473414) 473402) anon38_Then_correct) (=> (= (ControlFlow 0 473414) 459672) anon38_Else_correct))))))
(let ((anon36_Else_correct  (=> (not $t22) (and (=> (= (ControlFlow 0 459646) 473414) anon37_Then_correct) (=> (= (ControlFlow 0 459646) 459658) anon37_Else_correct)))))
(let ((anon35_Else_correct  (=> (not $abort_flag@4) (=> (and (and (= $t18 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= $t19 (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_267940| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (and (= $t20 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= $t21 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)))) (and (=> (= (ControlFlow 0 459640) (- 0 698788)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_266923| $1_DiemAccount_DiemAccount_$memory) $t18))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_266923| $1_DiemAccount_DiemAccount_$memory) $t18)) (and (=> (= (ControlFlow 0 459640) (- 0 698799)) (|Select__T@[Int]Bool_| (|domain#$Memory_267940| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_267940| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816) (and (=> (= (ControlFlow 0 459640) (- 0 698808)) (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory@3) $t18)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory@3) $t18) (=> (= $t22  (or (or (or (or (= $t18 0) (= $t18 1)) (|Select__T@[Int]Bool_| (|domain#$Memory_266444| $1_AccountFreezing_FreezingBit_$memory) $t18)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_267940| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)))) (not (= (+ 16 (|l#Vec_27708| _$t2)) 32)))) (and (=> (= (ControlFlow 0 459640) 473520) anon36_Then_correct) (=> (= (ControlFlow 0 459640) 459646) anon36_Else_correct)))))))))))))
(let ((anon34_Else_correct  (=> (not $abort_flag@4) (and (=> (= (ControlFlow 0 459506) 473534) anon35_Then_correct) (=> (= (ControlFlow 0 459506) 459640) anon35_Else_correct)))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon36_Else_correct  (=> (not $abort_flag@3) (=> (and (and (= $abort_code@5 $abort_code@4) (= $1_VASP_ChildVASP_$memory@3 $1_VASP_ChildVASP_$memory@1)) (and (= $1_VASP_ParentVASP_$memory@2 $1_VASP_ParentVASP_$memory@0) (= $abort_flag@4 $abort_flag@3))) (and (=> (= (ControlFlow 0 459219) 473548) anon34_Then_correct) (=> (= (ControlFlow 0 459219) 459506) anon34_Else_correct))))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$L7_correct  (=> (and (and (= $abort_code@5 inline$$1_VASP_publish_child_vasp_credential$0$$t16@1) (= $1_VASP_ChildVASP_$memory@3 $1_VASP_ChildVASP_$memory@2)) (and (= $1_VASP_ParentVASP_$memory@2 $1_VASP_ParentVASP_$memory@1) (= $abort_flag@4 true))) (and (=> (= (ControlFlow 0 458732) 473548) anon34_Then_correct) (=> (= (ControlFlow 0 458732) 459506) anon34_Else_correct)))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon36_Then_correct  (=> (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (=> (and (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t16@1 $abort_code@4) (= $1_VASP_ChildVASP_$memory@2 $1_VASP_ChildVASP_$memory@1)) (and (= $1_VASP_ParentVASP_$memory@1 $1_VASP_ParentVASP_$memory@0) (= (ControlFlow 0 459233) 458732))) inline$$1_VASP_publish_child_vasp_credential$0$L7_correct))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon35_Then$1_correct  (=> (= $1_VASP_ChildVASP_$memory@1 $1_VASP_ChildVASP_$memory) (=> (and (= $abort_code@4 $EXEC_FAILURE_CODE) (= $abort_flag@3 true)) (and (=> (= (ControlFlow 0 459285) 459233) inline$$1_VASP_publish_child_vasp_credential$0$anon36_Then_correct) (=> (= (ControlFlow 0 459285) 459219) inline$$1_VASP_publish_child_vasp_credential$0$anon36_Else_correct))))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon35_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_261662| $1_VASP_ChildVASP_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 459283) 459285)) inline$$1_VASP_publish_child_vasp_credential$0$anon35_Then$1_correct)))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon35_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_261662| $1_VASP_ChildVASP_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (and (and (= $1_VASP_ChildVASP_$memory@0 ($Memory_261662 (|Store__T@[Int]Bool_| (|domain#$Memory_261662| $1_VASP_ChildVASP_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_261662| $1_VASP_ChildVASP_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) inline$$1_VASP_publish_child_vasp_credential$0$$t37@1))) (= $1_VASP_ChildVASP_$memory@1 $1_VASP_ChildVASP_$memory@0)) (and (= $abort_code@4 $abort_code@3) (= $abort_flag@3 $abort_flag@2))) (and (=> (= (ControlFlow 0 459209) 459233) inline$$1_VASP_publish_child_vasp_credential$0$anon36_Then_correct) (=> (= (ControlFlow 0 459209) 459219) inline$$1_VASP_publish_child_vasp_credential$0$anon36_Else_correct))))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon34_Else_correct  (=> (not $abort_flag@2) (=> (and (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t28@2 ($Mutation_17352 (|l#$Mutation_17352| inline$$1_VASP_publish_child_vasp_credential$0$$t28@1) (|p#$Mutation_17352| inline$$1_VASP_publish_child_vasp_credential$0$$t28@1) inline$$AddU64$0$dst@2)) (= inline$$1_VASP_publish_child_vasp_credential$0$$t27@3 ($Mutation_262045 (|l#$Mutation_262045| inline$$1_VASP_publish_child_vasp_credential$0$$t27@2) (|p#$Mutation_262045| inline$$1_VASP_publish_child_vasp_credential$0$$t27@2) ($1_VASP_ParentVASP (|v#$Mutation_17352| inline$$1_VASP_publish_child_vasp_credential$0$$t28@2))))) (and (= $1_VASP_ParentVASP_$memory@0 ($Memory_261726 (|Store__T@[Int]Bool_| (|domain#$Memory_261726| $1_VASP_ParentVASP_$memory) (|a#$Global| (|l#$Mutation_262045| inline$$1_VASP_publish_child_vasp_credential$0$$t27@3)) true) (|Store__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_261726| $1_VASP_ParentVASP_$memory) (|a#$Global| (|l#$Mutation_262045| inline$$1_VASP_publish_child_vasp_credential$0$$t27@3)) (|v#$Mutation_262045| inline$$1_VASP_publish_child_vasp_credential$0$$t27@3)))) (= inline$$1_VASP_publish_child_vasp_credential$0$$t37@1 ($1_VASP_ChildVASP inline$$1_VASP_publish_child_vasp_credential$0$$t23@0)))) (and (=> (= (ControlFlow 0 459187) 459283) inline$$1_VASP_publish_child_vasp_credential$0$anon35_Then_correct) (=> (= (ControlFlow 0 459187) 459209) inline$$1_VASP_publish_child_vasp_credential$0$anon35_Else_correct))))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon34_Then_correct  (=> (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (=> (and (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t16@1 $abort_code@3) (= $1_VASP_ChildVASP_$memory@2 $1_VASP_ChildVASP_$memory)) (and (= $1_VASP_ParentVASP_$memory@1 $1_VASP_ParentVASP_$memory) (= (ControlFlow 0 459299) 458732))) inline$$1_VASP_publish_child_vasp_credential$0$L7_correct))))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@2 true) (=> (and (= $abort_code@3 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 459135) 459299) inline$$1_VASP_publish_child_vasp_credential$0$anon34_Then_correct) (=> (= (ControlFlow 0 459135) 459187) inline$$1_VASP_publish_child_vasp_credential$0$anon34_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ inline$$1_VASP_publish_child_vasp_credential$0$$t34@1 1) $MAX_U64) (= (ControlFlow 0 459133) 459135)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ inline$$1_VASP_publish_child_vasp_credential$0$$t34@1 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ inline$$1_VASP_publish_child_vasp_credential$0$$t34@1 1)) (= $abort_flag@2 $abort_flag@1)) (and (= $abort_code@3 $abort_code@2) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 459081) 459299) inline$$1_VASP_publish_child_vasp_credential$0$anon34_Then_correct) (=> (= (ControlFlow 0 459081) 459187) inline$$1_VASP_publish_child_vasp_credential$0$anon34_Else_correct))))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon33_Then_correct  (=> inline$$Lt$0$dst@1 (=> (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t34@1 (|v#$Mutation_17352| inline$$1_VASP_publish_child_vasp_credential$0$$t28@1)) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 459141) 459133) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 459141) 459081) inline$$AddU64$0$anon3_Else_correct))))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon33_Else_correct  (=> (and (not inline$$Lt$0$dst@1) (= inline$$1_VASP_publish_child_vasp_credential$0$$t33@0 inline$$1_VASP_publish_child_vasp_credential$0$$t33@0)) (=> (and (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t16@1 inline$$1_VASP_publish_child_vasp_credential$0$$t33@0) (= $1_VASP_ChildVASP_$memory@2 $1_VASP_ChildVASP_$memory)) (and (= $1_VASP_ParentVASP_$memory@1 $1_VASP_ParentVASP_$memory) (= (ControlFlow 0 458974) 458732))) inline$$1_VASP_publish_child_vasp_credential$0$L7_correct))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon32_Else$1_correct  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| inline$$1_VASP_publish_child_vasp_credential$0$$t33@0) (= inline$$1_VASP_publish_child_vasp_credential$0$$t33@0 8)) (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t33@0 inline$$1_VASP_publish_child_vasp_credential$0$$t33@0) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 458958) 459141) inline$$1_VASP_publish_child_vasp_credential$0$anon33_Then_correct) (=> (= (ControlFlow 0 458958) 458974) inline$$1_VASP_publish_child_vasp_credential$0$anon33_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< inline$$1_VASP_publish_child_vasp_credential$0$$t29@1 65536)) (= (ControlFlow 0 458922) 458958)) inline$$1_VASP_publish_child_vasp_credential$0$anon32_Else$1_correct)))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon32_Else_correct  (=> (not $abort_flag@1) (=> (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t28@1 ($Mutation_17352 (|l#$Mutation_262045| inline$$1_VASP_publish_child_vasp_credential$0$$t27@2) (let ((l (|l#Vec_27708| (|p#$Mutation_262045| inline$$1_VASP_publish_child_vasp_credential$0$$t27@2))))
(Vec_27708 (|Store__T@[Int]Int_| (|v#Vec_27708| (|p#$Mutation_262045| inline$$1_VASP_publish_child_vasp_credential$0$$t27@2)) l 0) (+ l 1))) (|$num_children#$1_VASP_ParentVASP| (|v#$Mutation_262045| inline$$1_VASP_publish_child_vasp_credential$0$$t27@2)))) (= |inline$$1_VASP_publish_child_vasp_credential$0$$temp_0'u64'@1| (|v#$Mutation_17352| inline$$1_VASP_publish_child_vasp_credential$0$$t28@1))) (=> (and (and (= |inline$$1_VASP_publish_child_vasp_credential$0$$temp_0'u64'@1| |inline$$1_VASP_publish_child_vasp_credential$0$$temp_0'u64'@1|) (= inline$$1_VASP_publish_child_vasp_credential$0$$t29@1 (|v#$Mutation_17352| inline$$1_VASP_publish_child_vasp_credential$0$$t28@1))) (and (|$IsValid'u64'| 65536) (= (ControlFlow 0 458928) 458922))) inline$$Lt$0$anon0_correct)))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon32_Then_correct  (=> (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (=> (and (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t16@1 $abort_code@2) (= $1_VASP_ChildVASP_$memory@2 $1_VASP_ChildVASP_$memory)) (and (= $1_VASP_ParentVASP_$memory@1 $1_VASP_ParentVASP_$memory) (= (ControlFlow 0 459313) 458732))) inline$$1_VASP_publish_child_vasp_credential$0$L7_correct))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon31_Then$1_correct  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= inline$$1_VASP_publish_child_vasp_credential$0$$t27@2 inline$$1_VASP_publish_child_vasp_credential$0$$t27@0)) (and (=> (= (ControlFlow 0 459365) 459313) inline$$1_VASP_publish_child_vasp_credential$0$anon32_Then_correct) (=> (= (ControlFlow 0 459365) 458928) inline$$1_VASP_publish_child_vasp_credential$0$anon32_Else_correct))))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon31_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_261726| $1_VASP_ParentVASP_$memory) inline$$1_VASP_publish_child_vasp_credential$0$$t23@0)) (= (ControlFlow 0 459363) 459365)) inline$$1_VASP_publish_child_vasp_credential$0$anon31_Then$1_correct)))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon31_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_261726| $1_VASP_ParentVASP_$memory) inline$$1_VASP_publish_child_vasp_credential$0$$t23@0) (=> (and (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t27@1 ($Mutation_262045 ($Global inline$$1_VASP_publish_child_vasp_credential$0$$t23@0) (Vec_27708 (MapConstVec_16957 DefaultVecElem_16957) 0) (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_261726| $1_VASP_ParentVASP_$memory) inline$$1_VASP_publish_child_vasp_credential$0$$t23@0))) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= inline$$1_VASP_publish_child_vasp_credential$0$$t27@2 inline$$1_VASP_publish_child_vasp_credential$0$$t27@1))) (and (=> (= (ControlFlow 0 458840) 459313) inline$$1_VASP_publish_child_vasp_credential$0$anon32_Then_correct) (=> (= (ControlFlow 0 458840) 458928) inline$$1_VASP_publish_child_vasp_credential$0$anon32_Else_correct))))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon30_Then_correct  (=> inline$$1_VASP_publish_child_vasp_credential$0$$t24@0 (and (=> (= (ControlFlow 0 458818) 459363) inline$$1_VASP_publish_child_vasp_credential$0$anon31_Then_correct) (=> (= (ControlFlow 0 458818) 458840) inline$$1_VASP_publish_child_vasp_credential$0$anon31_Else_correct)))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon30_Else_correct  (=> (and (not inline$$1_VASP_publish_child_vasp_credential$0$$t24@0) (= inline$$1_VASP_publish_child_vasp_credential$0$$t26@0 inline$$1_VASP_publish_child_vasp_credential$0$$t26@0)) (=> (and (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t16@1 inline$$1_VASP_publish_child_vasp_credential$0$$t26@0) (= $1_VASP_ChildVASP_$memory@2 $1_VASP_ChildVASP_$memory)) (and (= $1_VASP_ParentVASP_$memory@1 $1_VASP_ParentVASP_$memory) (= (ControlFlow 0 458814) 458732))) inline$$1_VASP_publish_child_vasp_credential$0$L7_correct))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon29_Then_correct  (=> (and inline$$Not$0$dst@1 (|$IsValid'address'| inline$$1_VASP_publish_child_vasp_credential$0$$t23@0)) (=> (and (and (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t23@0 (|$addr#$signer| _$t0)) (= inline$$1_VASP_publish_child_vasp_credential$0$$t23@0 inline$$1_VASP_publish_child_vasp_credential$0$$t23@0)) (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t24@0 (|Select__T@[Int]Bool_| (|domain#$Memory_261726| $1_VASP_ParentVASP_$memory) inline$$1_VASP_publish_child_vasp_credential$0$$t23@0)) (|$IsValid'u64'| 3))) (and (and (|$IsValid'u64'| inline$$1_VASP_publish_child_vasp_credential$0$$t26@0) (= inline$$1_VASP_publish_child_vasp_credential$0$$t26@0 7)) (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t26@0 inline$$1_VASP_publish_child_vasp_credential$0$$t26@0) (= inline$$1_VASP_publish_child_vasp_credential$0$$t24@0 inline$$1_VASP_publish_child_vasp_credential$0$$t24@0)))) (and (=> (= (ControlFlow 0 458798) 458818) inline$$1_VASP_publish_child_vasp_credential$0$anon30_Then_correct) (=> (= (ControlFlow 0 458798) 458814) inline$$1_VASP_publish_child_vasp_credential$0$anon30_Else_correct))))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon29_Else_correct  (=> (and (not inline$$Not$0$dst@1) (= inline$$1_VASP_publish_child_vasp_credential$0$$t22@0 inline$$1_VASP_publish_child_vasp_credential$0$$t22@0)) (=> (and (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t16@1 inline$$1_VASP_publish_child_vasp_credential$0$$t22@0) (= $1_VASP_ChildVASP_$memory@2 $1_VASP_ChildVASP_$memory)) (and (= $1_VASP_ParentVASP_$memory@1 $1_VASP_ParentVASP_$memory) (= (ControlFlow 0 458726) 458732))) inline$$1_VASP_publish_child_vasp_credential$0$L7_correct))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon28_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| inline$$1_VASP_publish_child_vasp_credential$0$$t22@0) (= inline$$1_VASP_publish_child_vasp_credential$0$$t22@0 6)) (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t22@0 inline$$1_VASP_publish_child_vasp_credential$0$$t22@0) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 458710) 458798) inline$$1_VASP_publish_child_vasp_credential$0$anon29_Then_correct) (=> (= (ControlFlow 0 458710) 458726) inline$$1_VASP_publish_child_vasp_credential$0$anon29_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not inline$$1_VASP_publish_child_vasp_credential$0$$t19@0)) (= (ControlFlow 0 458674) 458710)) inline$$1_VASP_publish_child_vasp_credential$0$anon28_Else$1_correct)))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon28_Else_correct  (=> (and (not inline$$1_VASP_publish_child_vasp_credential$0$$t17@0) (|$IsValid'address'| inline$$1_VASP_publish_child_vasp_credential$0$$t18@0)) (=> (and (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t18@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= inline$$1_VASP_publish_child_vasp_credential$0$$t18@0 inline$$1_VASP_publish_child_vasp_credential$0$$t18@0)) (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t19@0  (or (|Select__T@[Int]Bool_| (|domain#$Memory_261726| $1_VASP_ParentVASP_$memory) inline$$1_VASP_publish_child_vasp_credential$0$$t18@0) (|Select__T@[Int]Bool_| (|domain#$Memory_261662| $1_VASP_ChildVASP_$memory) inline$$1_VASP_publish_child_vasp_credential$0$$t18@0))) (= (ControlFlow 0 458680) 458674))) inline$$Not$0$anon0_correct))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon28_Then_correct  (=> inline$$1_VASP_publish_child_vasp_credential$0$$t17@0 (=> (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory@3) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (= 5 inline$$1_VASP_publish_child_vasp_credential$0$$t16@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory@3) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) 6)) (= 3 inline$$1_VASP_publish_child_vasp_credential$0$$t16@0))) (= inline$$1_VASP_publish_child_vasp_credential$0$$t16@0 inline$$1_VASP_publish_child_vasp_credential$0$$t16@0)) (=> (and (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t16@1 inline$$1_VASP_publish_child_vasp_credential$0$$t16@0) (= $1_VASP_ChildVASP_$memory@2 $1_VASP_ChildVASP_$memory)) (and (= $1_VASP_ParentVASP_$memory@1 $1_VASP_ParentVASP_$memory) (= (ControlFlow 0 459421) 458732))) inline$$1_VASP_publish_child_vasp_credential$0$L7_correct)))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon27_Else_correct  (=> (and (not inline$$1_VASP_publish_child_vasp_credential$0$$t15@0) (= inline$$1_VASP_publish_child_vasp_credential$0$$t17@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory@3) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory@3) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) 6))))) (and (=> (= (ControlFlow 0 458600) 459421) inline$$1_VASP_publish_child_vasp_credential$0$anon28_Then_correct) (=> (= (ControlFlow 0 458600) 458680) inline$$1_VASP_publish_child_vasp_credential$0$anon28_Else_correct)))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon27_Then_correct  (=> inline$$1_VASP_publish_child_vasp_credential$0$$t15@0 (=> (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_VASP_publish_child_vasp_credential$0$$t14@0)) (= 5 inline$$1_VASP_publish_child_vasp_credential$0$$t16@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_VASP_publish_child_vasp_credential$0$$t14@0)) 5)) (= 3 inline$$1_VASP_publish_child_vasp_credential$0$$t16@0))) (= inline$$1_VASP_publish_child_vasp_credential$0$$t16@0 inline$$1_VASP_publish_child_vasp_credential$0$$t16@0)) (=> (and (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t16@1 inline$$1_VASP_publish_child_vasp_credential$0$$t16@0) (= $1_VASP_ChildVASP_$memory@2 $1_VASP_ChildVASP_$memory)) (and (= $1_VASP_ParentVASP_$memory@1 $1_VASP_ParentVASP_$memory) (= (ControlFlow 0 459473) 458732))) inline$$1_VASP_publish_child_vasp_credential$0$L7_correct)))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon0_correct  (=> (and (= (|l#Vec_27708| (|p#$Mutation_17352| inline$$1_VASP_publish_child_vasp_credential$0$$t9@0)) 0) (= (|l#Vec_27708| (|p#$Mutation_262045| inline$$1_VASP_publish_child_vasp_credential$0$$t27@0)) 0)) (=> (and (and (and (= (|l#Vec_27708| (|p#$Mutation_17352| inline$$1_VASP_publish_child_vasp_credential$0$$t28@0)) 0) (= inline$$1_VASP_publish_child_vasp_credential$0$$t11@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t12@0 (|$addr#$signer| _$t0)) (= inline$$1_VASP_publish_child_vasp_credential$0$$t13@0 (|$addr#$signer| _$t0)))) (and (and (= _$t0 _$t0) (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1)) (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t14@0 (|$addr#$signer| _$t0)) (= inline$$1_VASP_publish_child_vasp_credential$0$$t15@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_VASP_publish_child_vasp_credential$0$$t14@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory@3) inline$$1_VASP_publish_child_vasp_credential$0$$t14@0)) 5))))))) (and (=> (= (ControlFlow 0 458560) 459473) inline$$1_VASP_publish_child_vasp_credential$0$anon27_Then_correct) (=> (= (ControlFlow 0 458560) 458600) inline$$1_VASP_publish_child_vasp_credential$0$anon27_Else_correct))))))
(let ((anon33_Else_correct  (=> (not $abort_flag@0) (=> (and (and (= $t15 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= $t16 (|$addr#$signer| _$t0))) (and (= $t17 (|$addr#$signer| _$t0)) (= (ControlFlow 0 459477) 458560))) inline$$1_VASP_publish_child_vasp_credential$0$anon0_correct))))
(let ((inline$$1_Roles_new_child_vasp_role$0$L2_correct  (=> (= $1_Roles_RoleId_$memory@3 $1_Roles_RoleId_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 inline$$1_Roles_new_child_vasp_role$0$$t6@0)) (and (=> (= (ControlFlow 0 457369) 473562) anon33_Then_correct) (=> (= (ControlFlow 0 457369) 459477) anon33_Else_correct))))))
(let ((inline$$1_Roles_new_child_vasp_role$0$anon9_Then_correct  (=> inline$$1_Roles_new_child_vasp_role$0$$t9@0 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= 6 inline$$1_Roles_new_child_vasp_role$0$$t6@0)) (and (= inline$$1_Roles_new_child_vasp_role$0$$t6@0 inline$$1_Roles_new_child_vasp_role$0$$t6@0) (= (ControlFlow 0 457363) 457369))) inline$$1_Roles_new_child_vasp_role$0$L2_correct))))
(let ((inline$$1_Roles_new_child_vasp_role$0$anon8_Then_correct  (=> (and (and inline$$1_Roles_new_child_vasp_role$0$$t5@0 (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) inline$$1_Roles_new_child_vasp_role$0$$t4@0)) (= 5 inline$$1_Roles_new_child_vasp_role$0$$t6@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) inline$$1_Roles_new_child_vasp_role$0$$t4@0)) 5)) (= 3 inline$$1_Roles_new_child_vasp_role$0$$t6@0)))) (and (= inline$$1_Roles_new_child_vasp_role$0$$t6@0 inline$$1_Roles_new_child_vasp_role$0$$t6@0) (= (ControlFlow 0 457421) 457369))) inline$$1_Roles_new_child_vasp_role$0$L2_correct)))
(let ((inline$$1_Roles_new_child_vasp_role$0$anon7_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory@2) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (and (and (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory@2) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) 6) (= $1_Roles_RoleId_$memory@3 $1_Roles_RoleId_$memory@2)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 457321) 473562) anon33_Then_correct) (=> (= (ControlFlow 0 457321) 459477) anon33_Else_correct))))))
(let ((inline$$1_Roles_new_child_vasp_role$0$anon10_Else_correct  (=> (and (and (not |inline$$1_Roles_new_child_vasp_role$0$$temp_0'bool'@1|) (= $1_Roles_RoleId_$memory@1 ($Memory_196301 (|Store__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) false) (|contents#$Memory_196301| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@1) (= (ControlFlow 0 457295) 457321))) inline$$1_Roles_new_child_vasp_role$0$anon7_correct)))
(let ((inline$$1_Roles_new_child_vasp_role$0$anon10_Then_correct  (=> (and (and |inline$$1_Roles_new_child_vasp_role$0$$temp_0'bool'@1| (= $1_Roles_RoleId_$memory@0 ($Memory_196301 (|Store__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) |inline$$1_Roles_new_child_vasp_role$0$$temp_0'$1_Roles_RoleId'@1|)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@0) (= (ControlFlow 0 457335) 457321))) inline$$1_Roles_new_child_vasp_role$0$anon7_correct)))
(let ((inline$$1_Roles_new_child_vasp_role$0$anon9_Else_correct  (=> (not inline$$1_Roles_new_child_vasp_role$0$$t9@0) (and (=> (= (ControlFlow 0 457281) 457335) inline$$1_Roles_new_child_vasp_role$0$anon10_Then_correct) (=> (= (ControlFlow 0 457281) 457295) inline$$1_Roles_new_child_vasp_role$0$anon10_Else_correct)))))
(let ((inline$$1_Roles_new_child_vasp_role$0$anon8_Else_correct  (=> (and (not inline$$1_Roles_new_child_vasp_role$0$$t5@0) (|$IsValid'u64'| 6)) (=> (and (and (= inline$$1_Roles_new_child_vasp_role$0$$t8@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (= 6 0) (= inline$$1_Roles_new_child_vasp_role$0$$t8@0 173345816))) (and (=> (= 6 1) (= inline$$1_Roles_new_child_vasp_role$0$$t8@0 186537453)) (= inline$$1_Roles_new_child_vasp_role$0$$t9@0 (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))))) (and (=> (= (ControlFlow 0 457275) 457363) inline$$1_Roles_new_child_vasp_role$0$anon9_Then_correct) (=> (= (ControlFlow 0 457275) 457281) inline$$1_Roles_new_child_vasp_role$0$anon9_Else_correct))))))
(let ((inline$$1_Roles_new_child_vasp_role$0$anon0_correct  (=> (and (= inline$$1_Roles_new_child_vasp_role$0$$t2@0 (|$addr#$signer| _$t0)) (= inline$$1_Roles_new_child_vasp_role$0$$t3@0 (|$addr#$signer| _$t0))) (=> (and (and (= _$t0 _$t0) (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1)) (and (= inline$$1_Roles_new_child_vasp_role$0$$t4@0 (|$addr#$signer| _$t0)) (= inline$$1_Roles_new_child_vasp_role$0$$t5@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) inline$$1_Roles_new_child_vasp_role$0$$t4@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) inline$$1_Roles_new_child_vasp_role$0$$t4@0)) 5)))))) (and (=> (= (ControlFlow 0 457209) 457421) inline$$1_Roles_new_child_vasp_role$0$anon8_Then_correct) (=> (= (ControlFlow 0 457209) 457275) inline$$1_Roles_new_child_vasp_role$0$anon8_Else_correct))))))
(let ((anon32_Else_correct  (=> (not false) (=> (and (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= $t13 (|$addr#$signer| _$t0))) (and (= $t14 (|$addr#$signer| _$t0)) (= (ControlFlow 0 457425) 457209))) inline$$1_Roles_new_child_vasp_role$0$anon0_correct))))
(let ((anon32_Then_correct true))
(let ((inline$$1_DiemAccount_create_signer$0$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 ($signer _$t1)) (and (=> (= (ControlFlow 0 456679) 473576) anon32_Then_correct) (=> (= (ControlFlow 0 456679) 457425) anon32_Else_correct)))))
(let ((anon31_Else_correct  (=> (and (not $t11) (= (ControlFlow 0 456685) 456679)) inline$$1_DiemAccount_create_signer$0$anon0_correct)))
(let ((anon30_Else_correct  (=> (not $t8) (=> (and (= $t10 (|$addr#$signer| _$t0)) (= $t11  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) $t10)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) $t10)) 5))))) (and (=> (= (ControlFlow 0 456641) 473628) anon31_Then_correct) (=> (= (ControlFlow 0 456641) 456685) anon31_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@3)) 0)) (= addr@@3 173345816)))
 :qid |DiemConsensusConfigbpl.22362:20|
 :skolemid |692|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) 173345816)) 0))) (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@4)) 1)) (= addr@@4 186537453)))
 :qid |DiemConsensusConfigbpl.22370:20|
 :skolemid |693|
)))) (=> (and (and (and (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) 186537453)) 1))) (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@5)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@5)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@5)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@5)) 2))))))
 :qid |DiemConsensusConfigbpl.22378:20|
 :skolemid |694|
))) (and (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@6)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@6)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@6)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@6)) 2))))))
 :qid |DiemConsensusConfigbpl.22382:20|
 :skolemid |695|
)) (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@7)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@7)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@7)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@7)) 2))))))
 :qid |DiemConsensusConfigbpl.22386:20|
 :skolemid |696|
)))) (and (and (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@8)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@8)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@8)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@8)) 2))))))
 :qid |DiemConsensusConfigbpl.22390:20|
 :skolemid |697|
)) (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@9)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@9)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@9)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@9)) 2)))))
 :qid |DiemConsensusConfigbpl.22394:20|
 :skolemid |698|
))) (and (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@10)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@10)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@10)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@10)) 2)))))
 :qid |DiemConsensusConfigbpl.22398:20|
 :skolemid |699|
)) (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@11)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@11)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@11)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@11)) 2)))))
 :qid |DiemConsensusConfigbpl.22402:20|
 :skolemid |700|
))))) (and (and (and (forall ((addr@@12 Int) ) (!  (=> (|$IsValid'address'| addr@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_200933| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@12) (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@12)) 4))))
 :qid |DiemConsensusConfigbpl.22406:20|
 :skolemid |701|
)) (forall ((addr@@13 Int) ) (!  (=> (|$IsValid'address'| addr@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_202497| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@13) (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@13)) 3))))
 :qid |DiemConsensusConfigbpl.22410:20|
 :skolemid |702|
))) (and (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_202497| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@14) (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@14)) 3))))
 :qid |DiemConsensusConfigbpl.22414:20|
 :skolemid |703|
)) (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_202497| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@15) (not (= (|l#Vec_150413| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_202497| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@15)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@15)) 3))))
 :qid |DiemConsensusConfigbpl.22418:20|
 :skolemid |704|
)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_203980| $1_SlidingNonce_SlidingNonce_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_203980| $1_SlidingNonce_SlidingNonce_$memory) 186537453))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_204530| $1_DiemConfig_Configuration_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_204013| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_250754| $1_DiemSystem_CapabilityHolder_$memory) 173345816))))))) (and (and (and (and (let (($range_0 ($Range 0 (|l#Vec_150627| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@16 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_204013| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@16))))))))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((i1 $i_1))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@17 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_204013| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@17))))) i1))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@17 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_204013| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@17))))) i1)))) 3))))
 :qid |DiemConsensusConfigbpl.22438:151|
 :skolemid |705|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_204629| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (and (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_251085| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_251085| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (forall ((mint_cap_owner1 Int) (mint_cap_owner2 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner1) (=> (|$IsValid'address'| mint_cap_owner2) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_251604| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner1) (|Select__T@[Int]Bool_| (|domain#$Memory_251604| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner2)) (= mint_cap_owner1 mint_cap_owner2))))
 :qid |DiemConsensusConfigbpl.22447:104|
 :skolemid |706|
))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_251204| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_251204| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (forall ((mint_cap_owner1@@0 Int) (mint_cap_owner2@@0 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner1@@0) (=> (|$IsValid'address'| mint_cap_owner2@@0) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_251668| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner1@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_251668| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner2@@0)) (= mint_cap_owner1@@0 mint_cap_owner2@@0))))
 :qid |DiemConsensusConfigbpl.22451:104|
 :skolemid |707|
))))) (and (and (forall ((addr3 Int) ) (!  (=> (|$IsValid'address'| addr3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_251604| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr3) (and (|Select__T@[Int]Bool_| (|domain#$Memory_251085| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_251085| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))))
 :qid |DiemConsensusConfigbpl.22455:20|
 :skolemid |708|
)) (forall ((addr3@@0 Int) ) (!  (=> (|$IsValid'address'| addr3@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_251668| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) addr3@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_251204| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_251204| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))))
 :qid |DiemConsensusConfigbpl.22459:20|
 :skolemid |709|
))) (and (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_257677| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@18) (|Select__T@[Int]Bool_| (|domain#$Memory_251085| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DiemConsensusConfigbpl.22463:20|
 :skolemid |710|
)) (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_257758| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@19) (|Select__T@[Int]Bool_| (|domain#$Memory_251204| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DiemConsensusConfigbpl.22467:20|
 :skolemid |711|
))))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_251085| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_259288| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_259941| $1_XDX_Reserve_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_251204| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_259507| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816)) (forall ((child_addr Int) ) (!  (=> (|$IsValid'address'| child_addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_261662| $1_VASP_ChildVASP_$memory) child_addr) (|Select__T@[Int]Bool_| (|domain#$Memory_261726| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_261662| $1_VASP_ChildVASP_$memory) child_addr)))))
 :qid |DiemConsensusConfigbpl.22491:20|
 :skolemid |712|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_264141| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_264320| $1_DualAttestation_Limit_$memory) 173345816))))))) (and (and (and (and (and (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_220222| $1_DualAttestation_Credential_$memory) addr1) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr1)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr1)) 2)))))
 :qid |DiemConsensusConfigbpl.22503:20|
 :skolemid |713|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_204693| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_266411| $1_ChainId_ChainId_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_266756| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_266444| $1_AccountFreezing_FreezingBit_$memory) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_266444| $1_AccountFreezing_FreezingBit_$memory) 173345816))))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_266444| $1_AccountFreezing_FreezingBit_$memory) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_266444| $1_AccountFreezing_FreezingBit_$memory) 186537453)))))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_266756| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)) (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_266923| $1_DiemAccount_DiemAccount_$memory) addr@@20) (or (= (|l#Vec_150452| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_266923| $1_DiemAccount_DiemAccount_$memory) addr@@20)))) 0) (and (not (= (|l#Vec_150452| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_266923| $1_DiemAccount_DiemAccount_$memory) addr@@20)))) 0)) (= addr@@20 (|$account_address#$1_DiemAccount_KeyRotationCapability| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_150452| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_266923| $1_DiemAccount_DiemAccount_$memory) addr@@20)))) 0)))))))
 :qid |DiemConsensusConfigbpl.22531:20|
 :skolemid |714|
))))) (and (and (and (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_266923| $1_DiemAccount_DiemAccount_$memory) addr@@21) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_266923| $1_DiemAccount_DiemAccount_$memory) addr@@21) (= (|l#Vec_150491| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_266923| $1_DiemAccount_DiemAccount_$memory) addr@@21)))) 0)) (and (not (= (|l#Vec_150491| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_266923| $1_DiemAccount_DiemAccount_$memory) addr@@21)))) 0)) (= addr@@21 (|$account_address#$1_DiemAccount_WithdrawCapability| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_150491| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_266923| $1_DiemAccount_DiemAccount_$memory) addr@@21)))) 0)))))))
 :qid |DiemConsensusConfigbpl.22535:20|
 :skolemid |715|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_267940| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_268377| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816)) (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (= (|Select__T@[Int]Bool_| (|domain#$Memory_266923| $1_DiemAccount_DiemAccount_$memory) addr@@22) (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@22)))
 :qid |DiemConsensusConfigbpl.22547:20|
 :skolemid |716|
)))) (and (and (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (= (|Select__T@[Int]Bool_| (|domain#$Memory_267940| $1_DiemAccount_AccountOperationsCapability_$memory) addr@@23)  (and (= addr@@23 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_266923| $1_DiemAccount_DiemAccount_$memory) addr@@23))))
 :qid |DiemConsensusConfigbpl.22551:20|
 :skolemid |717|
)) (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (= (|Select__T@[Int]Bool_| (|domain#$Memory_268377| $1_DiemAccount_DiemWriteSetManager_$memory) addr@@24)  (and (= addr@@24 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_266923| $1_DiemAccount_DiemAccount_$memory) addr@@24))))
 :qid |DiemConsensusConfigbpl.22555:20|
 :skolemid |718|
))) (and (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (= (|Select__T@[Int]Bool_| (|domain#$Memory_260270| $1_VASPDomain_VASPDomainManager_$memory) addr@@25)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@25)) 1))))
 :qid |DiemConsensusConfigbpl.22559:20|
 :skolemid |719|
)) (forall ((addr@@26 Int) ) (!  (=> (|$IsValid'address'| addr@@26) (= (|Select__T@[Int]Bool_| (|domain#$Memory_260206| $1_VASPDomain_VASPDomains_$memory) addr@@26)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@26)) 5))))
 :qid |DiemConsensusConfigbpl.22563:20|
 :skolemid |720|
)))))) (and (and (and (and (forall ((addr@@27 Int) ) (!  (=> (|$IsValid'address'| addr@@27) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_220337| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@27) (|Select__T@[Int]Bool_| (|domain#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@27)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@27)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@27)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@27)) 2)))))
 :qid |DiemConsensusConfigbpl.22567:20|
 :skolemid |721|
)) (forall ((addr@@28 Int) ) (!  (=> (|$IsValid'address'| addr@@28) (= (|Select__T@[Int]Bool_| (|domain#$Memory_266191| $1_DesignatedDealer_Dealer_$memory) addr@@28)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@28)) 2))))
 :qid |DiemConsensusConfigbpl.22571:20|
 :skolemid |722|
))) (and (forall ((addr@@29 Int) ) (!  (=> (|$IsValid'address'| addr@@29) (= (|Select__T@[Int]Bool_| (|domain#$Memory_220222| $1_DualAttestation_Credential_$memory) addr@@29)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@29)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@29)) 5)))))
 :qid |DiemConsensusConfigbpl.22575:20|
 :skolemid |723|
)) (forall ((addr@@30 Int) ) (!  (=> (|$IsValid'address'| addr@@30) (= (|Select__T@[Int]Bool_| (|domain#$Memory_266923| $1_DiemAccount_DiemAccount_$memory) addr@@30) (|Select__T@[Int]Bool_| (|domain#$Memory_266444| $1_AccountFreezing_FreezingBit_$memory) addr@@30)))
 :qid |DiemConsensusConfigbpl.22579:20|
 :skolemid |724|
)))) (and (and (forall ((addr@@31 Int) ) (!  (=> (|$IsValid'address'| addr@@31) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_266923| $1_DiemAccount_DiemAccount_$memory) addr@@31) (|Select__T@[Int]Bool_| (|domain#$Memory_266444| $1_AccountFreezing_FreezingBit_$memory) addr@@31)))
 :qid |DiemConsensusConfigbpl.22583:20|
 :skolemid |725|
)) (forall ((addr@@32 Int) ) (!  (=> (|$IsValid'address'| addr@@32) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_220337| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@32) (|Select__T@[Int]Bool_| (|domain#$Memory_266923| $1_DiemAccount_DiemAccount_$memory) addr@@32)))
 :qid |DiemConsensusConfigbpl.22587:20|
 :skolemid |726|
))) (and (forall ((addr@@33 Int) ) (!  (=> (|$IsValid'address'| addr@@33) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@33) (|Select__T@[Int]Bool_| (|domain#$Memory_266923| $1_DiemAccount_DiemAccount_$memory) addr@@33)))
 :qid |DiemConsensusConfigbpl.22591:20|
 :skolemid |727|
)) (forall ((addr@@34 Int) ) (!  (=> (|$IsValid'address'| addr@@34) (= (|Select__T@[Int]Bool_| (|domain#$Memory_203980| $1_SlidingNonce_SlidingNonce_$memory) addr@@34)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@34)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@34)) 1)))))
 :qid |DiemConsensusConfigbpl.22595:20|
 :skolemid |728|
))))) (and (and (and (forall ((addr@@35 Int) ) (!  (=> (|$IsValid'address'| addr@@35) (= (|Select__T@[Int]Bool_| (|domain#$Memory_202497| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@35)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@35)) 3))))
 :qid |DiemConsensusConfigbpl.22599:20|
 :skolemid |729|
)) (forall ((addr@@36 Int) ) (!  (=> (|$IsValid'address'| addr@@36) (= (|Select__T@[Int]Bool_| (|domain#$Memory_200933| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@36)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@36)) 4))))
 :qid |DiemConsensusConfigbpl.22603:20|
 :skolemid |730|
))) (and (forall ((addr@@37 Int) ) (!  (=> (|$IsValid'address'| addr@@37) (= (|Select__T@[Int]Bool_| (|domain#$Memory_261726| $1_VASP_ParentVASP_$memory) addr@@37)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@37)) 5))))
 :qid |DiemConsensusConfigbpl.22607:20|
 :skolemid |731|
)) (forall ((addr@@38 Int) ) (!  (=> (|$IsValid'address'| addr@@38) (= (|Select__T@[Int]Bool_| (|domain#$Memory_261662| $1_VASP_ChildVASP_$memory) addr@@38)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_196301| $1_Roles_RoleId_$memory) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) addr@@38)) 6))))
 :qid |DiemConsensusConfigbpl.22611:20|
 :skolemid |732|
)))) (and (and (forall ((addr@@39 Int) ) (!  (=> (|$IsValid'address'| addr@@39) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_274285| $1_RecoveryAddress_RecoveryAddress_$memory) addr@@39) (or (|Select__T@[Int]Bool_| (|domain#$Memory_261726| $1_VASP_ParentVASP_$memory) addr@@39) (|Select__T@[Int]Bool_| (|domain#$Memory_261662| $1_VASP_ChildVASP_$memory) addr@@39))))
 :qid |DiemConsensusConfigbpl.22615:20|
 :skolemid |733|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_274388| $1_DiemBlock_BlockMetadata_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_204175| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_204256| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816)))))))) (and (and (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0)) ($1_Signer_is_txn_signer _$t0)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0))) (|$IsValid'address'| _$t1)) (and (|$IsValid'vec'u8''| _$t2) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |DiemConsensusConfigbpl.22655:20|
 :skolemid |734|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
)))) (and (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) $a_0@@0)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@0))
 :qid |DiemConsensusConfigbpl.22659:20|
 :skolemid |735|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_196301| $1_Roles_RoleId_$memory) $a_0@@0))
)) (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_251085| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@1)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| $rsc@@1) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@1)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@1) 10000000000))))
 :qid |DiemConsensusConfigbpl.22663:20|
 :skolemid |736|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_251085| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@1))
))) (and (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_251204| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@2)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| $rsc@@2) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@2)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@2) 10000000000))))
 :qid |DiemConsensusConfigbpl.22667:20|
 :skolemid |737|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_251204| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@2))
)) (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_251204| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@3)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| $rsc@@3) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@3)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@3) 10000000000))))
 :qid |DiemConsensusConfigbpl.22671:20|
 :skolemid |738|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_251204| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@3))
))))) (and (and (and (and (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_261662| $1_VASP_ChildVASP_$memory) $a_0@@4)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@4))
 :qid |DiemConsensusConfigbpl.22675:20|
 :skolemid |739|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_261662| $1_VASP_ChildVASP_$memory) $a_0@@4))
)) (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_261726| $1_VASP_ParentVASP_$memory) $a_0@@5)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@5))
 :qid |DiemConsensusConfigbpl.22679:20|
 :skolemid |740|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_261726| $1_VASP_ParentVASP_$memory) $a_0@@5))
))) (and (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_266444| $1_AccountFreezing_FreezingBit_$memory) $a_0@@6)))
(|$IsValid'$1_AccountFreezing_FreezingBit'| $rsc@@6))
 :qid |DiemConsensusConfigbpl.22683:20|
 :skolemid |741|
 :pattern ( (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_266444| $1_AccountFreezing_FreezingBit_$memory) $a_0@@6))
)) (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_266923| $1_DiemAccount_DiemAccount_$memory) $a_0@@7)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@7) (and (<= (|l#Vec_150491| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@7))) 1) (<= (|l#Vec_150452| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@7))) 1))))
 :qid |DiemConsensusConfigbpl.22687:20|
 :skolemid |742|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_266923| $1_DiemAccount_DiemAccount_$memory) $a_0@@7))
)))) (and (and (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_267940| $1_DiemAccount_AccountOperationsCapability_$memory) $a_0@@8)))
(|$IsValid'$1_DiemAccount_AccountOperationsCapability'| $rsc@@8))
 :qid |DiemConsensusConfigbpl.22691:20|
 :skolemid |743|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_267940| $1_DiemAccount_AccountOperationsCapability_$memory) $a_0@@8))
)) (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_220337| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) $a_0@@9)))
(|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| $rsc@@9))
 :qid |DiemConsensusConfigbpl.22695:20|
 :skolemid |744|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_220337| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) $a_0@@9))
))) (and (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $a_0@@10)))
(|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| $rsc@@10))
 :qid |DiemConsensusConfigbpl.22699:20|
 :skolemid |745|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $a_0@@10))
)) (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $a_0@@11)))
(|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| $rsc@@11))
 :qid |DiemConsensusConfigbpl.22703:20|
 :skolemid |746|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_220397| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $a_0@@11))
))))) (and (and (and (= $t5 (|$addr#$signer| _$t0)) (= $t6 (|$addr#$signer| _$t0))) (and (= $t7 (|$addr#$signer| _$t0)) (= _$t0 _$t0))) (and (and (= _$t1 _$t1) (= _$t2 _$t2)) (and (= _$t3 _$t3) (= $t8  (not (|Select__T@[Int]Bool_| (|domain#$Memory_196120| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))))) (and (=> (= (ControlFlow 0 456595) 473654) anon30_Then_correct) (=> (= (ControlFlow 0 456595) 456641) anon30_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_150327_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_150327| stream@@4) 0) (forall ((v@@63 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_150327| stream@@4) v@@63) 0)
 :qid |DiemConsensusConfigbpl.159:13|
 :skolemid |4|
))))
 :qid |DiemConsensusConfigbpl.3311:13|
 :skolemid |119|
))) (= (ControlFlow 0 454683) 456595)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 693955) 454683) inline$$InitEventStore$0$anon0_correct)))
anon0_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
(declare-datatypes ((T@$Memory_188757 0)) ((($Memory_188757 (|domain#$Memory_188757| |T@[Int]Bool|) (|contents#$Memory_188757| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_152322 0)) (((Vec_152322 (|v#Vec_152322| |T@[Int]#0|) (|l#Vec_152322| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_274388 0)) ((($Memory_274388 (|domain#$Memory_274388| |T@[Int]Bool|) (|contents#$Memory_274388| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_268377 0)) ((($Memory_268377 (|domain#$Memory_268377| |T@[Int]Bool|) (|contents#$Memory_268377| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_266444 0)) ((($Memory_266444 (|domain#$Memory_266444| |T@[Int]Bool|) (|contents#$Memory_266444| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_266756 0)) ((($Memory_266756 (|domain#$Memory_266756| |T@[Int]Bool|) (|contents#$Memory_266756| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_266411 0)) ((($Memory_266411 (|domain#$Memory_266411| |T@[Int]Bool|) (|contents#$Memory_266411| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_266191 0)) ((($Memory_266191 (|domain#$Memory_266191| |T@[Int]Bool|) (|contents#$Memory_266191| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_264320 0)) ((($Memory_264320 (|domain#$Memory_264320| |T@[Int]Bool|) (|contents#$Memory_264320| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_261726 0)) ((($Memory_261726 (|domain#$Memory_261726| |T@[Int]Bool|) (|contents#$Memory_261726| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_261662 0)) ((($Memory_261662 (|domain#$Memory_261662| |T@[Int]Bool|) (|contents#$Memory_261662| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_260270 0)) ((($Memory_260270 (|domain#$Memory_260270| |T@[Int]Bool|) (|contents#$Memory_260270| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-sort |T@[Int]$1_XDX_XDX| 0)
(declare-datatypes ((T@Vec_176538 0)) (((Vec_176538 (|v#Vec_176538| |T@[Int]$1_XDX_XDX|) (|l#Vec_176538| Int) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-sort |T@[Int]$1_XUS_XUS| 0)
(declare-datatypes ((T@Vec_179218 0)) (((Vec_179218 (|v#Vec_179218| |T@[Int]$1_XUS_XUS|) (|l#Vec_179218| Int) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_259507 0)) ((($Memory_259507 (|domain#$Memory_259507| |T@[Int]Bool|) (|contents#$Memory_259507| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_259288 0)) ((($Memory_259288 (|domain#$Memory_259288| |T@[Int]Bool|) (|contents#$Memory_259288| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_267940 0)) ((($Memory_267940 (|domain#$Memory_267940| |T@[Int]Bool|) (|contents#$Memory_267940| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_251732 0)) ((($Memory_251732 (|domain#$Memory_251732| |T@[Int]Bool|) (|contents#$Memory_251732| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_251668 0)) ((($Memory_251668 (|domain#$Memory_251668| |T@[Int]Bool|) (|contents#$Memory_251668| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_251604 0)) ((($Memory_251604 (|domain#$Memory_251604| |T@[Int]Bool|) (|contents#$Memory_251604| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_252012 0)) ((($Memory_252012 (|domain#$Memory_252012| |T@[Int]Bool|) (|contents#$Memory_252012| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'#0'| 0)) (((|$1_DiemAccount_Balance'#0'| (|$coin#$1_DiemAccount_Balance'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'#0'| 0)
(declare-datatypes ((T@$Memory_268199 0)) ((($Memory_268199 (|domain#$Memory_268199| |T@[Int]Bool|) (|contents#$Memory_268199| |T@[Int]$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_257839 0)) ((($Memory_257839 (|domain#$Memory_257839| |T@[Int]Bool|) (|contents#$Memory_257839| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_220397 0)) ((($Memory_220397 (|domain#$Memory_220397| |T@[Int]Bool|) (|contents#$Memory_220397| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_257758 0)) ((($Memory_257758 (|domain#$Memory_257758| |T@[Int]Bool|) (|contents#$Memory_257758| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_259941 0)) ((($Memory_259941 (|domain#$Memory_259941| |T@[Int]Bool|) (|contents#$Memory_259941| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_220337 0)) ((($Memory_220337 (|domain#$Memory_220337| |T@[Int]Bool|) (|contents#$Memory_220337| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_257677 0)) ((($Memory_257677 (|domain#$Memory_257677| |T@[Int]Bool|) (|contents#$Memory_257677| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_264141 0)) ((($Memory_264141 (|domain#$Memory_264141| |T@[Int]Bool|) (|contents#$Memory_264141| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'#0'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'#0'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'| 0)
(declare-datatypes ((T@$Memory_206279 0)) ((($Memory_206279 (|domain#$Memory_206279| |T@[Int]Bool|) (|contents#$Memory_206279| |T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_206192 0)) ((($Memory_206192 (|domain#$Memory_206192| |T@[Int]Bool|) (|contents#$Memory_206192| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_206105 0)) ((($Memory_206105 (|domain#$Memory_206105| |T@[Int]Bool|) (|contents#$Memory_206105| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_206018 0)) ((($Memory_206018 (|domain#$Memory_206018| |T@[Int]Bool|) (|contents#$Memory_206018| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_205931 0)) ((($Memory_205931 (|domain#$Memory_205931| |T@[Int]Bool|) (|contents#$Memory_205931| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_250754 0)) ((($Memory_250754 (|domain#$Memory_250754| |T@[Int]Bool|) (|contents#$Memory_250754| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_204418 0)) ((($Memory_204418 (|domain#$Memory_204418| |T@[Int]Bool|) (|contents#$Memory_204418| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_204530 0)) ((($Memory_204530 (|domain#$Memory_204530| |T@[Int]Bool|) (|contents#$Memory_204530| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'#0'| 0)) (((|$1_DiemConfig_DiemConfig'#0'| (|$payload#$1_DiemConfig_DiemConfig'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'#0'| 0)
(declare-datatypes ((T@$Memory_204337 0)) ((($Memory_204337 (|domain#$Memory_204337| |T@[Int]Bool|) (|contents#$Memory_204337| |T@[Int]$1_DiemConfig_DiemConfig'#0'|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_204256 0)) ((($Memory_204256 (|domain#$Memory_204256| |T@[Int]Bool|) (|contents#$Memory_204256| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_203980 0)) ((($Memory_203980 (|domain#$Memory_203980| |T@[Int]Bool|) (|contents#$Memory_203980| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_150491 0)) (((Vec_150491 (|v#Vec_150491| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_150491| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_150491) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_150452 0)) (((Vec_150452 (|v#Vec_150452| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_150452| Int) ) ) ))
(declare-datatypes ((T@$1_RecoveryAddress_RecoveryAddress 0)) ((($1_RecoveryAddress_RecoveryAddress (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| T@Vec_150452) ) ) ))
(declare-sort |T@[Int]$1_RecoveryAddress_RecoveryAddress| 0)
(declare-datatypes ((T@$Memory_274285 0)) ((($Memory_274285 (|domain#$Memory_274285| |T@[Int]Bool|) (|contents#$Memory_274285| |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_150452) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_27708 0)) (((Vec_27708 (|v#Vec_27708| |T@[Int]Int|) (|l#Vec_27708| Int) ) ) ))
(declare-sort |T@[Int]Vec_27708| 0)
(declare-datatypes ((T@Vec_150684 0)) (((Vec_150684 (|v#Vec_150684| |T@[Int]Vec_27708|) (|l#Vec_150684| Int) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_150684) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_204693 0)) ((($Memory_204693 (|domain#$Memory_204693| |T@[Int]Bool|) (|contents#$Memory_204693| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_150684) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_204629 0)) ((($Memory_204629 (|domain#$Memory_204629| |T@[Int]Bool|) (|contents#$Memory_204629| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_27708) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_27708) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_204175 0)) ((($Memory_204175 (|domain#$Memory_204175| |T@[Int]Bool|) (|contents#$Memory_204175| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemConsensusConfig_DiemConsensusConfig 0)) ((($1_DiemConsensusConfig_DiemConsensusConfig (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| T@Vec_27708) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_204094 0)) ((($Memory_204094 (|domain#$Memory_204094| |T@[Int]Bool|) (|contents#$Memory_204094| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_27708) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_266923 0)) ((($Memory_266923 (|domain#$Memory_266923| |T@[Int]Bool|) (|contents#$Memory_266923| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_27708) (|$base_url#$1_DualAttestation_Credential| T@Vec_27708) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_27708) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_220222 0)) ((($Memory_220222 (|domain#$Memory_220222| |T@[Int]Bool|) (|contents#$Memory_220222| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_27708) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_151094 0)) (((Vec_151094 (|v#Vec_151094| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_151094| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_151094) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_260206 0)) ((($Memory_260206 (|domain#$Memory_260206| |T@[Int]Bool|) (|contents#$Memory_260206| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| T@Vec_27708) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'#0'| 0)
(declare-datatypes ((T@Vec_150966 0)) (((Vec_150966 (|v#Vec_150966| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#Vec_150966| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| T@Vec_150966) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_258323 0)) ((($Memory_258323 (|domain#$Memory_258323| |T@[Int]Bool|) (|contents#$Memory_258323| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| T@Vec_27708) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)
(declare-datatypes ((T@Vec_150927 0)) (((Vec_150927 (|v#Vec_150927| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#Vec_150927| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| T@Vec_150927) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_258206 0)) ((($Memory_258206 (|domain#$Memory_258206| |T@[Int]Bool|) (|contents#$Memory_258206| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| T@Vec_27708) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)
(declare-datatypes ((T@Vec_150888 0)) (((Vec_150888 (|v#Vec_150888| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#Vec_150888| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| T@Vec_150888) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_258089 0)) ((($Memory_258089 (|domain#$Memory_258089| |T@[Int]Bool|) (|contents#$Memory_258089| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| T@Vec_27708) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_251323 0)) ((($Memory_251323 (|domain#$Memory_251323| |T@[Int]Bool|) (|contents#$Memory_251323| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_27708) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_251204 0)) ((($Memory_251204 (|domain#$Memory_251204| |T@[Int]Bool|) (|contents#$Memory_251204| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_27708) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_251085 0)) ((($Memory_251085 (|domain#$Memory_251085| |T@[Int]Bool|) (|contents#$Memory_251085| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_27708) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_27708) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_27708) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_150413 0)) (((Vec_150413 (|v#Vec_150413| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_150413| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_150413) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_150627 0)) (((Vec_150627 (|v#Vec_150627| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_150627| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_150627) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_204013 0)) ((($Memory_204013 (|domain#$Memory_204013| |T@[Int]Bool|) (|contents#$Memory_204013| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_27708) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_27708) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_202497 0)) ((($Memory_202497 (|domain#$Memory_202497| |T@[Int]Bool|) (|contents#$Memory_202497| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_27708) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_200933 0)) ((($Memory_200933 (|domain#$Memory_200933| |T@[Int]Bool|) (|contents#$Memory_200933| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_196301 0)) ((($Memory_196301 (|domain#$Memory_196301| |T@[Int]Bool|) (|contents#$Memory_196301| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_196120 0)) ((($Memory_196120 (|domain#$Memory_196120| |T@[Int]Bool|) (|contents#$Memory_196120| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_27708) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_27708) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_27708) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_27708) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_27708) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_27708) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_27708) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_27708) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_27708) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_27708) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_27708) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_27708) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_27708) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_150327 0)) (((Multiset_150327 (|v#Multiset_150327| |T@[$EventRep]Int|) (|l#Multiset_150327| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_150327| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_150327|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_262045 0)) ((($Mutation_262045 (|l#$Mutation_262045| T@$Location) (|p#$Mutation_262045| T@Vec_27708) (|v#$Mutation_262045| T@$1_VASP_ParentVASP) ) ) ))
(declare-datatypes ((T@$Mutation_217040 0)) ((($Mutation_217040 (|l#$Mutation_217040| T@$Location) (|p#$Mutation_217040| T@Vec_27708) (|v#$Mutation_217040| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-datatypes ((T@$Mutation_216994 0)) ((($Mutation_216994 (|l#$Mutation_216994| T@$Location) (|p#$Mutation_216994| T@Vec_27708) (|v#$Mutation_216994| |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$Mutation_214390 0)) ((($Mutation_214390 (|l#$Mutation_214390| T@$Location) (|p#$Mutation_214390| T@Vec_27708) (|v#$Mutation_214390| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-datatypes ((T@$Mutation_214344 0)) ((($Mutation_214344 (|l#$Mutation_214344| T@$Location) (|p#$Mutation_214344| T@Vec_27708) (|v#$Mutation_214344| |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$Mutation_211740 0)) ((($Mutation_211740 (|l#$Mutation_211740| T@$Location) (|p#$Mutation_211740| T@Vec_27708) (|v#$Mutation_211740| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-datatypes ((T@$Mutation_211694 0)) ((($Mutation_211694 (|l#$Mutation_211694| T@$Location) (|p#$Mutation_211694| T@Vec_27708) (|v#$Mutation_211694| |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$Mutation_209090 0)) ((($Mutation_209090 (|l#$Mutation_209090| T@$Location) (|p#$Mutation_209090| T@Vec_27708) (|v#$Mutation_209090| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-datatypes ((T@$Mutation_209044 0)) ((($Mutation_209044 (|l#$Mutation_209044| T@$Location) (|p#$Mutation_209044| T@Vec_27708) (|v#$Mutation_209044| |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$Mutation_206358 0)) ((($Mutation_206358 (|l#$Mutation_206358| T@$Location) (|p#$Mutation_206358| T@Vec_27708) (|v#$Mutation_206358| |T@$1_DiemConfig_DiemConfig'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_189388 0)) ((($Mutation_189388 (|l#$Mutation_189388| T@$Location) (|p#$Mutation_189388| T@Vec_27708) (|v#$Mutation_189388| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_17352 0)) ((($Mutation_17352 (|l#$Mutation_17352| T@$Location) (|p#$Mutation_17352| T@Vec_27708) (|v#$Mutation_17352| Int) ) ) ))
(declare-datatypes ((T@$Mutation_183645 0)) ((($Mutation_183645 (|l#$Mutation_183645| T@$Location) (|p#$Mutation_183645| T@Vec_27708) (|v#$Mutation_183645| T@Vec_27708) ) ) ))
(declare-datatypes ((T@$Mutation_182557 0)) ((($Mutation_182557 (|l#$Mutation_182557| T@$Location) (|p#$Mutation_182557| T@Vec_27708) (|v#$Mutation_182557| T@Vec_150684) ) ) ))
(declare-datatypes ((T@$Mutation_180848 0)) ((($Mutation_180848 (|l#$Mutation_180848| T@$Location) (|p#$Mutation_180848| T@Vec_27708) (|v#$Mutation_180848| T@$1_XUS_XUS) ) ) ))
(declare-datatypes ((T@$Mutation_179861 0)) ((($Mutation_179861 (|l#$Mutation_179861| T@$Location) (|p#$Mutation_179861| T@Vec_27708) (|v#$Mutation_179861| T@Vec_179218) ) ) ))
(declare-datatypes ((T@$Mutation_178168 0)) ((($Mutation_178168 (|l#$Mutation_178168| T@$Location) (|p#$Mutation_178168| T@Vec_27708) (|v#$Mutation_178168| T@$1_XDX_XDX) ) ) ))
(declare-datatypes ((T@$Mutation_177181 0)) ((($Mutation_177181 (|l#$Mutation_177181| T@$Location) (|p#$Mutation_177181| T@Vec_27708) (|v#$Mutation_177181| T@Vec_176538) ) ) ))
(declare-datatypes ((T@$Mutation_175488 0)) ((($Mutation_175488 (|l#$Mutation_175488| T@$Location) (|p#$Mutation_175488| T@Vec_27708) (|v#$Mutation_175488| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_174501 0)) ((($Mutation_174501 (|l#$Mutation_174501| T@$Location) (|p#$Mutation_174501| T@Vec_27708) (|v#$Mutation_174501| T@Vec_150413) ) ) ))
(declare-datatypes ((T@$Mutation_172846 0)) ((($Mutation_172846 (|l#$Mutation_172846| T@$Location) (|p#$Mutation_172846| T@Vec_27708) (|v#$Mutation_172846| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_171859 0)) ((($Mutation_171859 (|l#$Mutation_171859| T@$Location) (|p#$Mutation_171859| T@Vec_27708) (|v#$Mutation_171859| T@Vec_151094) ) ) ))
(declare-datatypes ((T@$Mutation_170181 0)) ((($Mutation_170181 (|l#$Mutation_170181| T@$Location) (|p#$Mutation_170181| T@Vec_27708) (|v#$Mutation_170181| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_169194 0)) ((($Mutation_169194 (|l#$Mutation_169194| T@$Location) (|p#$Mutation_169194| T@Vec_27708) (|v#$Mutation_169194| T@Vec_150888) ) ) ))
(declare-datatypes ((T@$Mutation_167485 0)) ((($Mutation_167485 (|l#$Mutation_167485| T@$Location) (|p#$Mutation_167485| T@Vec_27708) (|v#$Mutation_167485| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_166498 0)) ((($Mutation_166498 (|l#$Mutation_166498| T@$Location) (|p#$Mutation_166498| T@Vec_27708) (|v#$Mutation_166498| T@Vec_150927) ) ) ))
(declare-datatypes ((T@$Mutation_164789 0)) ((($Mutation_164789 (|l#$Mutation_164789| T@$Location) (|p#$Mutation_164789| T@Vec_27708) (|v#$Mutation_164789| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_163802 0)) ((($Mutation_163802 (|l#$Mutation_163802| T@$Location) (|p#$Mutation_163802| T@Vec_27708) (|v#$Mutation_163802| T@Vec_150966) ) ) ))
(declare-datatypes ((T@$Mutation_162093 0)) ((($Mutation_162093 (|l#$Mutation_162093| T@$Location) (|p#$Mutation_162093| T@Vec_27708) (|v#$Mutation_162093| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_161106 0)) ((($Mutation_161106 (|l#$Mutation_161106| T@$Location) (|p#$Mutation_161106| T@Vec_27708) (|v#$Mutation_161106| T@Vec_150627) ) ) ))
(declare-datatypes ((T@$Mutation_159306 0)) ((($Mutation_159306 (|l#$Mutation_159306| T@$Location) (|p#$Mutation_159306| T@Vec_27708) (|v#$Mutation_159306| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_158319 0)) ((($Mutation_158319 (|l#$Mutation_158319| T@$Location) (|p#$Mutation_158319| T@Vec_27708) (|v#$Mutation_158319| T@Vec_150491) ) ) ))
(declare-datatypes ((T@$Mutation_156654 0)) ((($Mutation_156654 (|l#$Mutation_156654| T@$Location) (|p#$Mutation_156654| T@Vec_27708) (|v#$Mutation_156654| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_155667 0)) ((($Mutation_155667 (|l#$Mutation_155667| T@$Location) (|p#$Mutation_155667| T@Vec_27708) (|v#$Mutation_155667| T@Vec_150452) ) ) ))
(declare-datatypes ((T@$Mutation_153954 0)) ((($Mutation_153954 (|l#$Mutation_153954| T@$Location) (|p#$Mutation_153954| T@Vec_27708) (|v#$Mutation_153954| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_152967 0)) ((($Mutation_152967 (|l#$Mutation_152967| T@$Location) (|p#$Mutation_152967| T@Vec_27708) (|v#$Mutation_152967| T@Vec_152322) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_152322 T@Vec_152322) Bool)
(declare-fun InRangeVec_134569 (T@Vec_152322 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_152322) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_152322 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_150452 T@Vec_150452) Bool)
(declare-fun InRangeVec_134770 (T@Vec_150452 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_150452) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_150452 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_150491 T@Vec_150491) Bool)
(declare-fun InRangeVec_134971 (T@Vec_150491 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_150491) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_150491 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_150627 T@Vec_150627) Bool)
(declare-fun InRangeVec_135172 (T@Vec_150627 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_27708 T@Vec_27708) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_150627) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_150627 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_150966 T@Vec_150966) Bool)
(declare-fun InRangeVec_135373 (T@Vec_150966 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int) |T@$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_150966) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|T@$1_Diem_PreburnWithMetadata'#0'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| (T@Vec_150966 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_150927 T@Vec_150927) Bool)
(declare-fun InRangeVec_135574 (T@Vec_150927 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_150927) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (T@Vec_150927 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_150888 T@Vec_150888) Bool)
(declare-fun InRangeVec_135775 (T@Vec_150888 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_150888) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (T@Vec_150888 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_151094 T@Vec_151094) Bool)
(declare-fun InRangeVec_135976 (T@Vec_151094 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_151094) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_151094 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_150413 T@Vec_150413) Bool)
(declare-fun InRangeVec_136177 (T@Vec_150413 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_150413) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_150413 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'$1_XDX_XDX''| (T@Vec_176538 T@Vec_176538) Bool)
(declare-fun InRangeVec_136378 (T@Vec_176538 Int) Bool)
(declare-fun |Select__T@[Int]$1_XDX_XDX_| (|T@[Int]$1_XDX_XDX| Int) T@$1_XDX_XDX)
(declare-fun |$IsValid'vec'$1_XDX_XDX''| (T@Vec_176538) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IndexOfVec'$1_XDX_XDX'| (T@Vec_176538 T@$1_XDX_XDX) Int)
(declare-fun |$IsEqual'vec'$1_XUS_XUS''| (T@Vec_179218 T@Vec_179218) Bool)
(declare-fun InRangeVec_136579 (T@Vec_179218 Int) Bool)
(declare-fun |Select__T@[Int]$1_XUS_XUS_| (|T@[Int]$1_XUS_XUS| Int) T@$1_XUS_XUS)
(declare-fun |$IsValid'vec'$1_XUS_XUS''| (T@Vec_179218) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IndexOfVec'$1_XUS_XUS'| (T@Vec_179218 T@$1_XUS_XUS) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_150684 T@Vec_150684) Bool)
(declare-fun InRangeVec_181980 (T@Vec_150684 Int) Bool)
(declare-fun |Select__T@[Int]Vec_27708_| (|T@[Int]Vec_27708| Int) T@Vec_27708)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_150684) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_27708) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_150684 T@Vec_27708) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_27708 T@Vec_27708) Bool)
(declare-fun InRangeVec_16728 (T@Vec_27708 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_27708) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_27708 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_27708 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_27708) T@Vec_27708)
(declare-fun $1_Hash_sha3 (T@Vec_27708) T@Vec_27708)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_27708) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_27708 T@Vec_27708 T@Vec_27708) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_150327_| (|T@[$1_Event_EventHandle]Multiset_150327| T@$1_Event_EventHandle) T@Multiset_150327)
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
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'#0''| (|T@$1_DiemConfig_DiemConfig'#0'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_Configuration'| (T@$1_DiemConfig_Configuration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DisableReconfiguration'| (T@$1_DiemConfig_DisableReconfiguration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'#0''| (|T@$1_DiemConfig_ModifyConfigCapability'#0'|) Bool)
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
(declare-fun IndexOfVec_27708 (T@Vec_27708 Int) Int)
(declare-fun IndexOfVec_150413 (T@Vec_150413 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_150452 (T@Vec_150452 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_150491 (T@Vec_150491 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_150627 (T@Vec_150627 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_150684 (T@Vec_150684 T@Vec_27708) Int)
(declare-fun IndexOfVec_150888 (T@Vec_150888 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun IndexOfVec_150927 (T@Vec_150927 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun IndexOfVec_150966 (T@Vec_150966 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun IndexOfVec_151094 (T@Vec_151094 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun IndexOfVec_152322 (T@Vec_152322 |T@#0|) Int)
(declare-fun IndexOfVec_176538 (T@Vec_176538 T@$1_XDX_XDX) Int)
(declare-fun IndexOfVec_179218 (T@Vec_179218 T@$1_XUS_XUS) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_150327| |T@[$1_Event_EventHandle]Multiset_150327|) |T@[$1_Event_EventHandle]Multiset_150327|)
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
(declare-fun |lambda#36| (Int Int Int |T@[Int]Vec_27708| |T@[Int]Vec_27708| Int T@Vec_27708) |T@[Int]Vec_27708|)
(declare-fun |lambda#37| (Int Int |T@[Int]Vec_27708| Int Int T@Vec_27708) |T@[Int]Vec_27708|)
(declare-fun |lambda#38| (Int Int Int |T@[Int]Vec_27708| |T@[Int]Vec_27708| Int T@Vec_27708) |T@[Int]Vec_27708|)
(declare-fun |lambda#39| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#40| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#41| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DiemConsensusConfigbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DiemConsensusConfigbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DiemConsensusConfigbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DiemConsensusConfigbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DiemConsensusConfigbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DiemConsensusConfigbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DiemConsensusConfigbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DiemConsensusConfigbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_152322) (v2 T@Vec_152322) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_152322| v1) (|l#Vec_152322| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_134569 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_152322| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_152322| v2) i@@0)))
 :qid |DiemConsensusConfigbpl.615:13|
 :skolemid |17|
))))
 :qid |DiemConsensusConfigbpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_152322) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_152322| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_134569 v@@4 i@@1) true)
 :qid |DiemConsensusConfigbpl.621:13|
 :skolemid |19|
))))
 :qid |DiemConsensusConfigbpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_152322) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_134569 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_152322| v@@5) i@@3) e))
 :qid |DiemConsensusConfigbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_134569 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_152322| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_152322| v@@5) j) e)))
 :qid |DiemConsensusConfigbpl.634:17|
 :skolemid |22|
)))))
 :qid |DiemConsensusConfigbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_150452) (v2@@0 T@Vec_150452) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_150452| v1@@0) (|l#Vec_150452| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_134770 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_150452| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_150452| v2@@0) i@@4)))
 :qid |DiemConsensusConfigbpl.796:13|
 :skolemid |24|
))))
 :qid |DiemConsensusConfigbpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_150452) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_150452| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_134770 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_150452| v@@6) i@@5)))
 :qid |DiemConsensusConfigbpl.802:13|
 :skolemid |26|
))))
 :qid |DiemConsensusConfigbpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_150452) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_134770 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_150452| v@@7) i@@7) e@@0))
 :qid |DiemConsensusConfigbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_134770 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_150452| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_150452| v@@7) j@@0) e@@0)))
 :qid |DiemConsensusConfigbpl.815:17|
 :skolemid |29|
)))))
 :qid |DiemConsensusConfigbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_150491) (v2@@1 T@Vec_150491) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_150491| v1@@1) (|l#Vec_150491| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_134971 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_150491| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_150491| v2@@1) i@@8)))
 :qid |DiemConsensusConfigbpl.977:13|
 :skolemid |31|
))))
 :qid |DiemConsensusConfigbpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_150491) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_150491| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_134971 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_150491| v@@8) i@@9)))
 :qid |DiemConsensusConfigbpl.983:13|
 :skolemid |33|
))))
 :qid |DiemConsensusConfigbpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_150491) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_134971 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_150491| v@@9) i@@11) e@@1))
 :qid |DiemConsensusConfigbpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_134971 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_150491| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_150491| v@@9) j@@1) e@@1)))
 :qid |DiemConsensusConfigbpl.996:17|
 :skolemid |36|
)))))
 :qid |DiemConsensusConfigbpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_150627) (v2@@2 T@Vec_150627) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_150627| v1@@2) (|l#Vec_150627| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_135172 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v2@@2) i@@12)))))
 :qid |DiemConsensusConfigbpl.1158:13|
 :skolemid |38|
))))
 :qid |DiemConsensusConfigbpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_150627) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_150627| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_135172 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@10) i@@13)))
 :qid |DiemConsensusConfigbpl.1164:13|
 :skolemid |40|
))))
 :qid |DiemConsensusConfigbpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_150627) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_135172 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |DiemConsensusConfigbpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_135172 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |DiemConsensusConfigbpl.1177:17|
 :skolemid |43|
)))))
 :qid |DiemConsensusConfigbpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_150966) (v2@@3 T@Vec_150966) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3)  (and (= (|l#Vec_150966| v1@@3) (|l#Vec_150966| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_135373 v1@@3 i@@16) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_150966| v1@@3) i@@16)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_150966| v2@@3) i@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_150966| v1@@3) i@@16)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_150966| v2@@3) i@@16)))))
 :qid |DiemConsensusConfigbpl.1339:13|
 :skolemid |45|
))))
 :qid |DiemConsensusConfigbpl.1337:57|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_150966) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_150966| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_135373 v@@12 i@@17) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_150966| v@@12) i@@17)))
 :qid |DiemConsensusConfigbpl.1345:13|
 :skolemid |47|
))))
 :qid |DiemConsensusConfigbpl.1343:57|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_150966) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@18 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_135373 v@@13 i@@19)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_150966| v@@13) i@@19)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_150966| v@@13) i@@19)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3))))
 :qid |DiemConsensusConfigbpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_135373 v@@13 i@@18)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_150966| v@@13) i@@18)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_150966| v@@13) i@@18)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_150966| v@@13) j@@3)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_150966| v@@13) j@@3)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))))
 :qid |DiemConsensusConfigbpl.1358:17|
 :skolemid |50|
)))))
 :qid |DiemConsensusConfigbpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_150927) (v2@@4 T@Vec_150927) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4)  (and (= (|l#Vec_150927| v1@@4) (|l#Vec_150927| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_135574 v1@@4 i@@20) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_150927| v1@@4) i@@20)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_150927| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_150927| v1@@4) i@@20)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_150927| v2@@4) i@@20)))))
 :qid |DiemConsensusConfigbpl.1520:13|
 :skolemid |52|
))))
 :qid |DiemConsensusConfigbpl.1518:65|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_150927) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_150927| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_135574 v@@14 i@@21) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_150927| v@@14) i@@21)))
 :qid |DiemConsensusConfigbpl.1526:13|
 :skolemid |54|
))))
 :qid |DiemConsensusConfigbpl.1524:65|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_150927) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@22 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_135574 v@@15 i@@23)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_150927| v@@15) i@@23)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_150927| v@@15) i@@23)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4))))
 :qid |DiemConsensusConfigbpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_135574 v@@15 i@@22)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_150927| v@@15) i@@22)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_150927| v@@15) i@@22)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_150927| v@@15) j@@4)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_150927| v@@15) j@@4)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))))
 :qid |DiemConsensusConfigbpl.1539:17|
 :skolemid |57|
)))))
 :qid |DiemConsensusConfigbpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_150888) (v2@@5 T@Vec_150888) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5)  (and (= (|l#Vec_150888| v1@@5) (|l#Vec_150888| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_135775 v1@@5 i@@24) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_150888| v1@@5) i@@24)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_150888| v2@@5) i@@24))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_150888| v1@@5) i@@24)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_150888| v2@@5) i@@24)))))
 :qid |DiemConsensusConfigbpl.1701:13|
 :skolemid |59|
))))
 :qid |DiemConsensusConfigbpl.1699:65|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_150888) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_150888| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_135775 v@@16 i@@25) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_150888| v@@16) i@@25)))
 :qid |DiemConsensusConfigbpl.1707:13|
 :skolemid |61|
))))
 :qid |DiemConsensusConfigbpl.1705:65|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_150888) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@26 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_135775 v@@17 i@@27)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_150888| v@@17) i@@27)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_150888| v@@17) i@@27)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5))))
 :qid |DiemConsensusConfigbpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_135775 v@@17 i@@26)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_150888| v@@17) i@@26)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_150888| v@@17) i@@26)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_150888| v@@17) j@@5)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_150888| v@@17) j@@5)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))))
 :qid |DiemConsensusConfigbpl.1720:17|
 :skolemid |64|
)))))
 :qid |DiemConsensusConfigbpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_151094) (v2@@6 T@Vec_151094) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6)  (and (= (|l#Vec_151094| v1@@6) (|l#Vec_151094| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_135976 v1@@6 i@@28) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_151094| v1@@6) i@@28)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_151094| v2@@6) i@@28))))
 :qid |DiemConsensusConfigbpl.1882:13|
 :skolemid |66|
))))
 :qid |DiemConsensusConfigbpl.1880:50|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_151094) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_151094| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_135976 v@@18 i@@29) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_151094| v@@18) i@@29)))
 :qid |DiemConsensusConfigbpl.1888:13|
 :skolemid |68|
))))
 :qid |DiemConsensusConfigbpl.1886:50|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_151094) (e@@6 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@30 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_135976 v@@19 i@@31)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_151094| v@@19) i@@31)) (|$domain#$1_VASPDomain_VASPDomain| e@@6)))
 :qid |DiemConsensusConfigbpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_135976 v@@19 i@@30)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_151094| v@@19) i@@30)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_151094| v@@19) j@@6)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))))
 :qid |DiemConsensusConfigbpl.1901:17|
 :skolemid |71|
)))))
 :qid |DiemConsensusConfigbpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_150413) (v2@@7 T@Vec_150413) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7)  (and (= (|l#Vec_150413| v1@@7) (|l#Vec_150413| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_136177 v1@@7 i@@32) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_150413| v1@@7) i@@32)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_150413| v2@@7) i@@32))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_150413| v1@@7) i@@32)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_150413| v2@@7) i@@32)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_150413| v1@@7) i@@32)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_150413| v2@@7) i@@32)))))
 :qid |DiemConsensusConfigbpl.2063:13|
 :skolemid |73|
))))
 :qid |DiemConsensusConfigbpl.2061:51|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_150413) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_150413| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_136177 v@@20 i@@33) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_150413| v@@20) i@@33)))
 :qid |DiemConsensusConfigbpl.2069:13|
 :skolemid |75|
))))
 :qid |DiemConsensusConfigbpl.2067:51|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_150413) (e@@7 T@$1_ValidatorConfig_Config) ) (! (let ((i@@34 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_136177 v@@21 i@@35)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_150413| v@@21) i@@35)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_150413| v@@21) i@@35)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_150413| v@@21) i@@35)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7))))
 :qid |DiemConsensusConfigbpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_136177 v@@21 i@@34)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_150413| v@@21) i@@34)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_150413| v@@21) i@@34)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_150413| v@@21) i@@34)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_150413| v@@21) j@@7)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_150413| v@@21) j@@7)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_150413| v@@21) j@@7)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))))
 :qid |DiemConsensusConfigbpl.2082:17|
 :skolemid |78|
)))))
 :qid |DiemConsensusConfigbpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_176538) (v2@@8 T@Vec_176538) ) (! (= (|$IsEqual'vec'$1_XDX_XDX''| v1@@8 v2@@8)  (and (= (|l#Vec_176538| v1@@8) (|l#Vec_176538| v2@@8)) (forall ((i@@36 Int) ) (!  (=> (InRangeVec_136378 v1@@8 i@@36) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_176538| v1@@8) i@@36) (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_176538| v2@@8) i@@36)))
 :qid |DiemConsensusConfigbpl.2244:13|
 :skolemid |80|
))))
 :qid |DiemConsensusConfigbpl.2242:36|
 :skolemid |81|
 :pattern ( (|$IsEqual'vec'$1_XDX_XDX''| v1@@8 v2@@8))
)))
(assert (forall ((v@@22 T@Vec_176538) ) (! (= (|$IsValid'vec'$1_XDX_XDX''| v@@22)  (and (|$IsValid'u64'| (|l#Vec_176538| v@@22)) (forall ((i@@37 Int) ) (!  (=> (InRangeVec_136378 v@@22 i@@37) (|$IsValid'$1_XDX_XDX'| (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_176538| v@@22) i@@37)))
 :qid |DiemConsensusConfigbpl.2250:13|
 :skolemid |82|
))))
 :qid |DiemConsensusConfigbpl.2248:36|
 :skolemid |83|
 :pattern ( (|$IsValid'vec'$1_XDX_XDX''| v@@22))
)))
(assert (forall ((v@@23 T@Vec_176538) (e@@8 T@$1_XDX_XDX) ) (! (let ((i@@38 (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8)))
(ite  (not (exists ((i@@39 Int) ) (!  (and (and (|$IsValid'u64'| i@@39) (InRangeVec_136378 v@@23 i@@39)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_176538| v@@23) i@@39) e@@8))
 :qid |DiemConsensusConfigbpl.2255:13|
 :skolemid |84|
))) (= i@@38 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@38) (InRangeVec_136378 v@@23 i@@38)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_176538| v@@23) i@@38) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@38)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_176538| v@@23) j@@8) e@@8)))
 :qid |DiemConsensusConfigbpl.2263:17|
 :skolemid |85|
)))))
 :qid |DiemConsensusConfigbpl.2259:15|
 :skolemid |86|
 :pattern ( (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8))
)))
(assert (forall ((v1@@9 T@Vec_179218) (v2@@9 T@Vec_179218) ) (! (= (|$IsEqual'vec'$1_XUS_XUS''| v1@@9 v2@@9)  (and (= (|l#Vec_179218| v1@@9) (|l#Vec_179218| v2@@9)) (forall ((i@@40 Int) ) (!  (=> (InRangeVec_136579 v1@@9 i@@40) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_179218| v1@@9) i@@40) (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_179218| v2@@9) i@@40)))
 :qid |DiemConsensusConfigbpl.2425:13|
 :skolemid |87|
))))
 :qid |DiemConsensusConfigbpl.2423:36|
 :skolemid |88|
 :pattern ( (|$IsEqual'vec'$1_XUS_XUS''| v1@@9 v2@@9))
)))
(assert (forall ((v@@24 T@Vec_179218) ) (! (= (|$IsValid'vec'$1_XUS_XUS''| v@@24)  (and (|$IsValid'u64'| (|l#Vec_179218| v@@24)) (forall ((i@@41 Int) ) (!  (=> (InRangeVec_136579 v@@24 i@@41) (|$IsValid'$1_XUS_XUS'| (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_179218| v@@24) i@@41)))
 :qid |DiemConsensusConfigbpl.2431:13|
 :skolemid |89|
))))
 :qid |DiemConsensusConfigbpl.2429:36|
 :skolemid |90|
 :pattern ( (|$IsValid'vec'$1_XUS_XUS''| v@@24))
)))
(assert (forall ((v@@25 T@Vec_179218) (e@@9 T@$1_XUS_XUS) ) (! (let ((i@@42 (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9)))
(ite  (not (exists ((i@@43 Int) ) (!  (and (and (|$IsValid'u64'| i@@43) (InRangeVec_136579 v@@25 i@@43)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_179218| v@@25) i@@43) e@@9))
 :qid |DiemConsensusConfigbpl.2436:13|
 :skolemid |91|
))) (= i@@42 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@42) (InRangeVec_136579 v@@25 i@@42)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_179218| v@@25) i@@42) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@42)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_179218| v@@25) j@@9) e@@9)))
 :qid |DiemConsensusConfigbpl.2444:17|
 :skolemid |92|
)))))
 :qid |DiemConsensusConfigbpl.2440:15|
 :skolemid |93|
 :pattern ( (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9))
)))
(assert (forall ((v1@@10 T@Vec_150684) (v2@@10 T@Vec_150684) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@10 v2@@10)  (and (= (|l#Vec_150684| v1@@10) (|l#Vec_150684| v2@@10)) (forall ((i@@44 Int) ) (!  (=> (InRangeVec_181980 v1@@10 i@@44) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_27708_| (|v#Vec_150684| v1@@10) i@@44) (|Select__T@[Int]Vec_27708_| (|v#Vec_150684| v2@@10) i@@44)))
 :qid |DiemConsensusConfigbpl.2606:13|
 :skolemid |94|
))))
 :qid |DiemConsensusConfigbpl.2604:33|
 :skolemid |95|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@10 v2@@10))
)))
(assert (forall ((v@@26 T@Vec_150684) ) (! (= (|$IsValid'vec'vec'u8'''| v@@26)  (and (|$IsValid'u64'| (|l#Vec_150684| v@@26)) (forall ((i@@45 Int) ) (!  (=> (InRangeVec_181980 v@@26 i@@45) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_27708_| (|v#Vec_150684| v@@26) i@@45)))
 :qid |DiemConsensusConfigbpl.2612:13|
 :skolemid |96|
))))
 :qid |DiemConsensusConfigbpl.2610:33|
 :skolemid |97|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@26))
)))
(assert (forall ((v@@27 T@Vec_150684) (e@@10 T@Vec_27708) ) (! (let ((i@@46 (|$IndexOfVec'vec'u8''| v@@27 e@@10)))
(ite  (not (exists ((i@@47 Int) ) (!  (and (and (|$IsValid'u64'| i@@47) (InRangeVec_181980 v@@27 i@@47)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_27708_| (|v#Vec_150684| v@@27) i@@47) e@@10))
 :qid |DiemConsensusConfigbpl.2617:13|
 :skolemid |98|
))) (= i@@46 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@46) (InRangeVec_181980 v@@27 i@@46)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_27708_| (|v#Vec_150684| v@@27) i@@46) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@46)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_27708_| (|v#Vec_150684| v@@27) j@@10) e@@10)))
 :qid |DiemConsensusConfigbpl.2625:17|
 :skolemid |99|
)))))
 :qid |DiemConsensusConfigbpl.2621:15|
 :skolemid |100|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@27 e@@10))
)))
(assert (forall ((v1@@11 T@Vec_27708) (v2@@11 T@Vec_27708) ) (! (= (|$IsEqual'vec'address''| v1@@11 v2@@11)  (and (= (|l#Vec_27708| v1@@11) (|l#Vec_27708| v2@@11)) (forall ((i@@48 Int) ) (!  (=> (InRangeVec_16728 v1@@11 i@@48) (= (|Select__T@[Int]Int_| (|v#Vec_27708| v1@@11) i@@48) (|Select__T@[Int]Int_| (|v#Vec_27708| v2@@11) i@@48)))
 :qid |DiemConsensusConfigbpl.2787:13|
 :skolemid |101|
))))
 :qid |DiemConsensusConfigbpl.2785:33|
 :skolemid |102|
 :pattern ( (|$IsEqual'vec'address''| v1@@11 v2@@11))
)))
(assert (forall ((v@@28 T@Vec_27708) ) (! (= (|$IsValid'vec'address''| v@@28)  (and (|$IsValid'u64'| (|l#Vec_27708| v@@28)) (forall ((i@@49 Int) ) (!  (=> (InRangeVec_16728 v@@28 i@@49) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_27708| v@@28) i@@49)))
 :qid |DiemConsensusConfigbpl.2793:13|
 :skolemid |103|
))))
 :qid |DiemConsensusConfigbpl.2791:33|
 :skolemid |104|
 :pattern ( (|$IsValid'vec'address''| v@@28))
)))
(assert (forall ((v@@29 T@Vec_27708) (e@@11 Int) ) (! (let ((i@@50 (|$IndexOfVec'address'| v@@29 e@@11)))
(ite  (not (exists ((i@@51 Int) ) (!  (and (and (|$IsValid'u64'| i@@51) (InRangeVec_16728 v@@29 i@@51)) (= (|Select__T@[Int]Int_| (|v#Vec_27708| v@@29) i@@51) e@@11))
 :qid |DiemConsensusConfigbpl.2798:13|
 :skolemid |105|
))) (= i@@50 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@50) (InRangeVec_16728 v@@29 i@@50)) (= (|Select__T@[Int]Int_| (|v#Vec_27708| v@@29) i@@50) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@11) (>= j@@11 0)) (< j@@11 i@@50)) (not (= (|Select__T@[Int]Int_| (|v#Vec_27708| v@@29) j@@11) e@@11)))
 :qid |DiemConsensusConfigbpl.2806:17|
 :skolemid |106|
)))))
 :qid |DiemConsensusConfigbpl.2802:15|
 :skolemid |107|
 :pattern ( (|$IndexOfVec'address'| v@@29 e@@11))
)))
(assert (forall ((v1@@12 T@Vec_27708) (v2@@12 T@Vec_27708) ) (! (= (|$IsEqual'vec'u8''| v1@@12 v2@@12)  (and (= (|l#Vec_27708| v1@@12) (|l#Vec_27708| v2@@12)) (forall ((i@@52 Int) ) (!  (=> (InRangeVec_16728 v1@@12 i@@52) (= (|Select__T@[Int]Int_| (|v#Vec_27708| v1@@12) i@@52) (|Select__T@[Int]Int_| (|v#Vec_27708| v2@@12) i@@52)))
 :qid |DiemConsensusConfigbpl.2968:13|
 :skolemid |108|
))))
 :qid |DiemConsensusConfigbpl.2966:28|
 :skolemid |109|
 :pattern ( (|$IsEqual'vec'u8''| v1@@12 v2@@12))
)))
(assert (forall ((v@@30 T@Vec_27708) ) (! (= (|$IsValid'vec'u8''| v@@30)  (and (|$IsValid'u64'| (|l#Vec_27708| v@@30)) (forall ((i@@53 Int) ) (!  (=> (InRangeVec_16728 v@@30 i@@53) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_27708| v@@30) i@@53)))
 :qid |DiemConsensusConfigbpl.2974:13|
 :skolemid |110|
))))
 :qid |DiemConsensusConfigbpl.2972:28|
 :skolemid |111|
 :pattern ( (|$IsValid'vec'u8''| v@@30))
)))
(assert (forall ((v@@31 T@Vec_27708) (e@@12 Int) ) (! (let ((i@@54 (|$IndexOfVec'u8'| v@@31 e@@12)))
(ite  (not (exists ((i@@55 Int) ) (!  (and (and (|$IsValid'u64'| i@@55) (InRangeVec_16728 v@@31 i@@55)) (= (|Select__T@[Int]Int_| (|v#Vec_27708| v@@31) i@@55) e@@12))
 :qid |DiemConsensusConfigbpl.2979:13|
 :skolemid |112|
))) (= i@@54 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@54) (InRangeVec_16728 v@@31 i@@54)) (= (|Select__T@[Int]Int_| (|v#Vec_27708| v@@31) i@@54) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@12) (>= j@@12 0)) (< j@@12 i@@54)) (not (= (|Select__T@[Int]Int_| (|v#Vec_27708| v@@31) j@@12) e@@12)))
 :qid |DiemConsensusConfigbpl.2987:17|
 :skolemid |113|
)))))
 :qid |DiemConsensusConfigbpl.2983:15|
 :skolemid |114|
 :pattern ( (|$IndexOfVec'u8'| v@@31 e@@12))
)))
(assert (forall ((v1@@13 T@Vec_27708) (v2@@13 T@Vec_27708) ) (! (= (|$IsEqual'vec'u8''| v1@@13 v2@@13) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@13) ($1_Hash_sha2 v2@@13)))
 :qid |DiemConsensusConfigbpl.3160:15|
 :skolemid |115|
 :pattern ( ($1_Hash_sha2 v1@@13) ($1_Hash_sha2 v2@@13))
)))
(assert (forall ((v1@@14 T@Vec_27708) (v2@@14 T@Vec_27708) ) (! (= (|$IsEqual'vec'u8''| v1@@14 v2@@14) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@14) ($1_Hash_sha3 v2@@14)))
 :qid |DiemConsensusConfigbpl.3176:15|
 :skolemid |116|
 :pattern ( ($1_Hash_sha3 v1@@14) ($1_Hash_sha3 v2@@14))
)))
(assert (forall ((k1 T@Vec_27708) (k2 T@Vec_27708) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DiemConsensusConfigbpl.3247:15|
 :skolemid |117|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_27708) (s2 T@Vec_27708) (k1@@0 T@Vec_27708) (k2@@0 T@Vec_27708) (m1 T@Vec_27708) (m2 T@Vec_27708) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DiemConsensusConfigbpl.3250:15|
 :skolemid |118|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_150327_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_150327| stream) 0) (forall ((v@@32 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_150327| stream) v@@32) 0)
 :qid |DiemConsensusConfigbpl.159:13|
 :skolemid |4|
))))
 :qid |DiemConsensusConfigbpl.3311:13|
 :skolemid |119|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |DiemConsensusConfigbpl.3352:80|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@15 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@15 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@15) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@15)))
 :qid |DiemConsensusConfigbpl.3358:15|
 :skolemid |122|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@15) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@15))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |DiemConsensusConfigbpl.3408:82|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@16 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@16 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@16) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@16)))
 :qid |DiemConsensusConfigbpl.3414:15|
 :skolemid |124|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@16) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@16))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |DiemConsensusConfigbpl.3464:80|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@17 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@17 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@17) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@17)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@17) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@17))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@17) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@17))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@17) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@17)))
 :qid |DiemConsensusConfigbpl.3470:15|
 :skolemid |126|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@17) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@17))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |DiemConsensusConfigbpl.3520:79|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@18 T@$1_DiemAccount_AdminTransactionEvent) (v2@@18 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@18 v2@@18) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@18) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@18)))
 :qid |DiemConsensusConfigbpl.3526:15|
 :skolemid |128|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@18) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@18))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |DiemConsensusConfigbpl.3576:76|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@19 T@$1_DiemAccount_CreateAccountEvent) (v2@@19 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@19 v2@@19) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@19)))
 :qid |DiemConsensusConfigbpl.3582:15|
 :skolemid |130|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@19))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |DiemConsensusConfigbpl.3632:78|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@20 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@20 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@20)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@20))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@20))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@20) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@20)))
 :qid |DiemConsensusConfigbpl.3638:15|
 :skolemid |132|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@20) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@20))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |DiemConsensusConfigbpl.3688:74|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@21 T@$1_DiemAccount_SentPaymentEvent) (v2@@21 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@21)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@21))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@21))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@21))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@21) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@21)))
 :qid |DiemConsensusConfigbpl.3694:15|
 :skolemid |134|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@21) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@21))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |DiemConsensusConfigbpl.3744:69|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@22 T@$1_DiemBlock_NewBlockEvent) (v2@@22 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@22) (|$round#$1_DiemBlock_NewBlockEvent| v2@@22)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@22) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@22))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@22) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@22))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@22) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@22))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@22) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@22)))
 :qid |DiemConsensusConfigbpl.3750:15|
 :skolemid |136|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@22) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@22))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |DiemConsensusConfigbpl.3800:70|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@23 T@$1_DiemConfig_NewEpochEvent) (v2@@23 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@23 v2@@23) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@23) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@23)))
 :qid |DiemConsensusConfigbpl.3806:15|
 :skolemid |138|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@23) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@23))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |DiemConsensusConfigbpl.3856:60|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@24 T@$1_Diem_BurnEvent) (v2@@24 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@24) (|$amount#$1_Diem_BurnEvent| v2@@24)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@24) (|$currency_code#$1_Diem_BurnEvent| v2@@24))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@24) (|$preburn_address#$1_Diem_BurnEvent| v2@@24))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@24) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@24)))
 :qid |DiemConsensusConfigbpl.3862:15|
 :skolemid |140|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@24) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@24))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |DiemConsensusConfigbpl.3912:66|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@25 T@$1_Diem_CancelBurnEvent) (v2@@25 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@25) (|$amount#$1_Diem_CancelBurnEvent| v2@@25)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@25) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@25))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@25) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@25))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@25) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@25)))
 :qid |DiemConsensusConfigbpl.3918:15|
 :skolemid |142|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@25) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@25))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |DiemConsensusConfigbpl.3968:60|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@26 T@$1_Diem_MintEvent) (v2@@26 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@26) (|$amount#$1_Diem_MintEvent| v2@@26)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@26) (|$currency_code#$1_Diem_MintEvent| v2@@26))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@26) (|$ToEventRep'$1_Diem_MintEvent'| v2@@26)))
 :qid |DiemConsensusConfigbpl.3974:15|
 :skolemid |144|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@26) (|$ToEventRep'$1_Diem_MintEvent'| v2@@26))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |DiemConsensusConfigbpl.4024:63|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@27 T@$1_Diem_PreburnEvent) (v2@@27 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@27) (|$amount#$1_Diem_PreburnEvent| v2@@27)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@27) (|$currency_code#$1_Diem_PreburnEvent| v2@@27))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@27) (|$preburn_address#$1_Diem_PreburnEvent| v2@@27))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@27) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@27)))
 :qid |DiemConsensusConfigbpl.4030:15|
 :skolemid |146|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@27) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@27))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |DiemConsensusConfigbpl.4080:79|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@28 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@28 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@28) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@28)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@28) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@28))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@28) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@28)))
 :qid |DiemConsensusConfigbpl.4086:15|
 :skolemid |148|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@28) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@28))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |DiemConsensusConfigbpl.4136:82|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@29 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@29 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@29) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@29)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@29) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@29))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@29) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@29)))
 :qid |DiemConsensusConfigbpl.4142:15|
 :skolemid |150|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@29) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@29))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |DiemConsensusConfigbpl.4192:88|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@30 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@30 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@30) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@30)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@30) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@30))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@30) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@30)))
 :qid |DiemConsensusConfigbpl.4198:15|
 :skolemid |152|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@30) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@30))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |DiemConsensusConfigbpl.4248:72|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@31 T@$1_VASPDomain_VASPDomainEvent) (v2@@31 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@31) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@31)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@31)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@31)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@31) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@31))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@31) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@31)))
 :qid |DiemConsensusConfigbpl.4254:15|
 :skolemid |154|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@31) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@31))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |DiemConsensusConfigbpl.4333:61|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |DiemConsensusConfigbpl.4402:36|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |DiemConsensusConfigbpl.5903:71|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |DiemConsensusConfigbpl.6272:46|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |DiemConsensusConfigbpl.6284:64|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |DiemConsensusConfigbpl.6296:75|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |DiemConsensusConfigbpl.6308:72|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |DiemConsensusConfigbpl.6341:55|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |DiemConsensusConfigbpl.6364:46|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |DiemConsensusConfigbpl.6646:49|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |DiemConsensusConfigbpl.6736:71|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |DiemConsensusConfigbpl.6749:91|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |DiemConsensusConfigbpl.6762:113|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12) (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@12)))
 :qid |DiemConsensusConfigbpl.6775:89|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |DiemConsensusConfigbpl.6788:75|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |DiemConsensusConfigbpl.6801:73|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 |T@$1_DiemConfig_DiemConfig'#0'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'#0''| s@@15) true)
 :qid |DiemConsensusConfigbpl.6815:49|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'#0''| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@16)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@16)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@16))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@16))))
 :qid |DiemConsensusConfigbpl.6835:48|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@16))
)))
(assert (forall ((s@@17 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@17) true)
 :qid |DiemConsensusConfigbpl.6852:57|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@18) true)
 :qid |DiemConsensusConfigbpl.6866:83|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@19) true)
 :qid |DiemConsensusConfigbpl.6880:101|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20) true)
 :qid |DiemConsensusConfigbpl.6894:87|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21) true)
 :qid |DiemConsensusConfigbpl.6908:85|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_DiemConfig_ModifyConfigCapability'#0'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'#0''| s@@22) true)
 :qid |DiemConsensusConfigbpl.6922:61|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'#0''| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@23)))
 :qid |DiemConsensusConfigbpl.6936:48|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@24)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@24))))
 :qid |DiemConsensusConfigbpl.15529:45|
 :skolemid |473|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@25)))
 :qid |DiemConsensusConfigbpl.15543:51|
 :skolemid |474|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@26)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@26))))
 :qid |DiemConsensusConfigbpl.15566:48|
 :skolemid |475|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26))
)))
(assert (forall ((s@@27 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@27)))
 :qid |DiemConsensusConfigbpl.15584:49|
 :skolemid |476|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27))
)))
(assert (forall ((s@@28 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@28)))
 :qid |DiemConsensusConfigbpl.15597:65|
 :skolemid |477|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@29)))
 :qid |DiemConsensusConfigbpl.15684:45|
 :skolemid |478|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@30)))
 :qid |DiemConsensusConfigbpl.15697:45|
 :skolemid |479|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@31) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@31)))
 :qid |DiemConsensusConfigbpl.15710:37|
 :skolemid |480|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32) true)
 :qid |DiemConsensusConfigbpl.15723:55|
 :skolemid |481|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@33)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@33))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@33))))
 :qid |DiemConsensusConfigbpl.15743:38|
 :skolemid |482|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@34))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@34))))
 :qid |DiemConsensusConfigbpl.15765:44|
 :skolemid |483|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))))
 :qid |DiemConsensusConfigbpl.15817:53|
 :skolemid |484|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))))
 :qid |DiemConsensusConfigbpl.15890:53|
 :skolemid |485|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@37)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@37)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@37))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@37))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@37))))
 :qid |DiemConsensusConfigbpl.15963:45|
 :skolemid |486|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@38) true)
 :qid |DiemConsensusConfigbpl.16000:55|
 :skolemid |487|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@39) true)
 :qid |DiemConsensusConfigbpl.16014:55|
 :skolemid |488|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@40) true)
 :qid |DiemConsensusConfigbpl.16028:47|
 :skolemid |489|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@40))
)))
(assert (forall ((s@@41 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@41)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@41)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@41))))
 :qid |DiemConsensusConfigbpl.16045:38|
 :skolemid |490|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@42) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@42)))
 :qid |DiemConsensusConfigbpl.16059:48|
 :skolemid |491|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@43) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@43)))
 :qid |DiemConsensusConfigbpl.16073:48|
 :skolemid |492|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@44) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@44)))
 :qid |DiemConsensusConfigbpl.16087:40|
 :skolemid |493|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@44))
)))
(assert (forall ((s@@45 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@45)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@45)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@45))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@45))))
 :qid |DiemConsensusConfigbpl.16107:41|
 :skolemid |494|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@46) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@46)))
 :qid |DiemConsensusConfigbpl.16123:53|
 :skolemid |495|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@46))
)))
(assert (forall ((s@@47 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@47) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@47)))
 :qid |DiemConsensusConfigbpl.16136:53|
 :skolemid |496|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@48) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@48)))
 :qid |DiemConsensusConfigbpl.16149:45|
 :skolemid |497|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@49)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@49)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@49))))
 :qid |DiemConsensusConfigbpl.16165:60|
 :skolemid |498|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@50)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@50)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@50))))
 :qid |DiemConsensusConfigbpl.16182:60|
 :skolemid |499|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@51)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@51)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@51))))
 :qid |DiemConsensusConfigbpl.16199:52|
 :skolemid |500|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@51))
)))
(assert (forall ((s@@52 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@52)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@52)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@52))))
 :qid |DiemConsensusConfigbpl.16216:57|
 :skolemid |501|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@52))
)))
(assert (forall ((s@@53 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@53) true)
 :qid |DiemConsensusConfigbpl.16431:68|
 :skolemid |502|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@53))
)))
(assert (forall ((s@@54 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@54)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@54)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@54))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@54))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@54))))
 :qid |DiemConsensusConfigbpl.16453:66|
 :skolemid |503|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@54))
)))
(assert (forall ((s@@55 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@55)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@55)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@55))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@55))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@55))))
 :qid |DiemConsensusConfigbpl.16479:66|
 :skolemid |504|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@55))
)))
(assert (forall ((s@@56 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@56) true)
 :qid |DiemConsensusConfigbpl.16608:31|
 :skolemid |505|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@56))
)))
(assert (forall ((s@@57 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@57) true)
 :qid |DiemConsensusConfigbpl.16626:31|
 :skolemid |506|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@57))
)))
(assert (forall ((s@@58 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@58)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@58)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@58))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@58))))
 :qid |DiemConsensusConfigbpl.16645:35|
 :skolemid |507|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@58))
)))
(assert (forall ((s@@59 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@59) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@59)))
 :qid |DiemConsensusConfigbpl.16671:45|
 :skolemid |508|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@59))
)))
(assert (forall ((s@@60 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@60)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@60))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@60))))
 :qid |DiemConsensusConfigbpl.16689:50|
 :skolemid |509|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@60))
)))
(assert (forall ((s@@61 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@61) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@61)))
 :qid |DiemConsensusConfigbpl.16705:52|
 :skolemid |510|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@61))
)))
(assert (forall ((s@@62 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@62) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@62)))
 :qid |DiemConsensusConfigbpl.16718:46|
 :skolemid |511|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@62))
)))
(assert (forall ((s@@63 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@63) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@63)))
 :qid |DiemConsensusConfigbpl.17099:38|
 :skolemid |512|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@63))
)))
(assert (forall ((s@@64 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@64) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@64)))
 :qid |DiemConsensusConfigbpl.17113:39|
 :skolemid |513|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@64))
)))
(assert (forall ((s@@65 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@65)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@65)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@65))))
 :qid |DiemConsensusConfigbpl.17800:65|
 :skolemid |514|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@65))
)))
(assert (forall ((s@@66 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@66)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@66)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@66))))
 :qid |DiemConsensusConfigbpl.17828:60|
 :skolemid |515|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@67)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@67)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@67))))
 :qid |DiemConsensusConfigbpl.17845:66|
 :skolemid |516|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@68)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@68)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@68))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@68))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@68))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@68))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@68))))
 :qid |DiemConsensusConfigbpl.17874:50|
 :skolemid |517|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@69) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@69)))
 :qid |DiemConsensusConfigbpl.17897:45|
 :skolemid |518|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@70)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@70)) true))
 :qid |DiemConsensusConfigbpl.18180:87|
 :skolemid |519|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@71) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@71)))
 :qid |DiemConsensusConfigbpl.18194:47|
 :skolemid |520|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@72)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@72)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@72))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@72))))
 :qid |DiemConsensusConfigbpl.18213:58|
 :skolemid |521|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@73) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@73)))
 :qid |DiemConsensusConfigbpl.18229:39|
 :skolemid |522|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@73))
)))
(assert (forall ((s@@74 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@74)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@74)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@74))))
 :qid |DiemConsensusConfigbpl.18251:58|
 :skolemid |523|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@74))
)))
(assert (forall ((s@@75 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@75)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@75)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@75))))
 :qid |DiemConsensusConfigbpl.18268:58|
 :skolemid |524|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@75))
)))
(assert (forall ((s@@76 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@76) true)
 :qid |DiemConsensusConfigbpl.18283:51|
 :skolemid |525|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@76))
)))
(assert (forall ((s@@77 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@77)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@77)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@77))))
 :qid |DiemConsensusConfigbpl.18300:60|
 :skolemid |526|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@78)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@78)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@78))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@78))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@78))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@78))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@78))))
 :qid |DiemConsensusConfigbpl.18384:47|
 :skolemid |527|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@79)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@79)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@79))))
 :qid |DiemConsensusConfigbpl.18410:63|
 :skolemid |528|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@80) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@80)))
 :qid |DiemConsensusConfigbpl.18425:57|
 :skolemid |529|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@80))
)))
(assert (forall ((s@@81 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@81) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@81)))
 :qid |DiemConsensusConfigbpl.18438:55|
 :skolemid |530|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@81))
)))
(assert (forall ((s@@82 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@82) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@82)))
 :qid |DiemConsensusConfigbpl.18452:55|
 :skolemid |531|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@82))
)))
(assert (forall ((s@@83 |T@$1_DiemAccount_Balance'#0'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'#0''| s@@83) (|$IsValid'$1_Diem_Diem'#0''| (|$coin#$1_DiemAccount_Balance'#0'| s@@83)))
 :qid |DiemConsensusConfigbpl.18466:47|
 :skolemid |532|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'#0''| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@84)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@84)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@84))))
 :qid |DiemConsensusConfigbpl.18483:54|
 :skolemid |533|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@85) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@85)))
 :qid |DiemConsensusConfigbpl.18497:55|
 :skolemid |534|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@86) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@86)))
 :qid |DiemConsensusConfigbpl.18510:57|
 :skolemid |535|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@87)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@87)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@87))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@87))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@87))))
 :qid |DiemConsensusConfigbpl.18532:56|
 :skolemid |536|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@88)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@88)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@88))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@88))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@88))))
 :qid |DiemConsensusConfigbpl.18559:52|
 :skolemid |537|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@89) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@89)))
 :qid |DiemConsensusConfigbpl.18577:54|
 :skolemid |538|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@89))
)))
(assert (forall ((s@@90 T@$1_RecoveryAddress_RecoveryAddress) ) (! (= (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@90) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| s@@90)))
 :qid |DiemConsensusConfigbpl.34812:55|
 :skolemid |1486|
 :pattern ( (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@91)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@91)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@91))))
 :qid |DiemConsensusConfigbpl.34833:47|
 :skolemid |1487|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@91))
)))
(assert (forall ((s@@92 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@92)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@92)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@92))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@92))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@92))))
 :qid |DiemConsensusConfigbpl.34857:47|
 :skolemid |1488|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@92))
)))
(assert (forall ((s@@93 T@$1_DiemConsensusConfig_DiemConsensusConfig) ) (! (= (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@93) (|$IsValid'vec'u8''| (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| s@@93)))
 :qid |DiemConsensusConfigbpl.34875:63|
 :skolemid |1489|
 :pattern ( (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@93))
)))
(assert (forall ((s@@94 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@94) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@94)))
 :qid |DiemConsensusConfigbpl.35849:49|
 :skolemid |1559|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@94))
)))
(assert (forall ((s@@95 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@95)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@95)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@95))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@95))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@95))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@95))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@95))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@95))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@95))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@95))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@95))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@95))))
 :qid |DiemConsensusConfigbpl.35891:49|
 :skolemid |1560|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@95))
)))
(assert (forall ((s@@96 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@96)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@96)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@96))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@96))))
 :qid |DiemConsensusConfigbpl.35920:48|
 :skolemid |1561|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@96))
)))
(assert (forall ((s@@97 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@97) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@97)))
 :qid |DiemConsensusConfigbpl.35936:47|
 :skolemid |1562|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@97))
)))
(assert (forall ((v@@33 T@Vec_152322) (i@@56 Int) ) (! (= (InRangeVec_134569 v@@33 i@@56)  (and (>= i@@56 0) (< i@@56 (|l#Vec_152322| v@@33))))
 :qid |DiemConsensusConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_134569 v@@33 i@@56))
)))
(assert (forall ((v@@34 T@Vec_150452) (i@@57 Int) ) (! (= (InRangeVec_134770 v@@34 i@@57)  (and (>= i@@57 0) (< i@@57 (|l#Vec_150452| v@@34))))
 :qid |DiemConsensusConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_134770 v@@34 i@@57))
)))
(assert (forall ((v@@35 T@Vec_150491) (i@@58 Int) ) (! (= (InRangeVec_134971 v@@35 i@@58)  (and (>= i@@58 0) (< i@@58 (|l#Vec_150491| v@@35))))
 :qid |DiemConsensusConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_134971 v@@35 i@@58))
)))
(assert (forall ((v@@36 T@Vec_150627) (i@@59 Int) ) (! (= (InRangeVec_135172 v@@36 i@@59)  (and (>= i@@59 0) (< i@@59 (|l#Vec_150627| v@@36))))
 :qid |DiemConsensusConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_135172 v@@36 i@@59))
)))
(assert (forall ((v@@37 T@Vec_150966) (i@@60 Int) ) (! (= (InRangeVec_135373 v@@37 i@@60)  (and (>= i@@60 0) (< i@@60 (|l#Vec_150966| v@@37))))
 :qid |DiemConsensusConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_135373 v@@37 i@@60))
)))
(assert (forall ((v@@38 T@Vec_150927) (i@@61 Int) ) (! (= (InRangeVec_135574 v@@38 i@@61)  (and (>= i@@61 0) (< i@@61 (|l#Vec_150927| v@@38))))
 :qid |DiemConsensusConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_135574 v@@38 i@@61))
)))
(assert (forall ((v@@39 T@Vec_150888) (i@@62 Int) ) (! (= (InRangeVec_135775 v@@39 i@@62)  (and (>= i@@62 0) (< i@@62 (|l#Vec_150888| v@@39))))
 :qid |DiemConsensusConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_135775 v@@39 i@@62))
)))
(assert (forall ((v@@40 T@Vec_151094) (i@@63 Int) ) (! (= (InRangeVec_135976 v@@40 i@@63)  (and (>= i@@63 0) (< i@@63 (|l#Vec_151094| v@@40))))
 :qid |DiemConsensusConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_135976 v@@40 i@@63))
)))
(assert (forall ((v@@41 T@Vec_150413) (i@@64 Int) ) (! (= (InRangeVec_136177 v@@41 i@@64)  (and (>= i@@64 0) (< i@@64 (|l#Vec_150413| v@@41))))
 :qid |DiemConsensusConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_136177 v@@41 i@@64))
)))
(assert (forall ((v@@42 T@Vec_176538) (i@@65 Int) ) (! (= (InRangeVec_136378 v@@42 i@@65)  (and (>= i@@65 0) (< i@@65 (|l#Vec_176538| v@@42))))
 :qid |DiemConsensusConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_136378 v@@42 i@@65))
)))
(assert (forall ((v@@43 T@Vec_179218) (i@@66 Int) ) (! (= (InRangeVec_136579 v@@43 i@@66)  (and (>= i@@66 0) (< i@@66 (|l#Vec_179218| v@@43))))
 :qid |DiemConsensusConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_136579 v@@43 i@@66))
)))
(assert (forall ((v@@44 T@Vec_150684) (i@@67 Int) ) (! (= (InRangeVec_181980 v@@44 i@@67)  (and (>= i@@67 0) (< i@@67 (|l#Vec_150684| v@@44))))
 :qid |DiemConsensusConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_181980 v@@44 i@@67))
)))
(assert (forall ((v@@45 T@Vec_27708) (i@@68 Int) ) (! (= (InRangeVec_16728 v@@45 i@@68)  (and (>= i@@68 0) (< i@@68 (|l#Vec_27708| v@@45))))
 :qid |DiemConsensusConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_16728 v@@45 i@@68))
)))
(assert (forall ((v@@46 T@Vec_27708) (e@@13 Int) ) (! (let ((i@@69 (IndexOfVec_27708 v@@46 e@@13)))
(ite  (not (exists ((i@@70 Int) ) (!  (and (InRangeVec_16728 v@@46 i@@70) (= (|Select__T@[Int]Int_| (|v#Vec_27708| v@@46) i@@70) e@@13))
 :qid |DiemConsensusConfigbpl.109:13|
 :skolemid |0|
))) (= i@@69 (- 0 1))  (and (and (InRangeVec_16728 v@@46 i@@69) (= (|Select__T@[Int]Int_| (|v#Vec_27708| v@@46) i@@69) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@69)) (not (= (|Select__T@[Int]Int_| (|v#Vec_27708| v@@46) j@@13) e@@13)))
 :qid |DiemConsensusConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemConsensusConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_27708 v@@46 e@@13))
)))
(assert (forall ((v@@47 T@Vec_150413) (e@@14 T@$1_ValidatorConfig_Config) ) (! (let ((i@@71 (IndexOfVec_150413 v@@47 e@@14)))
(ite  (not (exists ((i@@72 Int) ) (!  (and (InRangeVec_136177 v@@47 i@@72) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_150413| v@@47) i@@72) e@@14))
 :qid |DiemConsensusConfigbpl.109:13|
 :skolemid |0|
))) (= i@@71 (- 0 1))  (and (and (InRangeVec_136177 v@@47 i@@71) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_150413| v@@47) i@@71) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@71)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_150413| v@@47) j@@14) e@@14)))
 :qid |DiemConsensusConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemConsensusConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_150413 v@@47 e@@14))
)))
(assert (forall ((v@@48 T@Vec_150452) (e@@15 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@73 (IndexOfVec_150452 v@@48 e@@15)))
(ite  (not (exists ((i@@74 Int) ) (!  (and (InRangeVec_134770 v@@48 i@@74) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_150452| v@@48) i@@74) e@@15))
 :qid |DiemConsensusConfigbpl.109:13|
 :skolemid |0|
))) (= i@@73 (- 0 1))  (and (and (InRangeVec_134770 v@@48 i@@73) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_150452| v@@48) i@@73) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@73)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_150452| v@@48) j@@15) e@@15)))
 :qid |DiemConsensusConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemConsensusConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_150452 v@@48 e@@15))
)))
(assert (forall ((v@@49 T@Vec_150491) (e@@16 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@75 (IndexOfVec_150491 v@@49 e@@16)))
(ite  (not (exists ((i@@76 Int) ) (!  (and (InRangeVec_134971 v@@49 i@@76) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_150491| v@@49) i@@76) e@@16))
 :qid |DiemConsensusConfigbpl.109:13|
 :skolemid |0|
))) (= i@@75 (- 0 1))  (and (and (InRangeVec_134971 v@@49 i@@75) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_150491| v@@49) i@@75) e@@16)) (forall ((j@@16 Int) ) (!  (=> (and (>= j@@16 0) (< j@@16 i@@75)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_150491| v@@49) j@@16) e@@16)))
 :qid |DiemConsensusConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemConsensusConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_150491 v@@49 e@@16))
)))
(assert (forall ((v@@50 T@Vec_150627) (e@@17 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@77 (IndexOfVec_150627 v@@50 e@@17)))
(ite  (not (exists ((i@@78 Int) ) (!  (and (InRangeVec_135172 v@@50 i@@78) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@50) i@@78) e@@17))
 :qid |DiemConsensusConfigbpl.109:13|
 :skolemid |0|
))) (= i@@77 (- 0 1))  (and (and (InRangeVec_135172 v@@50 i@@77) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@50) i@@77) e@@17)) (forall ((j@@17 Int) ) (!  (=> (and (>= j@@17 0) (< j@@17 i@@77)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_150627| v@@50) j@@17) e@@17)))
 :qid |DiemConsensusConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemConsensusConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_150627 v@@50 e@@17))
)))
(assert (forall ((v@@51 T@Vec_150684) (e@@18 T@Vec_27708) ) (! (let ((i@@79 (IndexOfVec_150684 v@@51 e@@18)))
(ite  (not (exists ((i@@80 Int) ) (!  (and (InRangeVec_181980 v@@51 i@@80) (= (|Select__T@[Int]Vec_27708_| (|v#Vec_150684| v@@51) i@@80) e@@18))
 :qid |DiemConsensusConfigbpl.109:13|
 :skolemid |0|
))) (= i@@79 (- 0 1))  (and (and (InRangeVec_181980 v@@51 i@@79) (= (|Select__T@[Int]Vec_27708_| (|v#Vec_150684| v@@51) i@@79) e@@18)) (forall ((j@@18 Int) ) (!  (=> (and (>= j@@18 0) (< j@@18 i@@79)) (not (= (|Select__T@[Int]Vec_27708_| (|v#Vec_150684| v@@51) j@@18) e@@18)))
 :qid |DiemConsensusConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemConsensusConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_150684 v@@51 e@@18))
)))
(assert (forall ((v@@52 T@Vec_150888) (e@@19 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@81 (IndexOfVec_150888 v@@52 e@@19)))
(ite  (not (exists ((i@@82 Int) ) (!  (and (InRangeVec_135775 v@@52 i@@82) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_150888| v@@52) i@@82) e@@19))
 :qid |DiemConsensusConfigbpl.109:13|
 :skolemid |0|
))) (= i@@81 (- 0 1))  (and (and (InRangeVec_135775 v@@52 i@@81) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_150888| v@@52) i@@81) e@@19)) (forall ((j@@19 Int) ) (!  (=> (and (>= j@@19 0) (< j@@19 i@@81)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_150888| v@@52) j@@19) e@@19)))
 :qid |DiemConsensusConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemConsensusConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_150888 v@@52 e@@19))
)))
(assert (forall ((v@@53 T@Vec_150927) (e@@20 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@83 (IndexOfVec_150927 v@@53 e@@20)))
(ite  (not (exists ((i@@84 Int) ) (!  (and (InRangeVec_135574 v@@53 i@@84) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_150927| v@@53) i@@84) e@@20))
 :qid |DiemConsensusConfigbpl.109:13|
 :skolemid |0|
))) (= i@@83 (- 0 1))  (and (and (InRangeVec_135574 v@@53 i@@83) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_150927| v@@53) i@@83) e@@20)) (forall ((j@@20 Int) ) (!  (=> (and (>= j@@20 0) (< j@@20 i@@83)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_150927| v@@53) j@@20) e@@20)))
 :qid |DiemConsensusConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemConsensusConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_150927 v@@53 e@@20))
)))
(assert (forall ((v@@54 T@Vec_150966) (e@@21 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@85 (IndexOfVec_150966 v@@54 e@@21)))
(ite  (not (exists ((i@@86 Int) ) (!  (and (InRangeVec_135373 v@@54 i@@86) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_150966| v@@54) i@@86) e@@21))
 :qid |DiemConsensusConfigbpl.109:13|
 :skolemid |0|
))) (= i@@85 (- 0 1))  (and (and (InRangeVec_135373 v@@54 i@@85) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_150966| v@@54) i@@85) e@@21)) (forall ((j@@21 Int) ) (!  (=> (and (>= j@@21 0) (< j@@21 i@@85)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_150966| v@@54) j@@21) e@@21)))
 :qid |DiemConsensusConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemConsensusConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_150966 v@@54 e@@21))
)))
(assert (forall ((v@@55 T@Vec_151094) (e@@22 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@87 (IndexOfVec_151094 v@@55 e@@22)))
(ite  (not (exists ((i@@88 Int) ) (!  (and (InRangeVec_135976 v@@55 i@@88) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_151094| v@@55) i@@88) e@@22))
 :qid |DiemConsensusConfigbpl.109:13|
 :skolemid |0|
))) (= i@@87 (- 0 1))  (and (and (InRangeVec_135976 v@@55 i@@87) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_151094| v@@55) i@@87) e@@22)) (forall ((j@@22 Int) ) (!  (=> (and (>= j@@22 0) (< j@@22 i@@87)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_151094| v@@55) j@@22) e@@22)))
 :qid |DiemConsensusConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemConsensusConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_151094 v@@55 e@@22))
)))
(assert (forall ((v@@56 T@Vec_152322) (e@@23 |T@#0|) ) (! (let ((i@@89 (IndexOfVec_152322 v@@56 e@@23)))
(ite  (not (exists ((i@@90 Int) ) (!  (and (InRangeVec_134569 v@@56 i@@90) (= (|Select__T@[Int]#0_| (|v#Vec_152322| v@@56) i@@90) e@@23))
 :qid |DiemConsensusConfigbpl.109:13|
 :skolemid |0|
))) (= i@@89 (- 0 1))  (and (and (InRangeVec_134569 v@@56 i@@89) (= (|Select__T@[Int]#0_| (|v#Vec_152322| v@@56) i@@89) e@@23)) (forall ((j@@23 Int) ) (!  (=> (and (>= j@@23 0) (< j@@23 i@@89)) (not (= (|Select__T@[Int]#0_| (|v#Vec_152322| v@@56) j@@23) e@@23)))
 :qid |DiemConsensusConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemConsensusConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_152322 v@@56 e@@23))
)))
(assert (forall ((v@@57 T@Vec_176538) (e@@24 T@$1_XDX_XDX) ) (! (let ((i@@91 (IndexOfVec_176538 v@@57 e@@24)))
(ite  (not (exists ((i@@92 Int) ) (!  (and (InRangeVec_136378 v@@57 i@@92) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_176538| v@@57) i@@92) e@@24))
 :qid |DiemConsensusConfigbpl.109:13|
 :skolemid |0|
))) (= i@@91 (- 0 1))  (and (and (InRangeVec_136378 v@@57 i@@91) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_176538| v@@57) i@@91) e@@24)) (forall ((j@@24 Int) ) (!  (=> (and (>= j@@24 0) (< j@@24 i@@91)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_176538| v@@57) j@@24) e@@24)))
 :qid |DiemConsensusConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemConsensusConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_176538 v@@57 e@@24))
)))
(assert (forall ((v@@58 T@Vec_179218) (e@@25 T@$1_XUS_XUS) ) (! (let ((i@@93 (IndexOfVec_179218 v@@58 e@@25)))
(ite  (not (exists ((i@@94 Int) ) (!  (and (InRangeVec_136579 v@@58 i@@94) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_179218| v@@58) i@@94) e@@25))
 :qid |DiemConsensusConfigbpl.109:13|
 :skolemid |0|
))) (= i@@93 (- 0 1))  (and (and (InRangeVec_136579 v@@58 i@@93) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_179218| v@@58) i@@93) e@@25)) (forall ((j@@25 Int) ) (!  (=> (and (>= j@@25 0) (< j@@25 i@@93)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_179218| v@@58) j@@25) e@@25)))
 :qid |DiemConsensusConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemConsensusConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_179218 v@@58 e@@25))
)))
(assert (forall ((|l#0| Bool) (i@@95 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@95) |l#0|)
 :qid |DiemConsensusConfigbpl.275:54|
 :skolemid |1563|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@95))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_150327|) (|l#1| |T@[$1_Event_EventHandle]Multiset_150327|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_150327_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_150327| (|Select__T@[$1_Event_EventHandle]Multiset_150327_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_150327| (|Select__T@[$1_Event_EventHandle]Multiset_150327_| |l#1| handle@@0))))
(Multiset_150327 (|lambda#42| (|v#Multiset_150327| (|Select__T@[$1_Event_EventHandle]Multiset_150327_| |l#0@@0| handle@@0)) (|v#Multiset_150327| (|Select__T@[$1_Event_EventHandle]Multiset_150327_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DiemConsensusConfigbpl.3321:13|
 :skolemid |1564|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_150327_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@96 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@96) (ite  (and (>= i@@96 |l#0@@1|) (< i@@96 |l#1@@0|)) (ite (< i@@96 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@96) (|Select__T@[Int]#0_| |l#4| (- i@@96 |l#5|))) |l#6|))
 :qid |DiemConsensusConfigbpl.73:19|
 :skolemid |1565|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@96))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@97 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@97) (ite  (and (<= |l#0@@2| i@@97) (< i@@97 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@97) |l#4@@0|)) |l#5@@0|))
 :qid |DiemConsensusConfigbpl.82:30|
 :skolemid |1566|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@97))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@26 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@26) (ite  (and (>= j@@26 |l#0@@3|) (< j@@26 |l#1@@2|)) (ite (< j@@26 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@26) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@26 |l#5@@1|))) |l#6@@0|))
 :qid |DiemConsensusConfigbpl.63:20|
 :skolemid |1567|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@26))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@98 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@98) (ite  (and (>= i@@98 |l#0@@4|) (< i@@98 |l#1@@3|)) (ite (< i@@98 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@98) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@98 |l#5@@2|))) |l#6@@1|))
 :qid |DiemConsensusConfigbpl.73:19|
 :skolemid |1568|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@98))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@99 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@99) (ite  (and (<= |l#0@@5| i@@99) (< i@@99 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@99) |l#4@@3|)) |l#5@@3|))
 :qid |DiemConsensusConfigbpl.82:30|
 :skolemid |1569|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@99))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@27 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@27) (ite  (and (>= j@@27 |l#0@@6|) (< j@@27 |l#1@@5|)) (ite (< j@@27 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@27) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@27 |l#5@@4|))) |l#6@@2|))
 :qid |DiemConsensusConfigbpl.63:20|
 :skolemid |1570|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@27))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@100 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@100) (ite  (and (>= i@@100 |l#0@@7|) (< i@@100 |l#1@@6|)) (ite (< i@@100 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@100) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@100 |l#5@@5|))) |l#6@@3|))
 :qid |DiemConsensusConfigbpl.73:19|
 :skolemid |1571|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@100))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@101 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@101) (ite  (and (<= |l#0@@8| i@@101) (< i@@101 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@101) |l#4@@6|)) |l#5@@6|))
 :qid |DiemConsensusConfigbpl.82:30|
 :skolemid |1572|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@101))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@28 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@28) (ite  (and (>= j@@28 |l#0@@9|) (< j@@28 |l#1@@8|)) (ite (< j@@28 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@28) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@28 |l#5@@7|))) |l#6@@4|))
 :qid |DiemConsensusConfigbpl.63:20|
 :skolemid |1573|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@28))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@102 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@102) (ite  (and (>= i@@102 |l#0@@10|) (< i@@102 |l#1@@9|)) (ite (< i@@102 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@102) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@102 |l#5@@8|))) |l#6@@5|))
 :qid |DiemConsensusConfigbpl.73:19|
 :skolemid |1574|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@102))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@103 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@103) (ite  (and (<= |l#0@@11| i@@103) (< i@@103 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@103) |l#4@@9|)) |l#5@@9|))
 :qid |DiemConsensusConfigbpl.82:30|
 :skolemid |1575|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@103))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@29 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@29) (ite  (and (>= j@@29 |l#0@@12|) (< j@@29 |l#1@@11|)) (ite (< j@@29 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@29) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@29 |l#5@@10|))) |l#6@@6|))
 :qid |DiemConsensusConfigbpl.63:20|
 :skolemid |1576|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@29))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@11| Int) (|l#6@@7| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@104 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@104) (ite  (and (>= i@@104 |l#0@@13|) (< i@@104 |l#1@@12|)) (ite (< i@@104 |l#2@@11|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@11| i@@104) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@11| (- i@@104 |l#5@@11|))) |l#6@@7|))
 :qid |DiemConsensusConfigbpl.73:19|
 :skolemid |1577|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@104))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@105 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@105) (ite  (and (<= |l#0@@14| i@@105) (< i@@105 |l#1@@13|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#2@@12| (- (- |l#3@@12| i@@105) |l#4@@12|)) |l#5@@12|))
 :qid |DiemConsensusConfigbpl.82:30|
 :skolemid |1578|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@105))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@13| Int) (|l#6@@8| |T@$1_Diem_PreburnWithMetadata'#0'|) (j@@30 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@30) (ite  (and (>= j@@30 |l#0@@15|) (< j@@30 |l#1@@14|)) (ite (< j@@30 |l#2@@13|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@13| j@@30) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@13| (+ j@@30 |l#5@@13|))) |l#6@@8|))
 :qid |DiemConsensusConfigbpl.63:20|
 :skolemid |1579|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@30))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@14| Int) (|l#6@@9| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@106 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@106) (ite  (and (>= i@@106 |l#0@@16|) (< i@@106 |l#1@@15|)) (ite (< i@@106 |l#2@@14|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@14| i@@106) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@14| (- i@@106 |l#5@@14|))) |l#6@@9|))
 :qid |DiemConsensusConfigbpl.73:19|
 :skolemid |1580|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@106))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@107 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@107) (ite  (and (<= |l#0@@17| i@@107) (< i@@107 |l#1@@16|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#2@@15| (- (- |l#3@@15| i@@107) |l#4@@15|)) |l#5@@15|))
 :qid |DiemConsensusConfigbpl.82:30|
 :skolemid |1581|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@107))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@16| Int) (|l#6@@10| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (j@@31 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@31) (ite  (and (>= j@@31 |l#0@@18|) (< j@@31 |l#1@@17|)) (ite (< j@@31 |l#2@@16|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@16| j@@31) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@16| (+ j@@31 |l#5@@16|))) |l#6@@10|))
 :qid |DiemConsensusConfigbpl.63:20|
 :skolemid |1582|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@31))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@17| Int) (|l#6@@11| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@108 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@108) (ite  (and (>= i@@108 |l#0@@19|) (< i@@108 |l#1@@18|)) (ite (< i@@108 |l#2@@17|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@17| i@@108) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@17| (- i@@108 |l#5@@17|))) |l#6@@11|))
 :qid |DiemConsensusConfigbpl.73:19|
 :skolemid |1583|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@108))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@109 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@109) (ite  (and (<= |l#0@@20| i@@109) (< i@@109 |l#1@@19|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#2@@18| (- (- |l#3@@18| i@@109) |l#4@@18|)) |l#5@@18|))
 :qid |DiemConsensusConfigbpl.82:30|
 :skolemid |1584|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@109))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@19| Int) (|l#6@@12| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (j@@32 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@32) (ite  (and (>= j@@32 |l#0@@21|) (< j@@32 |l#1@@20|)) (ite (< j@@32 |l#2@@19|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@19| j@@32) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@19| (+ j@@32 |l#5@@19|))) |l#6@@12|))
 :qid |DiemConsensusConfigbpl.63:20|
 :skolemid |1585|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@32))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@20| Int) (|l#6@@13| T@$1_VASPDomain_VASPDomain) (i@@110 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@110) (ite  (and (>= i@@110 |l#0@@22|) (< i@@110 |l#1@@21|)) (ite (< i@@110 |l#2@@20|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@20| i@@110) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@20| (- i@@110 |l#5@@20|))) |l#6@@13|))
 :qid |DiemConsensusConfigbpl.73:19|
 :skolemid |1586|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@110))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| T@$1_VASPDomain_VASPDomain) (i@@111 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@111) (ite  (and (<= |l#0@@23| i@@111) (< i@@111 |l#1@@22|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@21| (- (- |l#3@@21| i@@111) |l#4@@21|)) |l#5@@21|))
 :qid |DiemConsensusConfigbpl.82:30|
 :skolemid |1587|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@111))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@22| Int) (|l#6@@14| T@$1_VASPDomain_VASPDomain) (j@@33 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@33) (ite  (and (>= j@@33 |l#0@@24|) (< j@@33 |l#1@@23|)) (ite (< j@@33 |l#2@@22|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@22| j@@33) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@22| (+ j@@33 |l#5@@22|))) |l#6@@14|))
 :qid |DiemConsensusConfigbpl.63:20|
 :skolemid |1588|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@33))
)))
(assert (forall ((|l#0@@25| Int) (|l#1@@24| Int) (|l#2@@23| Int) (|l#3@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@23| Int) (|l#6@@15| T@$1_ValidatorConfig_Config) (i@@112 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@112) (ite  (and (>= i@@112 |l#0@@25|) (< i@@112 |l#1@@24|)) (ite (< i@@112 |l#2@@23|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@23| i@@112) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@23| (- i@@112 |l#5@@23|))) |l#6@@15|))
 :qid |DiemConsensusConfigbpl.73:19|
 :skolemid |1589|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@112))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@24| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@24| Int) (|l#4@@24| Int) (|l#5@@24| T@$1_ValidatorConfig_Config) (i@@113 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@113) (ite  (and (<= |l#0@@26| i@@113) (< i@@113 |l#1@@25|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@24| (- (- |l#3@@24| i@@113) |l#4@@24|)) |l#5@@24|))
 :qid |DiemConsensusConfigbpl.82:30|
 :skolemid |1590|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@113))
)))
(assert (forall ((|l#0@@27| Int) (|l#1@@26| Int) (|l#2@@25| Int) (|l#3@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@25| Int) (|l#6@@16| T@$1_ValidatorConfig_Config) (j@@34 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@34) (ite  (and (>= j@@34 |l#0@@27|) (< j@@34 |l#1@@26|)) (ite (< j@@34 |l#2@@25|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@25| j@@34) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@25| (+ j@@34 |l#5@@25|))) |l#6@@16|))
 :qid |DiemConsensusConfigbpl.63:20|
 :skolemid |1591|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@34))
)))
(assert (forall ((|l#0@@28| Int) (|l#1@@27| Int) (|l#2@@26| Int) (|l#3@@26| |T@[Int]$1_XDX_XDX|) (|l#4@@26| |T@[Int]$1_XDX_XDX|) (|l#5@@26| Int) (|l#6@@17| T@$1_XDX_XDX) (i@@114 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@114) (ite  (and (>= i@@114 |l#0@@28|) (< i@@114 |l#1@@27|)) (ite (< i@@114 |l#2@@26|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@26| i@@114) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@26| (- i@@114 |l#5@@26|))) |l#6@@17|))
 :qid |DiemConsensusConfigbpl.73:19|
 :skolemid |1592|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@114))
)))
(assert (forall ((|l#0@@29| Int) (|l#1@@28| Int) (|l#2@@27| |T@[Int]$1_XDX_XDX|) (|l#3@@27| Int) (|l#4@@27| Int) (|l#5@@27| T@$1_XDX_XDX) (i@@115 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@115) (ite  (and (<= |l#0@@29| i@@115) (< i@@115 |l#1@@28|)) (|Select__T@[Int]$1_XDX_XDX_| |l#2@@27| (- (- |l#3@@27| i@@115) |l#4@@27|)) |l#5@@27|))
 :qid |DiemConsensusConfigbpl.82:30|
 :skolemid |1593|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@115))
)))
(assert (forall ((|l#0@@30| Int) (|l#1@@29| Int) (|l#2@@28| Int) (|l#3@@28| |T@[Int]$1_XDX_XDX|) (|l#4@@28| |T@[Int]$1_XDX_XDX|) (|l#5@@28| Int) (|l#6@@18| T@$1_XDX_XDX) (j@@35 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@35) (ite  (and (>= j@@35 |l#0@@30|) (< j@@35 |l#1@@29|)) (ite (< j@@35 |l#2@@28|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@28| j@@35) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@28| (+ j@@35 |l#5@@28|))) |l#6@@18|))
 :qid |DiemConsensusConfigbpl.63:20|
 :skolemid |1594|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@35))
)))
(assert (forall ((|l#0@@31| Int) (|l#1@@30| Int) (|l#2@@29| Int) (|l#3@@29| |T@[Int]$1_XUS_XUS|) (|l#4@@29| |T@[Int]$1_XUS_XUS|) (|l#5@@29| Int) (|l#6@@19| T@$1_XUS_XUS) (i@@116 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@116) (ite  (and (>= i@@116 |l#0@@31|) (< i@@116 |l#1@@30|)) (ite (< i@@116 |l#2@@29|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@29| i@@116) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@29| (- i@@116 |l#5@@29|))) |l#6@@19|))
 :qid |DiemConsensusConfigbpl.73:19|
 :skolemid |1595|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@116))
)))
(assert (forall ((|l#0@@32| Int) (|l#1@@31| Int) (|l#2@@30| |T@[Int]$1_XUS_XUS|) (|l#3@@30| Int) (|l#4@@30| Int) (|l#5@@30| T@$1_XUS_XUS) (i@@117 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@117) (ite  (and (<= |l#0@@32| i@@117) (< i@@117 |l#1@@31|)) (|Select__T@[Int]$1_XUS_XUS_| |l#2@@30| (- (- |l#3@@30| i@@117) |l#4@@30|)) |l#5@@30|))
 :qid |DiemConsensusConfigbpl.82:30|
 :skolemid |1596|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@117))
)))
(assert (forall ((|l#0@@33| Int) (|l#1@@32| Int) (|l#2@@31| Int) (|l#3@@31| |T@[Int]$1_XUS_XUS|) (|l#4@@31| |T@[Int]$1_XUS_XUS|) (|l#5@@31| Int) (|l#6@@20| T@$1_XUS_XUS) (j@@36 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@36) (ite  (and (>= j@@36 |l#0@@33|) (< j@@36 |l#1@@32|)) (ite (< j@@36 |l#2@@31|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@31| j@@36) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@31| (+ j@@36 |l#5@@31|))) |l#6@@20|))
 :qid |DiemConsensusConfigbpl.63:20|
 :skolemid |1597|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@36))
)))
(assert (forall ((|l#0@@34| Int) (|l#1@@33| Int) (|l#2@@32| Int) (|l#3@@32| |T@[Int]Vec_27708|) (|l#4@@32| |T@[Int]Vec_27708|) (|l#5@@32| Int) (|l#6@@21| T@Vec_27708) (i@@118 Int) ) (! (= (|Select__T@[Int]Vec_27708_| (|lambda#36| |l#0@@34| |l#1@@33| |l#2@@32| |l#3@@32| |l#4@@32| |l#5@@32| |l#6@@21|) i@@118) (ite  (and (>= i@@118 |l#0@@34|) (< i@@118 |l#1@@33|)) (ite (< i@@118 |l#2@@32|) (|Select__T@[Int]Vec_27708_| |l#3@@32| i@@118) (|Select__T@[Int]Vec_27708_| |l#4@@32| (- i@@118 |l#5@@32|))) |l#6@@21|))
 :qid |DiemConsensusConfigbpl.73:19|
 :skolemid |1598|
 :pattern ( (|Select__T@[Int]Vec_27708_| (|lambda#36| |l#0@@34| |l#1@@33| |l#2@@32| |l#3@@32| |l#4@@32| |l#5@@32| |l#6@@21|) i@@118))
)))
(assert (forall ((|l#0@@35| Int) (|l#1@@34| Int) (|l#2@@33| |T@[Int]Vec_27708|) (|l#3@@33| Int) (|l#4@@33| Int) (|l#5@@33| T@Vec_27708) (i@@119 Int) ) (! (= (|Select__T@[Int]Vec_27708_| (|lambda#37| |l#0@@35| |l#1@@34| |l#2@@33| |l#3@@33| |l#4@@33| |l#5@@33|) i@@119) (ite  (and (<= |l#0@@35| i@@119) (< i@@119 |l#1@@34|)) (|Select__T@[Int]Vec_27708_| |l#2@@33| (- (- |l#3@@33| i@@119) |l#4@@33|)) |l#5@@33|))
 :qid |DiemConsensusConfigbpl.82:30|
 :skolemid |1599|
 :pattern ( (|Select__T@[Int]Vec_27708_| (|lambda#37| |l#0@@35| |l#1@@34| |l#2@@33| |l#3@@33| |l#4@@33| |l#5@@33|) i@@119))
)))
(assert (forall ((|l#0@@36| Int) (|l#1@@35| Int) (|l#2@@34| Int) (|l#3@@34| |T@[Int]Vec_27708|) (|l#4@@34| |T@[Int]Vec_27708|) (|l#5@@34| Int) (|l#6@@22| T@Vec_27708) (j@@37 Int) ) (! (= (|Select__T@[Int]Vec_27708_| (|lambda#38| |l#0@@36| |l#1@@35| |l#2@@34| |l#3@@34| |l#4@@34| |l#5@@34| |l#6@@22|) j@@37) (ite  (and (>= j@@37 |l#0@@36|) (< j@@37 |l#1@@35|)) (ite (< j@@37 |l#2@@34|) (|Select__T@[Int]Vec_27708_| |l#3@@34| j@@37) (|Select__T@[Int]Vec_27708_| |l#4@@34| (+ j@@37 |l#5@@34|))) |l#6@@22|))
 :qid |DiemConsensusConfigbpl.63:20|
 :skolemid |1600|
 :pattern ( (|Select__T@[Int]Vec_27708_| (|lambda#38| |l#0@@36| |l#1@@35| |l#2@@34| |l#3@@34| |l#4@@34| |l#5@@34| |l#6@@22|) j@@37))
)))
(assert (forall ((|l#0@@37| Int) (|l#1@@36| Int) (|l#2@@35| Int) (|l#3@@35| |T@[Int]Int|) (|l#4@@35| |T@[Int]Int|) (|l#5@@35| Int) (|l#6@@23| Int) (i@@120 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#39| |l#0@@37| |l#1@@36| |l#2@@35| |l#3@@35| |l#4@@35| |l#5@@35| |l#6@@23|) i@@120) (ite  (and (>= i@@120 |l#0@@37|) (< i@@120 |l#1@@36|)) (ite (< i@@120 |l#2@@35|) (|Select__T@[Int]Int_| |l#3@@35| i@@120) (|Select__T@[Int]Int_| |l#4@@35| (- i@@120 |l#5@@35|))) |l#6@@23|))
 :qid |DiemConsensusConfigbpl.73:19|
 :skolemid |1601|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#39| |l#0@@37| |l#1@@36| |l#2@@35| |l#3@@35| |l#4@@35| |l#5@@35| |l#6@@23|) i@@120))
)))
(assert (forall ((|l#0@@38| Int) (|l#1@@37| Int) (|l#2@@36| |T@[Int]Int|) (|l#3@@36| Int) (|l#4@@36| Int) (|l#5@@36| Int) (i@@121 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#40| |l#0@@38| |l#1@@37| |l#2@@36| |l#3@@36| |l#4@@36| |l#5@@36|) i@@121) (ite  (and (<= |l#0@@38| i@@121) (< i@@121 |l#1@@37|)) (|Select__T@[Int]Int_| |l#2@@36| (- (- |l#3@@36| i@@121) |l#4@@36|)) |l#5@@36|))
 :qid |DiemConsensusConfigbpl.82:30|
 :skolemid |1602|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#40| |l#0@@38| |l#1@@37| |l#2@@36| |l#3@@36| |l#4@@36| |l#5@@36|) i@@121))
)))
(assert (forall ((|l#0@@39| Int) (|l#1@@38| Int) (|l#2@@37| Int) (|l#3@@37| |T@[Int]Int|) (|l#4@@37| |T@[Int]Int|) (|l#5@@37| Int) (|l#6@@24| Int) (j@@38 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#41| |l#0@@39| |l#1@@38| |l#2@@37| |l#3@@37| |l#4@@37| |l#5@@37| |l#6@@24|) j@@38) (ite  (and (>= j@@38 |l#0@@39|) (< j@@38 |l#1@@38|)) (ite (< j@@38 |l#2@@37|) (|Select__T@[Int]Int_| |l#3@@37| j@@38) (|Select__T@[Int]Int_| |l#4@@37| (+ j@@38 |l#5@@37|))) |l#6@@24|))
 :qid |DiemConsensusConfigbpl.63:20|
 :skolemid |1603|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#41| |l#0@@39| |l#1@@38| |l#2@@37| |l#3@@37| |l#4@@37| |l#5@@37| |l#6@@24|) j@@38))
)))
(assert (forall ((|l#0@@40| |T@[$EventRep]Int|) (|l#1@@39| |T@[$EventRep]Int|) (v@@59 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#42| |l#0@@40| |l#1@@39|) v@@59) (- (|Select__T@[$EventRep]Int_| |l#0@@40| v@@59) (|Select__T@[$EventRep]Int_| |l#1@@39| v@@59)))
 :qid |DiemConsensusConfigbpl.154:29|
 :skolemid |1604|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#42| |l#0@@40| |l#1@@39|) v@@59))
)))
; Valid

