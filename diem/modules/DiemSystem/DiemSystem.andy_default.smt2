(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_109321 0)) ((($Memory_109321 (|domain#$Memory_109321| |T@[Int]Bool|) (|contents#$Memory_109321| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_185772 0)) ((($Memory_185772 (|domain#$Memory_185772| |T@[Int]Bool|) (|contents#$Memory_185772| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_182661 0)) ((($Memory_182661 (|domain#$Memory_182661| |T@[Int]Bool|) (|contents#$Memory_182661| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_180455 0)) ((($Memory_180455 (|domain#$Memory_180455| |T@[Int]Bool|) (|contents#$Memory_180455| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_180735 0)) ((($Memory_180735 (|domain#$Memory_180735| |T@[Int]Bool|) (|contents#$Memory_180735| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_180422 0)) ((($Memory_180422 (|domain#$Memory_180422| |T@[Int]Bool|) (|contents#$Memory_180422| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_180207 0)) ((($Memory_180207 (|domain#$Memory_180207| |T@[Int]Bool|) (|contents#$Memory_180207| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_177668 0)) ((($Memory_177668 (|domain#$Memory_177668| |T@[Int]Bool|) (|contents#$Memory_177668| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_177604 0)) ((($Memory_177604 (|domain#$Memory_177604| |T@[Int]Bool|) (|contents#$Memory_177604| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_176314 0)) ((($Memory_176314 (|domain#$Memory_176314| |T@[Int]Bool|) (|contents#$Memory_176314| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_176250 0)) ((($Memory_176250 (|domain#$Memory_176250| |T@[Int]Bool|) (|contents#$Memory_176250| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_175938 0)) ((($Memory_175938 (|domain#$Memory_175938| |T@[Int]Bool|) (|contents#$Memory_175938| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_172672 0)) ((($Memory_172672 (|domain#$Memory_172672| |T@[Int]Bool|) (|contents#$Memory_172672| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_172385 0)) ((($Memory_172385 (|domain#$Memory_172385| |T@[Int]Bool|) (|contents#$Memory_172385| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_172098 0)) ((($Memory_172098 (|domain#$Memory_172098| |T@[Int]Bool|) (|contents#$Memory_172098| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_171879 0)) ((($Memory_171879 (|domain#$Memory_171879| |T@[Int]Bool|) (|contents#$Memory_171879| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_182268 0)) ((($Memory_182268 (|domain#$Memory_182268| |T@[Int]Bool|) (|contents#$Memory_182268| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_164616 0)) ((($Memory_164616 (|domain#$Memory_164616| |T@[Int]Bool|) (|contents#$Memory_164616| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_164529 0)) ((($Memory_164529 (|domain#$Memory_164529| |T@[Int]Bool|) (|contents#$Memory_164529| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_161326 0)) ((($Memory_161326 (|domain#$Memory_161326| |T@[Int]Bool|) (|contents#$Memory_161326| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_161239 0)) ((($Memory_161239 (|domain#$Memory_161239| |T@[Int]Bool|) (|contents#$Memory_161239| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_182494 0)) ((($Memory_182494 (|domain#$Memory_182494| |T@[Int]Bool|) (|contents#$Memory_182494| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_164880 0)) ((($Memory_164880 (|domain#$Memory_164880| |T@[Int]Bool|) (|contents#$Memory_164880| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_174605 0)) ((($Memory_174605 (|domain#$Memory_174605| |T@[Int]Bool|) (|contents#$Memory_174605| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_165206 0)) ((($Memory_165206 (|domain#$Memory_165206| |T@[Int]Bool|) (|contents#$Memory_165206| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_182403 0)) ((($Memory_182403 (|domain#$Memory_182403| |T@[Int]Bool|) (|contents#$Memory_182403| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_164789 0)) ((($Memory_164789 (|domain#$Memory_164789| |T@[Int]Bool|) (|contents#$Memory_164789| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_176494 0)) ((($Memory_176494 (|domain#$Memory_176494| |T@[Int]Bool|) (|contents#$Memory_176494| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_165107 0)) ((($Memory_165107 (|domain#$Memory_165107| |T@[Int]Bool|) (|contents#$Memory_165107| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_160941 0)) ((($Memory_160941 (|domain#$Memory_160941| |T@[Int]Bool|) (|contents#$Memory_160941| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_160877 0)) ((($Memory_160877 (|domain#$Memory_160877| |T@[Int]Bool|) (|contents#$Memory_160877| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_133128 0)) ((($Memory_133128 (|domain#$Memory_133128| |T@[Int]Bool|) (|contents#$Memory_133128| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_133041 0)) ((($Memory_133041 (|domain#$Memory_133041| |T@[Int]Bool|) (|contents#$Memory_133041| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_132954 0)) ((($Memory_132954 (|domain#$Memory_132954| |T@[Int]Bool|) (|contents#$Memory_132954| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_132867 0)) ((($Memory_132867 (|domain#$Memory_132867| |T@[Int]Bool|) (|contents#$Memory_132867| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_132780 0)) ((($Memory_132780 (|domain#$Memory_132780| |T@[Int]Bool|) (|contents#$Memory_132780| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_117687 0)) ((($Memory_117687 (|domain#$Memory_117687| |T@[Int]Bool|) (|contents#$Memory_117687| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_131895 0)) ((($Memory_131895 (|domain#$Memory_131895| |T@[Int]Bool|) (|contents#$Memory_131895| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_132007 0)) ((($Memory_132007 (|domain#$Memory_132007| |T@[Int]Bool|) (|contents#$Memory_132007| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_131814 0)) ((($Memory_131814 (|domain#$Memory_131814| |T@[Int]Bool|) (|contents#$Memory_131814| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_131733 0)) ((($Memory_131733 (|domain#$Memory_131733| |T@[Int]Bool|) (|contents#$Memory_131733| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_131652 0)) ((($Memory_131652 (|domain#$Memory_131652| |T@[Int]Bool|) (|contents#$Memory_131652| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_131571 0)) ((($Memory_131571 (|domain#$Memory_131571| |T@[Int]Bool|) (|contents#$Memory_131571| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_131538 0)) ((($Memory_131538 (|domain#$Memory_131538| |T@[Int]Bool|) (|contents#$Memory_131538| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_181405 0)) ((($Memory_181405 (|domain#$Memory_181405| |T@[Int]Bool|) (|contents#$Memory_181405| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_117614 0)) ((($Memory_117614 (|domain#$Memory_117614| |T@[Int]Bool|) (|contents#$Memory_117614| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_130999 0)) ((($Memory_130999 (|domain#$Memory_130999| |T@[Int]Bool|) (|contents#$Memory_130999| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'u64'| 0)) (((|$1_Option_Option'u64'| (|$vec#$1_Option_Option'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_130113 0)) ((($Memory_130113 (|domain#$Memory_130113| |T@[Int]Bool|) (|contents#$Memory_130113| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_118068 0)) ((($Memory_118068 (|domain#$Memory_118068| |T@[Int]Bool|) (|contents#$Memory_118068| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_116168 0)) ((($Memory_116168 (|domain#$Memory_116168| |T@[Int]Bool|) (|contents#$Memory_116168| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_86037 0)) (((Multiset_86037 (|v#Multiset_86037| |T@[$EventRep]Int|) (|l#Multiset_86037| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_86037| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_86037|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_183489 0)) ((($Mutation_183489 (|l#$Mutation_183489| T@$Location) (|p#$Mutation_183489| (Seq Int)) (|v#$Mutation_183489| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_183445 0)) ((($Mutation_183445 (|l#$Mutation_183445| T@$Location) (|p#$Mutation_183445| (Seq Int)) (|v#$Mutation_183445| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_54646 0)) ((($Mutation_54646 (|l#$Mutation_54646| T@$Location) (|p#$Mutation_54646| (Seq Int)) (|v#$Mutation_54646| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_170599 0)) ((($Mutation_170599 (|l#$Mutation_170599| T@$Location) (|p#$Mutation_170599| (Seq Int)) (|v#$Mutation_170599| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_159735 0)) ((($Mutation_159735 (|l#$Mutation_159735| T@$Location) (|p#$Mutation_159735| (Seq Int)) (|v#$Mutation_159735| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_133691 0)) ((($Mutation_133691 (|l#$Mutation_133691| T@$Location) (|p#$Mutation_133691| (Seq Int)) (|v#$Mutation_133691| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-datatypes ((T@$Mutation_116663 0)) ((($Mutation_116663 (|l#$Mutation_116663| T@$Location) (|p#$Mutation_116663| (Seq Int)) (|v#$Mutation_116663| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_109952 0)) ((($Mutation_109952 (|l#$Mutation_109952| T@$Location) (|p#$Mutation_109952| (Seq Int)) (|v#$Mutation_109952| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_12329 0)) ((($Mutation_12329 (|l#$Mutation_12329| T@$Location) (|p#$Mutation_12329| (Seq Int)) (|v#$Mutation_12329| Int) ) ) ))
(declare-datatypes ((T@$Mutation_104130 0)) ((($Mutation_104130 (|l#$Mutation_104130| T@$Location) (|p#$Mutation_104130| (Seq Int)) (|v#$Mutation_104130| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_103384 0)) ((($Mutation_103384 (|l#$Mutation_103384| T@$Location) (|p#$Mutation_103384| (Seq Int)) (|v#$Mutation_103384| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_101944 0)) ((($Mutation_101944 (|l#$Mutation_101944| T@$Location) (|p#$Mutation_101944| (Seq Int)) (|v#$Mutation_101944| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_101198 0)) ((($Mutation_101198 (|l#$Mutation_101198| T@$Location) (|p#$Mutation_101198| (Seq Int)) (|v#$Mutation_101198| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_99758 0)) ((($Mutation_99758 (|l#$Mutation_99758| T@$Location) (|p#$Mutation_99758| (Seq Int)) (|v#$Mutation_99758| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_99012 0)) ((($Mutation_99012 (|l#$Mutation_99012| T@$Location) (|p#$Mutation_99012| (Seq Int)) (|v#$Mutation_99012| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_97572 0)) ((($Mutation_97572 (|l#$Mutation_97572| T@$Location) (|p#$Mutation_97572| (Seq Int)) (|v#$Mutation_97572| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_96826 0)) ((($Mutation_96826 (|l#$Mutation_96826| T@$Location) (|p#$Mutation_96826| (Seq Int)) (|v#$Mutation_96826| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_95386 0)) ((($Mutation_95386 (|l#$Mutation_95386| T@$Location) (|p#$Mutation_95386| (Seq Int)) (|v#$Mutation_95386| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_94640 0)) ((($Mutation_94640 (|l#$Mutation_94640| T@$Location) (|p#$Mutation_94640| (Seq Int)) (|v#$Mutation_94640| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_93200 0)) ((($Mutation_93200 (|l#$Mutation_93200| T@$Location) (|p#$Mutation_93200| (Seq Int)) (|v#$Mutation_93200| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_92454 0)) ((($Mutation_92454 (|l#$Mutation_92454| T@$Location) (|p#$Mutation_92454| (Seq Int)) (|v#$Mutation_92454| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_91014 0)) ((($Mutation_91014 (|l#$Mutation_91014| T@$Location) (|p#$Mutation_91014| (Seq Int)) (|v#$Mutation_91014| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_90268 0)) ((($Mutation_90268 (|l#$Mutation_90268| T@$Location) (|p#$Mutation_90268| (Seq Int)) (|v#$Mutation_90268| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_88790 0)) ((($Mutation_88790 (|l#$Mutation_88790| T@$Location) (|p#$Mutation_88790| (Seq Int)) (|v#$Mutation_88790| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_88044 0)) ((($Mutation_88044 (|l#$Mutation_88044| T@$Location) (|p#$Mutation_88044| (Seq Int)) (|v#$Mutation_88044| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_86037_| (|T@[$1_Event_EventHandle]Multiset_86037| T@$1_Event_EventHandle) T@Multiset_86037)
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
(declare-fun |$IsValid'$1_Option_Option'u64''| (|T@$1_Option_Option'u64'|) Bool)
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
(declare-fun ReverseVec_12182 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_77633 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_76648 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_76845 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_77042 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_77830 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_77436 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_77239 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_76451 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_86037| |T@[$1_Event_EventHandle]Multiset_86037|) |T@[$1_Event_EventHandle]Multiset_86037|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DiemSystemandybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DiemSystemandybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DiemSystemandybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DiemSystemandybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DiemSystemandybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DiemSystemandybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DiemSystemandybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DiemSystemandybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |DiemSystemandybpl.590:13|
 :skolemid |15|
))))
 :qid |DiemSystemandybpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |DiemSystemandybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |DiemSystemandybpl.603:17|
 :skolemid |18|
)))))
 :qid |DiemSystemandybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |DiemSystemandybpl.770:13|
 :skolemid |20|
))))
 :qid |DiemSystemandybpl.768:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |DiemSystemandybpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |DiemSystemandybpl.783:17|
 :skolemid |23|
)))))
 :qid |DiemSystemandybpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |DiemSystemandybpl.950:13|
 :skolemid |25|
))))
 :qid |DiemSystemandybpl.948:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |DiemSystemandybpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |DiemSystemandybpl.963:17|
 :skolemid |28|
)))))
 :qid |DiemSystemandybpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |DiemSystemandybpl.1130:13|
 :skolemid |30|
))))
 :qid |DiemSystemandybpl.1128:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |DiemSystemandybpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |DiemSystemandybpl.1143:17|
 :skolemid |33|
)))))
 :qid |DiemSystemandybpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@12 i@@12)))
 :qid |DiemSystemandybpl.1310:13|
 :skolemid |35|
))))
 :qid |DiemSystemandybpl.1308:65|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |DiemSystemandybpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |DiemSystemandybpl.1323:17|
 :skolemid |38|
)))))
 :qid |DiemSystemandybpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@14 i@@15)))
 :qid |DiemSystemandybpl.1490:13|
 :skolemid |40|
))))
 :qid |DiemSystemandybpl.1488:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |DiemSystemandybpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |DiemSystemandybpl.1503:17|
 :skolemid |43|
)))))
 :qid |DiemSystemandybpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@16 i@@18)))
 :qid |DiemSystemandybpl.1670:13|
 :skolemid |45|
))))
 :qid |DiemSystemandybpl.1668:51|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16))
)))
(assert (forall ((v@@17 (Seq T@$1_ValidatorConfig_Config)) (e@@5 T@$1_ValidatorConfig_Config) ) (! (let ((i@@19 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |DiemSystemandybpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |DiemSystemandybpl.1683:17|
 :skolemid |48|
)))))
 :qid |DiemSystemandybpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'vec'u8''| (seq.nth v@@18 i@@21)))
 :qid |DiemSystemandybpl.1850:13|
 :skolemid |50|
))))
 :qid |DiemSystemandybpl.1848:33|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@18))
)))
(assert (forall ((v@@19 (Seq (Seq Int))) (e@@6 (Seq Int)) ) (! (let ((i@@22 (|$IndexOfVec'vec'u8''| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |DiemSystemandybpl.1855:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |DiemSystemandybpl.1863:17|
 :skolemid |53|
)))))
 :qid |DiemSystemandybpl.1859:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'address'| (seq.nth v@@20 i@@24)))
 :qid |DiemSystemandybpl.2030:13|
 :skolemid |55|
))))
 :qid |DiemSystemandybpl.2028:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'address''| v@@20))
)))
(assert (forall ((v@@21 (Seq Int)) (e@@7 Int) ) (! (let ((i@@25 (|$IndexOfVec'address'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |DiemSystemandybpl.2035:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |DiemSystemandybpl.2043:17|
 :skolemid |58|
)))))
 :qid |DiemSystemandybpl.2039:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'address'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'u64'| (seq.nth v@@22 i@@27)))
 :qid |DiemSystemandybpl.2210:13|
 :skolemid |60|
))))
 :qid |DiemSystemandybpl.2208:29|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'u64''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'u64'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |DiemSystemandybpl.2215:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |DiemSystemandybpl.2223:17|
 :skolemid |63|
)))))
 :qid |DiemSystemandybpl.2219:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'u64'| v@@23 e@@8))
)))
(assert (forall ((v@@24 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@24)  (and (|$IsValid'u64'| (seq.len v@@24)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len v@@24))) (|$IsValid'u8'| (seq.nth v@@24 i@@30)))
 :qid |DiemSystemandybpl.2390:13|
 :skolemid |65|
))))
 :qid |DiemSystemandybpl.2388:28|
 :skolemid |66|
 :pattern ( (|$IsValid'vec'u8''| v@@24))
)))
(assert (forall ((v@@25 (Seq Int)) (e@@9 Int) ) (! (let ((i@@31 (|$IndexOfVec'u8'| v@@25 e@@9)))
(ite  (not (exists ((i@@32 Int) ) (!  (and (and (|$IsValid'u64'| i@@32) (and (>= i@@32 0) (< i@@32 (seq.len v@@25)))) (= (seq.nth v@@25 i@@32) e@@9))
 :qid |DiemSystemandybpl.2395:13|
 :skolemid |67|
))) (= i@@31 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@31) (and (>= i@@31 0) (< i@@31 (seq.len v@@25)))) (= (seq.nth v@@25 i@@31) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@31)) (not (= (seq.nth v@@25 j@@9) e@@9)))
 :qid |DiemSystemandybpl.2403:17|
 :skolemid |68|
)))))
 :qid |DiemSystemandybpl.2399:15|
 :skolemid |69|
 :pattern ( (|$IndexOfVec'u8'| v@@25 e@@9))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |DiemSystemandybpl.2576:15|
 :skolemid |70|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |DiemSystemandybpl.2592:15|
 :skolemid |71|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DiemSystemandybpl.2659:15|
 :skolemid |72|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DiemSystemandybpl.2662:15|
 :skolemid |73|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_86037| stream) 0) (forall ((v@@26 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| stream) v@@26) 0)
 :qid |DiemSystemandybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemandybpl.2723:13|
 :skolemid |74|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |DiemSystemandybpl.2764:80|
 :skolemid |76|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |DiemSystemandybpl.2770:15|
 :skolemid |77|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |DiemSystemandybpl.2820:82|
 :skolemid |78|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |DiemSystemandybpl.2826:15|
 :skolemid |79|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |DiemSystemandybpl.2876:80|
 :skolemid |80|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |DiemSystemandybpl.2882:15|
 :skolemid |81|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |DiemSystemandybpl.2932:79|
 :skolemid |82|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |DiemSystemandybpl.2938:15|
 :skolemid |83|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |DiemSystemandybpl.2988:76|
 :skolemid |84|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |DiemSystemandybpl.2994:15|
 :skolemid |85|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |DiemSystemandybpl.3044:78|
 :skolemid |86|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |DiemSystemandybpl.3050:15|
 :skolemid |87|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |DiemSystemandybpl.3100:74|
 :skolemid |88|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |DiemSystemandybpl.3106:15|
 :skolemid |89|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |DiemSystemandybpl.3156:69|
 :skolemid |90|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |DiemSystemandybpl.3162:15|
 :skolemid |91|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |DiemSystemandybpl.3212:70|
 :skolemid |92|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |DiemSystemandybpl.3218:15|
 :skolemid |93|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |DiemSystemandybpl.3268:60|
 :skolemid |94|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |DiemSystemandybpl.3274:15|
 :skolemid |95|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |DiemSystemandybpl.3324:66|
 :skolemid |96|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |DiemSystemandybpl.3330:15|
 :skolemid |97|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |DiemSystemandybpl.3380:60|
 :skolemid |98|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |DiemSystemandybpl.3386:15|
 :skolemid |99|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |DiemSystemandybpl.3436:63|
 :skolemid |100|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |DiemSystemandybpl.3442:15|
 :skolemid |101|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |DiemSystemandybpl.3492:79|
 :skolemid |102|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |DiemSystemandybpl.3498:15|
 :skolemid |103|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |DiemSystemandybpl.3548:82|
 :skolemid |104|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |DiemSystemandybpl.3554:15|
 :skolemid |105|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |DiemSystemandybpl.3604:88|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |DiemSystemandybpl.3610:15|
 :skolemid |107|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |DiemSystemandybpl.3660:72|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |DiemSystemandybpl.3666:15|
 :skolemid |109|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |DiemSystemandybpl.3720:15|
 :skolemid |110|
)))
(assert (forall ((addr Int) ) (! true
 :qid |DiemSystemandybpl.3729:15|
 :skolemid |111|
)))
(assert (forall ((s@@0 T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s@@0)))
 :qid |DiemSystemandybpl.3754:61|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |DiemSystemandybpl.4310:36|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@2)))
 :qid |DiemSystemandybpl.6406:71|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'u64'|) ) (! (= (|$IsValid'$1_Option_Option'u64''| s@@3) (|$IsValid'vec'u64''| (|$vec#$1_Option_Option'u64'| s@@3)))
 :qid |DiemSystemandybpl.6515:42|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_Option_Option'u64''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@4) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@4)))
 :qid |DiemSystemandybpl.6528:46|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@5) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@5)))
 :qid |DiemSystemandybpl.6541:64|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@6) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@6)))
 :qid |DiemSystemandybpl.6554:75|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@6))
)))
(assert (forall ((s@@7 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@7) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@7)))
 :qid |DiemSystemandybpl.6567:72|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@7))
)))
(assert (forall ((s@@8 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@8)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@8)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@8))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@8))))
 :qid |DiemSystemandybpl.6601:55|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@8))
)))
(assert (forall ((s@@9 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@9)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@9)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@9))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@9))))
 :qid |DiemSystemandybpl.6623:46|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@9))
)))
(assert (forall ((s@@10 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@10)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@10)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@10))))
 :qid |DiemSystemandybpl.6641:49|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@11) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@11)))
 :qid |DiemSystemandybpl.6721:71|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@12) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@12)))
 :qid |DiemSystemandybpl.6735:91|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@13) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@13)))
 :qid |DiemSystemandybpl.6749:113|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@14) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@14)))
 :qid |DiemSystemandybpl.6763:75|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@14))
)))
(assert (forall ((s@@15 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@15) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@15)))
 :qid |DiemSystemandybpl.6777:73|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@16)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@16)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@16))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@16))))
 :qid |DiemSystemandybpl.6797:48|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@16))
)))
(assert (forall ((s@@17 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@17) true)
 :qid |DiemSystemandybpl.6813:57|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@18) true)
 :qid |DiemSystemandybpl.6827:83|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@19) true)
 :qid |DiemSystemandybpl.6841:103|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@20) true)
 :qid |DiemSystemandybpl.6855:125|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21) true)
 :qid |DiemSystemandybpl.6869:87|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22) true)
 :qid |DiemSystemandybpl.6883:85|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@23)))
 :qid |DiemSystemandybpl.6897:48|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@24)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@24))))
 :qid |DiemSystemandybpl.6934:45|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@25)))
 :qid |DiemSystemandybpl.6948:51|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@26)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@26))))
 :qid |DiemSystemandybpl.6971:48|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26))
)))
(assert (forall ((s@@27 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@27)))
 :qid |DiemSystemandybpl.11592:49|
 :skolemid |341|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27))
)))
(assert (forall ((s@@28 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@28)))
 :qid |DiemSystemandybpl.11605:65|
 :skolemid |342|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@29)))
 :qid |DiemSystemandybpl.12109:45|
 :skolemid |343|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@30)))
 :qid |DiemSystemandybpl.12122:45|
 :skolemid |344|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31) true)
 :qid |DiemSystemandybpl.12135:55|
 :skolemid |345|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32) true)
 :qid |DiemSystemandybpl.12149:55|
 :skolemid |346|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@33)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@33))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@33))))
 :qid |DiemSystemandybpl.12169:38|
 :skolemid |347|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@34))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@34))))
 :qid |DiemSystemandybpl.12190:44|
 :skolemid |348|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))))
 :qid |DiemSystemandybpl.12241:53|
 :skolemid |349|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))))
 :qid |DiemSystemandybpl.12303:53|
 :skolemid |350|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@37) true)
 :qid |DiemSystemandybpl.12329:55|
 :skolemid |351|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@38) true)
 :qid |DiemSystemandybpl.12343:55|
 :skolemid |352|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@38))
)))
(assert (forall ((s@@39 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@39)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@39)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@39))))
 :qid |DiemSystemandybpl.12360:38|
 :skolemid |353|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@40) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@40)))
 :qid |DiemSystemandybpl.12374:48|
 :skolemid |354|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@41) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@41)))
 :qid |DiemSystemandybpl.12388:48|
 :skolemid |355|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@41))
)))
(assert (forall ((s@@42 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@42)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@42)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@42))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@42))))
 :qid |DiemSystemandybpl.12408:41|
 :skolemid |356|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@43) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@43)))
 :qid |DiemSystemandybpl.12423:53|
 :skolemid |357|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@44) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@44)))
 :qid |DiemSystemandybpl.12437:53|
 :skolemid |358|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@45)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@45)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@45))))
 :qid |DiemSystemandybpl.12454:60|
 :skolemid |359|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@46)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@46)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@46))))
 :qid |DiemSystemandybpl.12471:60|
 :skolemid |360|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@46))
)))
(assert (forall ((s@@47 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@47)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@47)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@47))))
 :qid |DiemSystemandybpl.12488:57|
 :skolemid |361|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@47))
)))
(assert (forall ((s@@48 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@48) true)
 :qid |DiemSystemandybpl.14689:68|
 :skolemid |362|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@48))
)))
(assert (forall ((s@@49 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@49)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@49)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@49))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@49))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@49))))
 :qid |DiemSystemandybpl.14711:66|
 :skolemid |363|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@50)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@50)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@50))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@50))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@50))))
 :qid |DiemSystemandybpl.14737:66|
 :skolemid |364|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@51)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@51)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@51))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@51))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@51))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@51))))
 :qid |DiemSystemandybpl.14766:56|
 :skolemid |365|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@51))
)))
(assert (forall ((s@@52 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@52)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@52)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@52))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@52))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@52))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@52))))
 :qid |DiemSystemandybpl.14796:56|
 :skolemid |366|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@52))
)))
(assert (forall ((s@@53 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@53) true)
 :qid |DiemSystemandybpl.15130:31|
 :skolemid |367|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@53))
)))
(assert (forall ((s@@54 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@54) true)
 :qid |DiemSystemandybpl.15474:31|
 :skolemid |368|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@54))
)))
(assert (forall ((s@@55 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@55)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@55)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@55))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@55))))
 :qid |DiemSystemandybpl.15493:35|
 :skolemid |369|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@55))
)))
(assert (forall ((s@@56 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@56) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@56)))
 :qid |DiemSystemandybpl.15914:45|
 :skolemid |370|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@56))
)))
(assert (forall ((s@@57 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@57)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@57))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@57))))
 :qid |DiemSystemandybpl.15933:50|
 :skolemid |371|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@57))
)))
(assert (forall ((s@@58 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@58) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@58)))
 :qid |DiemSystemandybpl.15948:52|
 :skolemid |372|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@58))
)))
(assert (forall ((s@@59 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@59) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@59)))
 :qid |DiemSystemandybpl.15972:38|
 :skolemid |373|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@59))
)))
(assert (forall ((s@@60 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@60) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@60)))
 :qid |DiemSystemandybpl.15986:39|
 :skolemid |374|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@60))
)))
(assert (forall ((s@@61 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@61)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@61)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@61))))
 :qid |DiemSystemandybpl.16013:65|
 :skolemid |375|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@61))
)))
(assert (forall ((s@@62 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@62)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@62)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@62))))
 :qid |DiemSystemandybpl.16398:60|
 :skolemid |376|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@62))
)))
(assert (forall ((s@@63 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@63)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@63)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@63))))
 :qid |DiemSystemandybpl.16415:66|
 :skolemid |377|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@63))
)))
(assert (forall ((s@@64 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@64)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@64)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@64))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@64))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@64))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@64))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@64))))
 :qid |DiemSystemandybpl.16444:50|
 :skolemid |378|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@65) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@65)))
 :qid |DiemSystemandybpl.16463:45|
 :skolemid |379|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@66)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@66)) true))
 :qid |DiemSystemandybpl.16782:87|
 :skolemid |380|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@67) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@67)))
 :qid |DiemSystemandybpl.16994:47|
 :skolemid |381|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@68)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@68)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@68))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@68))))
 :qid |DiemSystemandybpl.17014:58|
 :skolemid |382|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@68))
)))
(assert (forall ((s@@69 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@69) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@69)))
 :qid |DiemSystemandybpl.17029:39|
 :skolemid |383|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@69))
)))
(assert (forall ((s@@70 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@70)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@70)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@70))))
 :qid |DiemSystemandybpl.17051:58|
 :skolemid |384|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@70))
)))
(assert (forall ((s@@71 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@71)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@71)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@71))))
 :qid |DiemSystemandybpl.17068:58|
 :skolemid |385|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@71))
)))
(assert (forall ((s@@72 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@72) true)
 :qid |DiemSystemandybpl.17083:51|
 :skolemid |386|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@72))
)))
(assert (forall ((s@@73 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@73)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@73)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@73))))
 :qid |DiemSystemandybpl.17100:60|
 :skolemid |387|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@74)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@74)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@74))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@74))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@74))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@74))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@74))))
 :qid |DiemSystemandybpl.17398:47|
 :skolemid |388|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@75)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@75)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@75))))
 :qid |DiemSystemandybpl.17420:63|
 :skolemid |389|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@76) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@76)))
 :qid |DiemSystemandybpl.17435:57|
 :skolemid |390|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@76))
)))
(assert (forall ((s@@77 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@77) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@77)))
 :qid |DiemSystemandybpl.17448:55|
 :skolemid |391|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@77))
)))
(assert (forall ((s@@78 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@78) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@78)))
 :qid |DiemSystemandybpl.17462:55|
 :skolemid |392|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@79)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@79)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@79))))
 :qid |DiemSystemandybpl.17479:54|
 :skolemid |393|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@80) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@80)))
 :qid |DiemSystemandybpl.17493:55|
 :skolemid |394|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@81) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@81)))
 :qid |DiemSystemandybpl.17507:57|
 :skolemid |395|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@82)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@82)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@82))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@82))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@82))))
 :qid |DiemSystemandybpl.17529:56|
 :skolemid |396|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@83)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@83)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@83))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@83))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@83))))
 :qid |DiemSystemandybpl.17554:52|
 :skolemid |397|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@84) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@84)))
 :qid |DiemSystemandybpl.17570:54|
 :skolemid |398|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@85)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@85)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@85))))
 :qid |DiemSystemandybpl.18442:47|
 :skolemid |399|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@86)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@86)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@86))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@86))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@86))))
 :qid |DiemSystemandybpl.18466:47|
 :skolemid |400|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@87) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@87)))
 :qid |DiemSystemandybpl.18707:49|
 :skolemid |401|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@88)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@88)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@88))))
 :qid |DiemSystemandybpl.18750:49|
 :skolemid |402|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@89)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@89)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@89))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@89))))
 :qid |DiemSystemandybpl.18779:48|
 :skolemid |403|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@90) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@90)))
 :qid |DiemSystemandybpl.19074:47|
 :skolemid |404|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@90))
)))
(assert (forall ((v@@27 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_12182 v@@27)))
 (and (= (seq.len r@@0) (seq.len v@@27)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@0))) (= (seq.nth r@@0 i@@33) (seq.nth v@@27 (- (- (seq.len v@@27) i@@33) 1))))
 :qid |DiemSystemandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@33))
))))
 :qid |DiemSystemandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_12182 v@@27))
)))
(assert (forall ((v@@28 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_77633 v@@28)))
 (and (= (seq.len r@@1) (seq.len v@@28)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@1))) (= (seq.nth r@@1 i@@34) (seq.nth v@@28 (- (- (seq.len v@@28) i@@34) 1))))
 :qid |DiemSystemandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@34))
))))
 :qid |DiemSystemandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_77633 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_76648 v@@29)))
 (and (= (seq.len r@@2) (seq.len v@@29)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@2))) (= (seq.nth r@@2 i@@35) (seq.nth v@@29 (- (- (seq.len v@@29) i@@35) 1))))
 :qid |DiemSystemandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@35))
))))
 :qid |DiemSystemandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_76648 v@@29))
)))
(assert (forall ((v@@30 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_76845 v@@30)))
 (and (= (seq.len r@@3) (seq.len v@@30)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@3))) (= (seq.nth r@@3 i@@36) (seq.nth v@@30 (- (- (seq.len v@@30) i@@36) 1))))
 :qid |DiemSystemandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@36))
))))
 :qid |DiemSystemandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_76845 v@@30))
)))
(assert (forall ((v@@31 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_77042 v@@31)))
 (and (= (seq.len r@@4) (seq.len v@@31)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@4))) (= (seq.nth r@@4 i@@37) (seq.nth v@@31 (- (- (seq.len v@@31) i@@37) 1))))
 :qid |DiemSystemandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@37))
))))
 :qid |DiemSystemandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_77042 v@@31))
)))
(assert (forall ((v@@32 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_77830 v@@32)))
 (and (= (seq.len r@@5) (seq.len v@@32)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@5))) (= (seq.nth r@@5 i@@38) (seq.nth v@@32 (- (- (seq.len v@@32) i@@38) 1))))
 :qid |DiemSystemandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@38))
))))
 :qid |DiemSystemandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_77830 v@@32))
)))
(assert (forall ((v@@33 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@6 (ReverseVec_77436 v@@33)))
 (and (= (seq.len r@@6) (seq.len v@@33)) (forall ((i@@39 Int) ) (!  (=> (and (>= i@@39 0) (< i@@39 (seq.len r@@6))) (= (seq.nth r@@6 i@@39) (seq.nth v@@33 (- (- (seq.len v@@33) i@@39) 1))))
 :qid |DiemSystemandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@39))
))))
 :qid |DiemSystemandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_77436 v@@33))
)))
(assert (forall ((v@@34 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@7 (ReverseVec_77239 v@@34)))
 (and (= (seq.len r@@7) (seq.len v@@34)) (forall ((i@@40 Int) ) (!  (=> (and (>= i@@40 0) (< i@@40 (seq.len r@@7))) (= (seq.nth r@@7 i@@40) (seq.nth v@@34 (- (- (seq.len v@@34) i@@40) 1))))
 :qid |DiemSystemandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@40))
))))
 :qid |DiemSystemandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_77239 v@@34))
)))
(assert (forall ((v@@35 (Seq |T@#0|)) ) (! (let ((r@@8 (ReverseVec_76451 v@@35)))
 (and (= (seq.len r@@8) (seq.len v@@35)) (forall ((i@@41 Int) ) (!  (=> (and (>= i@@41 0) (< i@@41 (seq.len r@@8))) (= (seq.nth r@@8 i@@41) (seq.nth v@@35 (- (- (seq.len v@@35) i@@41) 1))))
 :qid |DiemSystemandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@41))
))))
 :qid |DiemSystemandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_76451 v@@35))
)))
(assert (forall ((|l#0| Bool) (i@@42 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@42) |l#0|)
 :qid |DiemSystemandybpl.245:54|
 :skolemid |480|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@42))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_86037|) (|l#1| |T@[$1_Event_EventHandle]Multiset_86037|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| |l#1| handle@@0))))
(Multiset_86037 (|lambda#3| (|v#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| |l#0@@0| handle@@0)) (|v#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DiemSystemandybpl.2733:13|
 :skolemid |481|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@36 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@36) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@36) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@36)))
 :qid |DiemSystemandybpl.124:29|
 :skolemid |482|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@36))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t24@0 () T@$Mutation_12329)
