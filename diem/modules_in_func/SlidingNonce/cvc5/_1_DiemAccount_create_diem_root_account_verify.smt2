(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :pre-skolem-quant true)
(set-option :no-dt-share-sel true)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_92101 0)) ((($Memory_92101 (|domain#$Memory_92101| |T@[Int]Bool|) (|contents#$Memory_92101| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_101293 0)) ((($Memory_101293 (|domain#$Memory_101293| |T@[Int]Bool|) (|contents#$Memory_101293| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_101222 0)) ((($Memory_101222 (|domain#$Memory_101222| |T@[Int]Bool|) (|contents#$Memory_101222| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_100979 0)) ((($Memory_100979 (|domain#$Memory_100979| |T@[Int]Bool|) (|contents#$Memory_100979| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_100908 0)) ((($Memory_100908 (|domain#$Memory_100908| |T@[Int]Bool|) (|contents#$Memory_100908| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_100837 0)) ((($Memory_100837 (|domain#$Memory_100837| |T@[Int]Bool|) (|contents#$Memory_100837| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_131983 0)) ((($Memory_131983 (|domain#$Memory_131983| |T@[Int]Bool|) (|contents#$Memory_131983| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_100669 0)) ((($Memory_100669 (|domain#$Memory_100669| |T@[Int]Bool|) (|contents#$Memory_100669| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_129448 0)) ((($Memory_129448 (|domain#$Memory_129448| |T@[Int]Bool|) (|contents#$Memory_129448| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_128239 0)) ((($Memory_128239 (|domain#$Memory_128239| |T@[Int]Bool|) (|contents#$Memory_128239| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_128175 0)) ((($Memory_128175 (|domain#$Memory_128175| |T@[Int]Bool|) (|contents#$Memory_128175| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_127269 0)) ((($Memory_127269 (|domain#$Memory_127269| |T@[Int]Bool|) (|contents#$Memory_127269| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_127636 0)) ((($Memory_127636 (|domain#$Memory_127636| |T@[Int]Bool|) (|contents#$Memory_127636| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_123753 0)) ((($Memory_123753 (|domain#$Memory_123753| |T@[Int]Bool|) (|contents#$Memory_123753| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_123466 0)) ((($Memory_123466 (|domain#$Memory_123466| |T@[Int]Bool|) (|contents#$Memory_123466| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_100501 0)) ((($Memory_100501 (|domain#$Memory_100501| |T@[Int]Bool|) (|contents#$Memory_100501| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_100262 0)) ((($Memory_100262 (|domain#$Memory_100262| |T@[Int]Bool|) (|contents#$Memory_100262| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_101151 0)) ((($Memory_101151 (|domain#$Memory_101151| |T@[Int]Bool|) (|contents#$Memory_101151| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_112618 0)) ((($Memory_112618 (|domain#$Memory_112618| |T@[Int]Bool|) (|contents#$Memory_112618| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_112554 0)) ((($Memory_112554 (|domain#$Memory_112554| |T@[Int]Bool|) (|contents#$Memory_112554| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_112931 0)) ((($Memory_112931 (|domain#$Memory_112931| |T@[Int]Bool|) (|contents#$Memory_112931| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_112844 0)) ((($Memory_112844 (|domain#$Memory_112844| |T@[Int]Bool|) (|contents#$Memory_112844| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_134057 0)) ((($Memory_134057 (|domain#$Memory_134057| |T@[Int]Bool|) (|contents#$Memory_134057| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_116427 0)) ((($Memory_116427 (|domain#$Memory_116427| |T@[Int]Bool|) (|contents#$Memory_116427| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_100333 0)) ((($Memory_100333 (|domain#$Memory_100333| |T@[Int]Bool|) (|contents#$Memory_100333| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_133966 0)) ((($Memory_133966 (|domain#$Memory_133966| |T@[Int]Bool|) (|contents#$Memory_133966| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_116336 0)) ((($Memory_116336 (|domain#$Memory_116336| |T@[Int]Bool|) (|contents#$Memory_116336| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_100572 0)) ((($Memory_100572 (|domain#$Memory_100572| |T@[Int]Bool|) (|contents#$Memory_100572| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_100417 0)) ((($Memory_100417 (|domain#$Memory_100417| |T@[Int]Bool|) (|contents#$Memory_100417| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_100178 0)) ((($Memory_100178 (|domain#$Memory_100178| |T@[Int]Bool|) (|contents#$Memory_100178| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_108434 0)) ((($Memory_108434 (|domain#$Memory_108434| |T@[Int]Bool|) (|contents#$Memory_108434| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_108347 0)) ((($Memory_108347 (|domain#$Memory_108347| |T@[Int]Bool|) (|contents#$Memory_108347| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_108260 0)) ((($Memory_108260 (|domain#$Memory_108260| |T@[Int]Bool|) (|contents#$Memory_108260| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_108173 0)) ((($Memory_108173 (|domain#$Memory_108173| |T@[Int]Bool|) (|contents#$Memory_108173| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_108086 0)) ((($Memory_108086 (|domain#$Memory_108086| |T@[Int]Bool|) (|contents#$Memory_108086| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_107999 0)) ((($Memory_107999 (|domain#$Memory_107999| |T@[Int]Bool|) (|contents#$Memory_107999| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_100023 0)) ((($Memory_100023 (|domain#$Memory_100023| |T@[Int]Bool|) (|contents#$Memory_100023| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_107266 0)) ((($Memory_107266 (|domain#$Memory_107266| |T@[Int]Bool|) (|contents#$Memory_107266| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_99864 0)) ((($Memory_99864 (|domain#$Memory_99864| |T@[Int]Bool|) (|contents#$Memory_99864| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_99458 0)) ((($Memory_99458 (|domain#$Memory_99458| |T@[Int]Bool|) (|contents#$Memory_99458| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_101377 0)) ((($Memory_101377 (|domain#$Memory_101377| |T@[Int]Bool|) (|contents#$Memory_101377| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemConsensusConfig_DiemConsensusConfig 0)) ((($1_DiemConsensusConfig_DiemConsensusConfig (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_107133 0)) ((($Memory_107133 (|domain#$Memory_107133| |T@[Int]Bool|) (|contents#$Memory_107133| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_100753 0)) ((($Memory_100753 (|domain#$Memory_100753| |T@[Int]Bool|) (|contents#$Memory_100753| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_100094 0)) ((($Memory_100094 (|domain#$Memory_100094| |T@[Int]Bool|) (|contents#$Memory_100094| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_99771 0)) ((($Memory_99771 (|domain#$Memory_99771| |T@[Int]Bool|) (|contents#$Memory_99771| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_132997 0)) ((($Memory_132997 (|domain#$Memory_132997| |T@[Int]Bool|) (|contents#$Memory_132997| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_99950 0)) ((($Memory_99950 (|domain#$Memory_99950| |T@[Int]Bool|) (|contents#$Memory_99950| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_105265 0)) ((($Memory_105265 (|domain#$Memory_105265| |T@[Int]Bool|) (|contents#$Memory_105265| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_104707 0)) ((($Memory_104707 (|domain#$Memory_104707| |T@[Int]Bool|) (|contents#$Memory_104707| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_99584 0)) ((($Memory_99584 (|domain#$Memory_99584| |T@[Int]Bool|) (|contents#$Memory_99584| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_98906 0)) ((($Memory_98906 (|domain#$Memory_98906| |T@[Int]Bool|) (|contents#$Memory_98906| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_72434 0)) (((Multiset_72434 (|v#Multiset_72434| |T@[$EventRep]Int|) (|l#Multiset_72434| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_72434| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_72434|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_148151 0)) ((($Mutation_148151 (|l#$Mutation_148151| T@$Location) (|p#$Mutation_148151| (Seq Int)) (|v#$Mutation_148151| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_148107 0)) ((($Mutation_148107 (|l#$Mutation_148107| T@$Location) (|p#$Mutation_148107| (Seq Int)) (|v#$Mutation_148107| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_33390 0)) ((($Mutation_33390 (|l#$Mutation_33390| T@$Location) (|p#$Mutation_33390| (Seq Int)) (|v#$Mutation_33390| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_121740 0)) ((($Mutation_121740 (|l#$Mutation_121740| T@$Location) (|p#$Mutation_121740| (Seq Int)) (|v#$Mutation_121740| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_111115 0)) ((($Mutation_111115 (|l#$Mutation_111115| T@$Location) (|p#$Mutation_111115| (Seq Int)) (|v#$Mutation_111115| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_99401 0)) ((($Mutation_99401 (|l#$Mutation_99401| T@$Location) (|p#$Mutation_99401| (Seq Int)) (|v#$Mutation_99401| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_92732 0)) ((($Mutation_92732 (|l#$Mutation_92732| T@$Location) (|p#$Mutation_92732| (Seq Int)) (|v#$Mutation_92732| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_11233 0)) ((($Mutation_11233 (|l#$Mutation_11233| T@$Location) (|p#$Mutation_11233| (Seq Int)) (|v#$Mutation_11233| Int) ) ) ))
(declare-datatypes ((T@$Mutation_88108 0)) ((($Mutation_88108 (|l#$Mutation_88108| T@$Location) (|p#$Mutation_88108| (Seq Int)) (|v#$Mutation_88108| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_87362 0)) ((($Mutation_87362 (|l#$Mutation_87362| T@$Location) (|p#$Mutation_87362| (Seq Int)) (|v#$Mutation_87362| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_85958 0)) ((($Mutation_85958 (|l#$Mutation_85958| T@$Location) (|p#$Mutation_85958| (Seq Int)) (|v#$Mutation_85958| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_85212 0)) ((($Mutation_85212 (|l#$Mutation_85212| T@$Location) (|p#$Mutation_85212| (Seq Int)) (|v#$Mutation_85212| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_83808 0)) ((($Mutation_83808 (|l#$Mutation_83808| T@$Location) (|p#$Mutation_83808| (Seq Int)) (|v#$Mutation_83808| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_83062 0)) ((($Mutation_83062 (|l#$Mutation_83062| T@$Location) (|p#$Mutation_83062| (Seq Int)) (|v#$Mutation_83062| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-datatypes ((T@$Mutation_81658 0)) ((($Mutation_81658 (|l#$Mutation_81658| T@$Location) (|p#$Mutation_81658| (Seq Int)) (|v#$Mutation_81658| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_80912 0)) ((($Mutation_80912 (|l#$Mutation_80912| T@$Location) (|p#$Mutation_80912| (Seq Int)) (|v#$Mutation_80912| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_79508 0)) ((($Mutation_79508 (|l#$Mutation_79508| T@$Location) (|p#$Mutation_79508| (Seq Int)) (|v#$Mutation_79508| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_78762 0)) ((($Mutation_78762 (|l#$Mutation_78762| T@$Location) (|p#$Mutation_78762| (Seq Int)) (|v#$Mutation_78762| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_77358 0)) ((($Mutation_77358 (|l#$Mutation_77358| T@$Location) (|p#$Mutation_77358| (Seq Int)) (|v#$Mutation_77358| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_76612 0)) ((($Mutation_76612 (|l#$Mutation_76612| T@$Location) (|p#$Mutation_76612| (Seq Int)) (|v#$Mutation_76612| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_75170 0)) ((($Mutation_75170 (|l#$Mutation_75170| T@$Location) (|p#$Mutation_75170| (Seq Int)) (|v#$Mutation_75170| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_74424 0)) ((($Mutation_74424 (|l#$Mutation_74424| T@$Location) (|p#$Mutation_74424| (Seq Int)) (|v#$Mutation_74424| (Seq |T@#0|)) ) ) ))
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_72434_| (|T@[$1_Event_EventHandle]Multiset_72434| T@$1_Event_EventHandle) T@Multiset_72434)
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
(declare-fun ReverseVec_65692 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_64904 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_65101 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_65298 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_65889 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_65495 ((Seq T@$1_VASPDomain_VASPDomain)) (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun ReverseVec_64707 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_72434| |T@[$1_Event_EventHandle]Multiset_72434|) |T@[$1_Event_EventHandle]Multiset_72434|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |SlidingNoncebpl.165:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |SlidingNoncebpl.169:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |SlidingNoncebpl.173:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |SlidingNoncebpl.177:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |SlidingNoncebpl.181:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |SlidingNoncebpl.191:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |SlidingNoncebpl.457:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |SlidingNoncebpl.466:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |SlidingNoncebpl.595:13|
 :skolemid |15|
))))
 :qid |SlidingNoncebpl.593:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |SlidingNoncebpl.600:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |SlidingNoncebpl.608:17|
 :skolemid |18|
)))))
 :qid |SlidingNoncebpl.604:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |SlidingNoncebpl.775:13|
 :skolemid |20|
))))
 :qid |SlidingNoncebpl.773:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |SlidingNoncebpl.780:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |SlidingNoncebpl.788:17|
 :skolemid |23|
)))))
 :qid |SlidingNoncebpl.784:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |SlidingNoncebpl.955:13|
 :skolemid |25|
))))
 :qid |SlidingNoncebpl.953:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |SlidingNoncebpl.960:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |SlidingNoncebpl.968:17|
 :skolemid |28|
)))))
 :qid |SlidingNoncebpl.964:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |SlidingNoncebpl.1135:13|
 :skolemid |30|
))))
 :qid |SlidingNoncebpl.1133:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |SlidingNoncebpl.1140:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |SlidingNoncebpl.1148:17|
 :skolemid |33|
)))))
 :qid |SlidingNoncebpl.1144:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_VASPDomain_VASPDomain'| (seq.nth v@@12 i@@12)))
 :qid |SlidingNoncebpl.1315:13|
 :skolemid |35|
))))
 :qid |SlidingNoncebpl.1313:50|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12))
)))
(assert (forall ((v@@13 (Seq T@$1_VASPDomain_VASPDomain)) (e@@3 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@13 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |SlidingNoncebpl.1320:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |SlidingNoncebpl.1328:17|
 :skolemid |38|
)))))
 :qid |SlidingNoncebpl.1324:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@14 i@@15)))
 :qid |SlidingNoncebpl.1495:13|
 :skolemid |40|
))))
 :qid |SlidingNoncebpl.1493:51|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14))
)))
(assert (forall ((v@@15 (Seq T@$1_ValidatorConfig_Config)) (e@@4 T@$1_ValidatorConfig_Config) ) (! (let ((i@@16 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |SlidingNoncebpl.1500:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |SlidingNoncebpl.1508:17|
 :skolemid |43|
)))))
 :qid |SlidingNoncebpl.1504:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'vec'u8''| (seq.nth v@@16 i@@18)))
 :qid |SlidingNoncebpl.1675:13|
 :skolemid |45|
))))
 :qid |SlidingNoncebpl.1673:33|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@16))
)))
(assert (forall ((v@@17 (Seq (Seq Int))) (e@@5 (Seq Int)) ) (! (let ((i@@19 (|$IndexOfVec'vec'u8''| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |SlidingNoncebpl.1680:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |SlidingNoncebpl.1688:17|
 :skolemid |48|
)))))
 :qid |SlidingNoncebpl.1684:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'address'| (seq.nth v@@18 i@@21)))
 :qid |SlidingNoncebpl.1855:13|
 :skolemid |50|
))))
 :qid |SlidingNoncebpl.1853:33|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'address''| v@@18))
)))
(assert (forall ((v@@19 (Seq Int)) (e@@6 Int) ) (! (let ((i@@22 (|$IndexOfVec'address'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |SlidingNoncebpl.1860:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |SlidingNoncebpl.1868:17|
 :skolemid |53|
)))))
 :qid |SlidingNoncebpl.1864:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'address'| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'u8'| (seq.nth v@@20 i@@24)))
 :qid |SlidingNoncebpl.2035:13|
 :skolemid |55|
))))
 :qid |SlidingNoncebpl.2033:28|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'u8''| v@@20))
)))
(assert (forall ((v@@21 (Seq Int)) (e@@7 Int) ) (! (let ((i@@25 (|$IndexOfVec'u8'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |SlidingNoncebpl.2040:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |SlidingNoncebpl.2048:17|
 :skolemid |58|
)))))
 :qid |SlidingNoncebpl.2044:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'u8'| v@@21 e@@7))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |SlidingNoncebpl.2221:15|
 :skolemid |60|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |SlidingNoncebpl.2237:15|
 :skolemid |61|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |SlidingNoncebpl.2308:15|
 :skolemid |62|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |SlidingNoncebpl.2311:15|
 :skolemid |63|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_72434| stream) 0) (forall ((v@@22 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_72434| stream) v@@22) 0)
 :qid |SlidingNoncebpl.134:13|
 :skolemid |2|
))))
 :qid |SlidingNoncebpl.2372:13|
 :skolemid |64|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |SlidingNoncebpl.2413:80|
 :skolemid |66|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |SlidingNoncebpl.2419:15|
 :skolemid |67|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |SlidingNoncebpl.2469:82|
 :skolemid |68|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |SlidingNoncebpl.2475:15|
 :skolemid |69|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |SlidingNoncebpl.2525:80|
 :skolemid |70|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |SlidingNoncebpl.2531:15|
 :skolemid |71|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |SlidingNoncebpl.2581:79|
 :skolemid |72|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |SlidingNoncebpl.2587:15|
 :skolemid |73|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |SlidingNoncebpl.2637:76|
 :skolemid |74|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |SlidingNoncebpl.2643:15|
 :skolemid |75|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |SlidingNoncebpl.2693:78|
 :skolemid |76|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |SlidingNoncebpl.2699:15|
 :skolemid |77|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |SlidingNoncebpl.2749:74|
 :skolemid |78|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |SlidingNoncebpl.2755:15|
 :skolemid |79|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |SlidingNoncebpl.2805:69|
 :skolemid |80|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |SlidingNoncebpl.2811:15|
 :skolemid |81|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |SlidingNoncebpl.2861:70|
 :skolemid |82|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |SlidingNoncebpl.2867:15|
 :skolemid |83|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |SlidingNoncebpl.2917:60|
 :skolemid |84|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |SlidingNoncebpl.2923:15|
 :skolemid |85|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |SlidingNoncebpl.2973:66|
 :skolemid |86|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |SlidingNoncebpl.2979:15|
 :skolemid |87|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |SlidingNoncebpl.3029:60|
 :skolemid |88|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |SlidingNoncebpl.3035:15|
 :skolemid |89|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |SlidingNoncebpl.3085:63|
 :skolemid |90|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |SlidingNoncebpl.3091:15|
 :skolemid |91|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |SlidingNoncebpl.3141:79|
 :skolemid |92|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |SlidingNoncebpl.3147:15|
 :skolemid |93|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |SlidingNoncebpl.3197:82|
 :skolemid |94|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |SlidingNoncebpl.3203:15|
 :skolemid |95|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |SlidingNoncebpl.3253:88|
 :skolemid |96|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |SlidingNoncebpl.3259:15|
 :skolemid |97|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |SlidingNoncebpl.3309:72|
 :skolemid |98|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |SlidingNoncebpl.3315:15|
 :skolemid |99|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |SlidingNoncebpl.3394:61|
 :skolemid |100|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |SlidingNoncebpl.4209:36|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |SlidingNoncebpl.4571:71|
 :skolemid |104|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |SlidingNoncebpl.4635:46|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |SlidingNoncebpl.4648:64|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |SlidingNoncebpl.4661:75|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |SlidingNoncebpl.4674:72|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |SlidingNoncebpl.4703:55|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |SlidingNoncebpl.4725:46|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((account T@$signer) (seq_nonce Int) ) (! (let (($$res ($1_SlidingNonce_spec_try_record_nonce account seq_nonce)))
(|$IsValid'u64'| $$res))
 :qid |SlidingNoncebpl.4736:15|
 :skolemid |111|
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |SlidingNoncebpl.4749:49|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |SlidingNoncebpl.5191:71|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |SlidingNoncebpl.5205:91|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |SlidingNoncebpl.5219:113|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12) (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@12)))
 :qid |SlidingNoncebpl.5233:89|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |SlidingNoncebpl.5247:75|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |SlidingNoncebpl.5261:73|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |SlidingNoncebpl.5281:48|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |SlidingNoncebpl.5297:57|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |SlidingNoncebpl.5311:83|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |SlidingNoncebpl.5325:103|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |SlidingNoncebpl.5339:125|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20) true)
 :qid |SlidingNoncebpl.5353:101|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21) true)
 :qid |SlidingNoncebpl.5367:87|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22) true)
 :qid |SlidingNoncebpl.5381:85|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@23)))
 :qid |SlidingNoncebpl.5395:48|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@24)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@24))))
 :qid |SlidingNoncebpl.5416:45|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@25)))
 :qid |SlidingNoncebpl.5430:51|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@26)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@26))))
 :qid |SlidingNoncebpl.5453:48|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26))
)))
(assert (forall ((s@@27 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@27)))
 :qid |SlidingNoncebpl.5745:49|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27))
)))
(assert (forall ((s@@28 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@28)))
 :qid |SlidingNoncebpl.5758:65|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@29)))
 :qid |SlidingNoncebpl.6265:45|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@30)))
 :qid |SlidingNoncebpl.6278:45|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31) true)
 :qid |SlidingNoncebpl.6291:55|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32) true)
 :qid |SlidingNoncebpl.6305:55|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@33)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@33))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@33))))
 :qid |SlidingNoncebpl.6325:38|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@34))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@34))))
 :qid |SlidingNoncebpl.6346:44|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))))
 :qid |SlidingNoncebpl.6397:53|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))))
 :qid |SlidingNoncebpl.6459:53|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@37) true)
 :qid |SlidingNoncebpl.6485:55|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@38) true)
 :qid |SlidingNoncebpl.6499:55|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@38))
)))
(assert (forall ((s@@39 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@39)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@39)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@39))))
 :qid |SlidingNoncebpl.6516:38|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@40) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@40)))
 :qid |SlidingNoncebpl.6530:48|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@41) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@41)))
 :qid |SlidingNoncebpl.6544:48|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@41))
)))
(assert (forall ((s@@42 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@42)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@42)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@42))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@42))))
 :qid |SlidingNoncebpl.6564:41|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@42))
)))
(assert (forall ((s@@43 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@43)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@43)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@43))))
 :qid |SlidingNoncebpl.6582:57|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@43))
)))
(assert (forall ((s@@44 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@44) true)
 :qid |SlidingNoncebpl.8688:68|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@44))
)))
(assert (forall ((s@@45 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@45)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@45)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@45))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@45))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@45))))
 :qid |SlidingNoncebpl.8710:66|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@46)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@46)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@46))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@46))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@46))))
 :qid |SlidingNoncebpl.8736:66|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@46))
)))
(assert (forall ((s@@47 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@47)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@47)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@47))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@47))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@47))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@47))))
 :qid |SlidingNoncebpl.8765:56|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@48)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@48)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@48))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@48))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@48))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@48))))
 :qid |SlidingNoncebpl.8795:56|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@48))
)))
(assert (forall ((s@@49 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@49) true)
 :qid |SlidingNoncebpl.9229:31|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@49))
)))
(assert (forall ((s@@50 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@50) true)
 :qid |SlidingNoncebpl.9559:31|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@50))
)))
(assert (forall ((s@@51 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@51)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@51)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@51))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@51))))
 :qid |SlidingNoncebpl.9578:35|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@51))
)))
(assert (forall ((s@@52 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@52) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@52)))
 :qid |SlidingNoncebpl.9987:45|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@52))
)))
(assert (forall ((s@@53 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@53)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@53))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@53))))
 :qid |SlidingNoncebpl.10006:50|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@53))
)))
(assert (forall ((s@@54 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@54) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@54)))
 :qid |SlidingNoncebpl.10021:52|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@54))
)))
(assert (forall ((s@@55 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@55) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@55)))
 :qid |SlidingNoncebpl.10035:46|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@55))
)))
(assert (forall ((s@@56 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@56) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@56)))
 :qid |SlidingNoncebpl.10229:38|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@56))
)))
(assert (forall ((s@@57 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@57) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@57)))
 :qid |SlidingNoncebpl.10243:39|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@57))
)))
(assert (forall ((s@@58 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@58)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@58)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@58))))
 :qid |SlidingNoncebpl.10270:65|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@58))
)))
(assert (forall ((s@@59 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@59)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@59)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@59))))
 :qid |SlidingNoncebpl.10638:60|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@59))
)))
(assert (forall ((s@@60 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@60)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@60)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@60))))
 :qid |SlidingNoncebpl.10655:66|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@60))
)))
(assert (forall ((s@@61 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@61)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@61)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@61))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@61))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@61))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@61))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@61))))
 :qid |SlidingNoncebpl.10684:50|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@61))
)))
(assert (forall ((s@@62 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@62) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@62)))
 :qid |SlidingNoncebpl.10703:45|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@62))
)))
(assert (forall ((s@@63 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@63)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@63)) true))
 :qid |SlidingNoncebpl.11010:87|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@63))
)))
(assert (forall ((s@@64 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@64) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@64)))
 :qid |SlidingNoncebpl.11211:47|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@65)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@65)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@65))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@65))))
 :qid |SlidingNoncebpl.11231:58|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@65))
)))
(assert (forall ((s@@66 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@66) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@66)))
 :qid |SlidingNoncebpl.11246:39|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@66))
)))
(assert (forall ((s@@67 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@67)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@67)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@67))))
 :qid |SlidingNoncebpl.11268:58|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@68)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@68)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@68))))
 :qid |SlidingNoncebpl.11285:58|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@68))
)))
(assert (forall ((s@@69 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@69) true)
 :qid |SlidingNoncebpl.11300:51|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@69))
)))
(assert (forall ((s@@70 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@70)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@70)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@70))))
 :qid |SlidingNoncebpl.11317:60|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@71)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@71)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@71))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@71))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@71))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@71))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@71))))
 :qid |SlidingNoncebpl.11603:47|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@72)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@72)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@72))))
 :qid |SlidingNoncebpl.11625:63|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@73) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@73)))
 :qid |SlidingNoncebpl.11640:57|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@73))
)))
(assert (forall ((s@@74 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@74) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@74)))
 :qid |SlidingNoncebpl.11653:55|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@74))
)))
(assert (forall ((s@@75 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@75) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@75)))
 :qid |SlidingNoncebpl.11667:55|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@76)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@76)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@76))))
 :qid |SlidingNoncebpl.11684:54|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@77) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@77)))
 :qid |SlidingNoncebpl.11698:55|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@78) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@78)))
 :qid |SlidingNoncebpl.11712:57|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@79)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@79)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@79))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@79))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@79))))
 :qid |SlidingNoncebpl.11734:56|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@80)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@80)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@80))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@80))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@80))))
 :qid |SlidingNoncebpl.11759:52|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@81) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@81)))
 :qid |SlidingNoncebpl.11775:54|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@82)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@82)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@82))))
 :qid |SlidingNoncebpl.14955:47|
 :skolemid |299|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@83)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@83)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@83))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@83))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@83))))
 :qid |SlidingNoncebpl.14979:47|
 :skolemid |300|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemConsensusConfig_DiemConsensusConfig) ) (! (= (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@84) (|$IsValid'vec'u8''| (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| s@@84)))
 :qid |SlidingNoncebpl.15211:63|
 :skolemid |301|
 :pattern ( (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@85) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@85)))
 :qid |SlidingNoncebpl.15547:49|
 :skolemid |302|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@86)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@86)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@86))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@86))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@86))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@86))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@86))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@86))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@86))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@86))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@86))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@86))))
 :qid |SlidingNoncebpl.15590:49|
 :skolemid |303|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@87)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@87)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@87))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@87))))
 :qid |SlidingNoncebpl.15619:48|
 :skolemid |304|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@88) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@88)))
 :qid |SlidingNoncebpl.15903:47|
 :skolemid |305|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@88))
)))
(assert (forall ((v@@23 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_11086 v@@23)))
 (and (= (seq.len r@@0) (seq.len v@@23)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len r@@0))) (= (seq.nth r@@0 i@@27) (seq.nth v@@23 (- (- (seq.len v@@23) i@@27) 1))))
 :qid |SlidingNoncebpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@27))
))))
 :qid |SlidingNoncebpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_11086 v@@23))
)))
(assert (forall ((v@@24 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_65692 v@@24)))
 (and (= (seq.len r@@1) (seq.len v@@24)) (forall ((i@@28 Int) ) (!  (=> (and (>= i@@28 0) (< i@@28 (seq.len r@@1))) (= (seq.nth r@@1 i@@28) (seq.nth v@@24 (- (- (seq.len v@@24) i@@28) 1))))
 :qid |SlidingNoncebpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@28))
))))
 :qid |SlidingNoncebpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_65692 v@@24))
)))
(assert (forall ((v@@25 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_64904 v@@25)))
 (and (= (seq.len r@@2) (seq.len v@@25)) (forall ((i@@29 Int) ) (!  (=> (and (>= i@@29 0) (< i@@29 (seq.len r@@2))) (= (seq.nth r@@2 i@@29) (seq.nth v@@25 (- (- (seq.len v@@25) i@@29) 1))))
 :qid |SlidingNoncebpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@29))
))))
 :qid |SlidingNoncebpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_64904 v@@25))
)))
(assert (forall ((v@@26 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_65101 v@@26)))
 (and (= (seq.len r@@3) (seq.len v@@26)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len r@@3))) (= (seq.nth r@@3 i@@30) (seq.nth v@@26 (- (- (seq.len v@@26) i@@30) 1))))
 :qid |SlidingNoncebpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@30))
))))
 :qid |SlidingNoncebpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_65101 v@@26))
)))
(assert (forall ((v@@27 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_65298 v@@27)))
 (and (= (seq.len r@@4) (seq.len v@@27)) (forall ((i@@31 Int) ) (!  (=> (and (>= i@@31 0) (< i@@31 (seq.len r@@4))) (= (seq.nth r@@4 i@@31) (seq.nth v@@27 (- (- (seq.len v@@27) i@@31) 1))))
 :qid |SlidingNoncebpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@31))
))))
 :qid |SlidingNoncebpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_65298 v@@27))
)))
(assert (forall ((v@@28 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_65889 v@@28)))
 (and (= (seq.len r@@5) (seq.len v@@28)) (forall ((i@@32 Int) ) (!  (=> (and (>= i@@32 0) (< i@@32 (seq.len r@@5))) (= (seq.nth r@@5 i@@32) (seq.nth v@@28 (- (- (seq.len v@@28) i@@32) 1))))
 :qid |SlidingNoncebpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@32))
))))
 :qid |SlidingNoncebpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_65889 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (let ((r@@6 (ReverseVec_65495 v@@29)))
 (and (= (seq.len r@@6) (seq.len v@@29)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@6))) (= (seq.nth r@@6 i@@33) (seq.nth v@@29 (- (- (seq.len v@@29) i@@33) 1))))
 :qid |SlidingNoncebpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@33))
))))
 :qid |SlidingNoncebpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_65495 v@@29))
)))
(assert (forall ((v@@30 (Seq |T@#0|)) ) (! (let ((r@@7 (ReverseVec_64707 v@@30)))
 (and (= (seq.len r@@7) (seq.len v@@30)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@7))) (= (seq.nth r@@7 i@@34) (seq.nth v@@30 (- (- (seq.len v@@30) i@@34) 1))))
 :qid |SlidingNoncebpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@34))
))))
 :qid |SlidingNoncebpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_64707 v@@30))
)))
(assert (forall ((|l#0| Bool) (i@@35 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@35) |l#0|)
 :qid |SlidingNoncebpl.250:54|
 :skolemid |396|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@35))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_72434|) (|l#1| |T@[$1_Event_EventHandle]Multiset_72434|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_72434| (|Select__T@[$1_Event_EventHandle]Multiset_72434_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_72434| (|Select__T@[$1_Event_EventHandle]Multiset_72434_| |l#1| handle@@0))))
(Multiset_72434 (|lambda#3| (|v#Multiset_72434| (|Select__T@[$1_Event_EventHandle]Multiset_72434_| |l#0@@0| handle@@0)) (|v#Multiset_72434| (|Select__T@[$1_Event_EventHandle]Multiset_72434_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |SlidingNoncebpl.2382:13|
 :skolemid |397|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@31 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@31) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@31) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@31)))
 :qid |SlidingNoncebpl.129:29|
 :skolemid |398|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@31))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t24@0 () T@$Mutation_11233)
