(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :pre-skolem-quant true)
(set-option :no-dt-share-sel true)
(set-option :ee-mode central)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_93292 0)) ((($Memory_93292 (|domain#$Memory_93292| |T@[Int]Bool|) (|contents#$Memory_93292| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_102484 0)) ((($Memory_102484 (|domain#$Memory_102484| |T@[Int]Bool|) (|contents#$Memory_102484| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_102413 0)) ((($Memory_102413 (|domain#$Memory_102413| |T@[Int]Bool|) (|contents#$Memory_102413| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_102170 0)) ((($Memory_102170 (|domain#$Memory_102170| |T@[Int]Bool|) (|contents#$Memory_102170| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_102099 0)) ((($Memory_102099 (|domain#$Memory_102099| |T@[Int]Bool|) (|contents#$Memory_102099| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_102028 0)) ((($Memory_102028 (|domain#$Memory_102028| |T@[Int]Bool|) (|contents#$Memory_102028| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_131999 0)) ((($Memory_131999 (|domain#$Memory_131999| |T@[Int]Bool|) (|contents#$Memory_131999| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_HaltAllTransactions 0)) ((($1_DiemTransactionPublishingOption_HaltAllTransactions (|$dummy_field#$1_DiemTransactionPublishingOption_HaltAllTransactions| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions| 0)
(declare-datatypes ((T@$Memory_129181 0)) ((($Memory_129181 (|domain#$Memory_129181| |T@[Int]Bool|) (|contents#$Memory_129181| |T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_101860 0)) ((($Memory_101860 (|domain#$Memory_101860| |T@[Int]Bool|) (|contents#$Memory_101860| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_127839 0)) ((($Memory_127839 (|domain#$Memory_127839| |T@[Int]Bool|) (|contents#$Memory_127839| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_126630 0)) ((($Memory_126630 (|domain#$Memory_126630| |T@[Int]Bool|) (|contents#$Memory_126630| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_126566 0)) ((($Memory_126566 (|domain#$Memory_126566| |T@[Int]Bool|) (|contents#$Memory_126566| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_126166 0)) ((($Memory_126166 (|domain#$Memory_126166| |T@[Int]Bool|) (|contents#$Memory_126166| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_126533 0)) ((($Memory_126533 (|domain#$Memory_126533| |T@[Int]Bool|) (|contents#$Memory_126533| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_123008 0)) ((($Memory_123008 (|domain#$Memory_123008| |T@[Int]Bool|) (|contents#$Memory_123008| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_122721 0)) ((($Memory_122721 (|domain#$Memory_122721| |T@[Int]Bool|) (|contents#$Memory_122721| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_101692 0)) ((($Memory_101692 (|domain#$Memory_101692| |T@[Int]Bool|) (|contents#$Memory_101692| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_101453 0)) ((($Memory_101453 (|domain#$Memory_101453| |T@[Int]Bool|) (|contents#$Memory_101453| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_102342 0)) ((($Memory_102342 (|domain#$Memory_102342| |T@[Int]Bool|) (|contents#$Memory_102342| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_111873 0)) ((($Memory_111873 (|domain#$Memory_111873| |T@[Int]Bool|) (|contents#$Memory_111873| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_111809 0)) ((($Memory_111809 (|domain#$Memory_111809| |T@[Int]Bool|) (|contents#$Memory_111809| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_112186 0)) ((($Memory_112186 (|domain#$Memory_112186| |T@[Int]Bool|) (|contents#$Memory_112186| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_112099 0)) ((($Memory_112099 (|domain#$Memory_112099| |T@[Int]Bool|) (|contents#$Memory_112099| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_131914 0)) ((($Memory_131914 (|domain#$Memory_131914| |T@[Int]Bool|) (|contents#$Memory_131914| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_115682 0)) ((($Memory_115682 (|domain#$Memory_115682| |T@[Int]Bool|) (|contents#$Memory_115682| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_101524 0)) ((($Memory_101524 (|domain#$Memory_101524| |T@[Int]Bool|) (|contents#$Memory_101524| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_131854 0)) ((($Memory_131854 (|domain#$Memory_131854| |T@[Int]Bool|) (|contents#$Memory_131854| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_115591 0)) ((($Memory_115591 (|domain#$Memory_115591| |T@[Int]Bool|) (|contents#$Memory_115591| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_101763 0)) ((($Memory_101763 (|domain#$Memory_101763| |T@[Int]Bool|) (|contents#$Memory_101763| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_101608 0)) ((($Memory_101608 (|domain#$Memory_101608| |T@[Int]Bool|) (|contents#$Memory_101608| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_101369 0)) ((($Memory_101369 (|domain#$Memory_101369| |T@[Int]Bool|) (|contents#$Memory_101369| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_107689 0)) ((($Memory_107689 (|domain#$Memory_107689| |T@[Int]Bool|) (|contents#$Memory_107689| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_107602 0)) ((($Memory_107602 (|domain#$Memory_107602| |T@[Int]Bool|) (|contents#$Memory_107602| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_107515 0)) ((($Memory_107515 (|domain#$Memory_107515| |T@[Int]Bool|) (|contents#$Memory_107515| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_107428 0)) ((($Memory_107428 (|domain#$Memory_107428| |T@[Int]Bool|) (|contents#$Memory_107428| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_107341 0)) ((($Memory_107341 (|domain#$Memory_107341| |T@[Int]Bool|) (|contents#$Memory_107341| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_107254 0)) ((($Memory_107254 (|domain#$Memory_107254| |T@[Int]Bool|) (|contents#$Memory_107254| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_101214 0)) ((($Memory_101214 (|domain#$Memory_101214| |T@[Int]Bool|) (|contents#$Memory_101214| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_106521 0)) ((($Memory_106521 (|domain#$Memory_106521| |T@[Int]Bool|) (|contents#$Memory_106521| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_101055 0)) ((($Memory_101055 (|domain#$Memory_101055| |T@[Int]Bool|) (|contents#$Memory_101055| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_100649 0)) ((($Memory_100649 (|domain#$Memory_100649| |T@[Int]Bool|) (|contents#$Memory_100649| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_102568 0)) ((($Memory_102568 (|domain#$Memory_102568| |T@[Int]Bool|) (|contents#$Memory_102568| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemConsensusConfig_DiemConsensusConfig 0)) ((($1_DiemConsensusConfig_DiemConsensusConfig (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_106388 0)) ((($Memory_106388 (|domain#$Memory_106388| |T@[Int]Bool|) (|contents#$Memory_106388| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_101944 0)) ((($Memory_101944 (|domain#$Memory_101944| |T@[Int]Bool|) (|contents#$Memory_101944| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_101285 0)) ((($Memory_101285 (|domain#$Memory_101285| |T@[Int]Bool|) (|contents#$Memory_101285| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_100962 0)) ((($Memory_100962 (|domain#$Memory_100962| |T@[Int]Bool|) (|contents#$Memory_100962| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_131660 0)) ((($Memory_131660 (|domain#$Memory_131660| |T@[Int]Bool|) (|contents#$Memory_131660| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_101141 0)) ((($Memory_101141 (|domain#$Memory_101141| |T@[Int]Bool|) (|contents#$Memory_101141| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_105717 0)) ((($Memory_105717 (|domain#$Memory_105717| |T@[Int]Bool|) (|contents#$Memory_105717| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_105147 0)) ((($Memory_105147 (|domain#$Memory_105147| |T@[Int]Bool|) (|contents#$Memory_105147| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_100775 0)) ((($Memory_100775 (|domain#$Memory_100775| |T@[Int]Bool|) (|contents#$Memory_100775| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_100097 0)) ((($Memory_100097 (|domain#$Memory_100097| |T@[Int]Bool|) (|contents#$Memory_100097| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_73622 0)) (((Multiset_73622 (|v#Multiset_73622| |T@[$EventRep]Int|) (|l#Multiset_73622| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_73622| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_73622|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_152278 0)) ((($Mutation_152278 (|l#$Mutation_152278| T@$Location) (|p#$Mutation_152278| (Seq Int)) (|v#$Mutation_152278| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_152234 0)) ((($Mutation_152234 (|l#$Mutation_152234| T@$Location) (|p#$Mutation_152234| (Seq Int)) (|v#$Mutation_152234| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_141398 0)) ((($Mutation_141398 (|l#$Mutation_141398| T@$Location) (|p#$Mutation_141398| (Seq Int)) (|v#$Mutation_141398| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-datatypes ((T@$Mutation_32172 0)) ((($Mutation_32172 (|l#$Mutation_32172| T@$Location) (|p#$Mutation_32172| (Seq Int)) (|v#$Mutation_32172| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_120995 0)) ((($Mutation_120995 (|l#$Mutation_120995| T@$Location) (|p#$Mutation_120995| (Seq Int)) (|v#$Mutation_120995| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_110370 0)) ((($Mutation_110370 (|l#$Mutation_110370| T@$Location) (|p#$Mutation_110370| (Seq Int)) (|v#$Mutation_110370| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_100592 0)) ((($Mutation_100592 (|l#$Mutation_100592| T@$Location) (|p#$Mutation_100592| (Seq Int)) (|v#$Mutation_100592| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_93923 0)) ((($Mutation_93923 (|l#$Mutation_93923| T@$Location) (|p#$Mutation_93923| (Seq Int)) (|v#$Mutation_93923| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_11233 0)) ((($Mutation_11233 (|l#$Mutation_11233| T@$Location) (|p#$Mutation_11233| (Seq Int)) (|v#$Mutation_11233| Int) ) ) ))
(declare-datatypes ((T@$Mutation_89299 0)) ((($Mutation_89299 (|l#$Mutation_89299| T@$Location) (|p#$Mutation_89299| (Seq Int)) (|v#$Mutation_89299| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_88553 0)) ((($Mutation_88553 (|l#$Mutation_88553| T@$Location) (|p#$Mutation_88553| (Seq Int)) (|v#$Mutation_88553| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_87149 0)) ((($Mutation_87149 (|l#$Mutation_87149| T@$Location) (|p#$Mutation_87149| (Seq Int)) (|v#$Mutation_87149| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_86403 0)) ((($Mutation_86403 (|l#$Mutation_86403| T@$Location) (|p#$Mutation_86403| (Seq Int)) (|v#$Mutation_86403| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_84999 0)) ((($Mutation_84999 (|l#$Mutation_84999| T@$Location) (|p#$Mutation_84999| (Seq Int)) (|v#$Mutation_84999| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_84253 0)) ((($Mutation_84253 (|l#$Mutation_84253| T@$Location) (|p#$Mutation_84253| (Seq Int)) (|v#$Mutation_84253| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-datatypes ((T@$Mutation_82849 0)) ((($Mutation_82849 (|l#$Mutation_82849| T@$Location) (|p#$Mutation_82849| (Seq Int)) (|v#$Mutation_82849| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_82103 0)) ((($Mutation_82103 (|l#$Mutation_82103| T@$Location) (|p#$Mutation_82103| (Seq Int)) (|v#$Mutation_82103| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_80699 0)) ((($Mutation_80699 (|l#$Mutation_80699| T@$Location) (|p#$Mutation_80699| (Seq Int)) (|v#$Mutation_80699| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_79953 0)) ((($Mutation_79953 (|l#$Mutation_79953| T@$Location) (|p#$Mutation_79953| (Seq Int)) (|v#$Mutation_79953| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_78549 0)) ((($Mutation_78549 (|l#$Mutation_78549| T@$Location) (|p#$Mutation_78549| (Seq Int)) (|v#$Mutation_78549| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_77803 0)) ((($Mutation_77803 (|l#$Mutation_77803| T@$Location) (|p#$Mutation_77803| (Seq Int)) (|v#$Mutation_77803| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_76361 0)) ((($Mutation_76361 (|l#$Mutation_76361| T@$Location) (|p#$Mutation_76361| (Seq Int)) (|v#$Mutation_76361| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_75615 0)) ((($Mutation_75615 (|l#$Mutation_75615| T@$Location) (|p#$Mutation_75615| (Seq Int)) (|v#$Mutation_75615| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| ((Seq T@$1_VASPDomain_VASPDomain)) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| ((Seq T@$1_VASPDomain_VASPDomain) T@$1_VASPDomain_VASPDomain) Int)
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_73622_| (|T@[$1_Event_EventHandle]Multiset_73622| T@$1_Event_EventHandle) T@Multiset_73622)
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
(declare-fun |$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| (T@$1_Diem_ToXDXExchangeRateUpdateEvent) Bool)
(declare-fun |$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (T@$1_AccountLimits_AccountLimitMutationCapability) Bool)
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| (|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| (|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| (|T@$1_AccountLimits_Window'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| (|T@$1_AccountLimits_Window'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
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
(declare-fun |$IsValid'$1_DiemTransactionPublishingOption_HaltAllTransactions'| (T@$1_DiemTransactionPublishingOption_HaltAllTransactions) Bool)
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
(declare-fun ReverseVec_11086 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_66841 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_66053 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_66250 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_66447 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_67038 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_66644 ((Seq T@$1_VASPDomain_VASPDomain)) (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun ReverseVec_65856 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_73622| |T@[$1_Event_EventHandle]Multiset_73622|) |T@[$1_Event_EventHandle]Multiset_73622|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DiemTransactionPublishingOptionbpl.165:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DiemTransactionPublishingOptionbpl.169:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DiemTransactionPublishingOptionbpl.173:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DiemTransactionPublishingOptionbpl.177:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DiemTransactionPublishingOptionbpl.181:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DiemTransactionPublishingOptionbpl.191:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DiemTransactionPublishingOptionbpl.457:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DiemTransactionPublishingOptionbpl.466:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |DiemTransactionPublishingOptionbpl.595:13|
 :skolemid |15|
))))
 :qid |DiemTransactionPublishingOptionbpl.593:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |DiemTransactionPublishingOptionbpl.600:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |DiemTransactionPublishingOptionbpl.608:17|
 :skolemid |18|
)))))
 :qid |DiemTransactionPublishingOptionbpl.604:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |DiemTransactionPublishingOptionbpl.775:13|
 :skolemid |20|
))))
 :qid |DiemTransactionPublishingOptionbpl.773:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |DiemTransactionPublishingOptionbpl.780:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |DiemTransactionPublishingOptionbpl.788:17|
 :skolemid |23|
)))))
 :qid |DiemTransactionPublishingOptionbpl.784:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |DiemTransactionPublishingOptionbpl.955:13|
 :skolemid |25|
))))
 :qid |DiemTransactionPublishingOptionbpl.953:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |DiemTransactionPublishingOptionbpl.960:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |DiemTransactionPublishingOptionbpl.968:17|
 :skolemid |28|
)))))
 :qid |DiemTransactionPublishingOptionbpl.964:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |DiemTransactionPublishingOptionbpl.1135:13|
 :skolemid |30|
))))
 :qid |DiemTransactionPublishingOptionbpl.1133:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |DiemTransactionPublishingOptionbpl.1140:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |DiemTransactionPublishingOptionbpl.1148:17|
 :skolemid |33|
)))))
 :qid |DiemTransactionPublishingOptionbpl.1144:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_VASPDomain_VASPDomain'| (seq.nth v@@12 i@@12)))
 :qid |DiemTransactionPublishingOptionbpl.1315:13|
 :skolemid |35|
))))
 :qid |DiemTransactionPublishingOptionbpl.1313:50|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12))
)))
(assert (forall ((v@@13 (Seq T@$1_VASPDomain_VASPDomain)) (e@@3 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@13 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |DiemTransactionPublishingOptionbpl.1320:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |DiemTransactionPublishingOptionbpl.1328:17|
 :skolemid |38|
)))))
 :qid |DiemTransactionPublishingOptionbpl.1324:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@14 i@@15)))
 :qid |DiemTransactionPublishingOptionbpl.1495:13|
 :skolemid |40|
))))
 :qid |DiemTransactionPublishingOptionbpl.1493:51|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14))
)))
(assert (forall ((v@@15 (Seq T@$1_ValidatorConfig_Config)) (e@@4 T@$1_ValidatorConfig_Config) ) (! (let ((i@@16 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |DiemTransactionPublishingOptionbpl.1500:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |DiemTransactionPublishingOptionbpl.1508:17|
 :skolemid |43|
)))))
 :qid |DiemTransactionPublishingOptionbpl.1504:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'vec'u8''| (seq.nth v@@16 i@@18)))
 :qid |DiemTransactionPublishingOptionbpl.1675:13|
 :skolemid |45|
))))
 :qid |DiemTransactionPublishingOptionbpl.1673:33|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@16))
)))
(assert (forall ((v@@17 (Seq (Seq Int))) (e@@5 (Seq Int)) ) (! (let ((i@@19 (|$IndexOfVec'vec'u8''| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |DiemTransactionPublishingOptionbpl.1680:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |DiemTransactionPublishingOptionbpl.1688:17|
 :skolemid |48|
)))))
 :qid |DiemTransactionPublishingOptionbpl.1684:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'address'| (seq.nth v@@18 i@@21)))
 :qid |DiemTransactionPublishingOptionbpl.1855:13|
 :skolemid |50|
))))
 :qid |DiemTransactionPublishingOptionbpl.1853:33|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'address''| v@@18))
)))
(assert (forall ((v@@19 (Seq Int)) (e@@6 Int) ) (! (let ((i@@22 (|$IndexOfVec'address'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |DiemTransactionPublishingOptionbpl.1860:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |DiemTransactionPublishingOptionbpl.1868:17|
 :skolemid |53|
)))))
 :qid |DiemTransactionPublishingOptionbpl.1864:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'address'| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'u8'| (seq.nth v@@20 i@@24)))
 :qid |DiemTransactionPublishingOptionbpl.2035:13|
 :skolemid |55|
))))
 :qid |DiemTransactionPublishingOptionbpl.2033:28|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'u8''| v@@20))
)))
(assert (forall ((v@@21 (Seq Int)) (e@@7 Int) ) (! (let ((i@@25 (|$IndexOfVec'u8'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |DiemTransactionPublishingOptionbpl.2040:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |DiemTransactionPublishingOptionbpl.2048:17|
 :skolemid |58|
)))))
 :qid |DiemTransactionPublishingOptionbpl.2044:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'u8'| v@@21 e@@7))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |DiemTransactionPublishingOptionbpl.2221:15|
 :skolemid |60|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |DiemTransactionPublishingOptionbpl.2237:15|
 :skolemid |61|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DiemTransactionPublishingOptionbpl.2308:15|
 :skolemid |62|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DiemTransactionPublishingOptionbpl.2311:15|
 :skolemid |63|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_73622_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_73622| stream) 0) (forall ((v@@22 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_73622| stream) v@@22) 0)
 :qid |DiemTransactionPublishingOptionbpl.134:13|
 :skolemid |2|
))))
 :qid |DiemTransactionPublishingOptionbpl.2372:13|
 :skolemid |64|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |DiemTransactionPublishingOptionbpl.2413:80|
 :skolemid |66|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |DiemTransactionPublishingOptionbpl.2419:15|
 :skolemid |67|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |DiemTransactionPublishingOptionbpl.2469:82|
 :skolemid |68|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |DiemTransactionPublishingOptionbpl.2475:15|
 :skolemid |69|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |DiemTransactionPublishingOptionbpl.2525:80|
 :skolemid |70|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |DiemTransactionPublishingOptionbpl.2531:15|
 :skolemid |71|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |DiemTransactionPublishingOptionbpl.2581:79|
 :skolemid |72|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |DiemTransactionPublishingOptionbpl.2587:15|
 :skolemid |73|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |DiemTransactionPublishingOptionbpl.2637:76|
 :skolemid |74|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |DiemTransactionPublishingOptionbpl.2643:15|
 :skolemid |75|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |DiemTransactionPublishingOptionbpl.2693:78|
 :skolemid |76|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |DiemTransactionPublishingOptionbpl.2699:15|
 :skolemid |77|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |DiemTransactionPublishingOptionbpl.2749:74|
 :skolemid |78|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |DiemTransactionPublishingOptionbpl.2755:15|
 :skolemid |79|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |DiemTransactionPublishingOptionbpl.2805:69|
 :skolemid |80|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |DiemTransactionPublishingOptionbpl.2811:15|
 :skolemid |81|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |DiemTransactionPublishingOptionbpl.2861:70|
 :skolemid |82|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |DiemTransactionPublishingOptionbpl.2867:15|
 :skolemid |83|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |DiemTransactionPublishingOptionbpl.2917:60|
 :skolemid |84|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |DiemTransactionPublishingOptionbpl.2923:15|
 :skolemid |85|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |DiemTransactionPublishingOptionbpl.2973:66|
 :skolemid |86|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |DiemTransactionPublishingOptionbpl.2979:15|
 :skolemid |87|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |DiemTransactionPublishingOptionbpl.3029:60|
 :skolemid |88|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |DiemTransactionPublishingOptionbpl.3035:15|
 :skolemid |89|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |DiemTransactionPublishingOptionbpl.3085:63|
 :skolemid |90|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |DiemTransactionPublishingOptionbpl.3091:15|
 :skolemid |91|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |DiemTransactionPublishingOptionbpl.3141:79|
 :skolemid |92|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |DiemTransactionPublishingOptionbpl.3147:15|
 :skolemid |93|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |DiemTransactionPublishingOptionbpl.3197:82|
 :skolemid |94|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |DiemTransactionPublishingOptionbpl.3203:15|
 :skolemid |95|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |DiemTransactionPublishingOptionbpl.3253:88|
 :skolemid |96|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |DiemTransactionPublishingOptionbpl.3259:15|
 :skolemid |97|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |DiemTransactionPublishingOptionbpl.3309:72|
 :skolemid |98|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |DiemTransactionPublishingOptionbpl.3315:15|
 :skolemid |99|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |DiemTransactionPublishingOptionbpl.3394:61|
 :skolemid |100|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |DiemTransactionPublishingOptionbpl.4209:36|
 :skolemid |102|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |DiemTransactionPublishingOptionbpl.4407:71|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |DiemTransactionPublishingOptionbpl.4476:46|
 :skolemid |104|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |DiemTransactionPublishingOptionbpl.4489:64|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |DiemTransactionPublishingOptionbpl.4502:75|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |DiemTransactionPublishingOptionbpl.4515:72|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |DiemTransactionPublishingOptionbpl.4544:55|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |DiemTransactionPublishingOptionbpl.4566:46|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |DiemTransactionPublishingOptionbpl.4584:49|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |DiemTransactionPublishingOptionbpl.4669:71|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |DiemTransactionPublishingOptionbpl.4683:91|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |DiemTransactionPublishingOptionbpl.4697:113|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12) (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@12)))
 :qid |DiemTransactionPublishingOptionbpl.4711:89|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |DiemTransactionPublishingOptionbpl.4725:75|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |DiemTransactionPublishingOptionbpl.4739:73|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |DiemTransactionPublishingOptionbpl.4759:48|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |DiemTransactionPublishingOptionbpl.4775:57|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |DiemTransactionPublishingOptionbpl.4789:83|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |DiemTransactionPublishingOptionbpl.4803:103|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |DiemTransactionPublishingOptionbpl.4817:125|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20) true)
 :qid |DiemTransactionPublishingOptionbpl.4831:101|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21) true)
 :qid |DiemTransactionPublishingOptionbpl.4845:87|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22) true)
 :qid |DiemTransactionPublishingOptionbpl.4859:85|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@23)))
 :qid |DiemTransactionPublishingOptionbpl.4873:48|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@24)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@24))))
 :qid |DiemTransactionPublishingOptionbpl.4894:45|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@25)))
 :qid |DiemTransactionPublishingOptionbpl.4908:51|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@26)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@26))))
 :qid |DiemTransactionPublishingOptionbpl.4931:48|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26))
)))
(assert (forall ((s@@27 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@27)))
 :qid |DiemTransactionPublishingOptionbpl.5223:49|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27))
)))
(assert (forall ((s@@28 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@28)))
 :qid |DiemTransactionPublishingOptionbpl.5236:65|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@29)))
 :qid |DiemTransactionPublishingOptionbpl.5743:45|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@30)))
 :qid |DiemTransactionPublishingOptionbpl.5756:45|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31) true)
 :qid |DiemTransactionPublishingOptionbpl.5769:55|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32) true)
 :qid |DiemTransactionPublishingOptionbpl.5783:55|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@33)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@33))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@33))))
 :qid |DiemTransactionPublishingOptionbpl.5803:38|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@34))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@34))))
 :qid |DiemTransactionPublishingOptionbpl.5824:44|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))))
 :qid |DiemTransactionPublishingOptionbpl.5875:53|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))))
 :qid |DiemTransactionPublishingOptionbpl.5937:53|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@37) true)
 :qid |DiemTransactionPublishingOptionbpl.5963:55|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@38) true)
 :qid |DiemTransactionPublishingOptionbpl.5977:55|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@38))
)))
(assert (forall ((s@@39 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@39)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@39)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@39))))
 :qid |DiemTransactionPublishingOptionbpl.5994:38|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@40) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@40)))
 :qid |DiemTransactionPublishingOptionbpl.6008:48|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@41) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@41)))
 :qid |DiemTransactionPublishingOptionbpl.6022:48|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@41))
)))
(assert (forall ((s@@42 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@42)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@42)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@42))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@42))))
 :qid |DiemTransactionPublishingOptionbpl.6042:41|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@42))
)))
(assert (forall ((s@@43 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@43)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@43)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@43))))
 :qid |DiemTransactionPublishingOptionbpl.6060:57|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@43))
)))
(assert (forall ((s@@44 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@44) true)
 :qid |DiemTransactionPublishingOptionbpl.8166:68|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@44))
)))
(assert (forall ((s@@45 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@45)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@45)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@45))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@45))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@45))))
 :qid |DiemTransactionPublishingOptionbpl.8188:66|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@46)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@46)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@46))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@46))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@46))))
 :qid |DiemTransactionPublishingOptionbpl.8214:66|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@46))
)))
(assert (forall ((s@@47 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@47)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@47)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@47))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@47))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@47))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@47))))
 :qid |DiemTransactionPublishingOptionbpl.8243:56|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@48)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@48)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@48))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@48))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@48))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@48))))
 :qid |DiemTransactionPublishingOptionbpl.8273:56|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@48))
)))
(assert (forall ((s@@49 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@49) true)
 :qid |DiemTransactionPublishingOptionbpl.8595:31|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@49))
)))
(assert (forall ((s@@50 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@50) true)
 :qid |DiemTransactionPublishingOptionbpl.8925:31|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@50))
)))
(assert (forall ((s@@51 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@51)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@51)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@51))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@51))))
 :qid |DiemTransactionPublishingOptionbpl.8944:35|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@51))
)))
(assert (forall ((s@@52 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@52) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@52)))
 :qid |DiemTransactionPublishingOptionbpl.9353:45|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@52))
)))
(assert (forall ((s@@53 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@53)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@53))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@53))))
 :qid |DiemTransactionPublishingOptionbpl.9372:50|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@53))
)))
(assert (forall ((s@@54 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@54) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@54)))
 :qid |DiemTransactionPublishingOptionbpl.9387:52|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@54))
)))
(assert (forall ((s@@55 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@55) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@55)))
 :qid |DiemTransactionPublishingOptionbpl.9401:46|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@55))
)))
(assert (forall ((s@@56 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@56) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@56)))
 :qid |DiemTransactionPublishingOptionbpl.9425:38|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@56))
)))
(assert (forall ((s@@57 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@57) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@57)))
 :qid |DiemTransactionPublishingOptionbpl.9439:39|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@57))
)))
(assert (forall ((s@@58 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@58)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@58)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@58))))
 :qid |DiemTransactionPublishingOptionbpl.9466:65|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@58))
)))
(assert (forall ((s@@59 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@59)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@59)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@59))))
 :qid |DiemTransactionPublishingOptionbpl.9834:60|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@59))
)))
(assert (forall ((s@@60 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@60)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@60)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@60))))
 :qid |DiemTransactionPublishingOptionbpl.9851:66|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@60))
)))
(assert (forall ((s@@61 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@61)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@61)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@61))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@61))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@61))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@61))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@61))))
 :qid |DiemTransactionPublishingOptionbpl.9880:50|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@61))
)))
(assert (forall ((s@@62 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@62) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@62)))
 :qid |DiemTransactionPublishingOptionbpl.9899:45|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@62))
)))
(assert (forall ((s@@63 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@63)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@63)) true))
 :qid |DiemTransactionPublishingOptionbpl.10211:87|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@63))
)))
(assert (forall ((s@@64 T@$1_DiemTransactionPublishingOption_HaltAllTransactions) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_HaltAllTransactions'| s@@64) true)
 :qid |DiemTransactionPublishingOptionbpl.10225:75|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_HaltAllTransactions'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@65) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@65)))
 :qid |DiemTransactionPublishingOptionbpl.13536:47|
 :skolemid |383|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@66)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@66)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@66))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@66))))
 :qid |DiemTransactionPublishingOptionbpl.13556:58|
 :skolemid |384|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@66))
)))
(assert (forall ((s@@67 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@67) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@67)))
 :qid |DiemTransactionPublishingOptionbpl.13571:39|
 :skolemid |385|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@67))
)))
(assert (forall ((s@@68 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@68)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@68)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@68))))
 :qid |DiemTransactionPublishingOptionbpl.13593:58|
 :skolemid |386|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@68))
)))
(assert (forall ((s@@69 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@69)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@69)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@69))))
 :qid |DiemTransactionPublishingOptionbpl.13610:58|
 :skolemid |387|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@69))
)))
(assert (forall ((s@@70 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@70) true)
 :qid |DiemTransactionPublishingOptionbpl.13625:51|
 :skolemid |388|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@70))
)))
(assert (forall ((s@@71 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@71)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@71)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@71))))
 :qid |DiemTransactionPublishingOptionbpl.13642:60|
 :skolemid |389|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@72)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@72)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@72))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@72))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@72))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@72))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@72))))
 :qid |DiemTransactionPublishingOptionbpl.13928:47|
 :skolemid |390|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@73)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@73)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@73))))
 :qid |DiemTransactionPublishingOptionbpl.13950:63|
 :skolemid |391|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@74) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@74)))
 :qid |DiemTransactionPublishingOptionbpl.13965:57|
 :skolemid |392|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@74))
)))
(assert (forall ((s@@75 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@75) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@75)))
 :qid |DiemTransactionPublishingOptionbpl.13978:55|
 :skolemid |393|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@75))
)))
(assert (forall ((s@@76 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@76) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@76)))
 :qid |DiemTransactionPublishingOptionbpl.13992:55|
 :skolemid |394|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@77)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@77)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@77))))
 :qid |DiemTransactionPublishingOptionbpl.14009:54|
 :skolemid |395|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@78) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@78)))
 :qid |DiemTransactionPublishingOptionbpl.14023:55|
 :skolemid |396|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@79) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@79)))
 :qid |DiemTransactionPublishingOptionbpl.14037:57|
 :skolemid |397|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@80)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@80)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@80))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@80))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@80))))
 :qid |DiemTransactionPublishingOptionbpl.14059:56|
 :skolemid |398|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@81)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@81)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@81))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@81))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@81))))
 :qid |DiemTransactionPublishingOptionbpl.14084:52|
 :skolemid |399|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@82) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@82)))
 :qid |DiemTransactionPublishingOptionbpl.14100:54|
 :skolemid |400|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@83)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@83)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@83))))
 :qid |DiemTransactionPublishingOptionbpl.14942:47|
 :skolemid |401|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@84)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@84)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@84))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@84))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@84))))
 :qid |DiemTransactionPublishingOptionbpl.14966:47|
 :skolemid |402|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemConsensusConfig_DiemConsensusConfig) ) (! (= (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@85) (|$IsValid'vec'u8''| (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| s@@85)))
 :qid |DiemTransactionPublishingOptionbpl.15198:63|
 :skolemid |403|
 :pattern ( (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@86) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@86)))
 :qid |DiemTransactionPublishingOptionbpl.15534:49|
 :skolemid |404|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@87)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@87)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@87))))
 :qid |DiemTransactionPublishingOptionbpl.15577:49|
 :skolemid |405|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@88)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@88)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@88))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@88))))
 :qid |DiemTransactionPublishingOptionbpl.15606:48|
 :skolemid |406|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@89) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@89)))
 :qid |DiemTransactionPublishingOptionbpl.15890:47|
 :skolemid |407|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@89))
)))
(assert (forall ((v@@23 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_11086 v@@23)))
 (and (= (seq.len r@@0) (seq.len v@@23)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len r@@0))) (= (seq.nth r@@0 i@@27) (seq.nth v@@23 (- (- (seq.len v@@23) i@@27) 1))))
 :qid |DiemTransactionPublishingOptionbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@27))
))))
 :qid |DiemTransactionPublishingOptionbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_11086 v@@23))
)))
(assert (forall ((v@@24 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_66841 v@@24)))
 (and (= (seq.len r@@1) (seq.len v@@24)) (forall ((i@@28 Int) ) (!  (=> (and (>= i@@28 0) (< i@@28 (seq.len r@@1))) (= (seq.nth r@@1 i@@28) (seq.nth v@@24 (- (- (seq.len v@@24) i@@28) 1))))
 :qid |DiemTransactionPublishingOptionbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@28))
))))
 :qid |DiemTransactionPublishingOptionbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_66841 v@@24))
)))
(assert (forall ((v@@25 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_66053 v@@25)))
 (and (= (seq.len r@@2) (seq.len v@@25)) (forall ((i@@29 Int) ) (!  (=> (and (>= i@@29 0) (< i@@29 (seq.len r@@2))) (= (seq.nth r@@2 i@@29) (seq.nth v@@25 (- (- (seq.len v@@25) i@@29) 1))))
 :qid |DiemTransactionPublishingOptionbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@29))
))))
 :qid |DiemTransactionPublishingOptionbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_66053 v@@25))
)))
(assert (forall ((v@@26 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_66250 v@@26)))
 (and (= (seq.len r@@3) (seq.len v@@26)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len r@@3))) (= (seq.nth r@@3 i@@30) (seq.nth v@@26 (- (- (seq.len v@@26) i@@30) 1))))
 :qid |DiemTransactionPublishingOptionbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@30))
))))
 :qid |DiemTransactionPublishingOptionbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_66250 v@@26))
)))
(assert (forall ((v@@27 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_66447 v@@27)))
 (and (= (seq.len r@@4) (seq.len v@@27)) (forall ((i@@31 Int) ) (!  (=> (and (>= i@@31 0) (< i@@31 (seq.len r@@4))) (= (seq.nth r@@4 i@@31) (seq.nth v@@27 (- (- (seq.len v@@27) i@@31) 1))))
 :qid |DiemTransactionPublishingOptionbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@31))
))))
 :qid |DiemTransactionPublishingOptionbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_66447 v@@27))
)))
(assert (forall ((v@@28 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_67038 v@@28)))
 (and (= (seq.len r@@5) (seq.len v@@28)) (forall ((i@@32 Int) ) (!  (=> (and (>= i@@32 0) (< i@@32 (seq.len r@@5))) (= (seq.nth r@@5 i@@32) (seq.nth v@@28 (- (- (seq.len v@@28) i@@32) 1))))
 :qid |DiemTransactionPublishingOptionbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@32))
))))
 :qid |DiemTransactionPublishingOptionbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_67038 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (let ((r@@6 (ReverseVec_66644 v@@29)))
 (and (= (seq.len r@@6) (seq.len v@@29)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@6))) (= (seq.nth r@@6 i@@33) (seq.nth v@@29 (- (- (seq.len v@@29) i@@33) 1))))
 :qid |DiemTransactionPublishingOptionbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@33))
))))
 :qid |DiemTransactionPublishingOptionbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_66644 v@@29))
)))
(assert (forall ((v@@30 (Seq |T@#0|)) ) (! (let ((r@@7 (ReverseVec_65856 v@@30)))
 (and (= (seq.len r@@7) (seq.len v@@30)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@7))) (= (seq.nth r@@7 i@@34) (seq.nth v@@30 (- (- (seq.len v@@30) i@@34) 1))))
 :qid |DiemTransactionPublishingOptionbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@34))
))))
 :qid |DiemTransactionPublishingOptionbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_65856 v@@30))
)))
(assert (forall ((|l#0| Bool) (i@@35 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@35) |l#0|)
 :qid |DiemTransactionPublishingOptionbpl.250:54|
 :skolemid |498|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@35))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_73622|) (|l#1| |T@[$1_Event_EventHandle]Multiset_73622|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_73622_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_73622| (|Select__T@[$1_Event_EventHandle]Multiset_73622_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_73622| (|Select__T@[$1_Event_EventHandle]Multiset_73622_| |l#1| handle@@0))))
(Multiset_73622 (|lambda#3| (|v#Multiset_73622| (|Select__T@[$1_Event_EventHandle]Multiset_73622_| |l#0@@0| handle@@0)) (|v#Multiset_73622| (|Select__T@[$1_Event_EventHandle]Multiset_73622_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DiemTransactionPublishingOptionbpl.2382:13|
 :skolemid |499|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_73622_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@31 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@31) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@31) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@31)))
 :qid |DiemTransactionPublishingOptionbpl.129:29|
 :skolemid |500|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@31))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t24@0 () T@$Mutation_11233)