(declare-fun $t14@1 () T@$Mutation_116663)
(declare-fun $t24@1 () T@$Mutation_12329)
(declare-fun _$t2 () Int)
(declare-fun $t14@2 () T@$Mutation_116663)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_116168)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_117614)
(declare-fun $1_DiemSystem_CapabilityHolder_$memory () T@$Memory_117687)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 () T@$Memory_116168)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int T@$1_DiemTimestamp_CurrentTimeMicroseconds) |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ( ?x1 Int) ( ?x2 T@$1_DiemTimestamp_CurrentTimeMicroseconds)) (! (= (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemTimestamp_CurrentTimeMicroseconds)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?y1))) :weight 0)))
(declare-fun $t25 () Int)
(declare-fun _$t0 () T@$signer)
(declare-fun _$t1 () Int)
(declare-fun $t9 () Int)
(declare-fun $t18@0 () Bool)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun $t11@0 () Int)
(declare-fun $t20 () Int)
(declare-fun $t17@0 () Bool)
(declare-fun $t15@0 () Int)
(declare-fun $t23 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| () T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(declare-fun $abort_code@1 () Int)
(declare-fun $t14 () T@$Mutation_116663)
(declare-fun $t14@0 () T@$Mutation_116663)
(declare-fun $abort_code@0 () Int)
(declare-fun $t12 () Bool)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies () |T@[Int]Bool|)
(declare-fun $t11 () Int)
(declare-fun $t10 () Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t7 () T@$Mutation_116663)
(declare-fun $t24 () T@$Mutation_12329)
(push 1)
(set-info :boogie-vc-id $1_DiemTimestamp_update_global_time$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 279972) (let ((L5_correct  (=> (= $t24@0 ($Mutation_12329 (|l#$Mutation_116663| $t14@1) (seq.++ (|p#$Mutation_116663| $t14@1) (seq.unit 0)) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_116663| $t14@1)))) (=> (and (and (= $t24@1 ($Mutation_12329 (|l#$Mutation_12329| $t24@0) (|p#$Mutation_12329| $t24@0) _$t2)) (= $t14@2 ($Mutation_116663 (|l#$Mutation_116663| $t14@1) (|p#$Mutation_116663| $t14@1) ($1_DiemTimestamp_CurrentTimeMicroseconds (|v#$Mutation_12329| $t24@1))))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory) 173345816))) (= $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 ($Memory_116168 (|Store__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_116663| $t14@2)) true) (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_116663| $t14@2)) (|v#$Mutation_116663| $t14@2)))))) (and (=> (= (ControlFlow 0 201635) (- 0 280602)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory) 173345816)))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory) 173345816))) (=> (= $t25 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816))) (and (=> (= (ControlFlow 0 201635) (- 0 280635)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 201635) (- 0 280645)) (not (not (= (|$addr#$signer| _$t0) 0)))) (=> (not (not (= (|$addr#$signer| _$t0) 0))) (and (=> (= (ControlFlow 0 201635) (- 0 280659)) (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 201635) (- 0 280683)) (= $t25 _$t2)))))))))))))))
(let ((anon25_Then_correct  (=> (and $t18@0 (= (ControlFlow 0 201693) 201635)) L5_correct)))
(let ((anon26_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 201477) 201635)) L5_correct)))
(let ((L8_correct  (and (=> (= (ControlFlow 0 201473) (- 0 280727)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= (|$addr#$signer| _$t0) 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= (|$addr#$signer| _$t0) 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 201473) (- 0 280764)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11@0)) (and (not (= (|$addr#$signer| _$t0) 0)) (= 2 $t11@0))) (ite (= _$t1 0)  (not (= $t9 _$t2))  (and (>= $t9 _$t2) (= 7 $t11@0)))))))))
(let ((anon25_Else_correct  (=> (and (and (not $t18@0) (= $t20 $t20)) (and (= $t11@0 $t20) (= (ControlFlow 0 201689) 201473))) L8_correct)))
(let ((anon24_Then_correct  (=> $t17@0 (=> (and (= $t18@0 (= $t15@0 _$t2)) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t20) (= $t20 7)) (and (= $t20 $t20) (= $t18@0 $t18@0))) (and (=> (= (ControlFlow 0 201673) 201693) anon25_Then_correct) (=> (= (ControlFlow 0 201673) 201689) anon25_Else_correct)))))))
(let ((anon26_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= $t23 $t23)) (and (= $t11@0 $t23) (= (ControlFlow 0 201357) 201473))) L8_correct)))
(let ((anon24_Else$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t23) (= $t23 7)) (and (= $t23 $t23) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 201341) 201477) anon26_Then_correct) (=> (= (ControlFlow 0 201341) 201357) anon26_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t15@0 _$t2)) (= (ControlFlow 0 201305) 201341)) anon24_Else$1_correct)))
(let ((anon24_Else_correct  (=> (and (not $t17@0) (= (ControlFlow 0 201311) 201305)) inline$$Lt$0$anon0_correct)))
(let ((anon23_Else_correct  (=> (not $abort_flag@0) (=> (and (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| (|v#$Mutation_116663| $t14@1)) (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0|)) (=> (and (and (= $t15@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_116663| $t14@1))) (= $t15@0 $t15@0)) (and (|$IsValid'address'| 0) (= $t17@0 (= _$t1 0)))) (and (=> (= (ControlFlow 0 201259) 201673) anon24_Then_correct) (=> (= (ControlFlow 0 201259) 201311) anon24_Else_correct)))))))
(let ((anon23_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t11@0 $abort_code@1) (= (ControlFlow 0 201707) 201473))) L8_correct)))
(let ((anon22_Then$1_correct  (=> (= $t14@1 $t14) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 201759) 201707) anon23_Then_correct) (=> (= (ControlFlow 0 201759) 201259) anon23_Else_correct))))))
(let ((anon22_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (ControlFlow 0 201757) 201759)) anon22_Then$1_correct)))
(let ((anon22_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (=> (and (and (= $t14@0 ($Mutation_116663 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t14@1 $t14@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 201213) 201707) anon23_Then_correct) (=> (= (ControlFlow 0 201213) 201259) anon23_Else_correct))))))
(let ((anon21_Else_correct  (=> (and (not $t12) (|$IsValid'address'| 173345816)) (and (=> (= (ControlFlow 0 201191) (- 0 280270)) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816)) (=> (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816) (and (=> (= (ControlFlow 0 201191) 201757) anon22_Then_correct) (=> (= (ControlFlow 0 201191) 201213) anon22_Else_correct)))))))
(let ((anon21_Then_correct  (=> $t12 (=> (and (and (and (not (= (|$addr#$signer| _$t0) 0)) (= 2 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 201789) 201473))) L8_correct))))
(let ((anon20_Else_correct  (=> (and (not $t10) (= $t12  (not (= (|$addr#$signer| _$t0) 0)))) (and (=> (= (ControlFlow 0 201171) 201789) anon21_Then_correct) (=> (= (ControlFlow 0 201171) 201191) anon21_Else_correct)))))
(let ((anon20_Then_correct  (=> $t10 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 201815) 201473))) L8_correct))))
(let ((anon0$1_correct  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0)) (|$IsValid'address'| _$t1)) (=> (and (and (and (|$IsValid'u64'| _$t2) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |DiemSystemandybpl.3943:20|
 :skolemid |113|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
))) (and (= $t9 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= $t10  (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 201149) 201815) anon20_Then_correct) (=> (= (ControlFlow 0 201149) 201171) anon20_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_86037| stream@@0) 0) (forall ((v@@37 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@0) v@@37) 0)
 :qid |DiemSystemandybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemandybpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 201037) 201149)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_116663| $t7)) 0) (= (seq.len (|p#$Mutation_116663| $t14)) 0)) (and (= (seq.len (|p#$Mutation_12329| $t24)) 0) (= (ControlFlow 0 201047) 201037))) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 279972) 201047) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@0 () T@$signer)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_118068)
(declare-fun $t2 () Int)
(declare-fun $t6 () Bool)
(declare-fun $t3 () Bool)
(declare-fun $t1 () Bool)
(declare-fun $1_Roles_RoleId_$memory@2 () T@$Memory_118068)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1 () T@$Memory_118068)
(declare-fun $1_Roles_RoleId_$memory@0 () T@$Memory_118068)
(declare-fun |Store__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int T@$1_Roles_RoleId) |T@[Int]$1_Roles_RoleId|)
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Roles_RoleId_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Roles_RoleId'@0| () T@$1_Roles_RoleId)
(declare-fun $t5 () Int)
(declare-fun $1_Roles_RoleId_$modifies () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_grant_diem_root_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 281015) (let ((L2_correct  (and (=> (= (ControlFlow 0 202725) (- 0 281761)) (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0@@0) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0@@0) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (= (ControlFlow 0 202725) (- 0 281792)) (or (or (or (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t2)) (and (not (= (|$addr#$signer| _$t0@@0) 173345816)) (= 2 $t2))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0)) (= 6 $t2))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t2))))))))
(let ((anon13_Then_correct  (=> $t6 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0)) (= 6 $t2)) (and (= $t2 $t2) (= (ControlFlow 0 202613) 202725))) L2_correct))))
(let ((anon12_Then_correct  (=> $t3 (=> (and (and (not (= (|$addr#$signer| _$t0@@0) 173345816)) (= 2 $t2)) (and (= $t2 $t2) (= (ControlFlow 0 202755) 202725))) L2_correct))))
(let ((anon11_Then_correct  (=> $t1 (=> (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t2)) (and (= $t2 $t2) (= (ControlFlow 0 202781) 202725))) L2_correct))))
(let ((anon9_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@0)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@0))) 0)) (and (=> (= (ControlFlow 0 202571) (- 0 281407)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 202571) (- 0 281417)) (not (not (= (|$addr#$signer| _$t0@@0) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@0) 173345816))) (and (=> (= (ControlFlow 0 202571) (- 0 281431)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0))) (and (=> (= (ControlFlow 0 202571) (- 0 281442)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 202571) (- 0 281452)) (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@0)) (and (=> (= (ControlFlow 0 202571) (- 0 281461)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@0))) 0)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@0))) 0) (and (=> (= (ControlFlow 0 202571) (- 0 281476)) (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@0)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@0)) 1))))
 :qid |DiemSystemandybpl.4536:15|
 :skolemid |117|
))) (=> (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@1)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@1)) 1))))
 :qid |DiemSystemandybpl.4536:15|
 :skolemid |117|
)) (and (=> (= (ControlFlow 0 202571) (- 0 281523)) (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@2)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@2)) 3))))
 :qid |DiemSystemandybpl.4540:15|
 :skolemid |118|
))) (=> (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@3)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@3)) 3))))
 :qid |DiemSystemandybpl.4540:15|
 :skolemid |118|
)) (and (=> (= (ControlFlow 0 202571) (- 0 281570)) (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@4)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@4)) 4))))
 :qid |DiemSystemandybpl.4544:15|
 :skolemid |119|
))) (=> (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@5)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@5)) 4))))
 :qid |DiemSystemandybpl.4544:15|
 :skolemid |119|
)) (and (=> (= (ControlFlow 0 202571) (- 0 281617)) (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@6)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@6)) 2))))
 :qid |DiemSystemandybpl.4548:15|
 :skolemid |120|
))) (=> (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@7)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@7)) 2))))
 :qid |DiemSystemandybpl.4548:15|
 :skolemid |120|
)) (and (=> (= (ControlFlow 0 202571) (- 0 281664)) (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@8)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@8)) 5))))
 :qid |DiemSystemandybpl.4552:15|
 :skolemid |121|
))) (=> (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@9)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@9)) 5))))
 :qid |DiemSystemandybpl.4552:15|
 :skolemid |121|
)) (=> (= (ControlFlow 0 202571) (- 0 281711)) (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@10)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@10)) 6))))
 :qid |DiemSystemandybpl.4556:15|
 :skolemid |122|
))))))))))))))))))))))))))))
(let ((anon14_Else_correct  (=> (and (and (not |$temp_0'bool'@0|) (= $1_Roles_RoleId_$memory@1 ($Memory_118068 (|Store__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0) false) (|contents#$Memory_118068| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@1) (= (ControlFlow 0 202165) 202571))) anon9_correct)))
(let ((anon14_Then_correct  (=> (and (and |$temp_0'bool'@0| (= $1_Roles_RoleId_$memory@0 ($Memory_118068 (|Store__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0) |$temp_0'$1_Roles_RoleId'@0|)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@0) (= (ControlFlow 0 202585) 202571))) anon9_correct)))
(let ((anon13_Else_correct  (=> (not $t6) (and (=> (= (ControlFlow 0 202151) 202585) anon14_Then_correct) (=> (= (ControlFlow 0 202151) 202165) anon14_Else_correct)))))
(let ((anon12_Else_correct  (=> (not $t3) (=> (and (|$IsValid'u64'| 0) (= $t5 (|$addr#$signer| _$t0@@0))) (and (=> (= (ControlFlow 0 202145) (- 0 281257)) (=> (= 0 0) (= $t5 173345816))) (=> (=> (= 0 0) (= $t5 173345816)) (and (=> (= (ControlFlow 0 202145) (- 0 281273)) (=> (= 0 1) (= $t5 186537453))) (=> (=> (= 0 1) (= $t5 186537453)) (and (=> (= (ControlFlow 0 202145) (- 0 281289)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies (|$addr#$signer| _$t0@@0))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies (|$addr#$signer| _$t0@@0)) (=> (= $t6 (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0))) (and (=> (= (ControlFlow 0 202145) 202613) anon13_Then_correct) (=> (= (ControlFlow 0 202145) 202151) anon13_Else_correct)))))))))))))
(let ((anon11_Else_correct  (=> (and (not $t1) (= $t3  (not (= (|$addr#$signer| _$t0@@0) 173345816)))) (and (=> (= (ControlFlow 0 202067) 202755) anon12_Then_correct) (=> (= (ControlFlow 0 202067) 202145) anon12_Else_correct)))))
(let ((anon0$1_correct@@0  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@0)) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@0))
 :qid |DiemSystemandybpl.4350:20|
 :skolemid |115|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@0))
))) (=> (and (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $a_0@@1)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@1))
 :qid |DiemSystemandybpl.4354:20|
 :skolemid |116|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $a_0@@1))
)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies (|$addr#$signer| _$t0@@0))) (and (= _$t0@@0 _$t0@@0) (= $t1  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 202045) 202781) anon11_Then_correct) (=> (= (ControlFlow 0 202045) 202067) anon11_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_86037| stream@@1) 0) (forall ((v@@38 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@1) v@@38) 0)
 :qid |DiemSystemandybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemandybpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 201937) 202045)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 281015) 201937) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun $1_Roles_RoleId_$memory@1@@0 () T@$Memory_118068)
(declare-fun _$t0@@1 () T@$signer)
(declare-fun _$t1@@0 () Int)
(declare-fun $t10@0 () Int)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $1_Roles_RoleId_$memory@0@@0 () T@$Memory_118068)
(declare-fun $t11@0@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $1_Roles_RoleId_$modifies@@0 () |T@[Int]Bool|)
(declare-fun $t9@@0 () Int)
(declare-fun $t6@0 () Bool)
(declare-fun $t4 () Int)
(declare-fun $t5@@0 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_grant_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 281870) (let ((anon12_Else_correct@@0  (=> (not $abort_flag@0@@0) (and (=> (= (ControlFlow 0 203351) (- 0 282305)) (let (($range_0 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@11 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@11))))))))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((i1 $i_1))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@1@@0) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@12 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@12)))) i1))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@1@@0) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@12 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@12)))) i1)))) 3))))
 :qid |DiemSystemandybpl.4742:146|
 :skolemid |125|
)))) (=> (let (($range_0@@0 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@13 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@13))))))))
(forall (($i_1@@0 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@0) (let ((i1@@0 $i_1@@0))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@1@@0) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@14 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@14)))) i1@@0))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@1@@0) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@14 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@14)))) i1@@0)))) 3))))
 :qid |DiemSystemandybpl.4742:146|
 :skolemid |125|
))) (and (=> (= (ControlFlow 0 203351) (- 0 282351)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1))) (and (=> (= (ControlFlow 0 203351) (- 0 282362)) (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@1@@0) (|$addr#$signer| _$t0@@1))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@1@@0) (|$addr#$signer| _$t0@@1)) (=> (= (ControlFlow 0 203351) (- 0 282371)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@1@@0) (|$addr#$signer| _$t0@@1))) _$t1@@0)))))))))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 203177) (- 0 282275)) (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1)) (=> (= (ControlFlow 0 203177) (- 0 282281)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1)) (= 6 $t10@0)))))))
(let ((anon12_Then_correct@@0  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= $t10@0 $abort_code@1@@0) (= (ControlFlow 0 203365) 203177))) L3_correct)))
(let ((anon11_Then$1_correct  (=> (= $1_Roles_RoleId_$memory@1@@0 $1_Roles_RoleId_$memory) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 203417) 203365) anon12_Then_correct@@0) (=> (= (ControlFlow 0 203417) 203351) anon12_Else_correct@@0))))))
(let ((anon11_Then_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1)) (= (ControlFlow 0 203415) 203417)) anon11_Then$1_correct)))
(let ((anon11_Else_correct@@0  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1))) (=> (and (and (= $1_Roles_RoleId_$memory@0@@0 ($Memory_118068 (|Store__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1) $t11@0@@0))) (= $1_Roles_RoleId_$memory@1@@0 $1_Roles_RoleId_$memory@0@@0)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 203260) 203365) anon12_Then_correct@@0) (=> (= (ControlFlow 0 203260) 203351) anon12_Else_correct@@0))))))
(let ((anon10_Then_correct  (=> (and inline$$Not$0$dst@1 (= $t11@0@@0 ($1_Roles_RoleId _$t1@@0))) (and (=> (= (ControlFlow 0 203238) (- 0 282114)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 (|$addr#$signer| _$t0@@1))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 (|$addr#$signer| _$t0@@1)) (=> (let (($range_0@@1 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@15 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@15))))))))
(forall (($i_1@@1 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@1) (let ((i1@@1 $i_1@@1))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@16 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@16)))) i1@@1))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@16 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@16)))) i1@@1)))) 3))))
 :qid |DiemSystemandybpl.4721:151|
 :skolemid |124|
))) (and (=> (= (ControlFlow 0 203238) 203415) anon11_Then_correct@@0) (=> (= (ControlFlow 0 203238) 203260) anon11_Else_correct@@0))))))))
(let ((anon10_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= $t9@@0 $t9@@0)) (and (= $t10@0 $t9@@0) (= (ControlFlow 0 203145) 203177))) L3_correct)))
(let ((anon0$2_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t9@@0) (= $t9@@0 6)) (and (= $t9@@0 $t9@@0) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 203129) 203238) anon10_Then_correct) (=> (= (ControlFlow 0 203129) 203145) anon10_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t6@0)) (= (ControlFlow 0 203093) 203129)) anon0$2_correct)))
(let ((anon0$1_correct@@1  (=> (|$IsValid'address'| (|$addr#$signer| _$t0@@1)) (=> (and (and (|$IsValid'u64'| _$t1@@0) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $a_0@@2)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@2))
 :qid |DiemSystemandybpl.4617:20|
 :skolemid |123|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $a_0@@2))
))) (and (= $t4 (|$addr#$signer| _$t0@@1)) (=> (= _$t1@@0 0) (= $t4 173345816)))) (=> (and (and (and (=> (= _$t1@@0 1) (= $t4 186537453)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 (|$addr#$signer| _$t0@@1))) (and (= _$t0@@1 _$t0@@1) (= _$t1@@0 _$t1@@0))) (and (and (|$IsValid'address'| $t5@@0) (= $t5@@0 (|$addr#$signer| _$t0@@1))) (and (= $t6@0 (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t5@@0)) (= (ControlFlow 0 203099) 203093)))) inline$$Not$0$anon0_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@3 T@$1_Event_EventHandle) ) (! (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $es) handle@@3)))
 (and (= (|l#Multiset_86037| stream@@2) 0) (forall ((v@@39 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@2) v@@39) 0)
 :qid |DiemSystemandybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemandybpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 202931) 203099)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 281870) 202931) inline$$InitEventStore$0$anon0_correct@@1)))
anon0_correct@@1))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