(declare-fun $t14@1 () T@$Mutation_99401)
(declare-fun $t24@1 () T@$Mutation_11233)
(declare-fun _$t2 () Int)
(declare-fun $t14@2 () T@$Mutation_99401)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 () T@$Memory_98906)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_98906)
(declare-fun |Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int T@$1_DiemTimestamp_CurrentTimeMicroseconds) |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ( ?x1 Int) ( ?x2 T@$1_DiemTimestamp_CurrentTimeMicroseconds)) (! (= (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemTimestamp_CurrentTimeMicroseconds)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_99584)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_99771)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_99864)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_99950)
(declare-fun $1_DiemSystem_CapabilityHolder_$memory () T@$Memory_100023)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_100094)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_100178)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory| () T@$Memory_100262)
(declare-fun $1_XDX_Reserve_$memory () T@$Memory_100333)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_100417)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory| () T@$Memory_100501)
(declare-fun |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory| () T@$Memory_100572)
(declare-fun $1_DualAttestation_Limit_$memory () T@$Memory_100669)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory| () T@$Memory_100753)
(declare-fun $1_ChainId_ChainId_$memory () T@$Memory_100837)
(declare-fun $1_AccountFreezing_FreezeEventsHolder_$memory () T@$Memory_100908)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_100979)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int) T@$1_AccountFreezing_FreezingBit)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory () T@$Memory_101151)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory () T@$Memory_101222)
(declare-fun $1_DiemBlock_BlockMetadata_$memory () T@$Memory_101293)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory| () T@$Memory_101377)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory| () T@$Memory_99458)
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
(declare-fun $t14 () T@$Mutation_99401)
(declare-fun $t14@0 () T@$Mutation_99401)
(declare-fun $abort_code@0 () Int)
(declare-fun $t12 () Bool)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies () |T@[Int]Bool|)
(declare-fun $t11 () Int)
(declare-fun $t10 () Bool)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t7 () T@$Mutation_99401)
(declare-fun $t24 () T@$Mutation_11233)
; Valid
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun _$t0@@0 () T@$signer)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@1 () T@$Memory_99771)
(declare-fun $t8@0 () Int)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@0 () T@$Memory_99771)
(declare-fun |Store__T@[Int]$1_SlidingNonce_SlidingNonce_| (|T@[Int]$1_SlidingNonce_SlidingNonce| Int T@$1_SlidingNonce_SlidingNonce) |T@[Int]$1_SlidingNonce_SlidingNonce|)
(declare-fun |Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|T@[Int]$1_SlidingNonce_SlidingNonce| Int) T@$1_SlidingNonce_SlidingNonce)
(assert (forall ( ( ?x0 |T@[Int]$1_SlidingNonce_SlidingNonce|) ( ?x1 Int) ( ?x2 T@$1_SlidingNonce_SlidingNonce)) (! (= (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_SlidingNonce_SlidingNonce|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_SlidingNonce_SlidingNonce)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?y1))) :weight 0)))
(declare-fun $t11@0@@0 () T@$1_SlidingNonce_SlidingNonce)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $1_SlidingNonce_SlidingNonce_$modifies () |T@[Int]Bool|)
(declare-fun $t7@@0 () Int)
(declare-fun $t4@0 () Bool)
(declare-fun $t3 () Int)
; Valid
(declare-fun _$t0@@1 () T@$signer)
(declare-fun _$t1@@0 () Int)
(declare-fun $t7@0 () Int)
(declare-fun $t9@0 () Bool)
(declare-fun $t10@@0 () Int)
(declare-fun $t6 () Bool)
(declare-fun $t7@@1 () Int)
(declare-fun $t5 () Int)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@2 () T@$Memory_99771)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@1@@0 () T@$Memory_99771)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@0@@0 () T@$Memory_99771)
(declare-fun |$temp_0'$1_SlidingNonce_SlidingNonce'@0| () T@$1_SlidingNonce_SlidingNonce)
; Valid
(declare-fun $t35 () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun |Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|T@[Int]$1_DiemAccount_AccountOperationsCapability| Int) T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@4 () T@$Memory_101151)
(declare-fun $t36 () T@$1_Event_EventHandle)
(declare-fun $t37 () T@$1_DiemAccount_CreateAccountEvent)
(declare-fun inline$$1_DiemAccount_create_signer$0$signer@1 () T@$signer)
(declare-fun $1_Roles_RoleId_$memory@3 () T@$Memory_99584)
(declare-fun $1_DiemAccount_DiemAccount_$memory@2 () T@$Memory_132997)
(declare-fun $t30 () Int)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@2 () T@$Memory_100979)
(declare-fun $t31 () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun |Select__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int) T@$1_DiemAccount_DiemAccount)
(declare-fun $t38 () T@$1_DiemAccount_CreateAccountEvent)
(declare-fun $t39 () T@$1_Event_EventHandle)
(declare-fun $es@0 () T@$EventStore)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_72434_| (|T@[$1_Event_EventHandle]Multiset_72434| T@$1_Event_EventHandle T@Multiset_72434) |T@[$1_Event_EventHandle]Multiset_72434|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_72434|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_72434)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|Store__T@[$1_Event_EventHandle]Multiset_72434_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_72434|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_72434)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|Store__T@[$1_Event_EventHandle]Multiset_72434_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_72434_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@1 () T@$Memory_101151)
(declare-fun $t40 () T@$1_Event_EventHandle)
(declare-fun $t41 () T@$1_DiemAccount_CreateAccountEvent)
(declare-fun _$t0@@2 () (Seq Int))
(declare-fun $t7@@2 () Int)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory@1 () T@$Memory_101222)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@2@@0 () T@$Memory_99771)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_132997)
(declare-fun |$temp_0'bool'@4| () Bool)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@3 () T@$Memory_101151)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@2 () T@$Memory_101151)
(declare-fun |Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|T@[Int]$1_DiemAccount_AccountOperationsCapability| Int T@$1_DiemAccount_AccountOperationsCapability) |T@[Int]$1_DiemAccount_AccountOperationsCapability|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ( ?x1 Int) ( ?x2 T@$1_DiemAccount_AccountOperationsCapability)) (! (= (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemAccount_AccountOperationsCapability)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemAccount_AccountOperationsCapability'@0| () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun |$temp_0'bool'@3| () Bool)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@1 () T@$Memory_100979)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@0 () T@$Memory_100979)
(declare-fun |Store__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int T@$1_AccountFreezing_FreezingBit) |T@[Int]$1_AccountFreezing_FreezingBit|)
(assert (forall ( ( ?x0 |T@[Int]$1_AccountFreezing_FreezingBit|) ( ?x1 Int) ( ?x2 T@$1_AccountFreezing_FreezingBit)) (! (= (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_AccountFreezing_FreezingBit|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_AccountFreezing_FreezingBit)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_AccountFreezing_FreezingBit'@0| () T@$1_AccountFreezing_FreezingBit)
(declare-fun |$temp_0'bool'@2| () Bool)
(declare-fun $1_Event_EventHandleGenerator_$memory@1 () T@$Memory_92101)
(declare-fun $1_Event_EventHandleGenerator_$memory () T@$Memory_92101)
(declare-fun $1_Event_EventHandleGenerator_$memory@0 () T@$Memory_92101)
(declare-fun |Store__T@[Int]$1_Event_EventHandleGenerator_| (|T@[Int]$1_Event_EventHandleGenerator| Int T@$1_Event_EventHandleGenerator) |T@[Int]$1_Event_EventHandleGenerator|)
(declare-fun |Select__T@[Int]$1_Event_EventHandleGenerator_| (|T@[Int]$1_Event_EventHandleGenerator| Int) T@$1_Event_EventHandleGenerator)
(assert (forall ( ( ?x0 |T@[Int]$1_Event_EventHandleGenerator|) ( ?x1 Int) ( ?x2 T@$1_Event_EventHandleGenerator)) (! (= (|Select__T@[Int]$1_Event_EventHandleGenerator_| (|Store__T@[Int]$1_Event_EventHandleGenerator_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Event_EventHandleGenerator|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Event_EventHandleGenerator)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Event_EventHandleGenerator_| (|Store__T@[Int]$1_Event_EventHandleGenerator_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Event_EventHandleGenerator_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Event_EventHandleGenerator'@0| () T@$1_Event_EventHandleGenerator)
(declare-fun |$temp_0'bool'@1| () Bool)
(declare-fun $1_DiemAccount_DiemAccount_$memory@1 () T@$Memory_132997)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0 () T@$Memory_132997)
(declare-fun |Store__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int T@$1_DiemAccount_DiemAccount) |T@[Int]$1_DiemAccount_DiemAccount|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemAccount_DiemAccount'@0| () T@$1_DiemAccount_DiemAccount)
(declare-fun $t34 () Bool)
(declare-fun $t9@0@@0 () Int)
(declare-fun $t9@@0 () Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $t32 () Int)
(declare-fun $t33 () Int)
(declare-fun $1_DiemAccount_DiemAccount_$modifies () |T@[Int]Bool|)
(declare-fun $1_Event_EventHandleGenerator_$modifies () |T@[Int]Bool|)
(declare-fun $1_AccountFreezing_FreezingBit_$modifies () |T@[Int]Bool|)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$modifies () |T@[Int]Bool|)
(declare-fun $abort_code@4 () Int)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory@0 () T@$Memory_101222)
(declare-fun |Store__T@[Int]$1_DiemAccount_DiemWriteSetManager_| (|T@[Int]$1_DiemAccount_DiemWriteSetManager| Int T@$1_DiemAccount_DiemWriteSetManager) |T@[Int]$1_DiemAccount_DiemWriteSetManager|)
(declare-fun |Select__T@[Int]$1_DiemAccount_DiemWriteSetManager_| (|T@[Int]$1_DiemAccount_DiemWriteSetManager| Int) T@$1_DiemAccount_DiemWriteSetManager)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ( ?x1 Int) ( ?x2 T@$1_DiemAccount_DiemWriteSetManager)) (! (= (|Select__T@[Int]$1_DiemAccount_DiemWriteSetManager_| (|Store__T@[Int]$1_DiemAccount_DiemWriteSetManager_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemAccount_DiemWriteSetManager)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_DiemWriteSetManager_| (|Store__T@[Int]$1_DiemAccount_DiemWriteSetManager_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_DiemWriteSetManager_| ?x0 ?y1))) :weight 0)))
(declare-fun $t29@0 () T@$1_DiemAccount_DiemWriteSetManager)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun |inline$$1_Event_new_event_handle'$1_DiemAccount_AdminTransactionEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$modifies () |T@[Int]Bool|)
(declare-sort |T@[$1_Event_EventHandle]Bool| 0)
(declare-fun |Select__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle) Bool)
(declare-fun $1_Event_EventHandles@0 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun $1_Event_EventHandles@1 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun |Store__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle Bool) |T@[$1_Event_EventHandle]Bool|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$Not$1$dst@1 () Bool)
(declare-fun $t27 () Int)
(declare-fun $t24@0@@0 () Bool)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@0 () T@$Memory_101151)
(declare-fun $t22@0 () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun inline$$1_AccountLimits_grant_mutation_capability$0$$ret0@1 () T@$1_AccountLimits_AccountLimitMutationCapability)
(declare-fun |inline$$1_Event_new_event_handle'$1_DiemAccount_CreateAccountEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-fun $1_Event_EventHandles () |T@[$1_Event_EventHandle]Bool|)
(declare-fun inline$$1_AccountLimits_grant_mutation_capability$0$$t3@0 () Int)
(declare-fun inline$$1_AccountLimits_grant_mutation_capability$0$$ret0@0 () T@$1_AccountLimits_AccountLimitMutationCapability)
(declare-fun inline$$1_AccountLimits_grant_mutation_capability$0$$t5@0 () Bool)
(declare-fun inline$$1_AccountLimits_grant_mutation_capability$0$$t4@0 () Int)
(declare-fun inline$$1_AccountLimits_grant_mutation_capability$0$$t2@0 () Bool)
(declare-fun inline$$1_AccountLimits_grant_mutation_capability$0$$t7@1 () T@$1_AccountLimits_AccountLimitMutationCapability)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun inline$$1_AccountLimits_grant_mutation_capability$0$$t1@0 () Int)
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun $t19 () Int)
(declare-fun $t18 () Int)
(declare-fun $t15@0@@0 () Bool)
(declare-fun |$temp_0'bool'@0@@0| () Bool)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@1@@1 () T@$Memory_99771)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@0@@1 () T@$Memory_99771)
(declare-fun |$temp_0'$1_SlidingNonce_SlidingNonce'@0@@0| () T@$1_SlidingNonce_SlidingNonce)
(declare-fun $t13 () Bool)
(declare-fun $1_SlidingNonce_SlidingNonce_$modifies@@0 () |T@[Int]Bool|)
(declare-fun inline$$1_Roles_grant_diem_root_role$0$$t2@0 () Int)
(declare-fun inline$$1_Roles_grant_diem_root_role$0$$t6@0 () Bool)
(declare-fun inline$$1_Roles_grant_diem_root_role$0$$t3@0 () Bool)
(declare-fun inline$$1_Roles_grant_diem_root_role$0$$t1@0 () Bool)
(declare-fun $1_Roles_RoleId_$memory@2 () T@$Memory_99584)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun |inline$$1_Roles_grant_diem_root_role$0$$temp_0'bool'@1| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1 () T@$Memory_99584)
(declare-fun $1_Roles_RoleId_$memory@0 () T@$Memory_99584)
(declare-fun |Store__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int T@$1_Roles_RoleId) |T@[Int]$1_Roles_RoleId|)
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Roles_RoleId_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Roles_grant_diem_root_role$0$$temp_0'$1_Roles_RoleId'@1| () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_grant_diem_root_role$0$$t5@0 () Int)
(declare-fun $t12@@0 () Bool)
(declare-fun $1_Roles_RoleId_$modifies () |T@[Int]Bool|)
(declare-fun $t8 () Bool)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_104707)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_105265)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_129448)
(declare-fun $1_VASPDomain_VASPDomainManager_$memory () T@$Memory_127269)
(declare-fun $1_VASPDomain_VASPDomains_$memory () T@$Memory_127636)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_133966)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_134057)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_131983)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_128239)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_128175)
(declare-fun $t6@@0 () Int)
(push 1)
(set-info :boogie-vc-id $1_DiemAccount_create_diem_root_account$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 234934) (let ((anon51_correct  (=> (= $t35 (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory@4) 173345816)) (=> (and (and (= $t36 (|$creation_events#$1_DiemAccount_AccountOperationsCapability| (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory@4) 173345816))) (= $t37 ($1_DiemAccount_CreateAccountEvent (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory@3) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)))))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory@4) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_132997| $1_DiemAccount_DiemAccount_$memory@2) $t30))) (=> (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory@2) $t30) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory@2) $t30)))) (= $t35 ($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| $t31) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| $t31)))) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory@2) $t30)))) 0)) (= $t30 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory@2) $t30))) 0))))) (and (and (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory@2) $t30)))) 0)) (= $t30 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory@2) $t30))) 0)))) (= $t38 $t37)) (and (= $t39 $t36) (= $es@0 (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| $es) $t39)))
(let ((stream_new (let ((len (|l#Multiset_72434| stream@@3)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_72434| stream@@3) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t38))))
(Multiset_72434 (|Store__T@[$EventRep]Int_| (|v#Multiset_72434| stream@@3) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t38) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| $es) $t39 stream_new)))))))) (and (=> (= (ControlFlow 0 174454) (- 0 238796)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory@1) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory@4) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory@1) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory@4) 173345816)) (=> (and (= $t40 (|$creation_events#$1_DiemAccount_AccountOperationsCapability| (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory@4) 173345816))) (= $t41 ($1_DiemAccount_CreateAccountEvent 173345816 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory@3) 173345816))))) (and (=> (= (ControlFlow 0 174454) (- 0 238844)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99771| $1_SlidingNonce_SlidingNonce_$memory) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_99771| $1_SlidingNonce_SlidingNonce_$memory) 173345816)) (and (=> (= (ControlFlow 0 174454) (- 0 238854)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (and (=> (= (ControlFlow 0 174454) (- 0 238864)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101222| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_101222| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816)) (and (=> (= (ControlFlow 0 174454) (- 0 238874)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory) 173345816)) (and (=> (= (ControlFlow 0 174454) (- 0 238884)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 174454) (- 0 238894)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) 173345816)) (and (=> (= (ControlFlow 0 174454) (- 0 238904)) (not (not (= (+ 16 (seq.len _$t0@@2)) 32)))) (=> (not (not (= (+ 16 (seq.len _$t0@@2)) 32))) (and (=> (= (ControlFlow 0 174454) (- 0 238922)) (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory@3) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory@3) 173345816) (and (=> (= (ControlFlow 0 174454) (- 0 238930)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory@3) 173345816)) 0)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory@3) 173345816)) 0) (and (=> (= (ControlFlow 0 174454) (- 0 238944)) (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory@4) $t7@@2)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory@4) $t7@@2) (and (=> (= (ControlFlow 0 174454) (- 0 238952)) (|Select__T@[Int]Bool_| (|domain#$Memory_101222| $1_DiemAccount_DiemWriteSetManager_$memory@1) $t7@@2)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_101222| $1_DiemAccount_DiemWriteSetManager_$memory@1) $t7@@2) (and (=> (= (ControlFlow 0 174454) (- 0 238960)) (|Select__T@[Int]Bool_| (|domain#$Memory_99771| $1_SlidingNonce_SlidingNonce_$memory@2@@0) $t7@@2)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99771| $1_SlidingNonce_SlidingNonce_$memory@2@@0) $t7@@2) (and (=> (= (ControlFlow 0 174454) (- 0 238968)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory@3) $t7@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory@3) $t7@@2)) 0))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory@3) $t7@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory@3) $t7@@2)) 0)) (and (=> (= (ControlFlow 0 174454) (- 0 238976)) (|Select__T@[Int]Bool_| (|domain#$Memory_132997| $1_DiemAccount_DiemAccount_$memory@2) $t7@@2)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132997| $1_DiemAccount_DiemAccount_$memory@2) $t7@@2) (and (=> (= (ControlFlow 0 174454) (- 0 238984)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory@2) $t7@@2) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory@2) $t7@@2))))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory@2) $t7@@2) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory@2) $t7@@2)))) (and (=> (= (ControlFlow 0 174454) (- 0 238992)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory@2) $t7@@2)))) 0)) (= $t7@@2 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory@2) $t7@@2))) 0))))) (=> (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory@2) $t7@@2)))) 0)) (= $t7@@2 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory@2) $t7@@2))) 0)))) (and (=> (= (ControlFlow 0 174454) (- 0 239000)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory@2) $t7@@2)))) 0)) (= $t7@@2 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory@2) $t7@@2))) 0))))) (=> (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory@2) $t7@@2)))) 0)) (= $t7@@2 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory@2) $t7@@2))) 0)))) (and (=> (= (ControlFlow 0 174454) (- 0 239008)) (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) addr@@4) (= (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory@2) addr@@4)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) addr@@4)))))
 :qid |SlidingNoncebpl.12848:15|
 :skolemid |228|
))) (=> (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) addr@@5) (= (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory@2) addr@@5)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) addr@@5)))))
 :qid |SlidingNoncebpl.12848:15|
 :skolemid |228|
)) (and (=> (= (ControlFlow 0 174454) (- 0 239043)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| $EmptyEventStore) $t40)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_72434| stream@@4)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_72434| stream@@4) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t41))))
(Multiset_72434 (|Store__T@[$EventRep]Int_| (|v#Multiset_72434| stream@@4) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t41) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| $EmptyEventStore) $t40 stream_new@@0))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@4 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_72434| (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| expected) handle@@4)) (|l#Multiset_72434| (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| actual) handle@@4))) (forall ((v@@35 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_72434| (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| expected) handle@@4)) v@@35) (|Select__T@[$EventRep]Int_| (|v#Multiset_72434| (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| actual) handle@@4)) v@@35))
 :qid |SlidingNoncebpl.139:13|
 :skolemid |3|
)))
 :qid |SlidingNoncebpl.2388:13|
 :skolemid |65|
)))))) (=> (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@0 (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| $EmptyEventStore) $t40)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_72434| stream@@5)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_72434| stream@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t41))))
(Multiset_72434 (|Store__T@[$EventRep]Int_| (|v#Multiset_72434| stream@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t41) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| $EmptyEventStore) $t40 stream_new@@1))))))
 (and (<= (|counter#$EventStore| expected@@0) (|counter#$EventStore| actual@@0)) (forall ((handle@@5 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_72434| (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| expected@@0) handle@@5)) (|l#Multiset_72434| (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| actual@@0) handle@@5))) (forall ((v@@36 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_72434| (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| expected@@0) handle@@5)) v@@36) (|Select__T@[$EventRep]Int_| (|v#Multiset_72434| (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| actual@@0) handle@@5)) v@@36))
 :qid |SlidingNoncebpl.139:13|
 :skolemid |3|
)))
 :qid |SlidingNoncebpl.2388:13|
 :skolemid |65|
))))) (=> (= (ControlFlow 0 174454) (- 0 239068)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@1 (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| $EmptyEventStore) $t40)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_72434| stream@@6)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_72434| stream@@6) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t41))))
(Multiset_72434 (|Store__T@[$EventRep]Int_| (|v#Multiset_72434| stream@@6) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t41) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| $EmptyEventStore) $t40 stream_new@@2))))))
 (and (<= (|counter#$EventStore| actual@@1) (|counter#$EventStore| expected@@1)) (forall ((handle@@6 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_72434| (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| actual@@1) handle@@6)) (|l#Multiset_72434| (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| expected@@1) handle@@6))) (forall ((v@@37 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_72434| (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| actual@@1) handle@@6)) v@@37) (|Select__T@[$EventRep]Int_| (|v#Multiset_72434| (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| expected@@1) handle@@6)) v@@37))
 :qid |SlidingNoncebpl.139:13|
 :skolemid |3|
)))
 :qid |SlidingNoncebpl.2388:13|
 :skolemid |65|
))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon73_Else_correct  (=> (and (and (not |$temp_0'bool'@4|) (= $1_DiemAccount_AccountOperationsCapability_$memory@3 ($Memory_101151 (|Store__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory@1) 173345816 false) (|contents#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory@1)))) (and (= $1_DiemAccount_AccountOperationsCapability_$memory@4 $1_DiemAccount_AccountOperationsCapability_$memory@3) (= (ControlFlow 0 174023) 174454))) anon51_correct)))
(let ((anon73_Then_correct  (=> (and (and |$temp_0'bool'@4| (= $1_DiemAccount_AccountOperationsCapability_$memory@2 ($Memory_101151 (|Store__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory@1) 173345816 true) (|Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory@1) 173345816 |$temp_0'$1_DiemAccount_AccountOperationsCapability'@0|)))) (and (= $1_DiemAccount_AccountOperationsCapability_$memory@4 $1_DiemAccount_AccountOperationsCapability_$memory@2) (= (ControlFlow 0 174466) 174454))) anon51_correct)))
(let ((anon72_Else_correct  (=> (not |$temp_0'bool'@3|) (=> (and (= $1_AccountFreezing_FreezingBit_$memory@1 ($Memory_100979 (|Store__T@[Int]Bool_| (|domain#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory) $t30 false) (|contents#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory))) (= $1_AccountFreezing_FreezingBit_$memory@2 $1_AccountFreezing_FreezingBit_$memory@1)) (and (=> (= (ControlFlow 0 174009) 174466) anon73_Then_correct) (=> (= (ControlFlow 0 174009) 174023) anon73_Else_correct))))))
(let ((anon72_Then_correct  (=> |$temp_0'bool'@3| (=> (and (= $1_AccountFreezing_FreezingBit_$memory@0 ($Memory_100979 (|Store__T@[Int]Bool_| (|domain#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory) $t30 true) (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory) $t30 |$temp_0'$1_AccountFreezing_FreezingBit'@0|))) (= $1_AccountFreezing_FreezingBit_$memory@2 $1_AccountFreezing_FreezingBit_$memory@0)) (and (=> (= (ControlFlow 0 174478) 174466) anon73_Then_correct) (=> (= (ControlFlow 0 174478) 174023) anon73_Else_correct))))))
(let ((anon71_Else_correct  (=> (and (not |$temp_0'bool'@2|) (= $1_Event_EventHandleGenerator_$memory@1 ($Memory_92101 (|Store__T@[Int]Bool_| (|domain#$Memory_92101| $1_Event_EventHandleGenerator_$memory) $t30 false) (|contents#$Memory_92101| $1_Event_EventHandleGenerator_$memory)))) (and (=> (= (ControlFlow 0 173995) 174478) anon72_Then_correct) (=> (= (ControlFlow 0 173995) 174009) anon72_Else_correct)))))
(let ((anon71_Then_correct  (=> (and |$temp_0'bool'@2| (= $1_Event_EventHandleGenerator_$memory@0 ($Memory_92101 (|Store__T@[Int]Bool_| (|domain#$Memory_92101| $1_Event_EventHandleGenerator_$memory) $t30 true) (|Store__T@[Int]$1_Event_EventHandleGenerator_| (|contents#$Memory_92101| $1_Event_EventHandleGenerator_$memory) $t30 |$temp_0'$1_Event_EventHandleGenerator'@0|)))) (and (=> (= (ControlFlow 0 174490) 174478) anon72_Then_correct) (=> (= (ControlFlow 0 174490) 174009) anon72_Else_correct)))))
(let ((anon70_Else_correct  (=> (not |$temp_0'bool'@1|) (=> (and (= $1_DiemAccount_DiemAccount_$memory@1 ($Memory_132997 (|Store__T@[Int]Bool_| (|domain#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) $t30 false) (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory))) (= $1_DiemAccount_DiemAccount_$memory@2 $1_DiemAccount_DiemAccount_$memory@1)) (and (=> (= (ControlFlow 0 173981) 174490) anon71_Then_correct) (=> (= (ControlFlow 0 173981) 173995) anon71_Else_correct))))))
(let ((anon70_Then_correct  (=> |$temp_0'bool'@1| (=> (and (= $1_DiemAccount_DiemAccount_$memory@0 ($Memory_132997 (|Store__T@[Int]Bool_| (|domain#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) $t30 true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) $t30 |$temp_0'$1_DiemAccount_DiemAccount'@0|))) (= $1_DiemAccount_DiemAccount_$memory@2 $1_DiemAccount_DiemAccount_$memory@0)) (and (=> (= (ControlFlow 0 174502) 174490) anon71_Then_correct) (=> (= (ControlFlow 0 174502) 173995) anon71_Else_correct))))))
(let ((anon69_Else_correct  (=> (not $t34) (and (=> (= (ControlFlow 0 173969) 174502) anon70_Then_correct) (=> (= (ControlFlow 0 173969) 173981) anon70_Else_correct)))))
(let ((L5_correct@@0  (and (=> (= (ControlFlow 0 172766) (- 0 238347)) (or (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_99771| $1_SlidingNonce_SlidingNonce_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_101222| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory) 173345816)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) 173345816)) (not (= (+ 16 (seq.len _$t0@@2)) 32)))) (=> (or (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_99771| $1_SlidingNonce_SlidingNonce_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_101222| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory) 173345816)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) 173345816)) (not (= (+ 16 (seq.len _$t0@@2)) 32))) (=> (= (ControlFlow 0 172766) (- 0 238402)) (or (or (or (or (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_99771| $1_SlidingNonce_SlidingNonce_$memory) 173345816) (= 6 $t9@0@@0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816) (= 6 $t9@0@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101222| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816) (= 6 $t9@0@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory) 173345816) (= 6 $t9@0@@0))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t9@0@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) 173345816) (= 6 $t9@0@@0))) (and (not (= (+ 16 (seq.len _$t0@@2)) 32)) (= 7 $t9@0@@0))))))))
(let ((anon69_Then_correct  (=> $t34 (=> (and (and (or (or (or (or (and (= $t30 0) (= 7 $t9@@0)) (and (= $t30 1) (= 7 $t9@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory) $t30) (= 6 $t9@@0))) (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory@1) 173345816))) (= 5 $t9@@0))) (and (not (= (+ 16 (seq.len _$t0@@2)) 32)) (= 7 $t9@@0))) (= $t9@@0 $t9@@0)) (and (= $t9@0@@0 $t9@@0) (= (ControlFlow 0 174608) 172766))) L5_correct@@0))))
(let ((anon68_Else_correct  (=> (not $abort_flag@3) (and (=> (= (ControlFlow 0 173963) (- 0 238019)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_101222| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101222| $1_DiemAccount_DiemWriteSetManager_$memory@1) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_101222| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101222| $1_DiemAccount_DiemWriteSetManager_$memory@1) 173345816)) (=> (and (and (= $t30 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= $t31 (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory@1) 173345816))) (and (= $t32 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= $t33 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)))) (and (=> (= (ControlFlow 0 173963) (- 0 238076)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) $t30))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) $t30)) (and (=> (= (ControlFlow 0 173963) (- 0 238087)) (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory@1) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory@1) 173345816) (and (=> (= (ControlFlow 0 173963) (- 0 238095)) (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory@3) $t30)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory@3) $t30) (and (=> (= (ControlFlow 0 173963) (- 0 238103)) (|Select__T@[Int]Bool_| $1_DiemAccount_DiemAccount_$modifies $t30)) (=> (|Select__T@[Int]Bool_| $1_DiemAccount_DiemAccount_$modifies $t30) (and (=> (= (ControlFlow 0 173963) (- 0 238109)) (|Select__T@[Int]Bool_| $1_Event_EventHandleGenerator_$modifies $t30)) (=> (|Select__T@[Int]Bool_| $1_Event_EventHandleGenerator_$modifies $t30) (and (=> (= (ControlFlow 0 173963) (- 0 238115)) (|Select__T@[Int]Bool_| $1_AccountFreezing_FreezingBit_$modifies $t30)) (=> (|Select__T@[Int]Bool_| $1_AccountFreezing_FreezingBit_$modifies $t30) (and (=> (= (ControlFlow 0 173963) (- 0 238121)) (|Select__T@[Int]Bool_| $1_DiemAccount_AccountOperationsCapability_$modifies 173345816)) (=> (|Select__T@[Int]Bool_| $1_DiemAccount_AccountOperationsCapability_$modifies 173345816) (=> (= $t34  (or (or (or (or (= $t30 0) (= $t30 1)) (|Select__T@[Int]Bool_| (|domain#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory) $t30)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory@1) 173345816)))) (not (= (+ 16 (seq.len _$t0@@2)) 32)))) (and (=> (= (ControlFlow 0 173963) 174608) anon69_Then_correct) (=> (= (ControlFlow 0 173963) 173969) anon69_Else_correct)))))))))))))))))))))))
(let ((anon68_Then_correct  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= $t9@0@@0 $abort_code@4) (= (ControlFlow 0 174622) 172766))) L5_correct@@0)))
(let ((anon67_Then$1_correct  (=> (= $1_DiemAccount_DiemWriteSetManager_$memory@1 $1_DiemAccount_DiemWriteSetManager_$memory) (=> (and (= $abort_flag@3 true) (= $abort_code@4 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 174674) 174622) anon68_Then_correct) (=> (= (ControlFlow 0 174674) 173963) anon68_Else_correct))))))
(let ((anon67_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_101222| $1_DiemAccount_DiemWriteSetManager_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 174672) 174674)) anon67_Then$1_correct)))
(let ((anon67_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_101222| $1_DiemAccount_DiemWriteSetManager_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (and (and (= $1_DiemAccount_DiemWriteSetManager_$memory@0 ($Memory_101222 (|Store__T@[Int]Bool_| (|domain#$Memory_101222| $1_DiemAccount_DiemWriteSetManager_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_DiemAccount_DiemWriteSetManager_| (|contents#$Memory_101222| $1_DiemAccount_DiemWriteSetManager_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) $t29@0))) (= $1_DiemAccount_DiemWriteSetManager_$memory@1 $1_DiemAccount_DiemWriteSetManager_$memory@0)) (and (= $abort_flag@3 $abort_flag@2) (= $abort_code@4 $abort_code@3))) (and (=> (= (ControlFlow 0 173781) 174622) anon68_Then_correct) (=> (= (ControlFlow 0 173781) 173963) anon68_Else_correct))))))
(let ((anon66_Else_correct  (=> (and (not $abort_flag@2) (= $t29@0 ($1_DiemAccount_DiemWriteSetManager |inline$$1_Event_new_event_handle'$1_DiemAccount_AdminTransactionEvent'$0$res@0|))) (and (=> (= (ControlFlow 0 173759) (- 0 237918)) (|Select__T@[Int]Bool_| $1_DiemAccount_DiemWriteSetManager_$modifies (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (|Select__T@[Int]Bool_| $1_DiemAccount_DiemWriteSetManager_$modifies (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (and (=> (= (ControlFlow 0 173759) 174672) anon67_Then_correct) (=> (= (ControlFlow 0 173759) 173781) anon67_Else_correct)))))))
(let ((anon66_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t9@0@@0 $abort_code@3) (= (ControlFlow 0 174688) 172766))) L5_correct@@0)))
(let ((|inline$$1_Event_new_event_handle'$1_DiemAccount_AdminTransactionEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@0 |inline$$1_Event_new_event_handle'$1_DiemAccount_AdminTransactionEvent'$0$res@0|) false) (= $1_Event_EventHandles@1 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@0 |inline$$1_Event_new_event_handle'$1_DiemAccount_AdminTransactionEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 173723) 174688) anon66_Then_correct) (=> (= (ControlFlow 0 173723) 173759) anon66_Else_correct)))))
(let ((anon65_Then_correct  (=> (and inline$$Not$1$dst@1 (= (ControlFlow 0 173729) 173723)) |inline$$1_Event_new_event_handle'$1_DiemAccount_AdminTransactionEvent'$0$anon0_correct|)))
(let ((anon65_Else_correct  (=> (and (and (not inline$$Not$1$dst@1) (= $t27 $t27)) (and (= $t9@0@@0 $t27) (= (ControlFlow 0 173651) 172766))) L5_correct@@0)))
(let ((anon64_Else$1_correct  (=> (|$IsValid'u64'| 23) (=> (and (and (|$IsValid'u64'| $t27) (= $t27 6)) (and (= $t27 $t27) (= inline$$Not$1$dst@1 inline$$Not$1$dst@1))) (and (=> (= (ControlFlow 0 173635) 173729) anon65_Then_correct) (=> (= (ControlFlow 0 173635) 173651) anon65_Else_correct))))))
(let ((inline$$Not$1$anon0_correct  (=> (and (= inline$$Not$1$dst@1  (not $t24@0@@0)) (= (ControlFlow 0 173595) 173635)) anon64_Else$1_correct)))
(let ((anon64_Else_correct  (=> (not $abort_flag@2) (and (=> (= (ControlFlow 0 173601) (- 0 237758)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory@1) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory@1) 173345816)) (=> (|$IsValid'address'| 173345816) (=> (and (= $t24@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_101222| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816)) (= (ControlFlow 0 173601) 173595)) inline$$Not$1$anon0_correct)))))))
(let ((anon64_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t9@0@@0 $abort_code@3) (= (ControlFlow 0 174702) 172766))) L5_correct@@0)))
(let ((anon63_Then$1_correct  (=> (= $1_DiemAccount_AccountOperationsCapability_$memory@1 $1_DiemAccount_AccountOperationsCapability_$memory) (=> (and (= $abort_flag@2 true) (= $abort_code@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 174754) 174702) anon64_Then_correct) (=> (= (ControlFlow 0 174754) 173601) anon64_Else_correct))))))
(let ((anon63_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 174752) 174754)) anon63_Then$1_correct)))
(let ((anon63_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (and (and (= $1_DiemAccount_AccountOperationsCapability_$memory@0 ($Memory_101151 (|Store__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) $t22@0))) (= $1_DiemAccount_AccountOperationsCapability_$memory@1 $1_DiemAccount_AccountOperationsCapability_$memory@0)) (and (= $abort_flag@2 $abort_flag@1) (= $abort_code@3 $abort_code@2))) (and (=> (= (ControlFlow 0 173527) 174702) anon64_Then_correct) (=> (= (ControlFlow 0 173527) 173601) anon64_Else_correct))))))
(let ((anon62_Else_correct  (=> (and (not $abort_flag@1) (= $t22@0 ($1_DiemAccount_AccountOperationsCapability inline$$1_AccountLimits_grant_mutation_capability$0$$ret0@1 |inline$$1_Event_new_event_handle'$1_DiemAccount_CreateAccountEvent'$0$res@0|))) (and (=> (= (ControlFlow 0 173505) (- 0 237657)) (|Select__T@[Int]Bool_| $1_DiemAccount_AccountOperationsCapability_$modifies (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (|Select__T@[Int]Bool_| $1_DiemAccount_AccountOperationsCapability_$modifies (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (and (=> (= (ControlFlow 0 173505) 174752) anon63_Then_correct) (=> (= (ControlFlow 0 173505) 173527) anon63_Else_correct)))))))
(let ((anon62_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t9@0@@0 $abort_code@2) (= (ControlFlow 0 174768) 172766))) L5_correct@@0)))
(let ((|inline$$1_Event_new_event_handle'$1_DiemAccount_CreateAccountEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DiemAccount_CreateAccountEvent'$0$res@0|) false) (= $1_Event_EventHandles@0 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DiemAccount_CreateAccountEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 173467) 174768) anon62_Then_correct) (=> (= (ControlFlow 0 173467) 173505) anon62_Else_correct)))))
(let ((anon61_Else_correct  (=> (and (not $abort_flag@1) (= (ControlFlow 0 173473) 173467)) |inline$$1_Event_new_event_handle'$1_DiemAccount_CreateAccountEvent'$0$anon0_correct|)))
(let ((anon61_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t9@0@@0 $abort_code@2) (= (ControlFlow 0 174782) 172766))) L5_correct@@0)))
(let ((inline$$1_AccountLimits_grant_mutation_capability$0$L2_correct  (=> (= $abort_code@2 inline$$1_AccountLimits_grant_mutation_capability$0$$t3@0) (=> (and (= $abort_flag@1 true) (= inline$$1_AccountLimits_grant_mutation_capability$0$$ret0@1 inline$$1_AccountLimits_grant_mutation_capability$0$$ret0@0)) (and (=> (= (ControlFlow 0 173359) 174782) anon61_Then_correct) (=> (= (ControlFlow 0 173359) 173473) anon61_Else_correct))))))
(let ((inline$$1_AccountLimits_grant_mutation_capability$0$anon6_Then_correct  (=> (and (and inline$$1_AccountLimits_grant_mutation_capability$0$$t5@0 (or (or (or (and (not (= (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) 173345816)) (= 2 inline$$1_AccountLimits_grant_mutation_capability$0$$t3@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory@3) inline$$1_AccountLimits_grant_mutation_capability$0$$t4@0)) (= 5 inline$$1_AccountLimits_grant_mutation_capability$0$$t3@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory@3) inline$$1_AccountLimits_grant_mutation_capability$0$$t4@0)) 0)) (= 3 inline$$1_AccountLimits_grant_mutation_capability$0$$t3@0))) (and (not (= (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) 173345816)) (= 2 inline$$1_AccountLimits_grant_mutation_capability$0$$t3@0)))) (and (= inline$$1_AccountLimits_grant_mutation_capability$0$$t3@0 inline$$1_AccountLimits_grant_mutation_capability$0$$t3@0) (= (ControlFlow 0 173353) 173359))) inline$$1_AccountLimits_grant_mutation_capability$0$L2_correct)))
(let ((inline$$1_AccountLimits_grant_mutation_capability$0$anon5_Then_correct  (=> inline$$1_AccountLimits_grant_mutation_capability$0$$t2@0 (=> (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 inline$$1_AccountLimits_grant_mutation_capability$0$$t3@0)) (and (= inline$$1_AccountLimits_grant_mutation_capability$0$$t3@0 inline$$1_AccountLimits_grant_mutation_capability$0$$t3@0) (= (ControlFlow 0 173385) 173359))) inline$$1_AccountLimits_grant_mutation_capability$0$L2_correct))))
(let ((inline$$1_AccountLimits_grant_mutation_capability$0$anon6_Else_correct  (=> (and (not inline$$1_AccountLimits_grant_mutation_capability$0$$t5@0) (= inline$$1_AccountLimits_grant_mutation_capability$0$$t7@1 ($1_AccountLimits_AccountLimitMutationCapability false))) (=> (and (and (= inline$$1_AccountLimits_grant_mutation_capability$0$$t7@1 inline$$1_AccountLimits_grant_mutation_capability$0$$t7@1) (= $abort_code@2 $abort_code@1@@1)) (and (= $abort_flag@1 $abort_flag@0@@1) (= inline$$1_AccountLimits_grant_mutation_capability$0$$ret0@1 inline$$1_AccountLimits_grant_mutation_capability$0$$t7@1))) (and (=> (= (ControlFlow 0 173261) 174782) anon61_Then_correct) (=> (= (ControlFlow 0 173261) 173473) anon61_Else_correct))))))
(let ((inline$$1_AccountLimits_grant_mutation_capability$0$anon5_Else_correct  (=> (not inline$$1_AccountLimits_grant_mutation_capability$0$$t2@0) (=> (and (= inline$$1_AccountLimits_grant_mutation_capability$0$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= inline$$1_AccountLimits_grant_mutation_capability$0$$t5@0  (or (or (or (not (= (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory@3) inline$$1_AccountLimits_grant_mutation_capability$0$$t4@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory@3) inline$$1_AccountLimits_grant_mutation_capability$0$$t4@0)) 0))) (not (= (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) 173345816))))) (and (=> (= (ControlFlow 0 173233) 173353) inline$$1_AccountLimits_grant_mutation_capability$0$anon6_Then_correct) (=> (= (ControlFlow 0 173233) 173261) inline$$1_AccountLimits_grant_mutation_capability$0$anon6_Else_correct))))))
(let ((inline$$1_AccountLimits_grant_mutation_capability$0$anon0_correct  (=> (= inline$$1_AccountLimits_grant_mutation_capability$0$$t1@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= inline$$1_AccountLimits_grant_mutation_capability$0$$t2@0  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (and (=> (= (ControlFlow 0 173163) 173385) inline$$1_AccountLimits_grant_mutation_capability$0$anon5_Then_correct) (=> (= (ControlFlow 0 173163) 173233) inline$$1_AccountLimits_grant_mutation_capability$0$anon5_Else_correct))))))
(let ((anon60_Then_correct  (=> inline$$Not$0$dst@1@@0 (=> (and (= $t19 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 173391) 173163)) inline$$1_AccountLimits_grant_mutation_capability$0$anon0_correct))))
(let ((anon60_Else_correct  (=> (and (and (not inline$$Not$0$dst@1@@0) (= $t18 $t18)) (and (= $t9@0@@0 $t18) (= (ControlFlow 0 172578) 172766))) L5_correct@@0)))
(let ((anon59_Else$1_correct  (=> (|$IsValid'u64'| 22) (=> (and (and (|$IsValid'u64'| $t18) (= $t18 6)) (and (= $t18 $t18) (= inline$$Not$0$dst@1@@0 inline$$Not$0$dst@1@@0))) (and (=> (= (ControlFlow 0 172562) 173391) anon60_Then_correct) (=> (= (ControlFlow 0 172562) 172578) anon60_Else_correct))))))
(let ((inline$$Not$0$anon0_correct@@0  (=> (and (= inline$$Not$0$dst@1@@0  (not $t15@0@@0)) (= (ControlFlow 0 172522) 172562)) anon59_Else$1_correct)))
(let ((anon59_Else_correct  (=> (and (and (not $abort_flag@0@@1) (|$IsValid'address'| 173345816)) (and (= $t15@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (= (ControlFlow 0 172528) 172522))) inline$$Not$0$anon0_correct@@0)))
(let ((anon59_Then_correct  (=> (and (and $abort_flag@0@@1 (= $abort_code@1@@1 $abort_code@1@@1)) (and (= $t9@0@@0 $abort_code@1@@1) (= (ControlFlow 0 174796) 172766))) L5_correct@@0)))
(let ((anon13_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99771| $1_SlidingNonce_SlidingNonce_$memory@2@@0) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (and (=> (= (ControlFlow 0 172470) 174796) anon59_Then_correct) (=> (= (ControlFlow 0 172470) 172528) anon59_Else_correct)))))
(let ((anon58_Else_correct  (=> (and (and (not |$temp_0'bool'@0@@0|) (= $1_SlidingNonce_SlidingNonce_$memory@1@@1 ($Memory_99771 (|Store__T@[Int]Bool_| (|domain#$Memory_99771| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) false) (|contents#$Memory_99771| $1_SlidingNonce_SlidingNonce_$memory)))) (and (= $1_SlidingNonce_SlidingNonce_$memory@2@@0 $1_SlidingNonce_SlidingNonce_$memory@1@@1) (= (ControlFlow 0 172439) 172470))) anon13_correct)))
(let ((anon58_Then_correct  (=> (and (and |$temp_0'bool'@0@@0| (= $1_SlidingNonce_SlidingNonce_$memory@0@@1 ($Memory_99771 (|Store__T@[Int]Bool_| (|domain#$Memory_99771| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_99771| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) |$temp_0'$1_SlidingNonce_SlidingNonce'@0@@0|)))) (and (= $1_SlidingNonce_SlidingNonce_$memory@2@@0 $1_SlidingNonce_SlidingNonce_$memory@0@@1) (= (ControlFlow 0 174810) 172470))) anon13_correct)))
(let ((anon57_Else_correct  (=> (not $t13) (and (=> (= (ControlFlow 0 172425) 174810) anon58_Then_correct) (=> (= (ControlFlow 0 172425) 172439) anon58_Else_correct)))))
(let ((anon57_Then_correct  (=> $t13 (=> (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_99771| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= 6 $t9@@0)) (= $t9@@0 $t9@@0)) (and (= $t9@0@@0 $t9@@0) (= (ControlFlow 0 174838) 172766))) L5_correct@@0))))
(let ((anon56_Else_correct  (=> (not $abort_flag@0@@1) (and (=> (= (ControlFlow 0 172419) (- 0 237068)) (|Select__T@[Int]Bool_| $1_SlidingNonce_SlidingNonce_$modifies@@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (|Select__T@[Int]Bool_| $1_SlidingNonce_SlidingNonce_$modifies@@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (= $t13 (|Select__T@[Int]Bool_| (|domain#$Memory_99771| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (=> (= (ControlFlow 0 172419) 174838) anon57_Then_correct) (=> (= (ControlFlow 0 172419) 172425) anon57_Else_correct))))))))
(let ((anon56_Then_correct  (=> (and (and $abort_flag@0@@1 (= $abort_code@1@@1 $abort_code@1@@1)) (and (= $t9@0@@0 $abort_code@1@@1) (= (ControlFlow 0 174852) 172766))) L5_correct@@0)))
(let ((inline$$1_Roles_grant_diem_root_role$0$L2_correct  (=> (= $1_Roles_RoleId_$memory@3 $1_Roles_RoleId_$memory) (=> (and (= $abort_flag@0@@1 true) (= $abort_code@1@@1 inline$$1_Roles_grant_diem_root_role$0$$t2@0)) (and (=> (= (ControlFlow 0 172329) 174852) anon56_Then_correct) (=> (= (ControlFlow 0 172329) 172419) anon56_Else_correct))))))
(let ((inline$$1_Roles_grant_diem_root_role$0$anon12_Then_correct  (=> inline$$1_Roles_grant_diem_root_role$0$$t6@0 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= 6 inline$$1_Roles_grant_diem_root_role$0$$t2@0)) (and (= inline$$1_Roles_grant_diem_root_role$0$$t2@0 inline$$1_Roles_grant_diem_root_role$0$$t2@0) (= (ControlFlow 0 172323) 172329))) inline$$1_Roles_grant_diem_root_role$0$L2_correct))))
(let ((inline$$1_Roles_grant_diem_root_role$0$anon11_Then_correct  (=> inline$$1_Roles_grant_diem_root_role$0$$t3@0 (=> (and (and (not (= (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) 173345816)) (= 2 inline$$1_Roles_grant_diem_root_role$0$$t2@0)) (and (= inline$$1_Roles_grant_diem_root_role$0$$t2@0 inline$$1_Roles_grant_diem_root_role$0$$t2@0) (= (ControlFlow 0 172359) 172329))) inline$$1_Roles_grant_diem_root_role$0$L2_correct))))
(let ((inline$$1_Roles_grant_diem_root_role$0$anon10_Then_correct  (=> inline$$1_Roles_grant_diem_root_role$0$$t1@0 (=> (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 inline$$1_Roles_grant_diem_root_role$0$$t2@0)) (and (= inline$$1_Roles_grant_diem_root_role$0$$t2@0 inline$$1_Roles_grant_diem_root_role$0$$t2@0) (= (ControlFlow 0 172385) 172329))) inline$$1_Roles_grant_diem_root_role$0$L2_correct))))
(let ((inline$$1_Roles_grant_diem_root_role$0$anon9_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory@2) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (and (and (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory@2) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) 0) (= $1_Roles_RoleId_$memory@3 $1_Roles_RoleId_$memory@2)) (and (= $abort_flag@0@@1 false) (= $abort_code@1@@1 $abort_code@0@@1))) (and (=> (= (ControlFlow 0 172281) 174852) anon56_Then_correct) (=> (= (ControlFlow 0 172281) 172419) anon56_Else_correct))))))
(let ((inline$$1_Roles_grant_diem_root_role$0$anon13_Else_correct  (=> (and (and (not |inline$$1_Roles_grant_diem_root_role$0$$temp_0'bool'@1|) (= $1_Roles_RoleId_$memory@1 ($Memory_99584 (|Store__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) false) (|contents#$Memory_99584| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@1) (= (ControlFlow 0 172255) 172281))) inline$$1_Roles_grant_diem_root_role$0$anon9_correct)))
(let ((inline$$1_Roles_grant_diem_root_role$0$anon13_Then_correct  (=> (and (and |inline$$1_Roles_grant_diem_root_role$0$$temp_0'bool'@1| (= $1_Roles_RoleId_$memory@0 ($Memory_99584 (|Store__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) |inline$$1_Roles_grant_diem_root_role$0$$temp_0'$1_Roles_RoleId'@1|)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@0) (= (ControlFlow 0 172295) 172281))) inline$$1_Roles_grant_diem_root_role$0$anon9_correct)))
(let ((inline$$1_Roles_grant_diem_root_role$0$anon12_Else_correct  (=> (not inline$$1_Roles_grant_diem_root_role$0$$t6@0) (and (=> (= (ControlFlow 0 172241) 172295) inline$$1_Roles_grant_diem_root_role$0$anon13_Then_correct) (=> (= (ControlFlow 0 172241) 172255) inline$$1_Roles_grant_diem_root_role$0$anon13_Else_correct)))))
(let ((inline$$1_Roles_grant_diem_root_role$0$anon11_Else_correct  (=> (and (not inline$$1_Roles_grant_diem_root_role$0$$t3@0) (|$IsValid'u64'| 0)) (=> (and (and (= inline$$1_Roles_grant_diem_root_role$0$$t5@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (= 0 0) (= inline$$1_Roles_grant_diem_root_role$0$$t5@0 173345816))) (and (=> (= 0 1) (= inline$$1_Roles_grant_diem_root_role$0$$t5@0 186537453)) (= inline$$1_Roles_grant_diem_root_role$0$$t6@0 (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))))) (and (=> (= (ControlFlow 0 172235) 172323) inline$$1_Roles_grant_diem_root_role$0$anon12_Then_correct) (=> (= (ControlFlow 0 172235) 172241) inline$$1_Roles_grant_diem_root_role$0$anon12_Else_correct))))))
(let ((inline$$1_Roles_grant_diem_root_role$0$anon10_Else_correct  (=> (and (not inline$$1_Roles_grant_diem_root_role$0$$t1@0) (= inline$$1_Roles_grant_diem_root_role$0$$t3@0  (not (= (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) 173345816)))) (and (=> (= (ControlFlow 0 172169) 172359) inline$$1_Roles_grant_diem_root_role$0$anon11_Then_correct) (=> (= (ControlFlow 0 172169) 172235) inline$$1_Roles_grant_diem_root_role$0$anon11_Else_correct)))))
(let ((inline$$1_Roles_grant_diem_root_role$0$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= inline$$1_Roles_grant_diem_root_role$0$$t1@0  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (and (=> (= (ControlFlow 0 172147) 172385) inline$$1_Roles_grant_diem_root_role$0$anon10_Then_correct) (=> (= (ControlFlow 0 172147) 172169) inline$$1_Roles_grant_diem_root_role$0$anon10_Else_correct)))))
(let ((anon55_Else_correct  (=> (not $t12@@0) (and (=> (= (ControlFlow 0 172389) (- 0 236738)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (= (ControlFlow 0 172389) 172147) inline$$1_Roles_grant_diem_root_role$0$anon0_correct))))))
(let ((anon55_Then_correct  (=> $t12@@0 (=> (and (and (and (not (= (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) 173345816)) (= 2 $t9@@0)) (= $t9@@0 $t9@@0)) (and (= $t9@0@@0 $t9@@0) (= (ControlFlow 0 174882) 172766))) L5_correct@@0))))
(let ((anon54_Else_correct  (=> (not false) (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= $t12@@0  (not (= (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) 173345816)))) (and (=> (= (ControlFlow 0 171730) 174882) anon55_Then_correct) (=> (= (ControlFlow 0 171730) 172389) anon55_Else_correct))))))
(let ((anon53_Then_correct  (=> $t8 (=> (and (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t9@@0)) (= $t9@@0 $t9@@0)) (and (= $t9@0@@0 $t9@@0) (= (ControlFlow 0 174922) 172766))) L5_correct@@0))))
(let ((anon54_Then_correct true))
(let ((inline$$1_DiemAccount_create_signer$0$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 ($signer 173345816)) (and (=> (= (ControlFlow 0 171694) 174896) anon54_Then_correct) (=> (= (ControlFlow 0 171694) 171730) anon54_Else_correct)))))
(let ((anon53_Else_correct  (=> (not $t8) (=> (and (|$IsValid'address'| 173345816) (= (ControlFlow 0 171700) 171694)) inline$$1_DiemAccount_create_signer$0$anon0_correct))))
(let ((anon0$1_correct@@2  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@6)) 0)) (= addr@@6 173345816)))
 :qid |SlidingNoncebpl.11903:20|
 :skolemid |189|
))) (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) 173345816)) 0))) (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@7)) 1)) (= addr@@7 186537453)))
 :qid |SlidingNoncebpl.11911:20|
 :skolemid |190|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) 186537453)) 1))) (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@8)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@8)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@8)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@8)) 2))))))
 :qid |SlidingNoncebpl.11919:20|
 :skolemid |191|
)))) (=> (and (and (and (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@9)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@9)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@9)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@9)) 2))))))
 :qid |SlidingNoncebpl.11923:20|
 :skolemid |192|
)) (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@10)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@10)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@10)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@10)) 2))))))
 :qid |SlidingNoncebpl.11927:20|
 :skolemid |193|
))) (and (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@11)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@11)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@11)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@11)) 2))))))
 :qid |SlidingNoncebpl.11931:20|
 :skolemid |194|
)) (forall ((addr@@12 Int) ) (!  (=> (|$IsValid'address'| addr@@12) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@12)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@12)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@12)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@12)) 2)))))
 :qid |SlidingNoncebpl.11935:20|
 :skolemid |195|
)))) (and (and (forall ((addr@@13 Int) ) (!  (=> (|$IsValid'address'| addr@@13) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@13)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@13)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@13)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@13)) 2)))))
 :qid |SlidingNoncebpl.11939:20|
 :skolemid |196|
)) (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@14)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@14)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@14)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@14)) 2)))))
 :qid |SlidingNoncebpl.11943:20|
 :skolemid |197|
))) (and (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104707| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@15) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@15)) 4))))
 :qid |SlidingNoncebpl.11947:20|
 :skolemid |198|
)) (forall ((addr@@16 Int) ) (!  (=> (|$IsValid'address'| addr@@16) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105265| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@16) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@16)) 3))))
 :qid |SlidingNoncebpl.11951:20|
 :skolemid |199|
))))) (=> (and (and (and (and (and (and (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105265| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@17) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@17)) 3))))
 :qid |SlidingNoncebpl.11955:20|
 :skolemid |200|
)) (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105265| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@18) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105265| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@18)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@18)) 3))))
 :qid |SlidingNoncebpl.11959:20|
 :skolemid |201|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_99771| $1_SlidingNonce_SlidingNonce_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_99771| $1_SlidingNonce_SlidingNonce_$memory) 186537453)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_99864| $1_DiemConfig_Configuration_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99950| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100023| $1_DiemSystem_CapabilityHolder_$memory) 173345816)))) (and (let (($range_0 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@19 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_99950| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@19))))))))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((i1 $i_1))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@20 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_99950| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@20)))) i1))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@20 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_99950| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@20)))) i1)))) 3))))
 :qid |SlidingNoncebpl.11979:151|
 :skolemid |202|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100094| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100178| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100262| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100333| $1_XDX_Reserve_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100417| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100501| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100572| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100669| $1_DualAttestation_Limit_$memory) 173345816)) (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_129448| $1_DualAttestation_Credential_$memory) addr1) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr1)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr1)) 2)))))
 :qid |SlidingNoncebpl.12016:20|
 :skolemid |203|
)))))) (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100753| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100837| $1_ChainId_ChainId_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100908| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory) 173345816))))))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory) 186537453))))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100908| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816))) (and (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) addr@@21) (or (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) addr@@21)))) 0) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) addr@@21)))) 0)) (= addr@@21 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) addr@@21))) 0)))))))
 :qid |SlidingNoncebpl.12044:20|
 :skolemid |204|
)) (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) addr@@22) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) addr@@22) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) addr@@22)))) 0)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) addr@@22)))) 0)) (= addr@@22 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) addr@@22))) 0)))))))
 :qid |SlidingNoncebpl.12048:20|
 :skolemid |205|
))))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101222| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816))) (and (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (= (|Select__T@[Int]Bool_| (|domain#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) addr@@23) (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@23)))
 :qid |SlidingNoncebpl.12060:20|
 :skolemid |206|
)) (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (= (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory) addr@@24)  (and (= addr@@24 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) addr@@24))))
 :qid |SlidingNoncebpl.12064:20|
 :skolemid |207|
)))) (and (and (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (= (|Select__T@[Int]Bool_| (|domain#$Memory_101222| $1_DiemAccount_DiemWriteSetManager_$memory) addr@@25)  (and (= addr@@25 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) addr@@25))))
 :qid |SlidingNoncebpl.12068:20|
 :skolemid |208|
)) (forall ((addr@@26 Int) ) (!  (=> (|$IsValid'address'| addr@@26) (= (|Select__T@[Int]Bool_| (|domain#$Memory_127269| $1_VASPDomain_VASPDomainManager_$memory) addr@@26)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@26)) 1))))
 :qid |SlidingNoncebpl.12072:20|
 :skolemid |209|
))) (and (forall ((addr@@27 Int) ) (!  (=> (|$IsValid'address'| addr@@27) (= (|Select__T@[Int]Bool_| (|domain#$Memory_127636| $1_VASPDomain_VASPDomains_$memory) addr@@27)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@27)) 5))))
 :qid |SlidingNoncebpl.12076:20|
 :skolemid |210|
)) (forall ((addr@@28 Int) ) (!  (=> (|$IsValid'address'| addr@@28) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_133966| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@28) (|Select__T@[Int]Bool_| (|domain#$Memory_134057| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@28)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@28)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@28)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@28)) 2)))))
 :qid |SlidingNoncebpl.12080:20|
 :skolemid |211|
))))))) (and (and (and (and (and (forall ((addr@@29 Int) ) (!  (=> (|$IsValid'address'| addr@@29) (= (|Select__T@[Int]Bool_| (|domain#$Memory_131983| $1_DesignatedDealer_Dealer_$memory) addr@@29)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@29)) 2))))
 :qid |SlidingNoncebpl.12084:20|
 :skolemid |212|
)) (forall ((addr@@30 Int) ) (!  (=> (|$IsValid'address'| addr@@30) (= (|Select__T@[Int]Bool_| (|domain#$Memory_129448| $1_DualAttestation_Credential_$memory) addr@@30)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@30)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@30)) 5)))))
 :qid |SlidingNoncebpl.12088:20|
 :skolemid |213|
))) (and (forall ((addr@@31 Int) ) (!  (=> (|$IsValid'address'| addr@@31) (= (|Select__T@[Int]Bool_| (|domain#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) addr@@31) (|Select__T@[Int]Bool_| (|domain#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory) addr@@31)))
 :qid |SlidingNoncebpl.12092:20|
 :skolemid |214|
)) (forall ((addr@@32 Int) ) (!  (=> (|$IsValid'address'| addr@@32) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) addr@@32) (|Select__T@[Int]Bool_| (|domain#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory) addr@@32)))
 :qid |SlidingNoncebpl.12096:20|
 :skolemid |215|
)))) (and (and (forall ((addr@@33 Int) ) (!  (=> (|$IsValid'address'| addr@@33) (= (|Select__T@[Int]Bool_| (|domain#$Memory_99771| $1_SlidingNonce_SlidingNonce_$memory) addr@@33)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@33)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@33)) 1)))))
 :qid |SlidingNoncebpl.12100:20|
 :skolemid |216|
)) (forall ((addr@@34 Int) ) (!  (=> (|$IsValid'address'| addr@@34) (= (|Select__T@[Int]Bool_| (|domain#$Memory_105265| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@34)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@34)) 3))))
 :qid |SlidingNoncebpl.12104:20|
 :skolemid |217|
))) (and (forall ((addr@@35 Int) ) (!  (=> (|$IsValid'address'| addr@@35) (= (|Select__T@[Int]Bool_| (|domain#$Memory_104707| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@35)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@35)) 4))))
 :qid |SlidingNoncebpl.12108:20|
 :skolemid |218|
)) (forall ((addr@@36 Int) ) (!  (=> (|$IsValid'address'| addr@@36) (= (|Select__T@[Int]Bool_| (|domain#$Memory_128239| $1_VASP_ParentVASP_$memory) addr@@36)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@36)) 5))))
 :qid |SlidingNoncebpl.12112:20|
 :skolemid |219|
))))) (and (and (and (forall ((addr@@37 Int) ) (!  (=> (|$IsValid'address'| addr@@37) (= (|Select__T@[Int]Bool_| (|domain#$Memory_128175| $1_VASP_ChildVASP_$memory) addr@@37)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@37)) 6))))
 :qid |SlidingNoncebpl.12116:20|
 :skolemid |220|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101293| $1_DiemBlock_BlockMetadata_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101377| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_99458| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816)))) (and (and (|$IsValid'vec'u8''| _$t0@@2) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@2)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@2))
 :qid |SlidingNoncebpl.12147:20|
 :skolemid |221|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@2))
))) (and (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) $a_0@@3)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@3))
 :qid |SlidingNoncebpl.12151:20|
 :skolemid |222|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) $a_0@@3))
)) (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_99771| $1_SlidingNonce_SlidingNonce_$memory) $a_0@@4)))
(|$IsValid'$1_SlidingNonce_SlidingNonce'| $rsc@@4))
 :qid |SlidingNoncebpl.12155:20|
 :skolemid |223|
 :pattern ( (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_99771| $1_SlidingNonce_SlidingNonce_$memory) $a_0@@4))
)))))) (and (and (and (and (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory) $a_0@@5)))
(|$IsValid'$1_AccountFreezing_FreezingBit'| $rsc@@5))
 :qid |SlidingNoncebpl.12159:20|
 :skolemid |224|
 :pattern ( (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory) $a_0@@5))
)) (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) $a_0@@6)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@6) (and (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@6))) 1) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@6))) 1))))
 :qid |SlidingNoncebpl.12163:20|
 :skolemid |225|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) $a_0@@6))
))) (and (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory) $a_0@@7)))
(|$IsValid'$1_DiemAccount_AccountOperationsCapability'| $rsc@@7))
 :qid |SlidingNoncebpl.12167:20|
 :skolemid |226|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory) $a_0@@7))
)) (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_DiemAccount_DiemWriteSetManager_| (|contents#$Memory_101222| $1_DiemAccount_DiemWriteSetManager_$memory) $a_0@@8)))
(|$IsValid'$1_DiemAccount_DiemWriteSetManager'| $rsc@@8))
 :qid |SlidingNoncebpl.12171:20|
 :skolemid |227|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemWriteSetManager_| (|contents#$Memory_101222| $1_DiemAccount_DiemWriteSetManager_$memory) $a_0@@8))
)))) (and (and (= $t6@@0 173345816) (= $t7@@2 173345816)) (and (|Select__T@[Int]Bool_| $1_Event_EventHandleGenerator_$modifies $t6@@0) (|Select__T@[Int]Bool_| $1_DiemAccount_DiemAccount_$modifies $t6@@0)))) (and (and (and (|Select__T@[Int]Bool_| $1_DiemAccount_AccountOperationsCapability_$modifies $t6@@0) (|Select__T@[Int]Bool_| $1_DiemAccount_DiemWriteSetManager_$modifies $t6@@0)) (and (|Select__T@[Int]Bool_| $1_SlidingNonce_SlidingNonce_$modifies@@0 $t6@@0) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies $t6@@0))) (and (and (|Select__T@[Int]Bool_| $1_AccountFreezing_FreezingBit_$modifies $t6@@0) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies 173345816)) (and (= _$t0@@2 _$t0@@2) (= $t8  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))))))) (and (=> (= (ControlFlow 0 171650) 174922) anon53_Then_correct) (=> (= (ControlFlow 0 171650) 171700) anon53_Else_correct))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@7 T@$1_Event_EventHandle) ) (! (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| $es) handle@@7)))
 (and (= (|l#Multiset_72434| stream@@7) 0) (forall ((v@@38 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_72434| stream@@7) v@@38) 0)
 :qid |SlidingNoncebpl.134:13|
 :skolemid |2|
))))
 :qid |SlidingNoncebpl.2372:13|
 :skolemid |64|
))) (= (ControlFlow 0 170206) 171650)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 234934) 170206) inline$$InitEventStore$0$anon0_correct@@2)))
anon0_correct@@2)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
