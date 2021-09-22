(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :pre-skolem-quant true)
(set-option :no-dt-share-sel true)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_165303 0)) ((($Memory_165303 (|domain#$Memory_165303| |T@[Int]Bool|) (|contents#$Memory_165303| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_174539 0)) ((($Memory_174539 (|domain#$Memory_174539| |T@[Int]Bool|) (|contents#$Memory_174539| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_174468 0)) ((($Memory_174468 (|domain#$Memory_174468| |T@[Int]Bool|) (|contents#$Memory_174468| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_174225 0)) ((($Memory_174225 (|domain#$Memory_174225| |T@[Int]Bool|) (|contents#$Memory_174225| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_174154 0)) ((($Memory_174154 (|domain#$Memory_174154| |T@[Int]Bool|) (|contents#$Memory_174154| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_174083 0)) ((($Memory_174083 (|domain#$Memory_174083| |T@[Int]Bool|) (|contents#$Memory_174083| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_194868 0)) ((($Memory_194868 (|domain#$Memory_194868| |T@[Int]Bool|) (|contents#$Memory_194868| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_173915 0)) ((($Memory_173915 (|domain#$Memory_173915| |T@[Int]Bool|) (|contents#$Memory_173915| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_194338 0)) ((($Memory_194338 (|domain#$Memory_194338| |T@[Int]Bool|) (|contents#$Memory_194338| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_195123 0)) ((($Memory_195123 (|domain#$Memory_195123| |T@[Int]Bool|) (|contents#$Memory_195123| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_195223 0)) ((($Memory_195223 (|domain#$Memory_195223| |T@[Int]Bool|) (|contents#$Memory_195223| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_194551 0)) ((($Memory_194551 (|domain#$Memory_194551| |T@[Int]Bool|) (|contents#$Memory_194551| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_194636 0)) ((($Memory_194636 (|domain#$Memory_194636| |T@[Int]Bool|) (|contents#$Memory_194636| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_290762 0)) ((($Memory_290762 (|domain#$Memory_290762| |T@[Int]Bool|) (|contents#$Memory_290762| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_290475 0)) ((($Memory_290475 (|domain#$Memory_290475| |T@[Int]Bool|) (|contents#$Memory_290475| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_173747 0)) ((($Memory_173747 (|domain#$Memory_173747| |T@[Int]Bool|) (|contents#$Memory_173747| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_173508 0)) ((($Memory_173508 (|domain#$Memory_173508| |T@[Int]Bool|) (|contents#$Memory_173508| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_174397 0)) ((($Memory_174397 (|domain#$Memory_174397| |T@[Int]Bool|) (|contents#$Memory_174397| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_279627 0)) ((($Memory_279627 (|domain#$Memory_279627| |T@[Int]Bool|) (|contents#$Memory_279627| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_279563 0)) ((($Memory_279563 (|domain#$Memory_279563| |T@[Int]Bool|) (|contents#$Memory_279563| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_279940 0)) ((($Memory_279940 (|domain#$Memory_279940| |T@[Int]Bool|) (|contents#$Memory_279940| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_279853 0)) ((($Memory_279853 (|domain#$Memory_279853| |T@[Int]Bool|) (|contents#$Memory_279853| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_194783 0)) ((($Memory_194783 (|domain#$Memory_194783| |T@[Int]Bool|) (|contents#$Memory_194783| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_283436 0)) ((($Memory_283436 (|domain#$Memory_283436| |T@[Int]Bool|) (|contents#$Memory_283436| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_173579 0)) ((($Memory_173579 (|domain#$Memory_173579| |T@[Int]Bool|) (|contents#$Memory_173579| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_194723 0)) ((($Memory_194723 (|domain#$Memory_194723| |T@[Int]Bool|) (|contents#$Memory_194723| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_283345 0)) ((($Memory_283345 (|domain#$Memory_283345| |T@[Int]Bool|) (|contents#$Memory_283345| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_173818 0)) ((($Memory_173818 (|domain#$Memory_173818| |T@[Int]Bool|) (|contents#$Memory_173818| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_173663 0)) ((($Memory_173663 (|domain#$Memory_173663| |T@[Int]Bool|) (|contents#$Memory_173663| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_173424 0)) ((($Memory_173424 (|domain#$Memory_173424| |T@[Int]Bool|) (|contents#$Memory_173424| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'#0'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'#0'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'| 0)
(declare-datatypes ((T@$Memory_180330 0)) ((($Memory_180330 (|domain#$Memory_180330| |T@[Int]Bool|) (|contents#$Memory_180330| |T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_180243 0)) ((($Memory_180243 (|domain#$Memory_180243| |T@[Int]Bool|) (|contents#$Memory_180243| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_180156 0)) ((($Memory_180156 (|domain#$Memory_180156| |T@[Int]Bool|) (|contents#$Memory_180156| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_180069 0)) ((($Memory_180069 (|domain#$Memory_180069| |T@[Int]Bool|) (|contents#$Memory_180069| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_179982 0)) ((($Memory_179982 (|domain#$Memory_179982| |T@[Int]Bool|) (|contents#$Memory_179982| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_179895 0)) ((($Memory_179895 (|domain#$Memory_179895| |T@[Int]Bool|) (|contents#$Memory_179895| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_179808 0)) ((($Memory_179808 (|domain#$Memory_179808| |T@[Int]Bool|) (|contents#$Memory_179808| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_173269 0)) ((($Memory_173269 (|domain#$Memory_173269| |T@[Int]Bool|) (|contents#$Memory_173269| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_178909 0)) ((($Memory_178909 (|domain#$Memory_178909| |T@[Int]Bool|) (|contents#$Memory_178909| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_173110 0)) ((($Memory_173110 (|domain#$Memory_173110| |T@[Int]Bool|) (|contents#$Memory_173110| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'#0'| 0)) (((|$1_DiemConfig_DiemConfig'#0'| (|$payload#$1_DiemConfig_DiemConfig'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'#0'| 0)
(declare-datatypes ((T@$Memory_178828 0)) ((($Memory_178828 (|domain#$Memory_178828| |T@[Int]Bool|) (|contents#$Memory_178828| |T@[Int]$1_DiemConfig_DiemConfig'#0'|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_172704 0)) ((($Memory_172704 (|domain#$Memory_172704| |T@[Int]Bool|) (|contents#$Memory_172704| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_174623 0)) ((($Memory_174623 (|domain#$Memory_174623| |T@[Int]Bool|) (|contents#$Memory_174623| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemConsensusConfig_DiemConsensusConfig 0)) ((($1_DiemConsensusConfig_DiemConsensusConfig (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_178695 0)) ((($Memory_178695 (|domain#$Memory_178695| |T@[Int]Bool|) (|contents#$Memory_178695| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_173999 0)) ((($Memory_173999 (|domain#$Memory_173999| |T@[Int]Bool|) (|contents#$Memory_173999| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_173340 0)) ((($Memory_173340 (|domain#$Memory_173340| |T@[Int]Bool|) (|contents#$Memory_173340| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_173017 0)) ((($Memory_173017 (|domain#$Memory_173017| |T@[Int]Bool|) (|contents#$Memory_173017| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_194451 0)) ((($Memory_194451 (|domain#$Memory_194451| |T@[Int]Bool|) (|contents#$Memory_194451| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_173196 0)) ((($Memory_173196 (|domain#$Memory_173196| |T@[Int]Bool|) (|contents#$Memory_173196| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_177901 0)) ((($Memory_177901 (|domain#$Memory_177901| |T@[Int]Bool|) (|contents#$Memory_177901| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'u64'| 0)) (((|$1_Option_Option'u64'| (|$vec#$1_Option_Option'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_176842 0)) ((($Memory_176842 (|domain#$Memory_176842| |T@[Int]Bool|) (|contents#$Memory_176842| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_172830 0)) ((($Memory_172830 (|domain#$Memory_172830| |T@[Int]Bool|) (|contents#$Memory_172830| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_172108 0)) ((($Memory_172108 (|domain#$Memory_172108| |T@[Int]Bool|) (|contents#$Memory_172108| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_144488 0)) (((Multiset_144488 (|v#Multiset_144488| |T@[$EventRep]Int|) (|l#Multiset_144488| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_144488| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_144488|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_329313 0)) ((($Mutation_329313 (|l#$Mutation_329313| T@$Location) (|p#$Mutation_329313| (Seq Int)) (|v#$Mutation_329313| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((T@$Mutation_329267 0)) ((($Mutation_329267 (|l#$Mutation_329267| T@$Location) (|p#$Mutation_329267| (Seq Int)) (|v#$Mutation_329267| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$Mutation_312027 0)) ((($Mutation_312027 (|l#$Mutation_312027| T@$Location) (|p#$Mutation_312027| (Seq Int)) (|v#$Mutation_312027| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_311983 0)) ((($Mutation_311983 (|l#$Mutation_311983| T@$Location) (|p#$Mutation_311983| (Seq Int)) (|v#$Mutation_311983| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_301352 0)) ((($Mutation_301352 (|l#$Mutation_301352| T@$Location) (|p#$Mutation_301352| (Seq Int)) (|v#$Mutation_301352| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-datatypes ((T@$Mutation_88061 0)) ((($Mutation_88061 (|l#$Mutation_88061| T@$Location) (|p#$Mutation_88061| (Seq Int)) (|v#$Mutation_88061| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_288749 0)) ((($Mutation_288749 (|l#$Mutation_288749| T@$Location) (|p#$Mutation_288749| (Seq Int)) (|v#$Mutation_288749| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_275645 0)) ((($Mutation_275645 (|l#$Mutation_275645| T@$Location) (|p#$Mutation_275645| (Seq Int)) (|v#$Mutation_275645| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_196002 0)) ((($Mutation_196002 (|l#$Mutation_196002| T@$Location) (|p#$Mutation_196002| (Seq Int)) (|v#$Mutation_196002| T@$1_DiemConfig_Configuration) ) ) ))
(declare-datatypes ((T@$Mutation_191081 0)) ((($Mutation_191081 (|l#$Mutation_191081| T@$Location) (|p#$Mutation_191081| (Seq Int)) (|v#$Mutation_191081| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-datatypes ((T@$Mutation_191036 0)) ((($Mutation_191036 (|l#$Mutation_191036| T@$Location) (|p#$Mutation_191036| (Seq Int)) (|v#$Mutation_191036| |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$Mutation_188431 0)) ((($Mutation_188431 (|l#$Mutation_188431| T@$Location) (|p#$Mutation_188431| (Seq Int)) (|v#$Mutation_188431| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-datatypes ((T@$Mutation_188386 0)) ((($Mutation_188386 (|l#$Mutation_188386| T@$Location) (|p#$Mutation_188386| (Seq Int)) (|v#$Mutation_188386| |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$Mutation_185781 0)) ((($Mutation_185781 (|l#$Mutation_185781| T@$Location) (|p#$Mutation_185781| (Seq Int)) (|v#$Mutation_185781| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-datatypes ((T@$Mutation_185736 0)) ((($Mutation_185736 (|l#$Mutation_185736| T@$Location) (|p#$Mutation_185736| (Seq Int)) (|v#$Mutation_185736| |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$Mutation_183131 0)) ((($Mutation_183131 (|l#$Mutation_183131| T@$Location) (|p#$Mutation_183131| (Seq Int)) (|v#$Mutation_183131| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-datatypes ((T@$Mutation_183086 0)) ((($Mutation_183086 (|l#$Mutation_183086| T@$Location) (|p#$Mutation_183086| (Seq Int)) (|v#$Mutation_183086| |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$Mutation_180409 0)) ((($Mutation_180409 (|l#$Mutation_180409| T@$Location) (|p#$Mutation_180409| (Seq Int)) (|v#$Mutation_180409| |T@$1_DiemConfig_DiemConfig'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_172647 0)) ((($Mutation_172647 (|l#$Mutation_172647| T@$Location) (|p#$Mutation_172647| (Seq Int)) (|v#$Mutation_172647| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_165934 0)) ((($Mutation_165934 (|l#$Mutation_165934| T@$Location) (|p#$Mutation_165934| (Seq Int)) (|v#$Mutation_165934| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_11233 0)) ((($Mutation_11233 (|l#$Mutation_11233| T@$Location) (|p#$Mutation_11233| (Seq Int)) (|v#$Mutation_11233| Int) ) ) ))
(declare-datatypes ((T@$Mutation_160175 0)) ((($Mutation_160175 (|l#$Mutation_160175| T@$Location) (|p#$Mutation_160175| (Seq Int)) (|v#$Mutation_160175| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_159429 0)) ((($Mutation_159429 (|l#$Mutation_159429| T@$Location) (|p#$Mutation_159429| (Seq Int)) (|v#$Mutation_159429| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_158025 0)) ((($Mutation_158025 (|l#$Mutation_158025| T@$Location) (|p#$Mutation_158025| (Seq Int)) (|v#$Mutation_158025| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_157279 0)) ((($Mutation_157279 (|l#$Mutation_157279| T@$Location) (|p#$Mutation_157279| (Seq Int)) (|v#$Mutation_157279| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_155875 0)) ((($Mutation_155875 (|l#$Mutation_155875| T@$Location) (|p#$Mutation_155875| (Seq Int)) (|v#$Mutation_155875| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_155129 0)) ((($Mutation_155129 (|l#$Mutation_155129| T@$Location) (|p#$Mutation_155129| (Seq Int)) (|v#$Mutation_155129| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-datatypes ((T@$Mutation_153725 0)) ((($Mutation_153725 (|l#$Mutation_153725| T@$Location) (|p#$Mutation_153725| (Seq Int)) (|v#$Mutation_153725| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_152979 0)) ((($Mutation_152979 (|l#$Mutation_152979| T@$Location) (|p#$Mutation_152979| (Seq Int)) (|v#$Mutation_152979| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_151575 0)) ((($Mutation_151575 (|l#$Mutation_151575| T@$Location) (|p#$Mutation_151575| (Seq Int)) (|v#$Mutation_151575| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_150829 0)) ((($Mutation_150829 (|l#$Mutation_150829| T@$Location) (|p#$Mutation_150829| (Seq Int)) (|v#$Mutation_150829| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_149425 0)) ((($Mutation_149425 (|l#$Mutation_149425| T@$Location) (|p#$Mutation_149425| (Seq Int)) (|v#$Mutation_149425| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_148679 0)) ((($Mutation_148679 (|l#$Mutation_148679| T@$Location) (|p#$Mutation_148679| (Seq Int)) (|v#$Mutation_148679| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_147237 0)) ((($Mutation_147237 (|l#$Mutation_147237| T@$Location) (|p#$Mutation_147237| (Seq Int)) (|v#$Mutation_147237| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_146491 0)) ((($Mutation_146491 (|l#$Mutation_146491| T@$Location) (|p#$Mutation_146491| (Seq Int)) (|v#$Mutation_146491| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_144488_| (|T@[$1_Event_EventHandle]Multiset_144488| T@$1_Event_EventHandle) T@Multiset_144488)
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
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'#0''| (|T@$1_DiemConfig_ModifyConfigCapability'#0'|) Bool)
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
(declare-fun $choice_0 ((Seq T@$1_DiemSystem_ValidatorInfo) Int) Int)
(declare-fun ReverseVec_11086 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_131332 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_130544 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_130741 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_130938 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_131529 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_131135 ((Seq T@$1_VASPDomain_VASPDomain)) (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun ReverseVec_130347 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_144488| |T@[$1_Event_EventHandle]Multiset_144488|) |T@[$1_Event_EventHandle]Multiset_144488|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DiemConfigbpl.165:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DiemConfigbpl.169:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DiemConfigbpl.173:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DiemConfigbpl.177:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DiemConfigbpl.181:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DiemConfigbpl.191:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DiemConfigbpl.457:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DiemConfigbpl.466:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |DiemConfigbpl.595:13|
 :skolemid |15|
))))
 :qid |DiemConfigbpl.593:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |DiemConfigbpl.600:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |DiemConfigbpl.608:17|
 :skolemid |18|
)))))
 :qid |DiemConfigbpl.604:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |DiemConfigbpl.775:13|
 :skolemid |20|
))))
 :qid |DiemConfigbpl.773:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |DiemConfigbpl.780:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |DiemConfigbpl.788:17|
 :skolemid |23|
)))))
 :qid |DiemConfigbpl.784:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |DiemConfigbpl.955:13|
 :skolemid |25|
))))
 :qid |DiemConfigbpl.953:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |DiemConfigbpl.960:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |DiemConfigbpl.968:17|
 :skolemid |28|
)))))
 :qid |DiemConfigbpl.964:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |DiemConfigbpl.1135:13|
 :skolemid |30|
))))
 :qid |DiemConfigbpl.1133:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |DiemConfigbpl.1140:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |DiemConfigbpl.1148:17|
 :skolemid |33|
)))))
 :qid |DiemConfigbpl.1144:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_VASPDomain_VASPDomain'| (seq.nth v@@12 i@@12)))
 :qid |DiemConfigbpl.1315:13|
 :skolemid |35|
))))
 :qid |DiemConfigbpl.1313:50|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12))
)))
(assert (forall ((v@@13 (Seq T@$1_VASPDomain_VASPDomain)) (e@@3 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@13 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |DiemConfigbpl.1320:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |DiemConfigbpl.1328:17|
 :skolemid |38|
)))))
 :qid |DiemConfigbpl.1324:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@14 i@@15)))
 :qid |DiemConfigbpl.1495:13|
 :skolemid |40|
))))
 :qid |DiemConfigbpl.1493:51|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14))
)))
(assert (forall ((v@@15 (Seq T@$1_ValidatorConfig_Config)) (e@@4 T@$1_ValidatorConfig_Config) ) (! (let ((i@@16 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |DiemConfigbpl.1500:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |DiemConfigbpl.1508:17|
 :skolemid |43|
)))))
 :qid |DiemConfigbpl.1504:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'vec'u8''| (seq.nth v@@16 i@@18)))
 :qid |DiemConfigbpl.1675:13|
 :skolemid |45|
))))
 :qid |DiemConfigbpl.1673:33|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@16))
)))
(assert (forall ((v@@17 (Seq (Seq Int))) (e@@5 (Seq Int)) ) (! (let ((i@@19 (|$IndexOfVec'vec'u8''| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |DiemConfigbpl.1680:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |DiemConfigbpl.1688:17|
 :skolemid |48|
)))))
 :qid |DiemConfigbpl.1684:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'address'| (seq.nth v@@18 i@@21)))
 :qid |DiemConfigbpl.1855:13|
 :skolemid |50|
))))
 :qid |DiemConfigbpl.1853:33|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'address''| v@@18))
)))
(assert (forall ((v@@19 (Seq Int)) (e@@6 Int) ) (! (let ((i@@22 (|$IndexOfVec'address'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |DiemConfigbpl.1860:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |DiemConfigbpl.1868:17|
 :skolemid |53|
)))))
 :qid |DiemConfigbpl.1864:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'address'| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'u64'| (seq.nth v@@20 i@@24)))
 :qid |DiemConfigbpl.2035:13|
 :skolemid |55|
))))
 :qid |DiemConfigbpl.2033:29|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'u64''| v@@20))
)))
(assert (forall ((v@@21 (Seq Int)) (e@@7 Int) ) (! (let ((i@@25 (|$IndexOfVec'u64'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |DiemConfigbpl.2040:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |DiemConfigbpl.2048:17|
 :skolemid |58|
)))))
 :qid |DiemConfigbpl.2044:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'u64'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'u8'| (seq.nth v@@22 i@@27)))
 :qid |DiemConfigbpl.2215:13|
 :skolemid |60|
))))
 :qid |DiemConfigbpl.2213:28|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'u8''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'u8'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |DiemConfigbpl.2220:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |DiemConfigbpl.2228:17|
 :skolemid |63|
)))))
 :qid |DiemConfigbpl.2224:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'u8'| v@@23 e@@8))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |DiemConfigbpl.2401:15|
 :skolemid |65|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |DiemConfigbpl.2417:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DiemConfigbpl.2488:15|
 :skolemid |67|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DiemConfigbpl.2491:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_144488| stream) 0) (forall ((v@@24 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_144488| stream) v@@24) 0)
 :qid |DiemConfigbpl.134:13|
 :skolemid |2|
))))
 :qid |DiemConfigbpl.2552:13|
 :skolemid |69|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |DiemConfigbpl.2593:80|
 :skolemid |71|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |DiemConfigbpl.2599:15|
 :skolemid |72|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |DiemConfigbpl.2649:82|
 :skolemid |73|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |DiemConfigbpl.2655:15|
 :skolemid |74|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |DiemConfigbpl.2705:80|
 :skolemid |75|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |DiemConfigbpl.2711:15|
 :skolemid |76|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |DiemConfigbpl.2761:79|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |DiemConfigbpl.2767:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |DiemConfigbpl.2817:76|
 :skolemid |79|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |DiemConfigbpl.2823:15|
 :skolemid |80|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |DiemConfigbpl.2873:78|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |DiemConfigbpl.2879:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |DiemConfigbpl.2929:74|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |DiemConfigbpl.2935:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |DiemConfigbpl.2985:69|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |DiemConfigbpl.2991:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |DiemConfigbpl.3041:70|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |DiemConfigbpl.3047:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |DiemConfigbpl.3097:60|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |DiemConfigbpl.3103:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |DiemConfigbpl.3153:66|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |DiemConfigbpl.3159:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |DiemConfigbpl.3209:60|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |DiemConfigbpl.3215:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |DiemConfigbpl.3265:63|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |DiemConfigbpl.3271:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |DiemConfigbpl.3321:79|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |DiemConfigbpl.3327:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |DiemConfigbpl.3377:82|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |DiemConfigbpl.3383:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |DiemConfigbpl.3433:88|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |DiemConfigbpl.3439:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |DiemConfigbpl.3489:72|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |DiemConfigbpl.3495:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |DiemConfigbpl.3574:61|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |DiemConfigbpl.4418:36|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |DiemConfigbpl.4437:71|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'u64'|) ) (! (= (|$IsValid'$1_Option_Option'u64''| s@@2) (|$IsValid'vec'u64''| (|$vec#$1_Option_Option'u64'| s@@2)))
 :qid |DiemConfigbpl.4556:42|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_Option_Option'u64''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@3) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@3)))
 :qid |DiemConfigbpl.4569:46|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@4)))
 :qid |DiemConfigbpl.4582:64|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@5)))
 :qid |DiemConfigbpl.4595:75|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@6)))
 :qid |DiemConfigbpl.4608:72|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@7)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@7))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@7))))
 :qid |DiemConfigbpl.4657:55|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7))
)))
(assert (forall ((s@@8 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@8)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@8)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@8))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@8))))
 :qid |DiemConfigbpl.4679:46|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@8))
)))
(assert (forall ((s@@9 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@9)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@9))))
 :qid |DiemConfigbpl.4697:49|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@10)))
 :qid |DiemConfigbpl.4802:71|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@11)))
 :qid |DiemConfigbpl.4816:91|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@12)))
 :qid |DiemConfigbpl.4830:113|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@13) (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@13)))
 :qid |DiemConfigbpl.4844:89|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@14) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@14)))
 :qid |DiemConfigbpl.4858:75|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@14))
)))
(assert (forall ((s@@15 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@15) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@15)))
 :qid |DiemConfigbpl.4872:73|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@15))
)))
(assert (forall ((s@@16 |T@$1_DiemConfig_DiemConfig'#0'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'#0''| s@@16) true)
 :qid |DiemConfigbpl.4886:49|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'#0''| s@@16))
)))
(assert (forall ((s@@17 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@17)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@17)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@17))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@17))))
 :qid |DiemConfigbpl.4906:48|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@17))
)))
(assert (forall ((s@@18 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@18) true)
 :qid |DiemConfigbpl.4922:57|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@19) true)
 :qid |DiemConfigbpl.4936:83|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@20) true)
 :qid |DiemConfigbpl.4950:103|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@21) true)
 :qid |DiemConfigbpl.4964:125|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@22) true)
 :qid |DiemConfigbpl.4978:101|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@22))
)))
(assert (forall ((s@@23 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@23) true)
 :qid |DiemConfigbpl.4992:87|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@23))
)))
(assert (forall ((s@@24 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@24) true)
 :qid |DiemConfigbpl.5006:85|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@24))
)))
(assert (forall ((s@@25 |T@$1_DiemConfig_ModifyConfigCapability'#0'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'#0''| s@@25) true)
 :qid |DiemConfigbpl.5020:61|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'#0''| s@@25))
)))
(assert (forall ((s@@26 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@26) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@26)))
 :qid |DiemConfigbpl.5034:48|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@26))
)))
(assert (forall ((s@@27 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@27)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@27)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@27))))
 :qid |DiemConfigbpl.17334:45|
 :skolemid |541|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@27))
)))
(assert (forall ((s@@28 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@28) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@28)))
 :qid |DiemConfigbpl.17348:51|
 :skolemid |542|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@28))
)))
(assert (forall ((s@@29 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@29)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@29)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@29))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@29))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@29))))
 :qid |DiemConfigbpl.17371:48|
 :skolemid |543|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@29))
)))
(assert (forall ((s@@30 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@30) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@30)))
 :qid |DiemConfigbpl.22319:49|
 :skolemid |751|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@30))
)))
(assert (forall ((s@@31 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@31) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@31)))
 :qid |DiemConfigbpl.22337:65|
 :skolemid |752|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@32) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@32)))
 :qid |DiemConfigbpl.23903:45|
 :skolemid |792|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@33) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@33)))
 :qid |DiemConfigbpl.23916:45|
 :skolemid |793|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@34) true)
 :qid |DiemConfigbpl.23929:55|
 :skolemid |794|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@35) true)
 :qid |DiemConfigbpl.23943:55|
 :skolemid |795|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@35))
)))
(assert (forall ((s@@36 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@36)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@36)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@36))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@36))))
 :qid |DiemConfigbpl.23963:38|
 :skolemid |796|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@36))
)))
(assert (forall ((s@@37 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@37)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@37)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@37))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@37))))
 :qid |DiemConfigbpl.23984:44|
 :skolemid |797|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@38)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))))
 :qid |DiemConfigbpl.24035:53|
 :skolemid |798|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@39)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))))
 :qid |DiemConfigbpl.24097:53|
 :skolemid |799|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@40) true)
 :qid |DiemConfigbpl.24123:55|
 :skolemid |800|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@41) true)
 :qid |DiemConfigbpl.24137:55|
 :skolemid |801|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@41))
)))
(assert (forall ((s@@42 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@42)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@42)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@42))))
 :qid |DiemConfigbpl.24154:38|
 :skolemid |802|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@43) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@43)))
 :qid |DiemConfigbpl.24168:48|
 :skolemid |803|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@44) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@44)))
 :qid |DiemConfigbpl.24182:48|
 :skolemid |804|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@44))
)))
(assert (forall ((s@@45 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@45)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@45)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@45))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@45))))
 :qid |DiemConfigbpl.24202:41|
 :skolemid |805|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@45))
)))
(assert (forall ((s@@46 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@46)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@46)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@46))))
 :qid |DiemConfigbpl.24220:57|
 :skolemid |806|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@46))
)))
(assert (forall ((s@@47 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@47) true)
 :qid |DiemConfigbpl.26326:68|
 :skolemid |807|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@47))
)))
(assert (forall ((s@@48 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@48)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48))))
 :qid |DiemConfigbpl.26348:66|
 :skolemid |808|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@49)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49))))
 :qid |DiemConfigbpl.26374:66|
 :skolemid |809|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@50)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))))
 :qid |DiemConfigbpl.26403:56|
 :skolemid |810|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@51)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))))
 :qid |DiemConfigbpl.26433:56|
 :skolemid |811|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@51))
)))
(assert (forall ((s@@52 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@52) true)
 :qid |DiemConfigbpl.26755:31|
 :skolemid |812|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@52))
)))
(assert (forall ((s@@53 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@53) true)
 :qid |DiemConfigbpl.27085:31|
 :skolemid |813|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@53))
)))
(assert (forall ((s@@54 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@54)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@54)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@54))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@54))))
 :qid |DiemConfigbpl.27104:35|
 :skolemid |814|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@54))
)))
(assert (forall ((s@@55 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@55) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@55)))
 :qid |DiemConfigbpl.27513:45|
 :skolemid |815|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@55))
)))
(assert (forall ((s@@56 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@56)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@56))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@56))))
 :qid |DiemConfigbpl.27532:50|
 :skolemid |816|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@56))
)))
(assert (forall ((s@@57 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@57) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@57)))
 :qid |DiemConfigbpl.27547:52|
 :skolemid |817|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@57))
)))
(assert (forall ((s@@58 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@58) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@58)))
 :qid |DiemConfigbpl.27561:46|
 :skolemid |818|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@58))
)))
(assert (forall ((s@@59 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@59) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@59)))
 :qid |DiemConfigbpl.27585:38|
 :skolemid |819|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@59))
)))
(assert (forall ((s@@60 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@60) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@60)))
 :qid |DiemConfigbpl.27599:39|
 :skolemid |820|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@60))
)))
(assert (forall ((s@@61 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@61)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@61)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@61))))
 :qid |DiemConfigbpl.27626:65|
 :skolemid |821|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@61))
)))
(assert (forall ((s@@62 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@62)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@62)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@62))))
 :qid |DiemConfigbpl.27994:60|
 :skolemid |822|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@62))
)))
(assert (forall ((s@@63 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@63)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@63)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@63))))
 :qid |DiemConfigbpl.28011:66|
 :skolemid |823|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@63))
)))
(assert (forall ((s@@64 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@64)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@64)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@64))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@64))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@64))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@64))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@64))))
 :qid |DiemConfigbpl.28040:50|
 :skolemid |824|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@65) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@65)))
 :qid |DiemConfigbpl.28059:45|
 :skolemid |825|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@66)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@66)) true))
 :qid |DiemConfigbpl.28366:87|
 :skolemid |826|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@67) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@67)))
 :qid |DiemConfigbpl.30266:47|
 :skolemid |927|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@68)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@68)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@68))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@68))))
 :qid |DiemConfigbpl.30286:58|
 :skolemid |928|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@68))
)))
(assert (forall ((s@@69 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@69) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@69)))
 :qid |DiemConfigbpl.30301:39|
 :skolemid |929|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@69))
)))
(assert (forall ((s@@70 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@70)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@70)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@70))))
 :qid |DiemConfigbpl.30323:58|
 :skolemid |930|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@70))
)))
(assert (forall ((s@@71 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@71)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@71)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@71))))
 :qid |DiemConfigbpl.30340:58|
 :skolemid |931|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@71))
)))
(assert (forall ((s@@72 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@72) true)
 :qid |DiemConfigbpl.30355:51|
 :skolemid |932|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@72))
)))
(assert (forall ((s@@73 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@73)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@73)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@73))))
 :qid |DiemConfigbpl.30372:60|
 :skolemid |933|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@74)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@74)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@74))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@74))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@74))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@74))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@74))))
 :qid |DiemConfigbpl.30658:47|
 :skolemid |934|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@75)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@75)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@75))))
 :qid |DiemConfigbpl.30680:63|
 :skolemid |935|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@76) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@76)))
 :qid |DiemConfigbpl.30695:57|
 :skolemid |936|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@76))
)))
(assert (forall ((s@@77 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@77) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@77)))
 :qid |DiemConfigbpl.30708:55|
 :skolemid |937|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@77))
)))
(assert (forall ((s@@78 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@78) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@78)))
 :qid |DiemConfigbpl.30722:55|
 :skolemid |938|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@79)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@79)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@79))))
 :qid |DiemConfigbpl.30739:54|
 :skolemid |939|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@80) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@80)))
 :qid |DiemConfigbpl.30753:55|
 :skolemid |940|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@81) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@81)))
 :qid |DiemConfigbpl.30767:57|
 :skolemid |941|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@82)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@82)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@82))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@82))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@82))))
 :qid |DiemConfigbpl.30789:56|
 :skolemid |942|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@83)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@83)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@83))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@83))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@83))))
 :qid |DiemConfigbpl.30814:52|
 :skolemid |943|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@84) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@84)))
 :qid |DiemConfigbpl.30830:54|
 :skolemid |944|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@85)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@85)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@85))))
 :qid |DiemConfigbpl.31672:47|
 :skolemid |945|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@86)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@86)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@86))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@86))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@86))))
 :qid |DiemConfigbpl.31696:47|
 :skolemid |946|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemConsensusConfig_DiemConsensusConfig) ) (! (= (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@87) (|$IsValid'vec'u8''| (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| s@@87)))
 :qid |DiemConfigbpl.31928:63|
 :skolemid |947|
 :pattern ( (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@88) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@88)))
 :qid |DiemConfigbpl.33226:49|
 :skolemid |1017|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@89)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@89)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@89))))
 :qid |DiemConfigbpl.33269:49|
 :skolemid |1018|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@90)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@90)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@90))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@90))))
 :qid |DiemConfigbpl.33298:48|
 :skolemid |1019|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@91) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@91)))
 :qid |DiemConfigbpl.35217:47|
 :skolemid |1090|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@91))
)))
(assert (forall ((validators (Seq T@$1_DiemSystem_ValidatorInfo)) (addr Int) ) (!  (=> (and (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| validators) (|$IsValid'address'| addr)) (=> (exists ((i@@30 Int) ) (!  (and (and (|$IsValid'num'| i@@30) ($InRange ($Range 0 (seq.len validators)) i@@30)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth validators i@@30)) addr))
 :qid |DiemConfigbpl.38178:13|
 :skolemid |1251|
)) (let ((i@@31 ($choice_0 validators addr)))
 (and (and (and (|$IsValid'num'| i@@31) ($InRange ($Range 0 (seq.len validators)) i@@31)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth validators i@@31)) addr)) (let (($$c i@@31))
(forall ((i@@32 Int) ) (!  (=> (< i@@32 $$c) (not (and (and (|$IsValid'num'| i@@32) ($InRange ($Range 0 (seq.len validators)) i@@32)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth validators i@@32)) addr))))
 :qid |DiemConfigbpl.38180:32|
 :skolemid |1252|
)))))))
 :qid |DiemConfigbpl.38177:15|
 :skolemid |1253|
)))
(assert (forall ((v@@25 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_11086 v@@25)))
 (and (= (seq.len r@@0) (seq.len v@@25)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@0))) (= (seq.nth r@@0 i@@33) (seq.nth v@@25 (- (- (seq.len v@@25) i@@33) 1))))
 :qid |DiemConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@33))
))))
 :qid |DiemConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_11086 v@@25))
)))
(assert (forall ((v@@26 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_131332 v@@26)))
 (and (= (seq.len r@@1) (seq.len v@@26)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@1))) (= (seq.nth r@@1 i@@34) (seq.nth v@@26 (- (- (seq.len v@@26) i@@34) 1))))
 :qid |DiemConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@34))
))))
 :qid |DiemConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_131332 v@@26))
)))
(assert (forall ((v@@27 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_130544 v@@27)))
 (and (= (seq.len r@@2) (seq.len v@@27)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@2))) (= (seq.nth r@@2 i@@35) (seq.nth v@@27 (- (- (seq.len v@@27) i@@35) 1))))
 :qid |DiemConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@35))
))))
 :qid |DiemConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_130544 v@@27))
)))
(assert (forall ((v@@28 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_130741 v@@28)))
 (and (= (seq.len r@@3) (seq.len v@@28)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@3))) (= (seq.nth r@@3 i@@36) (seq.nth v@@28 (- (- (seq.len v@@28) i@@36) 1))))
 :qid |DiemConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@36))
))))
 :qid |DiemConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_130741 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_130938 v@@29)))
 (and (= (seq.len r@@4) (seq.len v@@29)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@4))) (= (seq.nth r@@4 i@@37) (seq.nth v@@29 (- (- (seq.len v@@29) i@@37) 1))))
 :qid |DiemConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@37))
))))
 :qid |DiemConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_130938 v@@29))
)))
(assert (forall ((v@@30 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_131529 v@@30)))
 (and (= (seq.len r@@5) (seq.len v@@30)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@5))) (= (seq.nth r@@5 i@@38) (seq.nth v@@30 (- (- (seq.len v@@30) i@@38) 1))))
 :qid |DiemConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@38))
))))
 :qid |DiemConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_131529 v@@30))
)))
(assert (forall ((v@@31 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (let ((r@@6 (ReverseVec_131135 v@@31)))
 (and (= (seq.len r@@6) (seq.len v@@31)) (forall ((i@@39 Int) ) (!  (=> (and (>= i@@39 0) (< i@@39 (seq.len r@@6))) (= (seq.nth r@@6 i@@39) (seq.nth v@@31 (- (- (seq.len v@@31) i@@39) 1))))
 :qid |DiemConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@39))
))))
 :qid |DiemConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_131135 v@@31))
)))
(assert (forall ((v@@32 (Seq |T@#0|)) ) (! (let ((r@@7 (ReverseVec_130347 v@@32)))
 (and (= (seq.len r@@7) (seq.len v@@32)) (forall ((i@@40 Int) ) (!  (=> (and (>= i@@40 0) (< i@@40 (seq.len r@@7))) (= (seq.nth r@@7 i@@40) (seq.nth v@@32 (- (- (seq.len v@@32) i@@40) 1))))
 :qid |DiemConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@40))
))))
 :qid |DiemConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_130347 v@@32))
)))
(assert (forall ((|l#0| Bool) (i@@41 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@41) |l#0|)
 :qid |DiemConfigbpl.250:54|
 :skolemid |1254|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@41))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_144488|) (|l#1| |T@[$1_Event_EventHandle]Multiset_144488|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_144488| (|Select__T@[$1_Event_EventHandle]Multiset_144488_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_144488| (|Select__T@[$1_Event_EventHandle]Multiset_144488_| |l#1| handle@@0))))
(Multiset_144488 (|lambda#3| (|v#Multiset_144488| (|Select__T@[$1_Event_EventHandle]Multiset_144488_| |l#0@@0| handle@@0)) (|v#Multiset_144488| (|Select__T@[$1_Event_EventHandle]Multiset_144488_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DiemConfigbpl.2562:13|
 :skolemid |1255|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@33 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@33) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@33) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@33)))
 :qid |DiemConfigbpl.129:29|
 :skolemid |1256|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@33))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t24@0 () T@$Mutation_11233)