(declare-fun $t14@1 () T@$Mutation_100592)
(declare-fun $t24@1 () T@$Mutation_11233)
(declare-fun _$t2 () Int)
(declare-fun $t14@2 () T@$Mutation_100592)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 () T@$Memory_100097)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_100097)
(declare-fun |Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int T@$1_DiemTimestamp_CurrentTimeMicroseconds) |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ( ?x1 Int) ( ?x2 T@$1_DiemTimestamp_CurrentTimeMicroseconds)) (! (= (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemTimestamp_CurrentTimeMicroseconds)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_100775)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_100962)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_101055)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_101141)
(declare-fun $1_DiemSystem_CapabilityHolder_$memory () T@$Memory_101214)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_101285)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_101369)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory| () T@$Memory_101453)
(declare-fun $1_XDX_Reserve_$memory () T@$Memory_101524)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_101608)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory| () T@$Memory_101692)
(declare-fun |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory| () T@$Memory_101763)
(declare-fun $1_DualAttestation_Limit_$memory () T@$Memory_101860)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory| () T@$Memory_101944)
(declare-fun $1_ChainId_ChainId_$memory () T@$Memory_102028)
(declare-fun $1_AccountFreezing_FreezeEventsHolder_$memory () T@$Memory_102099)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_102170)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int) T@$1_AccountFreezing_FreezingBit)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory () T@$Memory_102342)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory () T@$Memory_102413)
(declare-fun $1_DiemBlock_BlockMetadata_$memory () T@$Memory_102484)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory| () T@$Memory_102568)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory| () T@$Memory_100649)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|)
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
(declare-fun $t14 () T@$Mutation_100592)
(declare-fun $t14@0 () T@$Mutation_100592)
(declare-fun $abort_code@0 () Int)
(declare-fun $t12 () Bool)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies () |T@[Int]Bool|)
(declare-fun $t11 () Int)
(declare-fun $t10 () Bool)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t7 () T@$Mutation_100592)
(declare-fun $t24 () T@$Mutation_11233)
(push 1)
(set-info :boogie-vc-id $1_DiemTimestamp_update_global_time$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 239902) (let ((L5_correct  (=> (and (and (= $t24@0 ($Mutation_11233 (|l#$Mutation_100592| $t14@1) (seq.++ (|p#$Mutation_100592| $t14@1) (seq.unit 0)) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_100592| $t14@1)))) (= $t24@1 ($Mutation_11233 (|l#$Mutation_11233| $t24@0) (|p#$Mutation_11233| $t24@0) _$t2))) (and (= $t14@2 ($Mutation_100592 (|l#$Mutation_100592| $t14@1) (|p#$Mutation_100592| $t14@1) ($1_DiemTimestamp_CurrentTimeMicroseconds (|v#$Mutation_11233| $t24@1)))) (= $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 ($Memory_100097 (|Store__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_100592| $t14@2)) true) (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_100592| $t14@2)) (|v#$Mutation_100592| $t14@2)))))) (and (=> (= (ControlFlow 0 173693) (- 0 240820)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816)) (and (=> (= (ControlFlow 0 173693) (- 0 240833)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (<= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (<= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816)))) (and (=> (= (ControlFlow 0 173693) (- 0 240849)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_100775| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_100775| $1_Roles_RoleId_$memory) 173345816)) 0)))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_100775| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_100775| $1_Roles_RoleId_$memory) 173345816)) 0))) (and (=> (= (ControlFlow 0 173693) (- 0 240863)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_100775| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_100775| $1_Roles_RoleId_$memory) 186537453)) 1)))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_100775| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_100775| $1_Roles_RoleId_$memory) 186537453)) 1))) (and (=> (= (ControlFlow 0 173693) (- 0 240877)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100962| $1_SlidingNonce_SlidingNonce_$memory) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100962| $1_SlidingNonce_SlidingNonce_$memory) 173345816)) (and (=> (= (ControlFlow 0 173693) (- 0 240891)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100962| $1_SlidingNonce_SlidingNonce_$memory) 186537453))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100962| $1_SlidingNonce_SlidingNonce_$memory) 186537453)) (and (=> (= (ControlFlow 0 173693) (- 0 240905)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101055| $1_DiemConfig_Configuration_$memory) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101055| $1_DiemConfig_Configuration_$memory) 173345816)) (and (=> (= (ControlFlow 0 173693) (- 0 240917)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101141| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101214| $1_DiemSystem_CapabilityHolder_$memory) 173345816)))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101141| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101214| $1_DiemSystem_CapabilityHolder_$memory) 173345816))) (and (=> (= (ControlFlow 0 173693) (- 0 240937)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101285| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101285| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (and (=> (= (ControlFlow 0 173693) (- 0 240949)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101369| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101369| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (and (=> (= (ControlFlow 0 173693) (- 0 240961)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101453| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101453| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) 173345816)) (and (=> (= (ControlFlow 0 173693) (- 0 240975)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101524| $1_XDX_Reserve_$memory) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101524| $1_XDX_Reserve_$memory) 173345816)) (and (=> (= (ControlFlow 0 173693) (- 0 240987)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101608| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101608| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (and (=> (= (ControlFlow 0 173693) (- 0 240999)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101692| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101692| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816)) (and (=> (= (ControlFlow 0 173693) (- 0 241013)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101763| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101763| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453)) (and (=> (= (ControlFlow 0 173693) (- 0 241025)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101860| $1_DualAttestation_Limit_$memory) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101860| $1_DualAttestation_Limit_$memory) 173345816)) (and (=> (= (ControlFlow 0 173693) (- 0 241037)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101944| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101944| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (and (=> (= (ControlFlow 0 173693) (- 0 241049)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_102028| $1_ChainId_ChainId_$memory) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_102028| $1_ChainId_ChainId_$memory) 173345816)) (and (=> (= (ControlFlow 0 173693) (- 0 241063)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_102099| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_102099| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)) (and (=> (= (ControlFlow 0 173693) (- 0 241077)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_102170| $1_AccountFreezing_FreezingBit_$memory) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_102170| $1_AccountFreezing_FreezingBit_$memory) 173345816)))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_102170| $1_AccountFreezing_FreezingBit_$memory) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_102170| $1_AccountFreezing_FreezingBit_$memory) 173345816))))) (and (=> (= (ControlFlow 0 173693) (- 0 241091)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_102170| $1_AccountFreezing_FreezingBit_$memory) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_102170| $1_AccountFreezing_FreezingBit_$memory) 186537453)))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_102170| $1_AccountFreezing_FreezingBit_$memory) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_102170| $1_AccountFreezing_FreezingBit_$memory) 186537453))))) (and (=> (= (ControlFlow 0 173693) (- 0 241105)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_102099| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_102099| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)) (and (=> (= (ControlFlow 0 173693) (- 0 241119)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_102342| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_102342| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (and (=> (= (ControlFlow 0 173693) (- 0 241133)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_102413| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_102413| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816)) (and (=> (= (ControlFlow 0 173693) (- 0 241147)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_102484| $1_DiemBlock_BlockMetadata_$memory) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_102484| $1_DiemBlock_BlockMetadata_$memory) 173345816)) (and (=> (= (ControlFlow 0 173693) (- 0 241159)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_102568| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_102568| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816)) (and (=> (= (ControlFlow 0 173693) (- 0 241171)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100649| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100649| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816)) (and (=> (= (ControlFlow 0 173693) (- 0 241183)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (<= (|$major#$1_DiemVersion_DiemVersion| (let ((addr 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| (|contents#$Memory_100649| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) addr)))) (|$major#$1_DiemVersion_DiemVersion| (let ((addr@@0 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| (|contents#$Memory_100649| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) addr@@0))))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (<= (|$major#$1_DiemVersion_DiemVersion| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| (|contents#$Memory_100649| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) addr@@1)))) (|$major#$1_DiemVersion_DiemVersion| (let ((addr@@2 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| (|contents#$Memory_100649| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) addr@@2)))))) (=> (= $t25 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816))) (and (=> (= (ControlFlow 0 173693) (- 0 241217)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 173693) (- 0 241227)) (not (not (= (|$addr#$signer| _$t0) 0)))) (=> (not (not (= (|$addr#$signer| _$t0) 0))) (and (=> (= (ControlFlow 0 173693) (- 0 241241)) (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 173693) (- 0 241265)) (= $t25 _$t2))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon25_Then_correct  (=> (and $t18@0 (= (ControlFlow 0 173751) 173693)) L5_correct)))
(let ((anon26_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 173181) 173693)) L5_correct)))
(let ((L8_correct  (and (=> (= (ControlFlow 0 173177) (- 0 241309)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= (|$addr#$signer| _$t0) 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= (|$addr#$signer| _$t0) 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 173177) (- 0 241346)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11@0)) (and (not (= (|$addr#$signer| _$t0) 0)) (= 2 $t11@0))) (ite (= _$t1 0)  (not (= $t9 _$t2))  (and (>= $t9 _$t2) (= 7 $t11@0)))))))))
(let ((anon25_Else_correct  (=> (and (and (not $t18@0) (= $t20 $t20)) (and (= $t11@0 $t20) (= (ControlFlow 0 173747) 173177))) L8_correct)))
(let ((anon24_Then_correct  (=> $t17@0 (=> (and (= $t18@0 (= $t15@0 _$t2)) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t20) (= $t20 7)) (and (= $t20 $t20) (= $t18@0 $t18@0))) (and (=> (= (ControlFlow 0 173731) 173751) anon25_Then_correct) (=> (= (ControlFlow 0 173731) 173747) anon25_Else_correct)))))))
(let ((anon26_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= $t23 $t23)) (and (= $t11@0 $t23) (= (ControlFlow 0 173061) 173177))) L8_correct)))
(let ((anon24_Else$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t23) (= $t23 7)) (and (= $t23 $t23) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 173045) 173181) anon26_Then_correct) (=> (= (ControlFlow 0 173045) 173061) anon26_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t15@0 _$t2)) (= (ControlFlow 0 173009) 173045)) anon24_Else$1_correct)))
(let ((anon24_Else_correct  (=> (and (not $t17@0) (= (ControlFlow 0 173015) 173009)) inline$$Lt$0$anon0_correct)))
(let ((anon23_Else_correct  (=> (not $abort_flag@0) (=> (and (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| (|v#$Mutation_100592| $t14@1)) (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0|)) (=> (and (and (= $t15@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_100592| $t14@1))) (= $t15@0 $t15@0)) (and (|$IsValid'address'| 0) (= $t17@0 (= _$t1 0)))) (and (=> (= (ControlFlow 0 172963) 173731) anon24_Then_correct) (=> (= (ControlFlow 0 172963) 173015) anon24_Else_correct)))))))
(let ((anon23_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t11@0 $abort_code@1) (= (ControlFlow 0 173765) 173177))) L8_correct)))
(let ((anon22_Then$1_correct  (=> (= $t14@1 $t14) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 173817) 173765) anon23_Then_correct) (=> (= (ControlFlow 0 173817) 172963) anon23_Else_correct))))))
(let ((anon22_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (ControlFlow 0 173815) 173817)) anon22_Then$1_correct)))
(let ((anon22_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (=> (and (and (= $t14@0 ($Mutation_100592 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t14@1 $t14@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 172917) 173765) anon23_Then_correct) (=> (= (ControlFlow 0 172917) 172963) anon23_Else_correct))))))
(let ((anon21_Else_correct  (=> (and (not $t12) (|$IsValid'address'| 173345816)) (and (=> (= (ControlFlow 0 172895) (- 0 240500)) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816)) (=> (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816) (and (=> (= (ControlFlow 0 172895) 173815) anon22_Then_correct) (=> (= (ControlFlow 0 172895) 172917) anon22_Else_correct)))))))
(let ((anon21_Then_correct  (=> $t12 (=> (and (and (and (not (= (|$addr#$signer| _$t0) 0)) (= 2 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 173847) 173177))) L8_correct))))
(let ((anon20_Else_correct  (=> (and (not $t10) (= $t12  (not (= (|$addr#$signer| _$t0) 0)))) (and (=> (= (ControlFlow 0 172875) 173847) anon21_Then_correct) (=> (= (ControlFlow 0 172875) 172895) anon21_Else_correct)))))
(let ((anon20_Then_correct  (=> $t10 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 173873) 173177))) L8_correct))))
(let ((anon0$1_correct  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_100775| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_100775| $1_Roles_RoleId_$memory) 173345816)) 0)))) (=> (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_100775| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_100775| $1_Roles_RoleId_$memory) 186537453)) 1))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100962| $1_SlidingNonce_SlidingNonce_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100962| $1_SlidingNonce_SlidingNonce_$memory) 186537453)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101055| $1_DiemConfig_Configuration_$memory) 173345816)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101141| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101214| $1_DiemSystem_CapabilityHolder_$memory) 173345816))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101285| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101369| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101453| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) 173345816))))) (=> (and (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101524| $1_XDX_Reserve_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101608| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101692| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101763| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101860| $1_DualAttestation_Limit_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101944| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_102028| $1_ChainId_ChainId_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_102099| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816))))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_102170| $1_AccountFreezing_FreezingBit_$memory) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_102170| $1_AccountFreezing_FreezingBit_$memory) 173345816))))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_102170| $1_AccountFreezing_FreezingBit_$memory) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_102170| $1_AccountFreezing_FreezingBit_$memory) 186537453)))))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_102099| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_102342| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_102413| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_102484| $1_DiemBlock_BlockMetadata_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_102568| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100649| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816)))))) (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0)) ($1_Signer_is_txn_signer _$t0)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0))) (|$IsValid'address'| _$t1)) (and (and (and (|$IsValid'u64'| _$t2) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |DiemTransactionPublishingOptionbpl.3679:20|
 :skolemid |101|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
))) (and (= $t9 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= $t10  (not (|Select__T@[Int]Bool_| (|domain#$Memory_100097| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))))) (and (=> (= (ControlFlow 0 172853) 173873) anon20_Then_correct) (=> (= (ControlFlow 0 172853) 172875) anon20_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_73622_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_73622| stream@@0) 0) (forall ((v@@32 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_73622| stream@@0) v@@32) 0)
 :qid |DiemTransactionPublishingOptionbpl.134:13|
 :skolemid |2|
))))
 :qid |DiemTransactionPublishingOptionbpl.2372:13|
 :skolemid |64|
))) (= (ControlFlow 0 172443) 172853)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_100592| $t7)) 0) (= (seq.len (|p#$Mutation_100592| $t14)) 0)) (and (= (seq.len (|p#$Mutation_11233| $t24)) 0) (= (ControlFlow 0 172453) 172443))) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 239902) 172453) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