(declare-fun $t14@1 () T@$Mutation_172647)
(declare-fun $t24@1 () T@$Mutation_11233)
(declare-fun _$t2 () Int)
(declare-fun $t14@2 () T@$Mutation_172647)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 () T@$Memory_172108)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_172108)
(declare-fun |Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int T@$1_DiemTimestamp_CurrentTimeMicroseconds) |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ( ?x1 Int) ( ?x2 T@$1_DiemTimestamp_CurrentTimeMicroseconds)) (! (= (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemTimestamp_CurrentTimeMicroseconds)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_172830)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_173017)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_173110)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_173196)
(declare-fun $1_DiemSystem_CapabilityHolder_$memory () T@$Memory_173269)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_173340)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_173424)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory| () T@$Memory_173508)
(declare-fun $1_XDX_Reserve_$memory () T@$Memory_173579)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_173663)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory| () T@$Memory_173747)
(declare-fun |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory| () T@$Memory_173818)
(declare-fun $1_DualAttestation_Limit_$memory () T@$Memory_173915)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory| () T@$Memory_173999)
(declare-fun $1_ChainId_ChainId_$memory () T@$Memory_174083)
(declare-fun $1_AccountFreezing_FreezeEventsHolder_$memory () T@$Memory_174154)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_174225)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int) T@$1_AccountFreezing_FreezingBit)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory () T@$Memory_174397)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory () T@$Memory_174468)
(declare-fun $1_DiemBlock_BlockMetadata_$memory () T@$Memory_174539)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory| () T@$Memory_174623)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory| () T@$Memory_172704)
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
(declare-fun $t14 () T@$Mutation_172647)
(declare-fun $t14@0 () T@$Mutation_172647)
(declare-fun $abort_code@0 () Int)
(declare-fun $t12 () Bool)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies () |T@[Int]Bool|)
(declare-fun $t11 () Int)
(declare-fun $t10 () Bool)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t7 () T@$Mutation_172647)
(declare-fun $t24 () T@$Mutation_11233)
; Valid
(declare-fun $t31 () T@$1_DiemConfig_Configuration)
(declare-fun |Select__T@[Int]$1_DiemConfig_Configuration_| (|T@[Int]$1_DiemConfig_Configuration| Int) T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@2 () T@$Memory_173110)
(declare-fun $t32 () Int)
(declare-fun $t33 () T@$1_DiemConfig_Configuration)
(declare-fun $t34 () Int)
(declare-fun $t35 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $1_DiemConfig_DisableReconfiguration_$memory () T@$Memory_178909)
(declare-fun $t22 () T@$1_DiemConfig_Configuration)
(declare-fun $t23@@0 () Int)
(declare-fun $t36 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t37 () T@$1_Event_EventHandle)
(declare-fun $t29 () T@$1_Event_EventHandle)
(declare-fun $t38 () Bool)
(declare-fun $t28 () T@$1_DiemConfig_Configuration)
(declare-fun $es@0 () T@$EventStore)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_144488_| (|T@[$1_Event_EventHandle]Multiset_144488| T@$1_Event_EventHandle T@Multiset_144488) |T@[$1_Event_EventHandle]Multiset_144488|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_144488|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_144488)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|Store__T@[$1_Event_EventHandle]Multiset_144488_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_144488|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_144488)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|Store__T@[$1_Event_EventHandle]Multiset_144488_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_144488_| ?x0 ?y1))) :weight 0)))
(declare-fun |$1_DiemConfig_ModifyConfigCapability'#0'_$memory| () T@$Memory_180330)
(declare-fun _$t0@@0 () T@$signer)
(declare-fun |$1_DiemConfig_DiemConfig'#0'_$memory| () T@$Memory_178828)
(declare-fun $t9@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $t10@@0 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'#0'_$memory@0| () T@$Memory_178828)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'#0'_| (|T@[Int]$1_DiemConfig_DiemConfig'#0'| Int) |T@$1_DiemConfig_DiemConfig'#0'|)
(declare-fun _$t1@@0 () |T@#0|)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1 () T@$Memory_173110)
(declare-fun $1_DiemConfig_Configuration_$memory@0 () T@$Memory_173110)
(declare-fun |Store__T@[Int]$1_DiemConfig_Configuration_| (|T@[Int]$1_DiemConfig_Configuration| Int T@$1_DiemConfig_Configuration) |T@[Int]$1_DiemConfig_Configuration|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_Configuration|) ( ?x1 Int) ( ?x2 T@$1_DiemConfig_Configuration)) (! (= (|Select__T@[Int]$1_DiemConfig_Configuration_| (|Store__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_Configuration|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemConfig_Configuration)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_Configuration_| (|Store__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0| () T@$1_DiemConfig_Configuration)
(declare-fun $t30 () Bool)
(declare-fun $t15@0@@0 () Int)
(declare-fun $t26 () T@$1_DiemConfig_Configuration)
(declare-fun $t27 () Int)
(declare-fun $t15 () Int)
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'#0''@0| () |T@$1_DiemConfig_DiemConfig'#0'|)
(declare-fun $t20@1 () T@$Mutation_180409)
(declare-fun $t21@0 () T@$Mutation_147237)
(declare-fun $t21@1 () T@$Mutation_147237)
(declare-fun $t20@2 () T@$Mutation_180409)
(declare-fun |Store__T@[Int]$1_DiemConfig_DiemConfig'#0'_| (|T@[Int]$1_DiemConfig_DiemConfig'#0'| Int |T@$1_DiemConfig_DiemConfig'#0'|) |T@[Int]$1_DiemConfig_DiemConfig'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'#0'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'#0'|)) (! (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'#0'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'#0'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_DiemConfig'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t24@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $t25@@0 () Int)
(declare-fun $1_DiemConfig_Configuration_$modifies () |T@[Int]Bool|)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $t20@@0 () T@$Mutation_180409)
(declare-fun $t20@0 () T@$Mutation_180409)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun $t17@0@@0 () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'#0'_$modifies| () |T@[Int]Bool|)
(declare-fun $t19 () Int)
(declare-fun $t12@0 () Bool)
(declare-fun $t14@@0 () Int)
(declare-fun |Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|T@[Int]$1_DiemConfig_DisableReconfiguration| Int) T@$1_DiemConfig_DisableReconfiguration)
(declare-fun |Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'| Int) |T@$1_DiemConfig_ModifyConfigCapability'#0'|)
(declare-fun $t11@@0 () Int)
(declare-fun $t7@@0 () T@$Mutation_180409)
(declare-fun $t21 () T@$Mutation_147237)
; Valid
(declare-fun $t31@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@2@@0 () T@$Memory_173110)
(declare-fun $t32@@0 () Int)
(declare-fun $t33@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $t34@@0 () Int)
(declare-fun $t35@@0 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t22@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $t23@@1 () Int)
(declare-fun $t36@@0 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t37@@0 () T@$1_Event_EventHandle)
(declare-fun $t29@@0 () T@$1_Event_EventHandle)
(declare-fun $t38@@0 () Bool)
(declare-fun $t28@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $es@0@@0 () T@$EventStore)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_179808)
(declare-fun _$t0@@1 () T@$signer)
(declare-fun $t9@@1 () T@$1_DiemConfig_Configuration)
(declare-fun $t10@@1 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0| () T@$Memory_173196)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun _$t1@@1 () T@$1_DiemSystem_DiemSystem)
(declare-fun |$temp_0'bool'@0@@0| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1@@0 () T@$Memory_173110)
(declare-fun $1_DiemConfig_Configuration_$memory@0@@0 () T@$Memory_173110)
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0@@0| () T@$1_DiemConfig_Configuration)
(declare-fun $t30@@0 () Bool)
(declare-fun $t15@0@@1 () Int)
(declare-fun $t26@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $t27@@0 () Int)
(declare-fun $t15@@0 () Int)
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@0| () |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun $t20@1@@0 () T@$Mutation_183086)
(declare-fun $t21@0@@0 () T@$Mutation_183131)
(declare-fun $t21@1@@0 () T@$Mutation_183131)
(declare-fun $t20@2@@0 () T@$Mutation_183086)
(declare-fun |Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)) (! (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t24@@1 () T@$1_DiemConfig_Configuration)
(declare-fun $t25@@1 () Int)
(declare-fun $1_DiemConfig_Configuration_$modifies@@0 () |T@[Int]Bool|)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun $t20@@1 () T@$Mutation_183086)
(declare-fun $t20@0@@0 () T@$Mutation_183086)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun $t17@0@@1 () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies| () |T@[Int]Bool|)
(declare-fun $t19@@0 () Int)
(declare-fun $t12@0@@0 () Bool)
(declare-fun $t14@@1 () Int)
(declare-fun |Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|)
(declare-fun $t11@@1 () Int)
(declare-fun $t7@@1 () T@$Mutation_183086)
(declare-fun $t21@@0 () T@$Mutation_183131)
; Valid
(declare-fun $t31@@1 () T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@2@@1 () T@$Memory_173110)
(declare-fun $t32@@1 () Int)
(declare-fun $t33@@1 () T@$1_DiemConfig_Configuration)
(declare-fun $t34@@1 () Int)
(declare-fun $t35@@1 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t22@@1 () T@$1_DiemConfig_Configuration)
(declare-fun $t23@@2 () Int)
(declare-fun $t36@@1 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t37@@1 () T@$1_Event_EventHandle)
(declare-fun $t29@@1 () T@$1_Event_EventHandle)
(declare-fun $t38@@1 () Bool)
(declare-fun $t28@@1 () T@$1_DiemConfig_Configuration)
(declare-fun $es@0@@1 () T@$EventStore)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory| () T@$Memory_180069)
(declare-fun _$t0@@2 () T@$signer)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory| () T@$Memory_178695)
(declare-fun $t9@@2 () T@$1_DiemConfig_Configuration)
(declare-fun $t10@@2 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory@0| () T@$Memory_178695)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|)
(declare-fun _$t1@@2 () T@$1_DiemConsensusConfig_DiemConsensusConfig)
(declare-fun |$temp_0'bool'@0@@1| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1@@1 () T@$Memory_173110)
(declare-fun $1_DiemConfig_Configuration_$memory@0@@1 () T@$Memory_173110)
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0@@1| () T@$1_DiemConfig_Configuration)
(declare-fun $t30@@1 () Bool)
(declare-fun $t15@0@@2 () Int)
(declare-fun $t26@@1 () T@$1_DiemConfig_Configuration)
(declare-fun $t27@@1 () Int)
(declare-fun $t15@@1 () Int)
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''@0| () |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|)
(declare-fun $t20@1@@1 () T@$Mutation_185736)
(declare-fun $t21@0@@1 () T@$Mutation_185781)
(declare-fun $t21@1@@1 () T@$Mutation_185781)
(declare-fun $t20@2@@1 () T@$Mutation_185736)
(declare-fun |Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| Int |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|)) (! (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t24@@2 () T@$1_DiemConfig_Configuration)
(declare-fun $t25@@2 () Int)
(declare-fun $1_DiemConfig_Configuration_$modifies@@1 () |T@[Int]Bool|)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun $t20@@2 () T@$Mutation_185736)
(declare-fun $t20@0@@1 () T@$Mutation_185736)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun $t17@0@@2 () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$modifies| () |T@[Int]Bool|)
(declare-fun $t19@@1 () Int)
(declare-fun $t12@0@@1 () Bool)
(declare-fun $t14@@2 () Int)
(declare-fun |Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| Int) |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|)
(declare-fun $t11@@2 () Int)
(declare-fun $t7@@2 () T@$Mutation_185736)
(declare-fun $t21@@1 () T@$Mutation_185781)
; Valid
(declare-fun $t31@@2 () T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@2@@2 () T@$Memory_173110)
(declare-fun $t32@@2 () Int)
(declare-fun $t33@@2 () T@$1_DiemConfig_Configuration)
(declare-fun $t34@@2 () Int)
(declare-fun $t35@@2 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t22@@2 () T@$1_DiemConfig_Configuration)
(declare-fun $t23@@3 () Int)
(declare-fun $t36@@2 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t37@@2 () T@$1_Event_EventHandle)
(declare-fun $t29@@2 () T@$1_Event_EventHandle)
(declare-fun $t38@@2 () Bool)
(declare-fun $t28@@2 () T@$1_DiemConfig_Configuration)
(declare-fun $es@0@@2 () T@$EventStore)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory| () T@$Memory_180156)
(declare-fun _$t0@@3 () T@$signer)
(declare-fun $t9@@3 () T@$1_DiemConfig_Configuration)
(declare-fun $t10@@3 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@0| () T@$Memory_174623)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|)
(declare-fun _$t1@@3 () T@$1_DiemVMConfig_DiemVMConfig)
(declare-fun |$temp_0'bool'@0@@2| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1@@2 () T@$Memory_173110)
(declare-fun $1_DiemConfig_Configuration_$memory@0@@2 () T@$Memory_173110)
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0@@2| () T@$1_DiemConfig_Configuration)
(declare-fun $t30@@2 () Bool)
(declare-fun $t15@0@@3 () Int)
(declare-fun $t26@@2 () T@$1_DiemConfig_Configuration)
(declare-fun $t27@@2 () Int)
(declare-fun $t15@@2 () Int)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''@0| () |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|)
(declare-fun $t20@1@@2 () T@$Mutation_188386)
(declare-fun $t21@0@@2 () T@$Mutation_188431)
(declare-fun $t21@1@@2 () T@$Mutation_188431)
(declare-fun $t20@2@@2 () T@$Mutation_188386)
(declare-fun |Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| Int |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|)) (! (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t24@@3 () T@$1_DiemConfig_Configuration)
(declare-fun $t25@@3 () Int)
(declare-fun $1_DiemConfig_Configuration_$modifies@@2 () |T@[Int]Bool|)
(declare-fun $abort_code@1@@3 () Int)
(declare-fun $t20@@3 () T@$Mutation_188386)
(declare-fun $t20@0@@2 () T@$Mutation_188386)
(declare-fun $abort_code@0@@3 () Int)
(declare-fun $t17@0@@3 () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$modifies| () |T@[Int]Bool|)
(declare-fun $t19@@2 () Int)
(declare-fun $t12@0@@2 () Bool)
(declare-fun $t14@@3 () Int)
(declare-fun |Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Int) |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|)
(declare-fun $t11@@3 () Int)
(declare-fun $t7@@3 () T@$Mutation_188386)
(declare-fun $t21@@2 () T@$Mutation_188431)
; Valid
(declare-fun $t31@@3 () T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@2@@3 () T@$Memory_173110)
(declare-fun $t32@@3 () Int)
(declare-fun $t33@@3 () T@$1_DiemConfig_Configuration)
(declare-fun $t34@@3 () Int)
(declare-fun $t35@@3 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t22@@3 () T@$1_DiemConfig_Configuration)
(declare-fun $t23@@4 () Int)
(declare-fun $t36@@3 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t37@@3 () T@$1_Event_EventHandle)
(declare-fun $t29@@3 () T@$1_Event_EventHandle)
(declare-fun $t38@@3 () Bool)
(declare-fun $t28@@3 () T@$1_DiemConfig_Configuration)
(declare-fun $es@0@@3 () T@$EventStore)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory| () T@$Memory_180243)
(declare-fun _$t0@@4 () T@$signer)
(declare-fun $t9@@4 () T@$1_DiemConfig_Configuration)
(declare-fun $t10@@4 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@0| () T@$Memory_172704)
(declare-fun _$t1@@4 () T@$1_DiemVersion_DiemVersion)
(declare-fun |$temp_0'bool'@0@@3| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1@@3 () T@$Memory_173110)
(declare-fun $1_DiemConfig_Configuration_$memory@0@@3 () T@$Memory_173110)
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0@@3| () T@$1_DiemConfig_Configuration)
(declare-fun $t30@@3 () Bool)
(declare-fun $t15@0@@4 () Int)
(declare-fun $t26@@3 () T@$1_DiemConfig_Configuration)
(declare-fun $t27@@3 () Int)
(declare-fun $t15@@3 () Int)
(declare-fun $abort_flag@0@@4 () Bool)
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''@0| () |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|)
(declare-fun $t20@1@@3 () T@$Mutation_191036)
(declare-fun $t21@0@@3 () T@$Mutation_191081)
(declare-fun $t21@1@@3 () T@$Mutation_191081)
(declare-fun $t20@2@@3 () T@$Mutation_191036)
(declare-fun |Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| Int |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|)) (! (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t24@@4 () T@$1_DiemConfig_Configuration)
(declare-fun $t25@@4 () Int)
(declare-fun $1_DiemConfig_Configuration_$modifies@@3 () |T@[Int]Bool|)
(declare-fun $abort_code@1@@4 () Int)
(declare-fun $t20@@4 () T@$Mutation_191036)
(declare-fun $t20@0@@3 () T@$Mutation_191036)
(declare-fun $abort_code@0@@4 () Int)
(declare-fun $t17@0@@4 () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$modifies| () |T@[Int]Bool|)
(declare-fun $t19@@3 () Int)
(declare-fun $t12@0@@3 () Bool)
(declare-fun $t14@@4 () Int)
(declare-fun |Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Int) |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|)
(declare-fun $t11@@4 () Int)
(declare-fun $t7@@4 () T@$Mutation_191036)
(declare-fun $t21@@3 () T@$Mutation_191081)
; Valid
; Valid
(declare-fun $abort_flag@0@@5 () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@0@@4 () T@$Memory_173110)
(declare-fun $t12@2 () T@$Mutation_196002)
(declare-fun $t27@@4 () T@$1_DiemConfig_Configuration)
(declare-fun $t28@@4 () T@$1_Event_EventHandle)
(declare-fun $t29@@4 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $es@0@@4 () T@$EventStore)
(declare-fun |inline$$1_Event_emit_event'$1_DiemConfig_NewEpochEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t24@0@@0 () T@$Mutation_165934)
(declare-fun $t26@0 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t4@0 () Bool)
(declare-fun $t23@0 () T@$Mutation_11233)
(declare-fun $t12@1 () T@$Mutation_196002)
(declare-fun $t23@1 () T@$Mutation_11233)
(declare-fun $t25@0 () Int)
(declare-fun $t21@@4 () Int)
(declare-fun $t15@0@@5 () Bool)
(declare-fun $t16@0 () Int)
(declare-fun $t18@0@@0 () Bool)
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0@@4| () T@$1_DiemConfig_Configuration)
(declare-fun $t13@0 () Int)
(declare-fun $t12@@0 () T@$Mutation_196002)
(declare-fun $abort_code@1@@5 () Int)
(declare-fun $t12@0@@4 () T@$Mutation_196002)
(declare-fun $abort_code@0@@5 () Int)
(declare-fun $t7@0 () Bool)
(declare-fun $t9@@5 () Int)
(declare-fun $t5 () T@$Mutation_196002)
(declare-fun $t23@@5 () T@$Mutation_11233)
(declare-fun $t24@@5 () T@$Mutation_165934)
; Valid
; Valid
(declare-fun $abort_flag@0@@6 () Bool)
(declare-fun $t9@0 () |T@#0|)
(declare-fun $t8@1 () |T@$1_DiemConfig_DiemConfig'#0'|)
(declare-fun $t7@0@@0 () Int)
(declare-fun $abort_code@1@@6 () Int)
(declare-fun $t8 () |T@$1_DiemConfig_DiemConfig'#0'|)
(declare-fun $t8@0 () |T@$1_DiemConfig_DiemConfig'#0'|)
(declare-fun $abort_code@0@@6 () Int)
(declare-fun $t4@0@@0 () Bool)
(declare-fun $t6 () Int)
; Valid
(declare-fun $abort_flag@0@@7 () Bool)
(declare-fun $t9@0@@0 () T@$1_DiemSystem_DiemSystem)
(declare-fun $t8@1@@0 () |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun $t7@0@@1 () Int)
(declare-fun $abort_code@1@@7 () Int)
(declare-fun $t8@@0 () |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun $t8@0@@0 () |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun $abort_code@0@@7 () Int)
(declare-fun $t4@0@@1 () Bool)
(declare-fun $t6@@0 () Int)
; Valid
(declare-fun $abort_flag@0@@8 () Bool)
(declare-fun $t9@0@@1 () T@$1_RegisteredCurrencies_RegisteredCurrencies)
(declare-fun $t8@1@@1 () |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| Int) |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun $t7@0@@2 () Int)
(declare-fun $abort_code@1@@8 () Int)
(declare-fun $t8@@1 () |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun $t8@0@@1 () |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun $abort_code@0@@8 () Int)
(declare-fun $t4@0@@2 () Bool)
(declare-fun $t6@@1 () Int)
; Valid
(declare-fun $abort_flag@0@@9 () Bool)
(declare-fun $t9@0@@2 () T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption)
(declare-fun $t8@1@@2 () |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|)
(declare-fun $t7@0@@3 () Int)
(declare-fun $abort_code@1@@9 () Int)
(declare-fun $t8@@2 () |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|)
(declare-fun $t8@0@@2 () |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|)
(declare-fun $abort_code@0@@9 () Int)
(declare-fun $t4@0@@3 () Bool)
(declare-fun $t6@@2 () Int)
; Valid
(declare-fun $abort_flag@0@@10 () Bool)
(declare-fun $t9@0@@3 () T@$1_DiemConsensusConfig_DiemConsensusConfig)
(declare-fun $t8@1@@3 () |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|)
(declare-fun $t7@0@@4 () Int)
(declare-fun $abort_code@1@@10 () Int)
(declare-fun $t8@@3 () |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|)
(declare-fun $t8@0@@3 () |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|)
(declare-fun $abort_code@0@@10 () Int)
(declare-fun $t4@0@@4 () Bool)
(declare-fun $t6@@3 () Int)
; Valid
(declare-fun $abort_flag@0@@11 () Bool)
(declare-fun $t9@0@@4 () T@$1_DiemVMConfig_DiemVMConfig)
(declare-fun $t8@1@@4 () |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|)
(declare-fun $t7@0@@5 () Int)
(declare-fun $abort_code@1@@11 () Int)
(declare-fun $t8@@4 () |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|)
(declare-fun $t8@0@@4 () |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|)
(declare-fun $abort_code@0@@11 () Int)
(declare-fun $t4@0@@5 () Bool)
(declare-fun $t6@@4 () Int)
; Valid
(declare-fun $abort_flag@0@@12 () Bool)
(declare-fun $t9@0@@5 () T@$1_DiemVersion_DiemVersion)
(declare-fun $t8@1@@5 () |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|)
(declare-fun $t7@0@@6 () Int)
(declare-fun $abort_code@1@@12 () Int)
(declare-fun $t8@@5 () |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|)
(declare-fun $t8@0@@5 () |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|)
(declare-fun $abort_code@0@@12 () Int)
(declare-fun $t4@0@@6 () Bool)
(declare-fun $t6@@5 () Int)
; Valid
(declare-fun $abort_flag@0@@13 () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1@@4 () T@$Memory_173110)
(declare-fun $t15@@4 () T@$1_DiemConfig_Configuration)
(declare-fun _$t0@@5 () T@$signer)
(declare-fun $t4@0@@7 () Int)
(declare-fun $abort_code@1@@13 () Int)
(declare-fun $1_DiemConfig_Configuration_$memory@0@@5 () T@$Memory_173110)
(declare-fun $t14@0@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $abort_code@0@@13 () Int)
(declare-fun |inline$$1_Event_new_event_handle'$1_DiemConfig_NewEpochEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-fun $1_DiemConfig_Configuration_$modifies@@4 () |T@[Int]Bool|)
(declare-sort |T@[$1_Event_EventHandle]Bool| 0)
(declare-fun |Select__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle) Bool)
(declare-fun $1_Event_EventHandles () |T@[$1_Event_EventHandle]Bool|)
(declare-fun $1_Event_EventHandles@0 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun |Store__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle Bool) |T@[$1_Event_EventHandle]Bool|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $t10@@5 () Int)
(declare-fun $t7@0@@7 () Bool)
(declare-fun $t5@@0 () Bool)
(declare-fun $t4 () Int)
(declare-fun $t3 () Bool)
(declare-fun $1_Event_EventHandleGenerator_$modifies () |T@[Int]Bool|)
; Valid
(declare-fun $abort_flag@0@@14 () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'#0'_$memory@1| () T@$Memory_180330)
(declare-fun _$t0@@6 () T@$signer)
(declare-fun $t5@@1 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'#0'_$memory@2| () T@$Memory_178828)
(declare-fun _$t1@@5 () |T@#0|)
(declare-fun $t9@0@@6 () Int)
(declare-fun $abort_code@1@@14 () Int)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'#0'_$memory@0| () T@$Memory_180330)
(declare-fun |Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'| Int |T@$1_DiemConfig_ModifyConfigCapability'#0'|) |T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'#0'|)) (! (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t7@@5 () |T@$1_DiemConfig_ModifyConfigCapability'#0'|)
(declare-fun $abort_code@0@@14 () Int)
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'#0'_$modifies| () |T@[Int]Bool|)
(declare-fun $t14@@5 () Int)
(declare-fun $t11@0@@0 () Bool)
(declare-fun $t10@@6 () Int)
(declare-fun |$temp_0'bool'@0@@4| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'#0'_$memory@1| () T@$Memory_178828)
(declare-fun |$1_DiemConfig_DiemConfig'#0'_$memory@0@@0| () T@$Memory_178828)
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'#0''@0@@0| () |T@$1_DiemConfig_DiemConfig'#0'|)
(declare-fun $t8@@6 () Bool)
(declare-fun $t6@@6 () Int)
(declare-fun $t9@@6 () Int)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_176842)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_177901)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_194338)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_194723)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_194783)
(declare-fun |$1_DiemConfig_DiemConfig'#0'_$modifies@@0| () |T@[Int]Bool|)
; Valid
(declare-fun $abort_flag@0@@15 () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory@1| () T@$Memory_179808)
(declare-fun _$t0@@7 () T@$signer)
(declare-fun $t5@@2 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2| () T@$Memory_173196)
(declare-fun _$t1@@6 () T@$1_DiemSystem_DiemSystem)
(declare-fun $t9@0@@7 () Int)
(declare-fun $abort_code@1@@15 () Int)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory@0| () T@$Memory_179808)
(declare-fun |Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Int |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|)) (! (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t7@@6 () |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|)
(declare-fun $abort_code@0@@15 () Int)
(declare-fun inline$$Not$0$dst@1@@1 () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$modifies| () |T@[Int]Bool|)
(declare-fun $t14@@6 () Int)
(declare-fun $t11@0@@1 () Bool)
(declare-fun $t10@@7 () Int)
(declare-fun |$temp_0'bool'@0@@5| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1| () T@$Memory_173196)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@0| () T@$Memory_173196)
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@0@@0| () |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun $t8@@7 () Bool)
(declare-fun $t6@@7 () Int)
(declare-fun $t9@@7 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@0| () |T@[Int]Bool|)
; Valid
(declare-fun $abort_flag@0@@16 () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory@1| () T@$Memory_180069)
(declare-fun _$t0@@8 () T@$signer)
(declare-fun $t5@@3 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory@2| () T@$Memory_178695)
(declare-fun _$t1@@7 () T@$1_DiemConsensusConfig_DiemConsensusConfig)
(declare-fun $t9@0@@8 () Int)
(declare-fun $abort_code@1@@16 () Int)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory@0| () T@$Memory_180069)
(declare-fun |Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| Int |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|)) (! (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t7@@7 () |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|)
(declare-fun $abort_code@0@@16 () Int)
(declare-fun inline$$Not$0$dst@1@@2 () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'_$modifies| () |T@[Int]Bool|)
(declare-fun $t14@@7 () Int)
(declare-fun $t11@0@@2 () Bool)
(declare-fun $t10@@8 () Int)
(declare-fun |$temp_0'bool'@0@@6| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory@1| () T@$Memory_178695)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory@0@@0| () T@$Memory_178695)
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''@0@@0| () |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|)
(declare-fun $t8@@8 () Bool)
(declare-fun $t6@@8 () Int)
(declare-fun $t9@@8 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$modifies@@0| () |T@[Int]Bool|)
; Valid
(declare-fun $abort_flag@0@@17 () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory@1| () T@$Memory_180156)
(declare-fun _$t0@@9 () T@$signer)
(declare-fun $t5@@4 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2| () T@$Memory_174623)
(declare-fun _$t1@@8 () T@$1_DiemVMConfig_DiemVMConfig)
(declare-fun $t9@0@@9 () Int)
(declare-fun $abort_code@1@@17 () Int)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory@0| () T@$Memory_180156)
(declare-fun |Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Int |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|)) (! (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t7@@8 () |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|)
(declare-fun $abort_code@0@@17 () Int)
(declare-fun inline$$Not$0$dst@1@@3 () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$modifies| () |T@[Int]Bool|)
(declare-fun $t14@@8 () Int)
(declare-fun $t11@0@@3 () Bool)
(declare-fun $t10@@9 () Int)
(declare-fun |$temp_0'bool'@0@@7| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@1| () T@$Memory_174623)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@0@@0| () T@$Memory_174623)
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''@0@@0| () |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|)
(declare-fun $t8@@9 () Bool)
(declare-fun $t6@@9 () Int)
(declare-fun $t9@@9 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$modifies@@0| () |T@[Int]Bool|)
; Valid
(declare-fun $abort_flag@0@@18 () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory@1| () T@$Memory_180243)
(declare-fun _$t0@@10 () T@$signer)
(declare-fun $t5@@5 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@2| () T@$Memory_172704)
(declare-fun _$t1@@9 () T@$1_DiemVersion_DiemVersion)
(declare-fun $t9@0@@10 () Int)
(declare-fun $abort_code@1@@18 () Int)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory@0| () T@$Memory_180243)
(declare-fun |Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Int |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|)) (! (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t7@@9 () |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|)
(declare-fun $abort_code@0@@18 () Int)
(declare-fun inline$$Not$0$dst@1@@4 () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$modifies| () |T@[Int]Bool|)
(declare-fun $t14@@9 () Int)
(declare-fun $t11@0@@4 () Bool)
(declare-fun $t10@@10 () Int)
(declare-fun |$temp_0'bool'@0@@8| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@1| () T@$Memory_172704)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@0@@0| () T@$Memory_172704)
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''@0@@0| () |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|)
(declare-fun $t8@@10 () Bool)
(declare-fun $t6@@10 () Int)
(declare-fun $t9@@10 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$modifies@@0| () |T@[Int]Bool|)
; Valid
(declare-fun $abort_flag@0@@19 () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'#0'_$memory@1@@0| () T@$Memory_178828)
(declare-fun $t15@0@@6 () |T@$1_DiemConfig_ModifyConfigCapability'#0'|)
(declare-fun $t4@@0 () Int)
(declare-fun _$t0@@11 () T@$signer)
(declare-fun _$t1@@10 () |T@#0|)
(declare-fun $t7@0@@8 () Int)
(declare-fun $abort_code@1@@19 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'#0'_$memory@0@@1| () T@$Memory_178828)
(declare-fun $t13@0@@0 () |T@$1_DiemConfig_DiemConfig'#0'|)
(declare-fun $abort_code@0@@19 () Int)
(declare-fun inline$$Not$0$dst@1@@5 () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'#0'_$modifies@@1| () |T@[Int]Bool|)
(declare-fun $t12@@1 () Int)
(declare-fun $t9@0@@11 () Bool)
(declare-fun $t6@@11 () Bool)
(declare-fun $t8@@11 () Int)
(declare-fun $t7@@10 () Int)
(declare-fun $t5@@6 () Int)
; Valid
(declare-fun $abort_flag@0@@20 () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@0| () T@$Memory_173196)
(declare-fun $t15@0@@7 () |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|)
(declare-fun $t4@@1 () Int)
(declare-fun _$t0@@12 () T@$signer)
(declare-fun _$t1@@11 () T@$1_DiemSystem_DiemSystem)
(declare-fun $t7@0@@9 () Int)
(declare-fun $abort_code@1@@20 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@1| () T@$Memory_173196)
(declare-fun $t13@0@@1 () |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun $abort_code@0@@20 () Int)
(declare-fun inline$$Not$0$dst@1@@6 () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@1| () |T@[Int]Bool|)
(declare-fun $t12@@2 () Int)
(declare-fun $t9@0@@12 () Bool)
(declare-fun $t6@@12 () Bool)
(declare-fun $t8@@12 () Int)
(declare-fun $t7@@11 () Int)
(declare-fun $t5@@7 () Int)
; Valid
(declare-fun $abort_flag@0@@21 () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory@1@@0| () T@$Memory_178695)
(declare-fun $t15@0@@8 () |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|)
(declare-fun $t4@@2 () Int)
(declare-fun _$t0@@13 () T@$signer)
(declare-fun _$t1@@12 () T@$1_DiemConsensusConfig_DiemConsensusConfig)
(declare-fun $t7@0@@10 () Int)
(declare-fun $abort_code@1@@21 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory@0@@1| () T@$Memory_178695)
(declare-fun $t13@0@@2 () |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|)
(declare-fun $abort_code@0@@21 () Int)
(declare-fun inline$$Not$0$dst@1@@7 () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$modifies@@1| () |T@[Int]Bool|)
(declare-fun $t12@@3 () Int)
(declare-fun $t9@0@@13 () Bool)
(declare-fun $t6@@13 () Bool)
(declare-fun $t8@@13 () Int)
(declare-fun $t7@@12 () Int)
(declare-fun $t5@@8 () Int)
; Valid
(declare-fun $abort_flag@0@@22 () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@1@@0| () T@$Memory_174623)
(declare-fun $t15@0@@9 () |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|)
(declare-fun $t4@@3 () Int)
(declare-fun _$t0@@14 () T@$signer)
(declare-fun _$t1@@13 () T@$1_DiemVMConfig_DiemVMConfig)
(declare-fun $t7@0@@11 () Int)
(declare-fun $abort_code@1@@22 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@0@@1| () T@$Memory_174623)
(declare-fun $t13@0@@3 () |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|)
(declare-fun $abort_code@0@@22 () Int)
(declare-fun inline$$Not$0$dst@1@@8 () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$modifies@@1| () |T@[Int]Bool|)
(declare-fun $t12@@4 () Int)
(declare-fun $t9@0@@14 () Bool)
(declare-fun $t6@@14 () Bool)
(declare-fun $t8@@14 () Int)
(declare-fun $t7@@13 () Int)
(declare-fun $t5@@9 () Int)
; Valid
(declare-fun $abort_flag@0@@23 () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@1@@0| () T@$Memory_172704)
(declare-fun $t15@0@@10 () |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|)
(declare-fun $t4@@4 () Int)
(declare-fun _$t0@@15 () T@$signer)
(declare-fun _$t1@@14 () T@$1_DiemVersion_DiemVersion)
(declare-fun $t7@0@@12 () Int)
(declare-fun $abort_code@1@@23 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@0@@1| () T@$Memory_172704)
(declare-fun $t13@0@@4 () |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|)
(declare-fun $abort_code@0@@23 () Int)
(declare-fun inline$$Not$0$dst@1@@9 () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$modifies@@1| () |T@[Int]Bool|)
(declare-fun $t12@@5 () Int)
(declare-fun $t9@0@@15 () Bool)
(declare-fun $t6@@15 () Bool)
(declare-fun $t8@@15 () Int)
(declare-fun $t7@@14 () Int)
(declare-fun $t5@@10 () Int)
; Valid
; Valid
(declare-fun $t1 () Int)
(declare-fun _$t0@@16 () T@$signer)
(declare-fun $t2 () T@$1_DiemConfig_Configuration)
(declare-fun $t3@@0 () Int)
(declare-fun $t8@@16 () Int)
(declare-fun $t17 () Bool)
(declare-fun $t13 () T@$1_DiemConfig_Configuration)
(declare-fun $t10@@11 () Int)
(declare-fun $t14@@10 () Int)
(declare-fun $t7@@15 () Bool)
(declare-fun $t6@@16 () Int)
(declare-fun $t18 () T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@2@@4 () T@$Memory_173110)
(declare-fun $t19@@4 () Int)
(declare-fun $t20@@5 () T@$1_DiemConfig_Configuration)
(declare-fun $t21@@5 () Int)
(declare-fun $t22@@4 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t9@@11 () T@$1_DiemConfig_Configuration)
(declare-fun $t23@@6 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t24@@6 () T@$1_Event_EventHandle)
(declare-fun $t16 () T@$1_Event_EventHandle)
(declare-fun $t25@@5 () Bool)
(declare-fun $t15@@5 () T@$1_DiemConfig_Configuration)
(declare-fun $es@0@@5 () T@$EventStore)
(declare-fun $t26@@4 () T@$1_DiemConfig_Configuration)
(declare-fun $t27@@5 () Int)
(declare-fun $t28@@5 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t4@@5 () T@$1_DiemConfig_Configuration)
(declare-fun $t5@@11 () T@$1_Event_EventHandle)
(declare-fun |$temp_0'bool'@0@@9| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1@@5 () T@$Memory_173110)
(declare-fun $1_DiemConfig_Configuration_$memory@0@@6 () T@$Memory_173110)
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0@@5| () T@$1_DiemConfig_Configuration)
(declare-fun $t11@@5 () T@$1_DiemConfig_Configuration)
(declare-fun $t12@@6 () Int)
(declare-fun $1_DiemConfig_Configuration_$modifies@@5 () |T@[Int]Bool|)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_194451)
(declare-fun $1_VASPDomain_VASPDomainManager_$memory () T@$Memory_194551)
(declare-fun $1_VASPDomain_VASPDomains_$memory () T@$Memory_194636)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_194868)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_195123)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_195223)
; Valid
(declare-fun $t42 () T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@1@@6 () T@$Memory_173110)
(declare-fun $t43 () Int)
(declare-fun $t44 () T@$1_DiemConfig_Configuration)
(declare-fun $t45 () Int)
(declare-fun $t46 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t8@@17 () T@$1_DiemConfig_Configuration)
(declare-fun $t7@@16 () Int)
(declare-fun $t9@@12 () Int)
(declare-fun $t10@@12 () T@$1_DiemConfig_Configuration)
(declare-fun $t11@@6 () Int)
(declare-fun $t6@@17 () T@$1_DiemConfig_Configuration)
(declare-fun $es@1 () T@$EventStore)
(declare-fun $t12@@7 () T@$1_DiemConfig_Configuration)
(declare-fun $t13@@0 () T@$1_Event_EventHandle)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@0@@7 () T@$Memory_173110)
(declare-fun $t25@3 () T@$Mutation_196002)
(declare-fun $es@0@@6 () T@$EventStore)
(declare-fun $t29@0 () Bool)
(declare-fun $t1@0 () Bool)
(declare-fun $t15@0@@11 () Int)
(declare-fun $abort_code@2 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_DiemConfig_NewEpochEvent'$0$handle@1@@0| () T@$1_Event_EventHandle)
(declare-fun $t39@0 () T@$Mutation_165934)
(declare-fun $t41@0 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t38@0 () T@$Mutation_11233)
(declare-fun $t25@2 () T@$Mutation_196002)
(declare-fun $t38@1 () T@$Mutation_11233)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun $t40@0 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t35@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_flag@0@@24 () Bool)
(declare-fun $abort_code@1@@24 () Int)
(declare-fun inline$$Gt$0$dst@1 () Bool)
(declare-fun $t34@0 () T@$Mutation_11233)
(declare-fun $t25@1 () T@$Mutation_196002)
(declare-fun $t34@1 () T@$Mutation_11233)
(declare-fun $t26@@5 () Int)
(declare-fun $t33@@4 () Int)
(declare-fun $t30@0 () Int)
(declare-fun $t27@@6 () Bool)
(declare-fun $t28@0 () Int)
(declare-fun $t15@@6 () Int)
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0@@6| () T@$1_DiemConfig_Configuration)
(declare-fun $t25@@6 () T@$Mutation_196002)
(declare-fun $t25@0@@0 () T@$Mutation_196002)
(declare-fun $abort_code@0@@24 () Int)
(declare-fun $1_DiemConfig_Configuration_$modifies@@6 () |T@[Int]Bool|)
(declare-fun inline$$Not$2$dst@1 () Bool)
(declare-fun inline$$Not$1$dst@1 () Bool)
(declare-fun $t0@0 () Bool)
(declare-fun $t18@@0 () Bool)
(declare-fun inline$$1_DiemConfig_reconfiguration_enabled$0$$t1@1 () Bool)
(declare-fun $t17@@0 () Int)
(declare-fun $t20@0@@4 () Bool)
(declare-fun inline$$Not$0$dst@1@@10 () Bool)
(declare-fun inline$$1_DiemTimestamp_is_genesis$0$$t1@1 () Bool)
(declare-fun $t4@@6 () T@$Mutation_196002)
(declare-fun $t34@@4 () T@$Mutation_11233)
(declare-fun $t38@@4 () T@$Mutation_11233)
(declare-fun $t39 () T@$Mutation_165934)
; Valid
(declare-fun $t26@@6 () T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@2@@5 () T@$Memory_173110)
(declare-fun $t27@@7 () Int)
(declare-fun $t28@@6 () T@$1_DiemConfig_Configuration)
(declare-fun $t29@@5 () Int)
(declare-fun $t30@@4 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t17@@1 () T@$1_DiemConfig_Configuration)
(declare-fun $t18@@1 () Int)
(declare-fun $t31@@4 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t32@@4 () T@$1_Event_EventHandle)
(declare-fun $t24@@7 () T@$1_Event_EventHandle)
(declare-fun $t33@@5 () Bool)
(declare-fun $t23@@7 () T@$1_DiemConfig_Configuration)
(declare-fun $es@0@@7 () T@$EventStore)
(declare-fun $t34@@5 () T@$1_DiemConfig_Configuration)
(declare-fun $t35@@4 () Int)
(declare-fun $t36@@4 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t6@@18 () T@$1_DiemConfig_Configuration)
(declare-fun $t7@@17 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'#0'_$memory@0@@2| () T@$Memory_178828)
(declare-fun _$t1@@15 () |T@#0|)
(declare-fun $t8@@18 () T@$1_DiemConfig_Configuration)
(declare-fun $t9@@13 () T@$1_Event_EventHandle)
(declare-fun |$temp_0'bool'@0@@10| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1@@7 () T@$Memory_173110)
(declare-fun $1_DiemConfig_Configuration_$memory@0@@8 () T@$Memory_173110)
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0@@7| () T@$1_DiemConfig_Configuration)
(declare-fun $t25@@7 () Bool)
(declare-fun $t14@0@@1 () Int)
(declare-fun $t21@@6 () T@$1_DiemConfig_Configuration)
(declare-fun $t22@@5 () Int)
(declare-fun $t14@@11 () Int)
(declare-fun $abort_flag@0@@25 () Bool)
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'#0''@0@@1| () |T@$1_DiemConfig_DiemConfig'#0'|)
(declare-fun $t15@1 () T@$Mutation_180409)
(declare-fun $t16@0@@0 () T@$Mutation_147237)
(declare-fun $t16@1 () T@$Mutation_147237)
(declare-fun $t15@2 () T@$Mutation_180409)
(declare-fun $t19@@5 () T@$1_DiemConfig_Configuration)
(declare-fun $t20@@6 () Int)
(declare-fun $1_DiemConfig_Configuration_$modifies@@7 () |T@[Int]Bool|)
(declare-fun $abort_code@1@@25 () Int)
(declare-fun $t15@@7 () T@$Mutation_180409)
(declare-fun $t15@0@@12 () T@$Mutation_180409)
(declare-fun $abort_code@0@@25 () Int)
(declare-fun $t11@0@@5 () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'#0'_$modifies@@2| () |T@[Int]Bool|)
(declare-fun $t13@@1 () Int)
(declare-fun _$t0@@17 () |T@$1_DiemConfig_ModifyConfigCapability'#0'|)
(declare-fun $t5@@12 () T@$Mutation_180409)
(declare-fun $t16@@0 () T@$Mutation_147237)
; Valid
(declare-fun $t26@@7 () T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@2@@6 () T@$Memory_173110)
(declare-fun $t27@@8 () Int)
(declare-fun $t28@@7 () T@$1_DiemConfig_Configuration)
(declare-fun $t29@@6 () Int)
(declare-fun $t30@@5 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t17@@2 () T@$1_DiemConfig_Configuration)
(declare-fun $t18@@2 () Int)
(declare-fun $t31@@5 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t32@@5 () T@$1_Event_EventHandle)
(declare-fun $t24@@8 () T@$1_Event_EventHandle)
(declare-fun $t33@@6 () Bool)
(declare-fun $t23@@8 () T@$1_DiemConfig_Configuration)
(declare-fun $es@0@@8 () T@$EventStore)
(declare-fun $t34@@6 () T@$1_DiemConfig_Configuration)
(declare-fun $t35@@5 () Int)
(declare-fun $t36@@5 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t6@@19 () T@$1_DiemConfig_Configuration)
(declare-fun $t7@@18 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@2| () T@$Memory_173196)
(declare-fun _$t1@@16 () T@$1_DiemSystem_DiemSystem)
(declare-fun $t8@@19 () T@$1_DiemConfig_Configuration)
(declare-fun $t9@@14 () T@$1_Event_EventHandle)
(declare-fun |$temp_0'bool'@0@@11| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1@@8 () T@$Memory_173110)
(declare-fun $1_DiemConfig_Configuration_$memory@0@@9 () T@$Memory_173110)
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0@@8| () T@$1_DiemConfig_Configuration)
(declare-fun $t25@@8 () Bool)
(declare-fun $t14@0@@2 () Int)
(declare-fun $t21@@7 () T@$1_DiemConfig_Configuration)
(declare-fun $t22@@6 () Int)
(declare-fun $t14@@12 () Int)
(declare-fun $abort_flag@0@@26 () Bool)
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@0@@1| () |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun $t15@1@@0 () T@$Mutation_183086)
(declare-fun $t16@0@@1 () T@$Mutation_183131)
(declare-fun $t16@1@@0 () T@$Mutation_183131)
(declare-fun $t15@2@@0 () T@$Mutation_183086)
(declare-fun $t19@@6 () T@$1_DiemConfig_Configuration)
(declare-fun $t20@@7 () Int)
(declare-fun $1_DiemConfig_Configuration_$modifies@@8 () |T@[Int]Bool|)
(declare-fun $abort_code@1@@26 () Int)
(declare-fun $t15@@8 () T@$Mutation_183086)
(declare-fun $t15@0@@13 () T@$Mutation_183086)
(declare-fun $abort_code@0@@26 () Int)
(declare-fun $t11@0@@6 () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@2| () |T@[Int]Bool|)
(declare-fun $t13@@2 () Int)
(declare-fun _$t0@@18 () |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|)
(declare-fun $t5@@13 () T@$Mutation_183086)
(declare-fun $t16@@1 () T@$Mutation_183131)
; Valid
(declare-fun $t26@@8 () T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@2@@7 () T@$Memory_173110)
(declare-fun $t27@@9 () Int)
(declare-fun $t28@@8 () T@$1_DiemConfig_Configuration)
(declare-fun $t29@@7 () Int)
(declare-fun $t30@@6 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t17@@3 () T@$1_DiemConfig_Configuration)
(declare-fun $t18@@3 () Int)
(declare-fun $t31@@6 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t32@@6 () T@$1_Event_EventHandle)
(declare-fun $t24@@9 () T@$1_Event_EventHandle)
(declare-fun $t33@@7 () Bool)
(declare-fun $t23@@9 () T@$1_DiemConfig_Configuration)
(declare-fun $es@0@@9 () T@$EventStore)
(declare-fun $t34@@7 () T@$1_DiemConfig_Configuration)
(declare-fun $t35@@6 () Int)
(declare-fun $t36@@6 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t6@@20 () T@$1_DiemConfig_Configuration)
(declare-fun $t7@@19 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory@0@@2| () T@$Memory_178695)
(declare-fun _$t1@@17 () T@$1_DiemConsensusConfig_DiemConsensusConfig)
(declare-fun $t8@@20 () T@$1_DiemConfig_Configuration)
(declare-fun $t9@@15 () T@$1_Event_EventHandle)
(declare-fun |$temp_0'bool'@0@@12| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1@@9 () T@$Memory_173110)
(declare-fun $1_DiemConfig_Configuration_$memory@0@@10 () T@$Memory_173110)
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0@@9| () T@$1_DiemConfig_Configuration)
(declare-fun $t25@@9 () Bool)
(declare-fun $t14@0@@3 () Int)
(declare-fun $t21@@8 () T@$1_DiemConfig_Configuration)
(declare-fun $t22@@7 () Int)
(declare-fun $t14@@13 () Int)
(declare-fun $abort_flag@0@@27 () Bool)
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''@0@@1| () |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|)
(declare-fun $t15@1@@1 () T@$Mutation_185736)
(declare-fun $t16@0@@2 () T@$Mutation_185781)
(declare-fun $t16@1@@1 () T@$Mutation_185781)
(declare-fun $t15@2@@1 () T@$Mutation_185736)
(declare-fun $t19@@7 () T@$1_DiemConfig_Configuration)
(declare-fun $t20@@8 () Int)
(declare-fun $1_DiemConfig_Configuration_$modifies@@9 () |T@[Int]Bool|)
(declare-fun $abort_code@1@@27 () Int)
(declare-fun $t15@@9 () T@$Mutation_185736)
(declare-fun $t15@0@@14 () T@$Mutation_185736)
(declare-fun $abort_code@0@@27 () Int)
(declare-fun $t11@0@@7 () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$modifies@@2| () |T@[Int]Bool|)
(declare-fun $t13@@3 () Int)
(declare-fun _$t0@@19 () |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|)
(declare-fun $t5@@14 () T@$Mutation_185736)
(declare-fun $t16@@2 () T@$Mutation_185781)
; Valid
(declare-fun $t26@@9 () T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@2@@8 () T@$Memory_173110)
(declare-fun $t27@@10 () Int)
(declare-fun $t28@@9 () T@$1_DiemConfig_Configuration)
(declare-fun $t29@@8 () Int)
(declare-fun $t30@@7 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t17@@4 () T@$1_DiemConfig_Configuration)
(declare-fun $t18@@4 () Int)
(declare-fun $t31@@7 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t32@@7 () T@$1_Event_EventHandle)
(declare-fun $t24@@10 () T@$1_Event_EventHandle)
(declare-fun $t33@@8 () Bool)
(declare-fun $t23@@10 () T@$1_DiemConfig_Configuration)
(declare-fun $es@0@@10 () T@$EventStore)
(declare-fun $t34@@8 () T@$1_DiemConfig_Configuration)
(declare-fun $t35@@7 () Int)
(declare-fun $t36@@7 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t6@@21 () T@$1_DiemConfig_Configuration)
(declare-fun $t7@@20 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@0@@2| () T@$Memory_174623)
(declare-fun _$t1@@18 () T@$1_DiemVMConfig_DiemVMConfig)
(declare-fun $t8@@21 () T@$1_DiemConfig_Configuration)
(declare-fun $t9@@16 () T@$1_Event_EventHandle)
(declare-fun |$temp_0'bool'@0@@13| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1@@10 () T@$Memory_173110)
(declare-fun $1_DiemConfig_Configuration_$memory@0@@11 () T@$Memory_173110)
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0@@10| () T@$1_DiemConfig_Configuration)
(declare-fun $t25@@10 () Bool)
(declare-fun $t14@0@@4 () Int)
(declare-fun $t21@@9 () T@$1_DiemConfig_Configuration)
(declare-fun $t22@@8 () Int)
(declare-fun $t14@@14 () Int)
(declare-fun $abort_flag@0@@28 () Bool)
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''@0@@1| () |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|)
(declare-fun $t15@1@@2 () T@$Mutation_188386)
(declare-fun $t16@0@@3 () T@$Mutation_188431)
(declare-fun $t16@1@@2 () T@$Mutation_188431)
(declare-fun $t15@2@@2 () T@$Mutation_188386)
(declare-fun $t19@@8 () T@$1_DiemConfig_Configuration)
(declare-fun $t20@@9 () Int)
(declare-fun $1_DiemConfig_Configuration_$modifies@@10 () |T@[Int]Bool|)
(declare-fun $abort_code@1@@28 () Int)
(declare-fun $t15@@10 () T@$Mutation_188386)
(declare-fun $t15@0@@15 () T@$Mutation_188386)
(declare-fun $abort_code@0@@28 () Int)
(declare-fun $t11@0@@8 () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$modifies@@2| () |T@[Int]Bool|)
(declare-fun $t13@@4 () Int)
(declare-fun _$t0@@20 () |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|)
(declare-fun $t5@@15 () T@$Mutation_188386)
(declare-fun $t16@@3 () T@$Mutation_188431)
; Valid
(declare-fun $t26@@10 () T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@2@@9 () T@$Memory_173110)
(declare-fun $t27@@11 () Int)
(declare-fun $t28@@10 () T@$1_DiemConfig_Configuration)
(declare-fun $t29@@9 () Int)
(declare-fun $t30@@8 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t17@@5 () T@$1_DiemConfig_Configuration)
(declare-fun $t18@@5 () Int)
(declare-fun $t31@@8 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t32@@8 () T@$1_Event_EventHandle)
(declare-fun $t24@@11 () T@$1_Event_EventHandle)
(declare-fun $t33@@9 () Bool)
(declare-fun $t23@@11 () T@$1_DiemConfig_Configuration)
(declare-fun $es@0@@11 () T@$EventStore)
(declare-fun $t34@@9 () T@$1_DiemConfig_Configuration)
(declare-fun $t35@@8 () Int)
(declare-fun $t36@@8 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t6@@22 () T@$1_DiemConfig_Configuration)
(declare-fun $t7@@21 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@0@@2| () T@$Memory_172704)
(declare-fun _$t1@@19 () T@$1_DiemVersion_DiemVersion)
(declare-fun $t8@@22 () T@$1_DiemConfig_Configuration)
(declare-fun $t9@@17 () T@$1_Event_EventHandle)
(declare-fun |$temp_0'bool'@0@@14| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1@@11 () T@$Memory_173110)
(declare-fun $1_DiemConfig_Configuration_$memory@0@@12 () T@$Memory_173110)
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0@@11| () T@$1_DiemConfig_Configuration)
(declare-fun $t25@@11 () Bool)
(declare-fun $t14@0@@5 () Int)
(declare-fun $t21@@10 () T@$1_DiemConfig_Configuration)
(declare-fun $t22@@9 () Int)
(declare-fun $t14@@15 () Int)
(declare-fun $abort_flag@0@@29 () Bool)
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''@0@@1| () |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|)
(declare-fun $t15@1@@3 () T@$Mutation_191036)
(declare-fun $t16@0@@4 () T@$Mutation_191081)
(declare-fun $t16@1@@3 () T@$Mutation_191081)
(declare-fun $t15@2@@3 () T@$Mutation_191036)
(declare-fun $t19@@9 () T@$1_DiemConfig_Configuration)
(declare-fun $t20@@10 () Int)
(declare-fun $1_DiemConfig_Configuration_$modifies@@11 () |T@[Int]Bool|)
(declare-fun $abort_code@1@@29 () Int)
(declare-fun $t15@@11 () T@$Mutation_191036)
(declare-fun $t15@0@@16 () T@$Mutation_191036)
(declare-fun $abort_code@0@@29 () Int)
(declare-fun $t11@0@@9 () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$modifies@@2| () |T@[Int]Bool|)
(declare-fun $t13@@5 () Int)
(declare-fun _$t0@@21 () |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|)
(declare-fun $t5@@16 () T@$Mutation_191036)
(declare-fun $t16@@4 () T@$Mutation_191081)
; Valid
(declare-fun $t56 () T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@2@@10 () T@$Memory_173110)
(declare-fun $t57 () Int)
(declare-fun $t58 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0| () T@$Memory_173196)
(declare-fun $t14@0@@6 () T@$1_DiemSystem_DiemSystem)
(declare-fun $t59 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t60 () T@$1_Event_EventHandle)
(declare-fun $t54 () T@$1_Event_EventHandle)
(declare-fun $t61 () Bool)
(declare-fun $t53 () T@$1_DiemConfig_Configuration)
(declare-fun $es@0@@12 () T@$EventStore)
(declare-fun $t62 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $t63 () T@$1_DiemConfig_Configuration)
(declare-fun $t64 () Int)
(declare-fun $t65 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun _$t1@@20 () Int)
(declare-fun $t15@@12 () Int)
(declare-fun _$t0@@22 () T@$signer)
(declare-fun $t16@@5 () T@$1_DiemConfig_Configuration)
(declare-fun $t17@@6 () Int)
(declare-fun $t21@@11 () Int)
(declare-fun $t18@@6 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $t19@@10 () T@$1_DiemConfig_Configuration)
(declare-fun $t20@@11 () T@$1_Event_EventHandle)
(declare-fun |$temp_0'bool'@1| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1@@12 () T@$Memory_173110)
(declare-fun $1_DiemConfig_Configuration_$memory@0@@13 () T@$Memory_173110)
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0@@12| () T@$1_DiemConfig_Configuration)
(declare-fun |$temp_0'bool'@0@@15| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@1| () T@$Memory_173196)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@3| () T@$Memory_173196)
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@0@@2| () |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun $t55 () Bool)
(declare-fun $t23@0@@0 () Int)
(declare-fun $t23@@12 () Int)
(declare-fun $t51 () T@$1_DiemConfig_Configuration)
(declare-fun $t52 () Int)
(declare-fun $t44@1 () T@$Mutation_183131)
(declare-fun $t44@0 () T@$Mutation_183131)
(declare-fun |inline$$1_Vector_push_back'$1_DiemSystem_ValidatorInfo'$0$m'@1| () T@$Mutation_152979)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@3| () |T@[Int]Bool|)
(declare-fun $t45@0 () T@$Mutation_152979)
(declare-fun $t49@0 () T@$1_DiemSystem_ValidatorInfo)
(declare-fun $t47 () Bool)
(declare-fun $t46@@0 () Int)
(declare-fun $t42@@0 () T@$1_ValidatorConfig_Config)
(declare-fun $t43@@0 () Bool)
(declare-fun $t14@@16 () T@$1_DiemSystem_DiemSystem)
(declare-fun |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@0| () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun inline$$Not$0$dst@1@@11 () Bool)
(declare-fun $t41 () Int)
(declare-fun $t38@@5 () Bool)
(declare-fun $t35@@9 () Bool)
(declare-fun $t37@0 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun inline$$Lt$0$dst@1@@0 () Bool)
(declare-fun $t34@@10 () Int)
(declare-fun $t29@@10 () Int)
(declare-fun $t30@@9 () Bool)
(declare-fun $t26@@11 () Bool)
(declare-fun $t28@@11 () Int)
(declare-fun $t25@@12 () Bool)
(declare-fun $t24@@12 () Int)
(declare-fun $t22@@10 () Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|T@[Int]$1_DiemSystem_CapabilityHolder| Int) T@$1_DiemSystem_CapabilityHolder)
(declare-fun $t4@@7 () T@$Mutation_152979)
(declare-fun $t44@@0 () T@$Mutation_183131)
(declare-fun $t45@@0 () T@$Mutation_152979)
(push 1)
(set-info :boogie-vc-id $1_DiemSystem_add_validator$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 543586) (let ((anon31_correct  (=> (= $t56 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_173110| $1_DiemConfig_Configuration_$memory@2@@10) 173345816)) (=> (and (= $t57 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t58 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| $t56)))) (=> (and (and (and (= (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) 173345816)) $t14@0@@6) (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) 173345816)) (and (= (let ((addr@@278 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) addr@@278))) $t14@0@@6) (= (|Select__T@[Int]Bool_| (|domain#$Memory_173110| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173110| $1_DiemConfig_Configuration_$memory@2@@10) 173345816)))) (and (and (= $t59 $t58) (= $t60 $t54)) (and (= $t61  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_178909| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t57 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t53))))) (= $es@0@@12 (ite $t61 (let ((stream@@69 (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| $es) $t60)))
(let ((stream_new@@36 (let ((len@@36 (|l#Multiset_144488| stream@@69)))
(let ((cnt@@36 (|Select__T@[$EventRep]Int_| (|v#Multiset_144488| stream@@69) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t59))))
(Multiset_144488 (|Store__T@[$EventRep]Int_| (|v#Multiset_144488| stream@@69) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t59) (+ cnt@@36 1)) (+ len@@36 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| $es) $t60 stream_new@@36)))) $es))))) (and (=> (= (ControlFlow 0 405655) (- 0 547093)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173110| $1_DiemConfig_Configuration_$memory@2@@10) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173110| $1_DiemConfig_Configuration_$memory@2@@10) 173345816)) (and (=> (= (ControlFlow 0 405655) (- 0 547105)) (forall ((config_address@@66 Int) ) (!  (=> (|$IsValid'address'| config_address@@66) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) config_address@@66) (= config_address@@66 173345816)))
 :qid |DiemConfigbpl.18337:15|
 :skolemid |584|
))) (=> (forall ((config_address@@67 Int) ) (!  (=> (|$IsValid'address'| config_address@@67) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) config_address@@67) (= config_address@@67 173345816)))
 :qid |DiemConfigbpl.18337:15|
 :skolemid |584|
)) (and (=> (= (ControlFlow 0 405655) (- 0 547130)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) 173345816)) (and (=> (= (ControlFlow 0 405655) (- 0 547141)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173269| $1_DiemSystem_CapabilityHolder_$memory) 173345816)))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173269| $1_DiemSystem_CapabilityHolder_$memory) 173345816))) (and (=> (= (ControlFlow 0 405655) (- 0 547161)) (forall ((addr@@279 Int) ) (!  (=> (|$IsValid'address'| addr@@279) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) addr@@279) (= addr@@279 173345816)))
 :qid |DiemConfigbpl.18355:15|
 :skolemid |585|
))) (=> (forall ((addr@@280 Int) ) (!  (=> (|$IsValid'address'| addr@@280) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) addr@@280) (= addr@@280 173345816)))
 :qid |DiemConfigbpl.18355:15|
 :skolemid |585|
)) (and (=> (= (ControlFlow 0 405655) (- 0 547186)) (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) 173345816)) (not (= (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@281 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@281))))) (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@282 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) addr@@282)))))))) (exists ((a Int) ) (!  (and (|$IsValid'address'| a) (and ($1_Signer_is_txn_signer_addr a) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) a) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) a)) 0))))
 :qid |DiemConfigbpl.4409:13|
 :skolemid |107|
)))) (=> (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) 173345816)) (not (= (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@283 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@283))))) (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@284 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) addr@@284)))))))) (exists ((a@@0 Int) ) (!  (and (|$IsValid'address'| a@@0) (and ($1_Signer_is_txn_signer_addr a@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) a@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) a@@0)) 0))))
 :qid |DiemConfigbpl.4409:13|
 :skolemid |107|
))) (and (=> (= (ControlFlow 0 405655) (- 0 547223)) (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) 173345816)) (= (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@285 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@285))))) (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@286 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) addr@@286))))))) (forall ((addr@@287 Int) ) (!  (=> (|$IsValid'address'| addr@@287) (=> (let (($range_0@@2 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@288 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) addr@@288))))))))
(exists (($i_1@@2 Int) ) (!  (and ($InRange $range_0@@2 $i_1@@2) (let ((i@@42 $i_1@@2))
 (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@289 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@289)))) i@@42)) addr@@287) (not (= (|$config#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@290 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@290)))) i@@42)) (|$config#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@291 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) addr@@291)))) i@@42)))))))
 :qid |DiemConfigbpl.18367:823|
 :skolemid |586|
))) (exists ((a@@1 Int) ) (!  (and (|$IsValid'address'| a@@1) (and ($1_Signer_is_txn_signer_addr a@@1) (= (let ((t_ref (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@287)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref)) 0)) a@@1)))
 :qid |DiemConfigbpl.18368:674|
 :skolemid |587|
))))
 :qid |DiemConfigbpl.18367:592|
 :skolemid |588|
)))) (=> (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) 173345816)) (= (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@292 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@292))))) (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@293 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) addr@@293))))))) (forall ((addr@@294 Int) ) (!  (=> (|$IsValid'address'| addr@@294) (=> (let (($range_0@@3 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@295 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) addr@@295))))))))
(exists (($i_1@@3 Int) ) (!  (and ($InRange $range_0@@3 $i_1@@3) (let ((i@@43 $i_1@@3))
 (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@296 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@296)))) i@@43)) addr@@294) (not (= (|$config#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@297 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@297)))) i@@43)) (|$config#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@298 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) addr@@298)))) i@@43)))))))
 :qid |DiemConfigbpl.18367:823|
 :skolemid |586|
))) (exists ((a@@2 Int) ) (!  (and (|$IsValid'address'| a@@2) (and ($1_Signer_is_txn_signer_addr a@@2) (= (let ((t_ref@@0 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@294)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@0)) 0)) a@@2)))
 :qid |DiemConfigbpl.18368:674|
 :skolemid |587|
))))
 :qid |DiemConfigbpl.18367:592|
 :skolemid |588|
))) (and (=> (= (ControlFlow 0 405655) (- 0 547361)) (let (($range_0@@4 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@299 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) addr@@299))))))))
(forall (($i_1@@4 Int) ) (!  (=> ($InRange $range_0@@4 $i_1@@4) (let ((i1@@2 $i_1@@4))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@300 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) addr@@300)))) i1@@2))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@300 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) addr@@300)))) i1@@2)))) 3))))
 :qid |DiemConfigbpl.18374:146|
 :skolemid |589|
)))) (=> (let (($range_0@@5 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@301 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) addr@@301))))))))
(forall (($i_1@@5 Int) ) (!  (=> ($InRange $range_0@@5 $i_1@@5) (let ((i1@@3 $i_1@@5))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@302 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) addr@@302)))) i1@@3))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@302 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) addr@@302)))) i1@@3)))) 3))))
 :qid |DiemConfigbpl.18374:146|
 :skolemid |589|
))) (and (=> (= (ControlFlow 0 405655) (- 0 547403)) (let (($range_0@@6 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@303 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) addr@@303))))))))
(forall (($i_1@@6 Int) ) (!  (=> ($InRange $range_0@@6 $i_1@@6) (let ((i1@@4 $i_1@@6))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@304 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) addr@@304)))) i1@@4)) 1)))
 :qid |DiemConfigbpl.18381:146|
 :skolemid |590|
)))) (=> (let (($range_0@@7 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@305 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) addr@@305))))))))
(forall (($i_1@@7 Int) ) (!  (=> ($InRange $range_0@@7 $i_1@@7) (let ((i1@@5 $i_1@@7))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@306 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) addr@@306)))) i1@@5)) 1)))
 :qid |DiemConfigbpl.18381:146|
 :skolemid |590|
))) (=> (and (and (= $t62 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@307 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) addr@@307))))) (= $t63 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_173110| $1_DiemConfig_Configuration_$memory@2@@10) 173345816))) (and (= $t64 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t65 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| $t63))))) (and (=> (= (ControlFlow 0 405655) (- 0 547494)) (not (>= (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@308 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@308))))) 256))) (=> (not (>= (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@309 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@309))))) 256)) (and (=> (= (ControlFlow 0 405655) (- 0 547506)) (not (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@20) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@20)))) 0)))))) (=> (not (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@20) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@20)))) 0))))) (and (=> (= (ControlFlow 0 405655) (- 0 547517)) (not (let (($range_0@@8 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@310 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@310))))))
(exists (($i_1@@8 Int) ) (!  (and (and (>= $i_1@@8 0) (< $i_1@@8 (seq.len $range_0@@8))) (let ((v@@90 (seq.nth $range_0@@8 $i_1@@8)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@90) _$t1@@20)))
 :qid |DiemConfigbpl.17311:125|
 :skolemid |540|
))))) (=> (not (let (($range_0@@9 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@311 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@311))))))
(exists (($i_1@@9 Int) ) (!  (and (and (>= $i_1@@9 0) (< $i_1@@9 (seq.len $range_0@@9))) (let ((v@@91 (seq.nth $range_0@@9 $i_1@@9)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@91) _$t1@@20)))
 :qid |DiemConfigbpl.17311:125|
 :skolemid |540|
)))) (and (=> (= (ControlFlow 0 405655) (- 0 547526)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 405655) (- 0 547536)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) $t15@@12)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) $t15@@12))) (and (=> (= (ControlFlow 0 405655) (- 0 547548)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) $t15@@12)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) $t15@@12)) 0))) (and (=> (= (ControlFlow 0 405655) (- 0 547566)) (not (not (= (|$addr#$signer| _$t0@@22) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@22) 173345816))) (and (=> (= (ControlFlow 0 405655) (- 0 547580)) (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_178909| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t16@@5) 18446744073709551615)) (< $t17@@6 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t16@@5))))) (=> (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_178909| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t16@@5) 18446744073709551615)) (< $t17@@6 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t16@@5)))) (and (=> (= (ControlFlow 0 405655) (- 0 547622)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) $t21@@11)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) $t21@@11))) (and (=> (= (ControlFlow 0 405655) (- 0 547634)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) $t21@@11)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) $t21@@11)) 0))) (and (=> (= (ControlFlow 0 405655) (- 0 547652)) (not (not (= (|$addr#$signer| _$t0@@22) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@22) 173345816))) (and (=> (= (ControlFlow 0 405655) (- 0 547666)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) _$t1@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) _$t1@@20)) 3))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) _$t1@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) _$t1@@20)) 3)) (and (=> (= (ControlFlow 0 405655) (- 0 547674)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@20) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@20)))) 0)))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@20) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@20)))) 0))) (and (=> (= (ControlFlow 0 405655) (- 0 547682)) (let (($range_0@@10 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@312 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) addr@@312))))))
(exists (($i_1@@10 Int) ) (!  (and (and (>= $i_1@@10 0) (< $i_1@@10 (seq.len $range_0@@10))) (let ((v@@92 (seq.nth $range_0@@10 $i_1@@10)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@92) _$t1@@20)))
 :qid |DiemConfigbpl.17311:125|
 :skolemid |540|
)))) (=> (let (($range_0@@11 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@313 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) addr@@313))))))
(exists (($i_1@@11 Int) ) (!  (and (and (>= $i_1@@11 0) (< $i_1@@11 (seq.len $range_0@@11))) (let ((v@@93 (seq.nth $range_0@@11 $i_1@@11)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@93) _$t1@@20)))
 :qid |DiemConfigbpl.17311:125|
 :skolemid |540|
))) (and (=> (= (ControlFlow 0 405655) (- 0 547689)) (and (and (= (seq.len $t62) (+ (seq.len $t18@@6) 1)) (= (seq.nth $t62 (- (seq.len $t62) 1)) ($1_DiemSystem_ValidatorInfo _$t1@@20 1 (seq.nth (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@20))) 0) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (= (seq.extract $t62 (|lb#$Range| ($Range 0 (- (seq.len $t62) 1))) (- (|ub#$Range| ($Range 0 (- (seq.len $t62) 1))) (|lb#$Range| ($Range 0 (- (seq.len $t62) 1))))) (seq.extract $t18@@6 (|lb#$Range| ($Range 0 (seq.len $t18@@6))) (- (|ub#$Range| ($Range 0 (seq.len $t18@@6))) (|lb#$Range| ($Range 0 (seq.len $t18@@6)))))))) (=> (and (and (= (seq.len $t62) (+ (seq.len $t18@@6) 1)) (= (seq.nth $t62 (- (seq.len $t62) 1)) ($1_DiemSystem_ValidatorInfo _$t1@@20 1 (seq.nth (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@20))) 0) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (= (seq.extract $t62 (|lb#$Range| ($Range 0 (- (seq.len $t62) 1))) (- (|ub#$Range| ($Range 0 (- (seq.len $t62) 1))) (|lb#$Range| ($Range 0 (- (seq.len $t62) 1))))) (seq.extract $t18@@6 (|lb#$Range| ($Range 0 (seq.len $t18@@6))) (- (|ub#$Range| ($Range 0 (seq.len $t18@@6))) (|lb#$Range| ($Range 0 (seq.len $t18@@6))))))) (and (=> (= (ControlFlow 0 405655) (- 0 547712)) (let ((actual@@23 ($EventStore (- (|counter#$EventStore| $es@0@@12) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@12) (|streams#$EventStore| $es)))))
(let ((expected@@23 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_178909| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t64 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t19@@10)))) (let ((stream@@70 (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| $EmptyEventStore) $t20@@11)))
(let ((stream_new@@37 (let ((len@@37 (|l#Multiset_144488| stream@@70)))
(let ((cnt@@37 (|Select__T@[$EventRep]Int_| (|v#Multiset_144488| stream@@70) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t65))))
(Multiset_144488 (|Store__T@[$EventRep]Int_| (|v#Multiset_144488| stream@@70) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t65) (+ cnt@@37 1)) (+ len@@37 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| $EmptyEventStore) $t20@@11 stream_new@@37)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected@@23) (|counter#$EventStore| actual@@23)) (forall ((handle@@57 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_144488| (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| expected@@23) handle@@57)) (|l#Multiset_144488| (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| actual@@23) handle@@57))) (forall ((v@@94 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_144488| (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| expected@@23) handle@@57)) v@@94) (|Select__T@[$EventRep]Int_| (|v#Multiset_144488| (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| actual@@23) handle@@57)) v@@94))
 :qid |DiemConfigbpl.139:13|
 :skolemid |3|
)))
 :qid |DiemConfigbpl.2568:13|
 :skolemid |70|
)))))) (=> (let ((actual@@24 ($EventStore (- (|counter#$EventStore| $es@0@@12) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@12) (|streams#$EventStore| $es)))))
(let ((expected@@24 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_178909| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t64 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t19@@10)))) (let ((stream@@71 (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| $EmptyEventStore) $t20@@11)))
(let ((stream_new@@38 (let ((len@@38 (|l#Multiset_144488| stream@@71)))
(let ((cnt@@38 (|Select__T@[$EventRep]Int_| (|v#Multiset_144488| stream@@71) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t65))))
(Multiset_144488 (|Store__T@[$EventRep]Int_| (|v#Multiset_144488| stream@@71) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t65) (+ cnt@@38 1)) (+ len@@38 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| $EmptyEventStore) $t20@@11 stream_new@@38)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected@@24) (|counter#$EventStore| actual@@24)) (forall ((handle@@58 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_144488| (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| expected@@24) handle@@58)) (|l#Multiset_144488| (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| actual@@24) handle@@58))) (forall ((v@@95 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_144488| (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| expected@@24) handle@@58)) v@@95) (|Select__T@[$EventRep]Int_| (|v#Multiset_144488| (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| actual@@24) handle@@58)) v@@95))
 :qid |DiemConfigbpl.139:13|
 :skolemid |3|
)))
 :qid |DiemConfigbpl.2568:13|
 :skolemid |70|
))))) (=> (= (ControlFlow 0 405655) (- 0 547757)) (let ((actual@@25 ($EventStore (- (|counter#$EventStore| $es@0@@12) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@12) (|streams#$EventStore| $es)))))
(let ((expected@@25 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_178909| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t64 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t19@@10)))) (let ((stream@@72 (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| $EmptyEventStore) $t20@@11)))
(let ((stream_new@@39 (let ((len@@39 (|l#Multiset_144488| stream@@72)))
(let ((cnt@@39 (|Select__T@[$EventRep]Int_| (|v#Multiset_144488| stream@@72) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t65))))
(Multiset_144488 (|Store__T@[$EventRep]Int_| (|v#Multiset_144488| stream@@72) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t65) (+ cnt@@39 1)) (+ len@@39 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| $EmptyEventStore) $t20@@11 stream_new@@39)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| actual@@25) (|counter#$EventStore| expected@@25)) (forall ((handle@@59 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_144488| (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| actual@@25) handle@@59)) (|l#Multiset_144488| (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| expected@@25) handle@@59))) (forall ((v@@96 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_144488| (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| actual@@25) handle@@59)) v@@96) (|Select__T@[$EventRep]Int_| (|v#Multiset_144488| (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| expected@@25) handle@@59)) v@@96))
 :qid |DiemConfigbpl.139:13|
 :skolemid |3|
)))
 :qid |DiemConfigbpl.2568:13|
 :skolemid |70|
))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon46_Else_correct@@0  (=> (and (and (not |$temp_0'bool'@1|) (= $1_DiemConfig_Configuration_$memory@1@@12 ($Memory_173110 (|Store__T@[Int]Bool_| (|domain#$Memory_173110| $1_DiemConfig_Configuration_$memory) 173345816 false) (|contents#$Memory_173110| $1_DiemConfig_Configuration_$memory)))) (and (= $1_DiemConfig_Configuration_$memory@2@@10 $1_DiemConfig_Configuration_$memory@1@@12) (= (ControlFlow 0 404804) 405655))) anon31_correct)))
(let ((anon46_Then_correct@@0  (=> (and (and |$temp_0'bool'@1| (= $1_DiemConfig_Configuration_$memory@0@@13 ($Memory_173110 (|Store__T@[Int]Bool_| (|domain#$Memory_173110| $1_DiemConfig_Configuration_$memory) 173345816 true) (|Store__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_173110| $1_DiemConfig_Configuration_$memory) 173345816 |$temp_0'$1_DiemConfig_Configuration'@0@@12|)))) (and (= $1_DiemConfig_Configuration_$memory@2@@10 $1_DiemConfig_Configuration_$memory@0@@13) (= (ControlFlow 0 405667) 405655))) anon31_correct)))
(let ((anon45_Else_correct@@0  (=> (not |$temp_0'bool'@0@@15|) (=> (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@1| ($Memory_173196 (|Store__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 false) (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|))) (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@1|)) (and (=> (= (ControlFlow 0 404790) 405667) anon46_Then_correct@@0) (=> (= (ControlFlow 0 404790) 404804) anon46_Else_correct@@0))))))
(let ((anon45_Then_correct@@0  (=> |$temp_0'bool'@0@@15| (=> (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@3| ($Memory_173196 (|Store__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@0@@2|))) (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@3|)) (and (=> (= (ControlFlow 0 405679) 405667) anon46_Then_correct@@0) (=> (= (ControlFlow 0 405679) 404804) anon46_Else_correct@@0))))))
(let ((anon44_Else_correct@@0  (=> (not $t55) (and (=> (= (ControlFlow 0 404778) 405679) anon45_Then_correct@@0) (=> (= (ControlFlow 0 404778) 404790) anon45_Else_correct@@0)))))
(let ((anon43_Then_correct@@0 true))
(let ((L7_correct  (and (=> (= (ControlFlow 0 403900) (- 0 546518)) (or (or (or (or (or (or (or (or (or (or (>= (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@314 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@314))))) 256) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@20) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@20)))) 0))))) (let (($range_0@@12 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@315 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@315))))))
(exists (($i_1@@12 Int) ) (!  (and (and (>= $i_1@@12 0) (< $i_1@@12 (seq.len $range_0@@12))) (let ((v@@97 (seq.nth $range_0@@12 $i_1@@12)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@97) _$t1@@20)))
 :qid |DiemConfigbpl.17311:125|
 :skolemid |540|
)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) $t15@@12))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) $t15@@12)) 0))) (not (= (|$addr#$signer| _$t0@@22) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_178909| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t16@@5) 18446744073709551615)) (< $t17@@6 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t16@@5)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) $t21@@11))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) $t21@@11)) 0))) (not (= (|$addr#$signer| _$t0@@22) 173345816)))) (=> (or (or (or (or (or (or (or (or (or (or (>= (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@316 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@316))))) 256) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@20) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@20)))) 0))))) (let (($range_0@@13 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@317 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@317))))))
(exists (($i_1@@13 Int) ) (!  (and (and (>= $i_1@@13 0) (< $i_1@@13 (seq.len $range_0@@13))) (let ((v@@98 (seq.nth $range_0@@13 $i_1@@13)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@98) _$t1@@20)))
 :qid |DiemConfigbpl.17311:125|
 :skolemid |540|
)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) $t15@@12))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) $t15@@12)) 0))) (not (= (|$addr#$signer| _$t0@@22) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_178909| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t16@@5) 18446744073709551615)) (< $t17@@6 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t16@@5)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) $t21@@11))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) $t21@@11)) 0))) (not (= (|$addr#$signer| _$t0@@22) 173345816))) (=> (= (ControlFlow 0 403900) (- 0 546655)) (or (or (or (or (or (or (or (or (or (or (and (>= (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@318 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@318))))) 256) (= 8 $t23@0@@0)) (and (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@20) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@20)))) 0)))) (= 7 $t23@0@@0))) (and (let (($range_0@@14 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@319 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@319))))))
(exists (($i_1@@14 Int) ) (!  (and (and (>= $i_1@@14 0) (< $i_1@@14 (seq.len $range_0@@14))) (let ((v@@99 (seq.nth $range_0@@14 $i_1@@14)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@99) _$t1@@20)))
 :qid |DiemConfigbpl.17311:125|
 :skolemid |540|
))) (= 7 $t23@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t23@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) $t15@@12)) (= 5 $t23@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) $t15@@12)) 0)) (= 3 $t23@0@@0))) (and (not (= (|$addr#$signer| _$t0@@22) 173345816)) (= 2 $t23@0@@0))) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_178909| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t16@@5) 18446744073709551615)) (< $t17@@6 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t16@@5))) (= 1 $t23@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) $t21@@11)) (= 5 $t23@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) $t21@@11)) 0)) (= 3 $t23@0@@0))) (and (not (= (|$addr#$signer| _$t0@@22) 173345816)) (= 2 $t23@0@@0))))))))
(let ((anon44_Then_correct@@0  (=> $t55 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t23@@12)) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_178909| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t51) 18446744073709551615)) (< $t52 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t51))) (= 1 $t23@@12))) (= $t23@@12 $t23@@12)) (and (= $t23@0@@0 $t23@@12) (= (ControlFlow 0 405755) 403900))) L7_correct))))
(let ((anon43_Else_correct@@0  (=> (and (not false) (= $t44@1 ($Mutation_183131 (|l#$Mutation_183131| $t44@0) (|p#$Mutation_183131| $t44@0) ($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t44@0)) (|v#$Mutation_152979| |inline$$1_Vector_push_back'$1_DiemSystem_ValidatorInfo'$0$m'@1|))))) (and (=> (= (ControlFlow 0 404770) (- 0 546149)) (let (($range_0@@15 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t44@1))))))
(let (($range_1 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t44@1))))))
(forall (($i_2 Int) ($i_3 Int) ) (!  (=> ($InRange $range_0@@15 $i_2) (=> ($InRange $range_1 $i_3) (let ((i@@44 $i_2))
(let ((j@@9 $i_3))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t44@1)) i@@44)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t44@1)) j@@9))) (= i@@44 j@@9))))))
 :qid |DiemConfigbpl.18198:203|
 :skolemid |583|
))))) (=> (let (($range_0@@16 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t44@1))))))
(let (($range_1@@0 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t44@1))))))
(forall (($i_2@@0 Int) ($i_3@@0 Int) ) (!  (=> ($InRange $range_0@@16 $i_2@@0) (=> ($InRange $range_1@@0 $i_3@@0) (let ((i@@45 $i_2@@0))
(let ((j@@10 $i_3@@0))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t44@1)) i@@45)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t44@1)) j@@10))) (= i@@45 j@@10))))))
 :qid |DiemConfigbpl.18198:203|
 :skolemid |583|
)))) (=> (= $t14@0@@6 (|v#$Mutation_183131| $t44@1)) (=> (and (and (= $t51 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_173110| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t52 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (= $t53 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_173110| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t54 (|$events#$1_DiemConfig_Configuration| $t53)))) (and (=> (= (ControlFlow 0 404770) (- 0 546302)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_173110| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_173269| $1_DiemSystem_CapabilityHolder_$memory) 173345816)))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_173110| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_173269| $1_DiemSystem_CapabilityHolder_$memory) 173345816))) (and (=> (= (ControlFlow 0 404770) (- 0 546329)) (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@3| 173345816)) (=> (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@3| 173345816) (=> (= $t55  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_178909| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t51) 18446744073709551615)) (< $t52 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t51))))) (and (=> (= (ControlFlow 0 404770) 405755) anon44_Then_correct@@0) (=> (= (ControlFlow 0 404770) 404778) anon44_Else_correct@@0))))))))))))))
(let ((|inline$$1_Vector_push_back'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'$1_DiemSystem_ValidatorInfo'$0$m'@1| ($Mutation_152979 (|l#$Mutation_152979| $t45@0) (|p#$Mutation_152979| $t45@0) (seq.++ (|v#$Mutation_152979| $t45@0) (seq.unit $t49@0)))) (and (=> (= (ControlFlow 0 404505) 405769) anon43_Then_correct@@0) (=> (= (ControlFlow 0 404505) 404770) anon43_Else_correct@@0)))))
(let ((anon42_Else_correct@@0  (=> (not $t47) (=> (and (|$IsValid'u64'| $t46@@0) (= $t46@@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (and (and (= $t46@@0 $t46@@0) (|$IsValid'u64'| 1)) (and (= $t49@0 ($1_DiemSystem_ValidatorInfo _$t1@@20 1 $t42@@0 $t46@@0)) (= (ControlFlow 0 404511) 404505))) |inline$$1_Vector_push_back'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|)))))
(let ((anon42_Then_correct@@0  (=> $t47 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t23@@12)) (= $t23@@12 $t23@@12)) (and (= $t23@0@@0 $t23@@12) (= (ControlFlow 0 405795) 403900))) L7_correct))))
(let ((anon41_Else_correct@@0  (=> (not $t43@@0) (=> (and (|$IsValid'$1_ValidatorConfig_Config'| $t42@@0) (= $t42@@0 (seq.nth (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@20))) 0))) (=> (and (and (and (= $t42@@0 $t42@@0) (= $t44@0 ($Mutation_183131 ($Local 14) (as seq.empty (Seq Int)) $t14@@16))) (and (= $t45@0 ($Mutation_152979 (|l#$Mutation_183131| $t44@0) (seq.++ (|p#$Mutation_183131| $t44@0) (seq.unit 1)) (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t44@0)))) (= |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@0| (|v#$Mutation_152979| $t45@0)))) (and (and (= |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@0| |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@0|) (= _$t1@@20 _$t1@@20)) (and (= $t42@@0 $t42@@0) (= $t47  (not (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 404410) 405795) anon42_Then_correct@@0) (=> (= (ControlFlow 0 404410) 404511) anon42_Else_correct@@0)))))))
(let ((anon41_Then_correct@@0  (=> $t43@@0 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@20)) (= 5 $t23@@12)) (and (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@20)))) 0) (= 7 $t23@@12))) (= $t23@@12 $t23@@12)) (and (= $t23@0@@0 $t23@@12) (= (ControlFlow 0 405843) 403900))) L7_correct))))
(let ((anon40_Then_correct@@0  (=> (and inline$$Not$0$dst@1@@11 (= $t43@@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@20)) (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@20)))) 0)))) (and (=> (= (ControlFlow 0 404322) 405843) anon41_Then_correct@@0) (=> (= (ControlFlow 0 404322) 404410) anon41_Else_correct@@0)))))
(let ((anon40_Else_correct@@0  (=> (and (and (not inline$$Not$0$dst@1@@11) (= $t41 $t41)) (and (= $t23@0@@0 $t41) (= (ControlFlow 0 404294) 403900))) L7_correct)))
(let ((anon39_Else$1_correct@@0  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t41) (= $t41 7)) (and (= $t41 $t41) (= inline$$Not$0$dst@1@@11 inline$$Not$0$dst@1@@11))) (and (=> (= (ControlFlow 0 404278) 404322) anon40_Then_correct@@0) (=> (= (ControlFlow 0 404278) 404294) anon40_Else_correct@@0))))))
(let ((inline$$Not$0$anon0_correct@@11  (=> (and (= inline$$Not$0$dst@1@@11  (not $t38@@5)) (= (ControlFlow 0 404238) 404278)) anon39_Else$1_correct@@0)))
(let ((anon39_Else_correct@@0  (=> (not $t35@@9) (=> (and (and (and (|$IsValid'$1_DiemSystem_DiemSystem'| $t14@@16) (let (($range_0@@17 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t14@@16)))))
(let (($range_1@@1 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t14@@16)))))
(forall (($i_2@@1 Int) ($i_3@@1 Int) ) (!  (=> ($InRange $range_0@@17 $i_2@@1) (=> ($InRange $range_1@@1 $i_3@@1) (let ((i@@46 $i_2@@1))
(let ((j@@11 $i_3@@1))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t14@@16) i@@46)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t14@@16) j@@11))) (= i@@46 j@@11))))))
 :qid |DiemConfigbpl.18008:225|
 :skolemid |581|
))))) (= $t14@@16 (let ((addr@@320 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@320))))) (and (and (= $t14@@16 $t14@@16) (= $t37@0 (|$validators#$1_DiemSystem_DiemSystem| $t14@@16))) (and (= $t38@@5 (let (($range_0@@18 $t37@0))
(exists (($i_1@@15 Int) ) (!  (and (and (>= $i_1@@15 0) (< $i_1@@15 (seq.len $range_0@@18))) (let ((v@@100 (seq.nth $range_0@@18 $i_1@@15)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@100) _$t1@@20)))
 :qid |DiemConfigbpl.18033:64|
 :skolemid |582|
)))) (= (ControlFlow 0 404244) 404238)))) inline$$Not$0$anon0_correct@@11))))
(let ((anon39_Then_correct@@0  (=> $t35@@9 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t23@@12)) (= $t23@@12 $t23@@12)) (and (= $t23@0@@0 $t23@@12) (= (ControlFlow 0 405871) 403900))) L7_correct))))
(let ((anon38_Then_correct@@0  (=> (and inline$$Lt$0$dst@1@@0 (= $t35@@9  (not (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 404054) 405871) anon39_Then_correct@@0) (=> (= (ControlFlow 0 404054) 404244) anon39_Else_correct@@0)))))
(let ((anon38_Else_correct@@0  (=> (and (and (not inline$$Lt$0$dst@1@@0) (= $t34@@10 $t34@@10)) (and (= $t23@0@@0 $t34@@10) (= (ControlFlow 0 404038) 403900))) L7_correct)))
(let ((anon37_Else$1_correct  (=> (|$IsValid'u64'| 7) (=> (and (and (|$IsValid'u64'| $t34@@10) (= $t34@@10 8)) (and (= $t34@@10 $t34@@10) (= inline$$Lt$0$dst@1@@0 inline$$Lt$0$dst@1@@0))) (and (=> (= (ControlFlow 0 404022) 404054) anon38_Then_correct@@0) (=> (= (ControlFlow 0 404022) 404038) anon38_Else_correct@@0))))))
(let ((inline$$Lt$0$anon0_correct@@0  (=> (and (= inline$$Lt$0$dst@1@@0 (< $t29@@10 256)) (= (ControlFlow 0 403982) 404022)) anon37_Else$1_correct)))
(let ((anon37_Else_correct@@0  (=> (not $t30@@9) (=> (and (and (|$IsValid'u64'| $t29@@10) (= $t29@@10 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@321 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@321))))))) (and (|$IsValid'u64'| 256) (= (ControlFlow 0 403988) 403982))) inline$$Lt$0$anon0_correct@@0))))
(let ((anon37_Then_correct@@0  (=> $t30@@9 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t23@@12)) (= $t23@@12 $t23@@12)) (and (= $t23@0@@0 $t23@@12) (= (ControlFlow 0 405899) 403900))) L7_correct))))
(let ((anon36_Then_correct@@0  (=> (and $t26@@11 (= $t30@@9  (not (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 403916) 405899) anon37_Then_correct@@0) (=> (= (ControlFlow 0 403916) 403988) anon37_Else_correct@@0)))))
(let ((anon36_Else_correct@@0  (=> (and (and (not $t26@@11) (= $t28@@11 $t28@@11)) (and (= $t23@0@@0 $t28@@11) (= (ControlFlow 0 403500) 403900))) L7_correct)))
(let ((anon35_Else_correct@@0  (=> (not $t25@@12) (=> (and (= $t26@@11  (and (|Select__T@[Int]Bool_| (|domain#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@20) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@20)))) 0)))) (|$IsValid'u64'| 1)) (=> (and (and (|$IsValid'u64'| $t28@@11) (= $t28@@11 7)) (and (= $t28@@11 $t28@@11) (= $t26@@11 $t26@@11))) (and (=> (= (ControlFlow 0 403484) 403916) anon36_Then_correct@@0) (=> (= (ControlFlow 0 403484) 403500) anon36_Else_correct@@0)))))))
(let ((anon35_Then_correct@@0  (=> $t25@@12 (=> (and (and (or (or (or (and (not (= (|$addr#$signer| _$t0@@22) 173345816)) (= 2 $t23@@12)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) $t24@@12)) (= 5 $t23@@12))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) $t24@@12)) 0)) (= 3 $t23@@12))) (and (not (= (|$addr#$signer| _$t0@@22) 173345816)) (= 2 $t23@@12))) (= $t23@@12 $t23@@12)) (and (= $t23@0@@0 $t23@@12) (= (ControlFlow 0 405991) 403900))) L7_correct))))
(let ((anon34_Else_correct  (=> (not $t22@@10) (=> (and (= $t24@@12 (|$addr#$signer| _$t0@@22)) (= $t25@@12  (or (or (or (not (= (|$addr#$signer| _$t0@@22) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) $t24@@12))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) $t24@@12)) 0))) (not (= (|$addr#$signer| _$t0@@22) 173345816))))) (and (=> (= (ControlFlow 0 403430) 405991) anon35_Then_correct@@0) (=> (= (ControlFlow 0 403430) 403484) anon35_Else_correct@@0))))))
(let ((anon34_Then_correct  (=> $t22@@10 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t23@@12)) (= $t23@@12 $t23@@12)) (and (= $t23@0@@0 $t23@@12) (= (ControlFlow 0 406017) 403900))) L7_correct))))
(let ((anon0$1_correct@@31  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (forall ((addr@@322 Int) ) (!  (=> (|$IsValid'address'| addr@@322) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@322) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@322)) 0)) (= addr@@322 173345816)))
 :qid |DiemConfigbpl.17485:20|
 :skolemid |544|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) 173345816)) 0)))) (=> (and (and (forall ((addr@@323 Int) ) (!  (=> (|$IsValid'address'| addr@@323) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@323) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@323)) 1)) (= addr@@323 186537453)))
 :qid |DiemConfigbpl.17493:20|
 :skolemid |545|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) 186537453)) 1)))) (and (forall ((addr@@324 Int) ) (!  (=> (|$IsValid'address'| addr@@324) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@324) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@324)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@324) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@324)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@324) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@324)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@324) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@324)) 2))))))
 :qid |DiemConfigbpl.17501:20|
 :skolemid |546|
)) (forall ((addr@@325 Int) ) (!  (=> (|$IsValid'address'| addr@@325) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@325) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@325)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@325) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@325)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@325) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@325)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@325) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@325)) 2))))))
 :qid |DiemConfigbpl.17505:20|
 :skolemid |547|
)))) (=> (and (and (and (and (forall ((addr@@326 Int) ) (!  (=> (|$IsValid'address'| addr@@326) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@326) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@326)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@326) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@326)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@326) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@326)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@326) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@326)) 2))))))
 :qid |DiemConfigbpl.17509:20|
 :skolemid |548|
)) (forall ((addr@@327 Int) ) (!  (=> (|$IsValid'address'| addr@@327) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@327) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@327)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@327) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@327)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@327) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@327)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@327) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@327)) 2))))))
 :qid |DiemConfigbpl.17513:20|
 :skolemid |549|
))) (and (forall ((addr@@328 Int) ) (!  (=> (|$IsValid'address'| addr@@328) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@328) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@328)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@328) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@328)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@328) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@328)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@328) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@328)) 2)))))
 :qid |DiemConfigbpl.17517:20|
 :skolemid |550|
)) (forall ((addr@@329 Int) ) (!  (=> (|$IsValid'address'| addr@@329) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@329) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@329)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@329) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@329)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@329) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@329)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@329) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@329)) 2)))))
 :qid |DiemConfigbpl.17521:20|
 :skolemid |551|
)))) (and (and (forall ((addr@@330 Int) ) (!  (=> (|$IsValid'address'| addr@@330) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@330) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@330)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@330) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@330)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@330) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@330)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@330) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@330)) 2)))))
 :qid |DiemConfigbpl.17525:20|
 :skolemid |552|
)) (forall ((addr@@331 Int) ) (!  (=> (|$IsValid'address'| addr@@331) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_176842| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@331) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@331) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@331)) 4))))
 :qid |DiemConfigbpl.17529:20|
 :skolemid |553|
))) (and (forall ((addr@@332 Int) ) (!  (=> (|$IsValid'address'| addr@@332) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@332) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@332) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@332)) 3))))
 :qid |DiemConfigbpl.17533:20|
 :skolemid |554|
)) (forall ((addr@@333 Int) ) (!  (=> (|$IsValid'address'| addr@@333) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@333) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@333) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@333)) 3))))
 :qid |DiemConfigbpl.17537:20|
 :skolemid |555|
))))) (and (and (and (forall ((addr@@334 Int) ) (!  (=> (|$IsValid'address'| addr@@334) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@334) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@334)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@334) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@334)) 3))))
 :qid |DiemConfigbpl.17541:20|
 :skolemid |556|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173017| $1_SlidingNonce_SlidingNonce_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173017| $1_SlidingNonce_SlidingNonce_$memory) 186537453)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173110| $1_DiemConfig_Configuration_$memory) 173345816)))) (and (and (forall ((config_address@@68 Int) ) (!  (=> (|$IsValid'address'| config_address@@68) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) config_address@@68) (= config_address@@68 173345816)))
 :qid |DiemConfigbpl.17557:20|
 :skolemid |557|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173269| $1_DiemSystem_CapabilityHolder_$memory) 173345816)))) (and (forall ((addr@@335 Int) ) (!  (=> (|$IsValid'address'| addr@@335) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@335) (= addr@@335 173345816)))
 :qid |DiemConfigbpl.17565:20|
 :skolemid |558|
)) (let (($range_0@@19 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@336 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@336))))))))
(forall (($i_1@@16 Int) ) (!  (=> ($InRange $range_0@@19 $i_1@@16) (let ((i1@@6 $i_1@@16))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@337 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@337)))) i1@@6))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@337 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@337)))) i1@@6)))) 3))))
 :qid |DiemConfigbpl.17569:151|
 :skolemid |559|
))))))) (=> (and (and (and (and (and (and (let (($range_0@@20 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@338 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@338))))))))
(forall (($i_1@@17 Int) ) (!  (=> ($InRange $range_0@@20 $i_1@@17) (let ((i1@@7 $i_1@@17))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@339 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@339)))) i1@@7)) 1)))
 :qid |DiemConfigbpl.17574:151|
 :skolemid |560|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173340| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173424| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173508| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) 173345816)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173579| $1_XDX_Reserve_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173663| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173747| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173818| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453))))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173915| $1_DualAttestation_Limit_$memory) 173345816)) (forall ((addr1@@10 Int) ) (!  (=> (|$IsValid'address'| addr1@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_194338| $1_DualAttestation_Credential_$memory) addr1@@10) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr1@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr1@@10)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr1@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr1@@10)) 2)))))
 :qid |DiemConfigbpl.17611:20|
 :skolemid |561|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173999| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_174083| $1_ChainId_ChainId_$memory) 173345816)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_174154| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_174225| $1_AccountFreezing_FreezingBit_$memory) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_174225| $1_AccountFreezing_FreezingBit_$memory) 173345816)))))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_174225| $1_AccountFreezing_FreezingBit_$memory) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_174225| $1_AccountFreezing_FreezingBit_$memory) 186537453))))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_174154| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)))))) (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_174397| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_174468| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816))) (and (forall ((addr@@340 Int) ) (!  (=> (|$IsValid'address'| addr@@340) (= (|Select__T@[Int]Bool_| (|domain#$Memory_194451| $1_DiemAccount_DiemAccount_$memory) addr@@340) (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@340)))
 :qid |DiemConfigbpl.17647:20|
 :skolemid |562|
)) (forall ((addr@@341 Int) ) (!  (=> (|$IsValid'address'| addr@@341) (= (|Select__T@[Int]Bool_| (|domain#$Memory_194551| $1_VASPDomain_VASPDomainManager_$memory) addr@@341)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@341) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@341)) 1))))
 :qid |DiemConfigbpl.17651:20|
 :skolemid |563|
)))) (and (and (forall ((addr@@342 Int) ) (!  (=> (|$IsValid'address'| addr@@342) (= (|Select__T@[Int]Bool_| (|domain#$Memory_194636| $1_VASPDomain_VASPDomains_$memory) addr@@342)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@342) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@342)) 5))))
 :qid |DiemConfigbpl.17655:20|
 :skolemid |564|
)) (forall ((addr@@343 Int) ) (!  (=> (|$IsValid'address'| addr@@343) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_194723| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@343) (|Select__T@[Int]Bool_| (|domain#$Memory_194783| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@343)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@343) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@343)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@343) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@343)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@343) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@343)) 2)))))
 :qid |DiemConfigbpl.17659:20|
 :skolemid |565|
))) (and (forall ((addr@@344 Int) ) (!  (=> (|$IsValid'address'| addr@@344) (= (|Select__T@[Int]Bool_| (|domain#$Memory_194868| $1_DesignatedDealer_Dealer_$memory) addr@@344)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@344) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@344)) 2))))
 :qid |DiemConfigbpl.17663:20|
 :skolemid |566|
)) (forall ((addr@@345 Int) ) (!  (=> (|$IsValid'address'| addr@@345) (= (|Select__T@[Int]Bool_| (|domain#$Memory_194338| $1_DualAttestation_Credential_$memory) addr@@345)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@345) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@345)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@345) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@345)) 5)))))
 :qid |DiemConfigbpl.17667:20|
 :skolemid |567|
))))) (and (and (and (forall ((addr@@346 Int) ) (!  (=> (|$IsValid'address'| addr@@346) (= (|Select__T@[Int]Bool_| (|domain#$Memory_173017| $1_SlidingNonce_SlidingNonce_$memory) addr@@346)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@346) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@346)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@346) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@346)) 1)))))
 :qid |DiemConfigbpl.17671:20|
 :skolemid |568|
)) (forall ((addr@@347 Int) ) (!  (=> (|$IsValid'address'| addr@@347) (= (|Select__T@[Int]Bool_| (|domain#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@347)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@347) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@347)) 3))))
 :qid |DiemConfigbpl.17675:20|
 :skolemid |569|
))) (and (forall ((addr@@348 Int) ) (!  (=> (|$IsValid'address'| addr@@348) (= (|Select__T@[Int]Bool_| (|domain#$Memory_176842| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@348)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@348) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@348)) 4))))
 :qid |DiemConfigbpl.17679:20|
 :skolemid |570|
)) (forall ((addr@@349 Int) ) (!  (=> (|$IsValid'address'| addr@@349) (= (|Select__T@[Int]Bool_| (|domain#$Memory_195123| $1_VASP_ParentVASP_$memory) addr@@349)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@349) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@349)) 5))))
 :qid |DiemConfigbpl.17683:20|
 :skolemid |571|
)))) (and (and (forall ((addr@@350 Int) ) (!  (=> (|$IsValid'address'| addr@@350) (= (|Select__T@[Int]Bool_| (|domain#$Memory_195223| $1_VASP_ChildVASP_$memory) addr@@350)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@350) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@350)) 6))))
 :qid |DiemConfigbpl.17687:20|
 :skolemid |572|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_174539| $1_DiemBlock_BlockMetadata_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_174623| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_172704| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816))))))) (and (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@22)) ($1_Signer_is_txn_signer _$t0@@22)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0@@22))) (|$IsValid'address'| _$t1@@20)) (and (forall (($a_0@@87 Int) ) (! (let (($rsc@@87 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@87)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@87))
 :qid |DiemConfigbpl.17708:20|
 :skolemid |573|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@87))
)) (forall (($a_0@@88 Int) ) (! (let (($rsc@@88 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) $a_0@@88)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@88))
 :qid |DiemConfigbpl.17712:20|
 :skolemid |574|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) $a_0@@88))
)))) (and (and (and (and (forall (($a_0@@89 Int) ) (! (let (($rsc@@89 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@89)))
 (and (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| $rsc@@89) (and (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| $rsc@@89))) 1) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $rsc@@89))) 1))))
 :qid |DiemConfigbpl.17716:20|
 :skolemid |575|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@89))
)) (forall (($a_0@@90 Int) ) (! (let (($rsc@@90 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_173110| $1_DiemConfig_Configuration_$memory) $a_0@@90)))
(|$IsValid'$1_DiemConfig_Configuration'| $rsc@@90))
 :qid |DiemConfigbpl.17720:20|
 :skolemid |576|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_173110| $1_DiemConfig_Configuration_$memory) $a_0@@90))
))) (and (forall (($a_0@@91 Int) ) (! (let (($rsc@@91 (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_178909| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@91)))
(|$IsValid'$1_DiemConfig_DisableReconfiguration'| $rsc@@91))
 :qid |DiemConfigbpl.17724:20|
 :skolemid |577|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_178909| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@91))
)) (forall (($a_0@@92 Int) ) (! (let (($rsc@@92 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@92)))
 (and (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| $rsc@@92) (let (($range_1@@2 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@92))))))
(let (($range_2 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@92))))))
(forall (($i_3@@2 Int) ($i_4 Int) ) (!  (=> ($InRange $range_1@@2 $i_3@@2) (=> ($InRange $range_2 $i_4) (let ((i@@47 $i_3@@2))
(let ((j@@12 $i_4))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@92)) i@@47)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@92)) j@@12))) (= i@@47 j@@12))))))
 :qid |DiemConfigbpl.17729:367|
 :skolemid |578|
))))))
 :qid |DiemConfigbpl.17728:20|
 :skolemid |579|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@92))
)))) (and (and (forall (($a_0@@93 Int) ) (! (let (($rsc@@93 (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_173269| $1_DiemSystem_CapabilityHolder_$memory) $a_0@@93)))
(|$IsValid'$1_DiemSystem_CapabilityHolder'| $rsc@@93))
 :qid |DiemConfigbpl.17734:20|
 :skolemid |580|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_173269| $1_DiemSystem_CapabilityHolder_$memory) $a_0@@93))
)) (= $t15@@12 (|$addr#$signer| _$t0@@22))) (and (= $t16@@5 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_173110| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t17@@6 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (and (and (= $t18@@6 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@351 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@351))))) (= $t19@@10 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_173110| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= $t20@@11 (|$events#$1_DiemConfig_Configuration| $t19@@10)) (= $t21@@11 (|$addr#$signer| _$t0@@22)))) (and (and (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@3| 173345816) (= _$t0@@22 _$t0@@22)) (and (= _$t1@@20 _$t1@@20) (= $t22@@10  (not (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))))) (and (=> (= (ControlFlow 0 403360) 406017) anon34_Then_correct) (=> (= (ControlFlow 0 403360) 403430) anon34_Else_correct)))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@31  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@60 T@$1_Event_EventHandle) ) (! (let ((stream@@73 (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| $es) handle@@60)))
 (and (= (|l#Multiset_144488| stream@@73) 0) (forall ((v@@101 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_144488| stream@@73) v@@101) 0)
 :qid |DiemConfigbpl.134:13|
 :skolemid |2|
))))
 :qid |DiemConfigbpl.2552:13|
 :skolemid |69|
))) (= (ControlFlow 0 401894) 403360)) anon0$1_correct@@31)))
(let ((anon0_correct@@31  (=> (and (and (= (seq.len (|p#$Mutation_152979| $t4@@7)) 0) (= (seq.len (|p#$Mutation_183131| $t44@@0)) 0)) (and (= (seq.len (|p#$Mutation_152979| $t45@@0)) 0) (= (ControlFlow 0 401904) 401894))) inline$$InitEventStore$0$anon0_correct@@31)))
(let ((PreconditionGeneratedEntry_correct@@12  (=> (= (ControlFlow 0 543586) 401904) anon0_correct@@31)))
PreconditionGeneratedEntry_correct@@12))))))))))))))))))))))))))))))))))))))
))
(check-sat)