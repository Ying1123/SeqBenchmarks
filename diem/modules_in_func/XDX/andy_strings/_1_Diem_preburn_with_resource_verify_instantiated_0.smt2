(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-option :pre-skolem-quant true)
(set-option :no-dt-share-sel true)
(set-option :ee-mode central)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_158094 0)) ((($Memory_158094 (|domain#$Memory_158094| |T@[Int]Bool|) (|contents#$Memory_158094| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_167286 0)) ((($Memory_167286 (|domain#$Memory_167286| |T@[Int]Bool|) (|contents#$Memory_167286| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_167215 0)) ((($Memory_167215 (|domain#$Memory_167215| |T@[Int]Bool|) (|contents#$Memory_167215| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_166972 0)) ((($Memory_166972 (|domain#$Memory_166972| |T@[Int]Bool|) (|contents#$Memory_166972| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_166901 0)) ((($Memory_166901 (|domain#$Memory_166901| |T@[Int]Bool|) (|contents#$Memory_166901| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_166830 0)) ((($Memory_166830 (|domain#$Memory_166830| |T@[Int]Bool|) (|contents#$Memory_166830| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_235336 0)) ((($Memory_235336 (|domain#$Memory_235336| |T@[Int]Bool|) (|contents#$Memory_235336| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_166662 0)) ((($Memory_166662 (|domain#$Memory_166662| |T@[Int]Bool|) (|contents#$Memory_166662| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_234632 0)) ((($Memory_234632 (|domain#$Memory_234632| |T@[Int]Bool|) (|contents#$Memory_234632| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_235591 0)) ((($Memory_235591 (|domain#$Memory_235591| |T@[Int]Bool|) (|contents#$Memory_235591| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_235691 0)) ((($Memory_235691 (|domain#$Memory_235691| |T@[Int]Bool|) (|contents#$Memory_235691| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_235019 0)) ((($Memory_235019 (|domain#$Memory_235019| |T@[Int]Bool|) (|contents#$Memory_235019| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_235104 0)) ((($Memory_235104 (|domain#$Memory_235104| |T@[Int]Bool|) (|contents#$Memory_235104| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'#0'| 0)) (((|$1_AccountLimits_Window'#0'| (|$window_start#$1_AccountLimits_Window'#0'| Int) (|$window_inflow#$1_AccountLimits_Window'#0'| Int) (|$window_outflow#$1_AccountLimits_Window'#0'| Int) (|$tracked_balance#$1_AccountLimits_Window'#0'| Int) (|$limit_address#$1_AccountLimits_Window'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'#0'| 0)
(declare-datatypes ((T@$Memory_271950 0)) ((($Memory_271950 (|domain#$Memory_271950| |T@[Int]Bool|) (|contents#$Memory_271950| |T@[Int]$1_AccountLimits_Window'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_271663 0)) ((($Memory_271663 (|domain#$Memory_271663| |T@[Int]Bool|) (|contents#$Memory_271663| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_271376 0)) ((($Memory_271376 (|domain#$Memory_271376| |T@[Int]Bool|) (|contents#$Memory_271376| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'#0'| 0)) (((|$1_AccountLimits_LimitsDefinition'#0'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'#0'| 0)
(declare-datatypes ((T@$Memory_271089 0)) ((($Memory_271089 (|domain#$Memory_271089| |T@[Int]Bool|) (|contents#$Memory_271089| |T@[Int]$1_AccountLimits_LimitsDefinition'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_166494 0)) ((($Memory_166494 (|domain#$Memory_166494| |T@[Int]Bool|) (|contents#$Memory_166494| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_166255 0)) ((($Memory_166255 (|domain#$Memory_166255| |T@[Int]Bool|) (|contents#$Memory_166255| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_167144 0)) ((($Memory_167144 (|domain#$Memory_167144| |T@[Int]Bool|) (|contents#$Memory_167144| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_176841 0)) ((($Memory_176841 (|domain#$Memory_176841| |T@[Int]Bool|) (|contents#$Memory_176841| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_176777 0)) ((($Memory_176777 (|domain#$Memory_176777| |T@[Int]Bool|) (|contents#$Memory_176777| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_176713 0)) ((($Memory_176713 (|domain#$Memory_176713| |T@[Int]Bool|) (|contents#$Memory_176713| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'#0'| 0)) (((|$1_Diem_BurnCapability'#0'| (|$dummy_field#$1_Diem_BurnCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'#0'| 0)
(declare-datatypes ((T@$Memory_177295 0)) ((($Memory_177295 (|domain#$Memory_177295| |T@[Int]Bool|) (|contents#$Memory_177295| |T@[Int]$1_Diem_BurnCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_177208 0)) ((($Memory_177208 (|domain#$Memory_177208| |T@[Int]Bool|) (|contents#$Memory_177208| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_177121 0)) ((($Memory_177121 (|domain#$Memory_177121| |T@[Int]Bool|) (|contents#$Memory_177121| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_182370 0)) ((($Memory_182370 (|domain#$Memory_182370| |T@[Int]Bool|) (|contents#$Memory_182370| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_182795 0)) ((($Memory_182795 (|domain#$Memory_182795| |T@[Int]Bool|) (|contents#$Memory_182795| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_235251 0)) ((($Memory_235251 (|domain#$Memory_235251| |T@[Int]Bool|) (|contents#$Memory_235251| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_182279 0)) ((($Memory_182279 (|domain#$Memory_182279| |T@[Int]Bool|) (|contents#$Memory_182279| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_166326 0)) ((($Memory_166326 (|domain#$Memory_166326| |T@[Int]Bool|) (|contents#$Memory_166326| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_182696 0)) ((($Memory_182696 (|domain#$Memory_182696| |T@[Int]Bool|) (|contents#$Memory_182696| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_235191 0)) ((($Memory_235191 (|domain#$Memory_235191| |T@[Int]Bool|) (|contents#$Memory_235191| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_182188 0)) ((($Memory_182188 (|domain#$Memory_182188| |T@[Int]Bool|) (|contents#$Memory_182188| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_166565 0)) ((($Memory_166565 (|domain#$Memory_166565| |T@[Int]Bool|) (|contents#$Memory_166565| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_182597 0)) ((($Memory_182597 (|domain#$Memory_182597| |T@[Int]Bool|) (|contents#$Memory_182597| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_176283 0)) ((($Memory_176283 (|domain#$Memory_176283| |T@[Int]Bool|) (|contents#$Memory_176283| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_166410 0)) ((($Memory_166410 (|domain#$Memory_166410| |T@[Int]Bool|) (|contents#$Memory_166410| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_166171 0)) ((($Memory_166171 (|domain#$Memory_166171| |T@[Int]Bool|) (|contents#$Memory_166171| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_172153 0)) ((($Memory_172153 (|domain#$Memory_172153| |T@[Int]Bool|) (|contents#$Memory_172153| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_172066 0)) ((($Memory_172066 (|domain#$Memory_172066| |T@[Int]Bool|) (|contents#$Memory_172066| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_171979 0)) ((($Memory_171979 (|domain#$Memory_171979| |T@[Int]Bool|) (|contents#$Memory_171979| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_171892 0)) ((($Memory_171892 (|domain#$Memory_171892| |T@[Int]Bool|) (|contents#$Memory_171892| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_171805 0)) ((($Memory_171805 (|domain#$Memory_171805| |T@[Int]Bool|) (|contents#$Memory_171805| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_171718 0)) ((($Memory_171718 (|domain#$Memory_171718| |T@[Int]Bool|) (|contents#$Memory_171718| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_166016 0)) ((($Memory_166016 (|domain#$Memory_166016| |T@[Int]Bool|) (|contents#$Memory_166016| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_170985 0)) ((($Memory_170985 (|domain#$Memory_170985| |T@[Int]Bool|) (|contents#$Memory_170985| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_165857 0)) ((($Memory_165857 (|domain#$Memory_165857| |T@[Int]Bool|) (|contents#$Memory_165857| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_165451 0)) ((($Memory_165451 (|domain#$Memory_165451| |T@[Int]Bool|) (|contents#$Memory_165451| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_167370 0)) ((($Memory_167370 (|domain#$Memory_167370| |T@[Int]Bool|) (|contents#$Memory_167370| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemConsensusConfig_DiemConsensusConfig 0)) ((($1_DiemConsensusConfig_DiemConsensusConfig (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_170852 0)) ((($Memory_170852 (|domain#$Memory_170852| |T@[Int]Bool|) (|contents#$Memory_170852| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_166746 0)) ((($Memory_166746 (|domain#$Memory_166746| |T@[Int]Bool|) (|contents#$Memory_166746| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_166087 0)) ((($Memory_166087 (|domain#$Memory_166087| |T@[Int]Bool|) (|contents#$Memory_166087| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_165764 0)) ((($Memory_165764 (|domain#$Memory_165764| |T@[Int]Bool|) (|contents#$Memory_165764| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_234919 0)) ((($Memory_234919 (|domain#$Memory_234919| |T@[Int]Bool|) (|contents#$Memory_234919| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_165943 0)) ((($Memory_165943 (|domain#$Memory_165943| |T@[Int]Bool|) (|contents#$Memory_165943| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_170181 0)) ((($Memory_170181 (|domain#$Memory_170181| |T@[Int]Bool|) (|contents#$Memory_170181| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_169623 0)) ((($Memory_169623 (|domain#$Memory_169623| |T@[Int]Bool|) (|contents#$Memory_169623| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_165577 0)) ((($Memory_165577 (|domain#$Memory_165577| |T@[Int]Bool|) (|contents#$Memory_165577| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_164899 0)) ((($Memory_164899 (|domain#$Memory_164899| |T@[Int]Bool|) (|contents#$Memory_164899| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_131870 0)) (((Multiset_131870 (|v#Multiset_131870| |T@[$EventRep]Int|) (|l#Multiset_131870| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_131870| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_131870|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_299002 0)) ((($Mutation_299002 (|l#$Mutation_299002| T@$Location) (|p#$Mutation_299002| (Seq Int)) (|v#$Mutation_299002| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_298958 0)) ((($Mutation_298958 (|l#$Mutation_298958| T@$Location) (|p#$Mutation_298958| (Seq Int)) (|v#$Mutation_298958| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_278948 0)) ((($Mutation_278948 (|l#$Mutation_278948| T@$Location) (|p#$Mutation_278948| (Seq Int)) (|v#$Mutation_278948| |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_275776 0)) ((($Mutation_275776 (|l#$Mutation_275776| T@$Location) (|p#$Mutation_275776| (Seq Int)) (|v#$Mutation_275776| |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_272700 0)) ((($Mutation_272700 (|l#$Mutation_272700| T@$Location) (|p#$Mutation_272700| (Seq Int)) (|v#$Mutation_272700| |T@$1_AccountLimits_LimitsDefinition'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_259473 0)) ((($Mutation_259473 (|l#$Mutation_259473| T@$Location) (|p#$Mutation_259473| (Seq Int)) (|v#$Mutation_259473| T@$1_FixedPoint32_FixedPoint32) ) ) ))
(declare-datatypes ((T@$Mutation_73044 0)) ((($Mutation_73044 (|l#$Mutation_73044| T@$Location) (|p#$Mutation_73044| (Seq Int)) (|v#$Mutation_73044| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_192677 0)) ((($Mutation_192677 (|l#$Mutation_192677| T@$Location) (|p#$Mutation_192677| (Seq Int)) (|v#$Mutation_192677| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_192630 0)) ((($Mutation_192630 (|l#$Mutation_192630| T@$Location) (|p#$Mutation_192630| (Seq Int)) (|v#$Mutation_192630| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_192584 0)) ((($Mutation_192584 (|l#$Mutation_192584| T@$Location) (|p#$Mutation_192584| (Seq Int)) (|v#$Mutation_192584| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_188118 0)) ((($Mutation_188118 (|l#$Mutation_188118| T@$Location) (|p#$Mutation_188118| (Seq Int)) (|v#$Mutation_188118| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_188071 0)) ((($Mutation_188071 (|l#$Mutation_188071| T@$Location) (|p#$Mutation_188071| (Seq Int)) (|v#$Mutation_188071| |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_188025 0)) ((($Mutation_188025 (|l#$Mutation_188025| T@$Location) (|p#$Mutation_188025| (Seq Int)) (|v#$Mutation_188025| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_183645 0)) ((($Mutation_183645 (|l#$Mutation_183645| T@$Location) (|p#$Mutation_183645| (Seq Int)) (|v#$Mutation_183645| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_183598 0)) ((($Mutation_183598 (|l#$Mutation_183598| T@$Location) (|p#$Mutation_183598| (Seq Int)) (|v#$Mutation_183598| |T@$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_183552 0)) ((($Mutation_183552 (|l#$Mutation_183552| T@$Location) (|p#$Mutation_183552| (Seq Int)) (|v#$Mutation_183552| |T@$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_174894 0)) ((($Mutation_174894 (|l#$Mutation_174894| T@$Location) (|p#$Mutation_174894| (Seq Int)) (|v#$Mutation_174894| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_165394 0)) ((($Mutation_165394 (|l#$Mutation_165394| T@$Location) (|p#$Mutation_165394| (Seq Int)) (|v#$Mutation_165394| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_158725 0)) ((($Mutation_158725 (|l#$Mutation_158725| T@$Location) (|p#$Mutation_158725| (Seq Int)) (|v#$Mutation_158725| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_14548 0)) ((($Mutation_14548 (|l#$Mutation_14548| T@$Location) (|p#$Mutation_14548| (Seq Int)) (|v#$Mutation_14548| Int) ) ) ))
(declare-datatypes ((T@$Mutation_154101 0)) ((($Mutation_154101 (|l#$Mutation_154101| T@$Location) (|p#$Mutation_154101| (Seq Int)) (|v#$Mutation_154101| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_153355 0)) ((($Mutation_153355 (|l#$Mutation_153355| T@$Location) (|p#$Mutation_153355| (Seq Int)) (|v#$Mutation_153355| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_151951 0)) ((($Mutation_151951 (|l#$Mutation_151951| T@$Location) (|p#$Mutation_151951| (Seq Int)) (|v#$Mutation_151951| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_151205 0)) ((($Mutation_151205 (|l#$Mutation_151205| T@$Location) (|p#$Mutation_151205| (Seq Int)) (|v#$Mutation_151205| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_149801 0)) ((($Mutation_149801 (|l#$Mutation_149801| T@$Location) (|p#$Mutation_149801| (Seq Int)) (|v#$Mutation_149801| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_149055 0)) ((($Mutation_149055 (|l#$Mutation_149055| T@$Location) (|p#$Mutation_149055| (Seq Int)) (|v#$Mutation_149055| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-datatypes ((T@$Mutation_147651 0)) ((($Mutation_147651 (|l#$Mutation_147651| T@$Location) (|p#$Mutation_147651| (Seq Int)) (|v#$Mutation_147651| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_146905 0)) ((($Mutation_146905 (|l#$Mutation_146905| T@$Location) (|p#$Mutation_146905| (Seq Int)) (|v#$Mutation_146905| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_145501 0)) ((($Mutation_145501 (|l#$Mutation_145501| T@$Location) (|p#$Mutation_145501| (Seq Int)) (|v#$Mutation_145501| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_144755 0)) ((($Mutation_144755 (|l#$Mutation_144755| T@$Location) (|p#$Mutation_144755| (Seq Int)) (|v#$Mutation_144755| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_143351 0)) ((($Mutation_143351 (|l#$Mutation_143351| T@$Location) (|p#$Mutation_143351| (Seq Int)) (|v#$Mutation_143351| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_142605 0)) ((($Mutation_142605 (|l#$Mutation_142605| T@$Location) (|p#$Mutation_142605| (Seq Int)) (|v#$Mutation_142605| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-datatypes ((T@$Mutation_141201 0)) ((($Mutation_141201 (|l#$Mutation_141201| T@$Location) (|p#$Mutation_141201| (Seq Int)) (|v#$Mutation_141201| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_140455 0)) ((($Mutation_140455 (|l#$Mutation_140455| T@$Location) (|p#$Mutation_140455| (Seq Int)) (|v#$Mutation_140455| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_139051 0)) ((($Mutation_139051 (|l#$Mutation_139051| T@$Location) (|p#$Mutation_139051| (Seq Int)) (|v#$Mutation_139051| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_138305 0)) ((($Mutation_138305 (|l#$Mutation_138305| T@$Location) (|p#$Mutation_138305| (Seq Int)) (|v#$Mutation_138305| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_136901 0)) ((($Mutation_136901 (|l#$Mutation_136901| T@$Location) (|p#$Mutation_136901| (Seq Int)) (|v#$Mutation_136901| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_136155 0)) ((($Mutation_136155 (|l#$Mutation_136155| T@$Location) (|p#$Mutation_136155| (Seq Int)) (|v#$Mutation_136155| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_134713 0)) ((($Mutation_134713 (|l#$Mutation_134713| T@$Location) (|p#$Mutation_134713| (Seq Int)) (|v#$Mutation_134713| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_133967 0)) ((($Mutation_133967 (|l#$Mutation_133967| T@$Location) (|p#$Mutation_133967| (Seq Int)) (|v#$Mutation_133967| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| ((Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|T@$1_Diem_PreburnWithMetadata'#0'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| ((Seq |T@$1_Diem_PreburnWithMetadata'#0'|) |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_131870_| (|T@[$1_Event_EventHandle]Multiset_131870| T@$1_Event_EventHandle) T@Multiset_131870)
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
(declare-fun ReverseVec_14401 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_119505 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_118126 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_118323 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_118520 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_119702 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_119111 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_118914 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_118717 ((Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (Seq |T@$1_Diem_PreburnWithMetadata'#0'|))
(declare-fun ReverseVec_119308 ((Seq T@$1_VASPDomain_VASPDomain)) (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun ReverseVec_117929 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_131870| |T@[$1_Event_EventHandle]Multiset_131870|) |T@[$1_Event_EventHandle]Multiset_131870|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |XDXbpl.165:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |XDXbpl.169:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |XDXbpl.173:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |XDXbpl.177:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |XDXbpl.181:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |XDXbpl.191:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |XDXbpl.457:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |XDXbpl.466:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |XDXbpl.595:13|
 :skolemid |15|
))))
 :qid |XDXbpl.593:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |XDXbpl.600:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |XDXbpl.608:17|
 :skolemid |18|
)))))
 :qid |XDXbpl.604:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |XDXbpl.775:13|
 :skolemid |20|
))))
 :qid |XDXbpl.773:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |XDXbpl.780:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |XDXbpl.788:17|
 :skolemid |23|
)))))
 :qid |XDXbpl.784:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |XDXbpl.955:13|
 :skolemid |25|
))))
 :qid |XDXbpl.953:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |XDXbpl.960:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |XDXbpl.968:17|
 :skolemid |28|
)))))
 :qid |XDXbpl.964:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |XDXbpl.1135:13|
 :skolemid |30|
))))
 :qid |XDXbpl.1133:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |XDXbpl.1140:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |XDXbpl.1148:17|
 :skolemid |33|
)))))
 :qid |XDXbpl.1144:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (seq.nth v@@12 i@@12)))
 :qid |XDXbpl.1315:13|
 :skolemid |35|
))))
 :qid |XDXbpl.1313:57|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |XDXbpl.1320:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |XDXbpl.1328:17|
 :skolemid |38|
)))))
 :qid |XDXbpl.1324:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@14 i@@15)))
 :qid |XDXbpl.1495:13|
 :skolemid |40|
))))
 :qid |XDXbpl.1493:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |XDXbpl.1500:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |XDXbpl.1508:17|
 :skolemid |43|
)))))
 :qid |XDXbpl.1504:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@16 i@@18)))
 :qid |XDXbpl.1675:13|
 :skolemid |45|
))))
 :qid |XDXbpl.1673:65|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@19 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |XDXbpl.1680:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |XDXbpl.1688:17|
 :skolemid |48|
)))))
 :qid |XDXbpl.1684:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'$1_VASPDomain_VASPDomain'| (seq.nth v@@18 i@@21)))
 :qid |XDXbpl.1855:13|
 :skolemid |50|
))))
 :qid |XDXbpl.1853:50|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18))
)))
(assert (forall ((v@@19 (Seq T@$1_VASPDomain_VASPDomain)) (e@@6 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@22 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |XDXbpl.1860:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |XDXbpl.1868:17|
 :skolemid |53|
)))))
 :qid |XDXbpl.1864:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@20 i@@24)))
 :qid |XDXbpl.2035:13|
 :skolemid |55|
))))
 :qid |XDXbpl.2033:51|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20))
)))
(assert (forall ((v@@21 (Seq T@$1_ValidatorConfig_Config)) (e@@7 T@$1_ValidatorConfig_Config) ) (! (let ((i@@25 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |XDXbpl.2040:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |XDXbpl.2048:17|
 :skolemid |58|
)))))
 :qid |XDXbpl.2044:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'vec'u8''| (seq.nth v@@22 i@@27)))
 :qid |XDXbpl.2215:13|
 :skolemid |60|
))))
 :qid |XDXbpl.2213:33|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@22))
)))
(assert (forall ((v@@23 (Seq (Seq Int))) (e@@8 (Seq Int)) ) (! (let ((i@@28 (|$IndexOfVec'vec'u8''| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |XDXbpl.2220:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |XDXbpl.2228:17|
 :skolemid |63|
)))))
 :qid |XDXbpl.2224:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@23 e@@8))
)))
(assert (forall ((v@@24 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@24)  (and (|$IsValid'u64'| (seq.len v@@24)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len v@@24))) (|$IsValid'address'| (seq.nth v@@24 i@@30)))
 :qid |XDXbpl.2395:13|
 :skolemid |65|
))))
 :qid |XDXbpl.2393:33|
 :skolemid |66|
 :pattern ( (|$IsValid'vec'address''| v@@24))
)))
(assert (forall ((v@@25 (Seq Int)) (e@@9 Int) ) (! (let ((i@@31 (|$IndexOfVec'address'| v@@25 e@@9)))
(ite  (not (exists ((i@@32 Int) ) (!  (and (and (|$IsValid'u64'| i@@32) (and (>= i@@32 0) (< i@@32 (seq.len v@@25)))) (= (seq.nth v@@25 i@@32) e@@9))
 :qid |XDXbpl.2400:13|
 :skolemid |67|
))) (= i@@31 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@31) (and (>= i@@31 0) (< i@@31 (seq.len v@@25)))) (= (seq.nth v@@25 i@@31) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@31)) (not (= (seq.nth v@@25 j@@9) e@@9)))
 :qid |XDXbpl.2408:17|
 :skolemid |68|
)))))
 :qid |XDXbpl.2404:15|
 :skolemid |69|
 :pattern ( (|$IndexOfVec'address'| v@@25 e@@9))
)))
(assert (forall ((v@@26 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@26)  (and (|$IsValid'u64'| (seq.len v@@26)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len v@@26))) (|$IsValid'u8'| (seq.nth v@@26 i@@33)))
 :qid |XDXbpl.2575:13|
 :skolemid |70|
))))
 :qid |XDXbpl.2573:28|
 :skolemid |71|
 :pattern ( (|$IsValid'vec'u8''| v@@26))
)))
(assert (forall ((v@@27 (Seq Int)) (e@@10 Int) ) (! (let ((i@@34 (|$IndexOfVec'u8'| v@@27 e@@10)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (and (>= i@@35 0) (< i@@35 (seq.len v@@27)))) (= (seq.nth v@@27 i@@35) e@@10))
 :qid |XDXbpl.2580:13|
 :skolemid |72|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (and (>= i@@34 0) (< i@@34 (seq.len v@@27)))) (= (seq.nth v@@27 i@@34) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@34)) (not (= (seq.nth v@@27 j@@10) e@@10)))
 :qid |XDXbpl.2588:17|
 :skolemid |73|
)))))
 :qid |XDXbpl.2584:15|
 :skolemid |74|
 :pattern ( (|$IndexOfVec'u8'| v@@27 e@@10))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |XDXbpl.2761:15|
 :skolemid |75|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |XDXbpl.2777:15|
 :skolemid |76|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |XDXbpl.2848:15|
 :skolemid |77|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |XDXbpl.2851:15|
 :skolemid |78|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_131870_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_131870| stream) 0) (forall ((v@@28 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_131870| stream) v@@28) 0)
 :qid |XDXbpl.134:13|
 :skolemid |2|
))))
 :qid |XDXbpl.2912:13|
 :skolemid |79|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |XDXbpl.2953:80|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |XDXbpl.2959:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |XDXbpl.3009:82|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |XDXbpl.3015:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |XDXbpl.3065:80|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |XDXbpl.3071:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |XDXbpl.3121:79|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |XDXbpl.3127:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |XDXbpl.3177:76|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |XDXbpl.3183:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |XDXbpl.3233:78|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |XDXbpl.3239:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |XDXbpl.3289:74|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |XDXbpl.3295:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |XDXbpl.3345:69|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |XDXbpl.3351:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |XDXbpl.3401:70|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |XDXbpl.3407:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |XDXbpl.3457:60|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |XDXbpl.3463:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |XDXbpl.3513:66|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |XDXbpl.3519:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |XDXbpl.3569:60|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |XDXbpl.3575:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |XDXbpl.3625:63|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |XDXbpl.3631:15|
 :skolemid |106|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |XDXbpl.3681:79|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |XDXbpl.3687:15|
 :skolemid |108|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |XDXbpl.3737:82|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |XDXbpl.3743:15|
 :skolemid |110|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |XDXbpl.3793:88|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |XDXbpl.3799:15|
 :skolemid |112|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |XDXbpl.3849:72|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |XDXbpl.3855:15|
 :skolemid |114|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |XDXbpl.3934:61|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |XDXbpl.4749:36|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |XDXbpl.4768:71|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |XDXbpl.4832:46|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |XDXbpl.4845:64|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |XDXbpl.4858:75|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |XDXbpl.4871:72|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |XDXbpl.4900:55|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |XDXbpl.4922:46|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |XDXbpl.4940:49|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |XDXbpl.5025:71|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |XDXbpl.5039:91|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |XDXbpl.5053:113|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12) (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@12)))
 :qid |XDXbpl.5067:89|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |XDXbpl.5081:75|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |XDXbpl.5095:73|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |XDXbpl.5115:48|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |XDXbpl.5131:57|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |XDXbpl.5145:83|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |XDXbpl.5159:103|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |XDXbpl.5173:125|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20) true)
 :qid |XDXbpl.5187:101|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21) true)
 :qid |XDXbpl.5201:87|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22) true)
 :qid |XDXbpl.5215:85|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@23)))
 :qid |XDXbpl.5229:48|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@24)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@24))))
 :qid |XDXbpl.5250:45|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@25)))
 :qid |XDXbpl.5264:51|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@26)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@26))))
 :qid |XDXbpl.5287:48|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26))
)))
(assert (forall ((s@@27 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@27)))
 :qid |XDXbpl.5584:49|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27))
)))
(assert (forall ((s@@28 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@28)))
 :qid |XDXbpl.5629:65|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@29)))
 :qid |XDXbpl.6216:45|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@30)))
 :qid |XDXbpl.6229:45|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@31) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@31)))
 :qid |XDXbpl.6242:37|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@32) true)
 :qid |XDXbpl.6255:55|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@33) true)
 :qid |XDXbpl.6269:55|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_BurnCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'#0''| s@@34) true)
 :qid |XDXbpl.6283:47|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'#0''| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@35)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@35)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@35))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@35))))
 :qid |XDXbpl.6303:38|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@35))
)))
(assert (forall ((s@@36 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@36)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@36)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@36))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@36))))
 :qid |XDXbpl.6324:44|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@37)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))))
 :qid |XDXbpl.6375:53|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@38)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))))
 :qid |XDXbpl.6437:53|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@39)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@39)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@39))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@39))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@39))))
 :qid |XDXbpl.6499:45|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@40) true)
 :qid |XDXbpl.6525:55|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@41) true)
 :qid |XDXbpl.6539:55|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@42) true)
 :qid |XDXbpl.6553:47|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@42))
)))
(assert (forall ((s@@43 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@43)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@43)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@43))))
 :qid |XDXbpl.6570:38|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@44) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@44)))
 :qid |XDXbpl.6584:48|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@45) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@45)))
 :qid |XDXbpl.6598:48|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@46) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@46)))
 :qid |XDXbpl.6612:40|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@46))
)))
(assert (forall ((s@@47 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@47)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@47)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@47))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@47))))
 :qid |XDXbpl.6632:41|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@47))
)))
(assert (forall ((s@@48 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@48) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@48)))
 :qid |XDXbpl.6647:53|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@49) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@49)))
 :qid |XDXbpl.6661:53|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@50) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@50)))
 :qid |XDXbpl.6675:45|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@51)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@51)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@51))))
 :qid |XDXbpl.6692:60|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@51))
)))
(assert (forall ((s@@52 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@52)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@52)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@52))))
 :qid |XDXbpl.6709:60|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@52))
)))
(assert (forall ((s@@53 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@53)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@53)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@53))))
 :qid |XDXbpl.6726:52|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@53))
)))
(assert (forall ((s@@54 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@54)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@54)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@54))))
 :qid |XDXbpl.6743:57|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@54))
)))
(assert (forall ((s@@55 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@55) true)
 :qid |XDXbpl.23946:68|
 :skolemid |819|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@55))
)))
(assert (forall ((s@@56 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@56)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@56)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@56))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@56))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@56))))
 :qid |XDXbpl.23968:66|
 :skolemid |820|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@56))
)))
(assert (forall ((s@@57 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@57)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@57)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@57))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@57))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@57))))
 :qid |XDXbpl.23994:66|
 :skolemid |821|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@57))
)))
(assert (forall ((s@@58 |T@$1_AccountLimits_LimitsDefinition'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@58)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| s@@58)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| s@@58))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| s@@58))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| s@@58))))
 :qid |XDXbpl.24020:58|
 :skolemid |822|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@58))
)))
(assert (forall ((s@@59 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@59)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))))
 :qid |XDXbpl.24049:56|
 :skolemid |823|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@59))
)))
(assert (forall ((s@@60 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@60)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))))
 :qid |XDXbpl.24079:56|
 :skolemid |824|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@60))
)))
(assert (forall ((s@@61 |T@$1_AccountLimits_Window'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'#0''| s@@61)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'#0'| s@@61)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'#0'| s@@61))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'#0'| s@@61))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'#0'| s@@61))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'#0'| s@@61))))
 :qid |XDXbpl.24109:48|
 :skolemid |825|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'#0''| s@@61))
)))
(assert (forall ((s@@62 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@62) true)
 :qid |XDXbpl.26170:31|
 :skolemid |931|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@62))
)))
(assert (forall ((s@@63 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@63) true)
 :qid |XDXbpl.26520:31|
 :skolemid |932|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@63))
)))
(assert (forall ((s@@64 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@64)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@64)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@64))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@64))))
 :qid |XDXbpl.26539:35|
 :skolemid |933|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@64))
)))
(assert (forall ((s@@65 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@65) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@65)))
 :qid |XDXbpl.28495:45|
 :skolemid |996|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@65))
)))
(assert (forall ((s@@66 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@66)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@66))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@66))))
 :qid |XDXbpl.28514:50|
 :skolemid |997|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@66))
)))
(assert (forall ((s@@67 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@67) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@67)))
 :qid |XDXbpl.28529:52|
 :skolemid |998|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@67))
)))
(assert (forall ((s@@68 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@68) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@68)))
 :qid |XDXbpl.28543:46|
 :skolemid |999|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@68))
)))
(assert (forall ((s@@69 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@69) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@69)))
 :qid |XDXbpl.28567:38|
 :skolemid |1000|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@69))
)))
(assert (forall ((s@@70 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@70) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@70)))
 :qid |XDXbpl.28581:39|
 :skolemid |1001|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@70))
)))
(assert (forall ((s@@71 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@71)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@71)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@71))))
 :qid |XDXbpl.28608:65|
 :skolemid |1002|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@71))
)))
(assert (forall ((s@@72 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@72)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@72)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@72))))
 :qid |XDXbpl.28976:60|
 :skolemid |1003|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@73)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@73)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@73))))
 :qid |XDXbpl.28993:66|
 :skolemid |1004|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@74)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@74)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@74))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@74))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@74))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@74))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@74))))
 :qid |XDXbpl.29022:50|
 :skolemid |1005|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@75) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@75)))
 :qid |XDXbpl.29041:45|
 :skolemid |1006|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@76)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@76)) true))
 :qid |XDXbpl.29348:87|
 :skolemid |1007|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@77) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@77)))
 :qid |XDXbpl.29549:47|
 :skolemid |1008|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@78)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@78)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@78))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@78))))
 :qid |XDXbpl.29569:58|
 :skolemid |1009|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@79) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@79)))
 :qid |XDXbpl.29584:39|
 :skolemid |1010|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@79))
)))
(assert (forall ((s@@80 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@80)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@80)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@80))))
 :qid |XDXbpl.29606:58|
 :skolemid |1011|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@80))
)))
(assert (forall ((s@@81 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@81)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@81)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@81))))
 :qid |XDXbpl.29623:58|
 :skolemid |1012|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@81))
)))
(assert (forall ((s@@82 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@82) true)
 :qid |XDXbpl.29638:51|
 :skolemid |1013|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@82))
)))
(assert (forall ((s@@83 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@83)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@83)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@83))))
 :qid |XDXbpl.29655:60|
 :skolemid |1014|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@84)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@84)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@84))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@84))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@84))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@84))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@84))))
 :qid |XDXbpl.29941:47|
 :skolemid |1015|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@85)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@85)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@85))))
 :qid |XDXbpl.29963:63|
 :skolemid |1016|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@86) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@86)))
 :qid |XDXbpl.29978:57|
 :skolemid |1017|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@86))
)))
(assert (forall ((s@@87 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@87) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@87)))
 :qid |XDXbpl.29991:55|
 :skolemid |1018|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@87))
)))
(assert (forall ((s@@88 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@88) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@88)))
 :qid |XDXbpl.30005:55|
 :skolemid |1019|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@89)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@89)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@89))))
 :qid |XDXbpl.30022:54|
 :skolemid |1020|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@90) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@90)))
 :qid |XDXbpl.30036:55|
 :skolemid |1021|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@91) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@91)))
 :qid |XDXbpl.30050:57|
 :skolemid |1022|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@91))
)))
(assert (forall ((s@@92 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@92)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@92)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@92))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@92))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@92))))
 :qid |XDXbpl.30072:56|
 :skolemid |1023|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@92))
)))
(assert (forall ((s@@93 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@93)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@93)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@93))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@93))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@93))))
 :qid |XDXbpl.30097:52|
 :skolemid |1024|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@93))
)))
(assert (forall ((s@@94 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@94) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@94)))
 :qid |XDXbpl.30113:54|
 :skolemid |1025|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@94))
)))
(assert (forall ((s@@95 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@95)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@95)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@95))))
 :qid |XDXbpl.30955:47|
 :skolemid |1026|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@95))
)))
(assert (forall ((s@@96 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@96)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@96)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@96))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@96))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@96))))
 :qid |XDXbpl.30979:47|
 :skolemid |1027|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@96))
)))
(assert (forall ((s@@97 T@$1_DiemConsensusConfig_DiemConsensusConfig) ) (! (= (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@97) (|$IsValid'vec'u8''| (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| s@@97)))
 :qid |XDXbpl.31211:63|
 :skolemid |1028|
 :pattern ( (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@97))
)))
(assert (forall ((s@@98 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@98) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@98)))
 :qid |XDXbpl.31547:49|
 :skolemid |1029|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@98))
)))
(assert (forall ((s@@99 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@99)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@99)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@99))))
 :qid |XDXbpl.31590:49|
 :skolemid |1030|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@99))
)))
(assert (forall ((s@@100 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@100)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@100)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@100))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@100))))
 :qid |XDXbpl.31619:48|
 :skolemid |1031|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@100))
)))
(assert (forall ((s@@101 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@101) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@101)))
 :qid |XDXbpl.31903:47|
 :skolemid |1032|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@101))
)))
(assert (forall ((v@@29 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_14401 v@@29)))
 (and (= (seq.len r@@0) (seq.len v@@29)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@0))) (= (seq.nth r@@0 i@@36) (seq.nth v@@29 (- (- (seq.len v@@29) i@@36) 1))))
 :qid |XDXbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@36))
))))
 :qid |XDXbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14401 v@@29))
)))
(assert (forall ((v@@30 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_119505 v@@30)))
 (and (= (seq.len r@@1) (seq.len v@@30)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@1))) (= (seq.nth r@@1 i@@37) (seq.nth v@@30 (- (- (seq.len v@@30) i@@37) 1))))
 :qid |XDXbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@37))
))))
 :qid |XDXbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_119505 v@@30))
)))
(assert (forall ((v@@31 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_118126 v@@31)))
 (and (= (seq.len r@@2) (seq.len v@@31)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@2))) (= (seq.nth r@@2 i@@38) (seq.nth v@@31 (- (- (seq.len v@@31) i@@38) 1))))
 :qid |XDXbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@38))
))))
 :qid |XDXbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_118126 v@@31))
)))
(assert (forall ((v@@32 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_118323 v@@32)))
 (and (= (seq.len r@@3) (seq.len v@@32)) (forall ((i@@39 Int) ) (!  (=> (and (>= i@@39 0) (< i@@39 (seq.len r@@3))) (= (seq.nth r@@3 i@@39) (seq.nth v@@32 (- (- (seq.len v@@32) i@@39) 1))))
 :qid |XDXbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@39))
))))
 :qid |XDXbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_118323 v@@32))
)))
(assert (forall ((v@@33 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_118520 v@@33)))
 (and (= (seq.len r@@4) (seq.len v@@33)) (forall ((i@@40 Int) ) (!  (=> (and (>= i@@40 0) (< i@@40 (seq.len r@@4))) (= (seq.nth r@@4 i@@40) (seq.nth v@@33 (- (- (seq.len v@@33) i@@40) 1))))
 :qid |XDXbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@40))
))))
 :qid |XDXbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_118520 v@@33))
)))
(assert (forall ((v@@34 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_119702 v@@34)))
 (and (= (seq.len r@@5) (seq.len v@@34)) (forall ((i@@41 Int) ) (!  (=> (and (>= i@@41 0) (< i@@41 (seq.len r@@5))) (= (seq.nth r@@5 i@@41) (seq.nth v@@34 (- (- (seq.len v@@34) i@@41) 1))))
 :qid |XDXbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@41))
))))
 :qid |XDXbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_119702 v@@34))
)))
(assert (forall ((v@@35 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@6 (ReverseVec_119111 v@@35)))
 (and (= (seq.len r@@6) (seq.len v@@35)) (forall ((i@@42 Int) ) (!  (=> (and (>= i@@42 0) (< i@@42 (seq.len r@@6))) (= (seq.nth r@@6 i@@42) (seq.nth v@@35 (- (- (seq.len v@@35) i@@42) 1))))
 :qid |XDXbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@42))
))))
 :qid |XDXbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_119111 v@@35))
)))
(assert (forall ((v@@36 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@7 (ReverseVec_118914 v@@36)))
 (and (= (seq.len r@@7) (seq.len v@@36)) (forall ((i@@43 Int) ) (!  (=> (and (>= i@@43 0) (< i@@43 (seq.len r@@7))) (= (seq.nth r@@7 i@@43) (seq.nth v@@36 (- (- (seq.len v@@36) i@@43) 1))))
 :qid |XDXbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@43))
))))
 :qid |XDXbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_118914 v@@36))
)))
(assert (forall ((v@@37 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (let ((r@@8 (ReverseVec_118717 v@@37)))
 (and (= (seq.len r@@8) (seq.len v@@37)) (forall ((i@@44 Int) ) (!  (=> (and (>= i@@44 0) (< i@@44 (seq.len r@@8))) (= (seq.nth r@@8 i@@44) (seq.nth v@@37 (- (- (seq.len v@@37) i@@44) 1))))
 :qid |XDXbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@44))
))))
 :qid |XDXbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_118717 v@@37))
)))
(assert (forall ((v@@38 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (let ((r@@9 (ReverseVec_119308 v@@38)))
 (and (= (seq.len r@@9) (seq.len v@@38)) (forall ((i@@45 Int) ) (!  (=> (and (>= i@@45 0) (< i@@45 (seq.len r@@9))) (= (seq.nth r@@9 i@@45) (seq.nth v@@38 (- (- (seq.len v@@38) i@@45) 1))))
 :qid |XDXbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@9 i@@45))
))))
 :qid |XDXbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_119308 v@@38))
)))
(assert (forall ((v@@39 (Seq |T@#0|)) ) (! (let ((r@@10 (ReverseVec_117929 v@@39)))
 (and (= (seq.len r@@10) (seq.len v@@39)) (forall ((i@@46 Int) ) (!  (=> (and (>= i@@46 0) (< i@@46 (seq.len r@@10))) (= (seq.nth r@@10 i@@46) (seq.nth v@@39 (- (- (seq.len v@@39) i@@46) 1))))
 :qid |XDXbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@10 i@@46))
))))
 :qid |XDXbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_117929 v@@39))
)))
(assert (forall ((|l#0| Bool) (i@@47 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@47) |l#0|)
 :qid |XDXbpl.250:54|
 :skolemid |1123|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@47))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_131870|) (|l#1| |T@[$1_Event_EventHandle]Multiset_131870|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_131870_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_131870| (|Select__T@[$1_Event_EventHandle]Multiset_131870_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_131870| (|Select__T@[$1_Event_EventHandle]Multiset_131870_| |l#1| handle@@0))))
(Multiset_131870 (|lambda#3| (|v#Multiset_131870| (|Select__T@[$1_Event_EventHandle]Multiset_131870_| |l#0@@0| handle@@0)) (|v#Multiset_131870| (|Select__T@[$1_Event_EventHandle]Multiset_131870_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |XDXbpl.2922:13|
 :skolemid |1124|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_131870_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@40 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@40) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@40) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@40)))
 :qid |XDXbpl.129:29|
 :skolemid |1125|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@40))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t24@0 () T@$Mutation_14548)
(declare-fun $t14@1 () T@$Mutation_165394)
(declare-fun $t24@1 () T@$Mutation_14548)
(declare-fun _$t2 () Int)
(declare-fun $t14@2 () T@$Mutation_165394)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 () T@$Memory_164899)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_164899)
(declare-fun |Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int T@$1_DiemTimestamp_CurrentTimeMicroseconds) |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ( ?x1 Int) ( ?x2 T@$1_DiemTimestamp_CurrentTimeMicroseconds)) (! (= (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemTimestamp_CurrentTimeMicroseconds)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_165577)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_165764)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_165857)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_165943)
(declare-fun $1_DiemSystem_CapabilityHolder_$memory () T@$Memory_166016)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_166087)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_166171)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory| () T@$Memory_166255)
(declare-fun $1_XDX_Reserve_$memory () T@$Memory_166326)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_166410)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory| () T@$Memory_166494)
(declare-fun |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory| () T@$Memory_166565)
(declare-fun $1_DualAttestation_Limit_$memory () T@$Memory_166662)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory| () T@$Memory_166746)
(declare-fun $1_ChainId_ChainId_$memory () T@$Memory_166830)
(declare-fun $1_AccountFreezing_FreezeEventsHolder_$memory () T@$Memory_166901)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_166972)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int) T@$1_AccountFreezing_FreezingBit)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory () T@$Memory_167144)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory () T@$Memory_167215)
(declare-fun $1_DiemBlock_BlockMetadata_$memory () T@$Memory_167286)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory| () T@$Memory_167370)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory| () T@$Memory_165451)
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
(declare-fun $t14 () T@$Mutation_165394)
(declare-fun $t14@0 () T@$Mutation_165394)
(declare-fun $abort_code@0 () Int)
(declare-fun $t12 () Bool)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies () |T@[Int]Bool|)
(declare-fun $t11 () Int)
(declare-fun $t10 () Bool)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t7 () T@$Mutation_165394)
(declare-fun $t24 () T@$Mutation_14548)
; Valid
(declare-fun |$temp_0'$1_Diem_Preburn'#0''@1| () |T@$1_Diem_Preburn'#0'|)
(declare-fun $t0@0 () T@$Mutation_183552)
(declare-fun $t13 () Int)
(declare-fun $t14@@0 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory| () T@$Memory_176283)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|T@[Int]$1_Diem_CurrencyInfo'#0'| Int) |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@3| () T@$Memory_176283)
(declare-fun $t12@@0 () |T@$1_Diem_Preburn'#0'|)
(declare-fun |$1_Diem_MintCapability'#0'_$memory| () T@$Memory_176841)
(declare-fun |$1_Diem_BurnCapability'#0'_$memory| () T@$Memory_177295)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory| () T@$Memory_182795)
(declare-fun |$1_Diem_Preburn'#0'_$memory| () T@$Memory_182370)
(declare-fun $es@1 () T@$EventStore)
(declare-fun $t15 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $t17 () T@$1_Event_EventHandle)
(declare-fun $t16 () (Seq Int))
(declare-fun _$t1@@0 () Int)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_131870_| (|T@[$1_Event_EventHandle]Multiset_131870| T@$1_Event_EventHandle T@Multiset_131870) |T@[$1_Event_EventHandle]Multiset_131870|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_131870|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_131870)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_131870_| (|Store__T@[$1_Event_EventHandle]Multiset_131870_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_131870|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_131870)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_131870_| (|Store__T@[$1_Event_EventHandle]Multiset_131870_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_131870_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_flag@4 () Bool)
(declare-fun $t33@3 () T@$Mutation_183598)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@2| () T@$Memory_176283)
(declare-fun |Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|T@[Int]$1_Diem_CurrencyInfo'#0'| Int |T@$1_Diem_CurrencyInfo'#0'|) |T@[Int]$1_Diem_CurrencyInfo'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'#0'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'#0'|)) (! (= (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun $es@0 () T@$EventStore)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@1| () T@$Memory_176283)
(declare-fun $t20@0 () Int)
(declare-fun $abort_code@5 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_Diem_BurnEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t52@0 () T@$Mutation_158725)
(declare-fun $t53@0 () T@$1_Diem_BurnEvent)
(declare-fun $t30@0 () Int)
(declare-fun $t18 () (Seq Int))
(declare-fun $t50@0 () Bool)
(declare-fun $t49@0 () T@$Mutation_14548)
(declare-fun $t33@2 () T@$Mutation_183598)
(declare-fun $t49@1 () T@$Mutation_14548)
(declare-fun inline$$Sub$1$dst@2 () Int)
(declare-fun inline$$Sub$1$dst@0 () Int)
(declare-fun $t47@0 () Int)
(declare-fun inline$$Sub$1$dst@1 () Int)
(declare-fun $abort_code@4 () Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun inline$$Ge$1$dst@1 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@0| () T@$Memory_176283)
(declare-fun $t46 () Int)
(declare-fun $t43@0 () Int)
(declare-fun $t42@0 () T@$Mutation_14548)
(declare-fun $t33@1 () T@$Mutation_183598)
(declare-fun $t42@1 () T@$Mutation_14548)
(declare-fun inline$$Sub$0$dst@2 () Int)
(declare-fun inline$$Sub$0$dst@0 () Int)
(declare-fun $t39@0 () Int)
(declare-fun inline$$CastU128$1$dst@1 () Int)
(declare-fun inline$$Sub$0$dst@1 () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun inline$$CastU128$1$dst@0 () Int)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun inline$$Ge$0$dst@1 () Bool)
(declare-fun $t38 () Int)
(declare-fun $t34@0 () Int)
(declare-fun inline$$CastU128$0$dst@1 () Int)
(declare-fun inline$$CastU128$0$dst@0 () Int)
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun |$temp_0'$1_Diem_CurrencyInfo'#0''@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $t33 () T@$Mutation_183598)
(declare-fun $t33@0 () T@$Mutation_183598)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun $t31 () Bool)
(declare-fun $t20@@0 () Int)
(declare-fun inline$$Gt$0$dst@1 () Bool)
(declare-fun $t27@0 () T@$Mutation_183645)
(declare-fun _$t0@@0 () T@$Mutation_183552)
(declare-fun $t29@0 () |T@$1_Diem_Diem'#0'|)
(declare-fun $t27@1 () T@$Mutation_183645)
(declare-fun |$temp_0'$1_Diem_Diem'#0''@0| () |T@$1_Diem_Diem'#0'|)
(declare-fun $t28 () |T@$1_Diem_Diem'#0'|)
(declare-fun $t26 () Int)
(declare-fun $t22@0 () Int)
(declare-fun $t19 () Bool)
(declare-fun $t21@0 () |T@$1_Diem_Diem'#0'|)
(declare-fun _$t2@@0 () |T@$1_Diem_BurnCapability'#0'|)
(declare-fun |$temp_0'$1_Diem_Preburn'#0''@0| () |T@$1_Diem_Preburn'#0'|)
(declare-fun $t10@@0 () T@$Mutation_183598)
(declare-fun $t27 () T@$Mutation_183645)
(declare-fun $t42 () T@$Mutation_14548)
(declare-fun $t49 () T@$Mutation_14548)
(declare-fun $t52 () T@$Mutation_158725)
; Valid
(declare-fun |$temp_0'$1_Diem_Preburn'$1_XUS_XUS''@1| () |T@$1_Diem_Preburn'$1_XUS_XUS'|)
(declare-fun $t0@0@@0 () T@$Mutation_188025)
(declare-fun $t13@@0 () Int)
(declare-fun $t14@@1 () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3| () T@$Memory_166171)
(declare-fun $t12@@1 () |T@$1_Diem_Preburn'$1_XUS_XUS'|)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory| () T@$Memory_176713)
(declare-fun |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory| () T@$Memory_177121)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory| () T@$Memory_182597)
(declare-fun |$1_Diem_Preburn'$1_XUS_XUS'_$memory| () T@$Memory_182188)
(declare-fun $es@1@@0 () T@$EventStore)
(declare-fun $t15@@0 () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun $t17@@0 () T@$1_Event_EventHandle)
(declare-fun $t16@@0 () (Seq Int))
(declare-fun _$t1@@1 () Int)
(declare-fun $abort_flag@4@@0 () Bool)
(declare-fun $t33@3@@0 () T@$Mutation_188071)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2| () T@$Memory_166171)
(declare-fun |Store__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)) (! (= (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| ?x0 ?y1))) :weight 0)))
(declare-fun $es@0@@0 () T@$EventStore)
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1| () T@$Memory_166171)
(declare-fun $t20@0@@0 () Int)
(declare-fun $abort_code@5@@0 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_Diem_BurnEvent'$0$handle@1@@0| () T@$1_Event_EventHandle)
(declare-fun $t52@0@@0 () T@$Mutation_158725)
(declare-fun $t53@0@@0 () T@$1_Diem_BurnEvent)
(declare-fun $t30@0@@0 () Int)
(declare-fun $t18@@0 () (Seq Int))
(declare-fun $t50@0@@0 () Bool)
(declare-fun $t49@0@@0 () T@$Mutation_14548)
(declare-fun $t33@2@@0 () T@$Mutation_188071)
(declare-fun $t49@1@@0 () T@$Mutation_14548)
(declare-fun inline$$Sub$1$dst@2@@0 () Int)
(declare-fun inline$$Sub$1$dst@0@@0 () Int)
(declare-fun $t47@0@@0 () Int)
(declare-fun inline$$Sub$1$dst@1@@0 () Int)
(declare-fun $abort_code@4@@0 () Int)
(declare-fun $abort_flag@3@@0 () Bool)
(declare-fun inline$$Ge$1$dst@1@@0 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0| () T@$Memory_166171)
(declare-fun $t46@@0 () Int)
(declare-fun $t43@0@@0 () Int)
(declare-fun $t42@0@@0 () T@$Mutation_14548)
(declare-fun $t33@1@@0 () T@$Mutation_188071)
(declare-fun $t42@1@@0 () T@$Mutation_14548)
(declare-fun inline$$Sub$0$dst@2@@0 () Int)
(declare-fun inline$$Sub$0$dst@0@@0 () Int)
(declare-fun $t39@0@@0 () Int)
(declare-fun inline$$CastU128$1$dst@1@@0 () Int)
(declare-fun inline$$Sub$0$dst@1@@0 () Int)
(declare-fun $abort_flag@2@@0 () Bool)
(declare-fun $abort_code@3@@0 () Int)
(declare-fun inline$$CastU128$1$dst@0@@0 () Int)
(declare-fun $abort_code@2@@0 () Int)
(declare-fun $abort_flag@1@@0 () Bool)
(declare-fun inline$$Ge$0$dst@1@@0 () Bool)
(declare-fun $t38@@0 () Int)
(declare-fun $t34@0@@0 () Int)
(declare-fun inline$$CastU128$0$dst@1@@0 () Int)
(declare-fun inline$$CastU128$0$dst@0@@0 () Int)
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun |$temp_0'$1_Diem_CurrencyInfo'$1_XUS_XUS''@0| () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun $t33@@0 () T@$Mutation_188071)
(declare-fun $t33@0@@0 () T@$Mutation_188071)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun $t31@@0 () Bool)
(declare-fun $t20@@1 () Int)
(declare-fun inline$$Gt$0$dst@1@@0 () Bool)
(declare-fun $t27@0@@0 () T@$Mutation_188118)
(declare-fun _$t0@@1 () T@$Mutation_188025)
(declare-fun $t29@0@@0 () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun $t27@1@@0 () T@$Mutation_188118)
(declare-fun |$temp_0'$1_Diem_Diem'$1_XUS_XUS''@0| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun $t28@@0 () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun $t26@@0 () Int)
(declare-fun $t22@0@@0 () Int)
(declare-fun $t19@@0 () Bool)
(declare-fun $t21@0@@0 () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun _$t2@@1 () |T@$1_Diem_BurnCapability'$1_XUS_XUS'|)
(declare-fun |$temp_0'$1_Diem_Preburn'$1_XUS_XUS''@0| () |T@$1_Diem_Preburn'$1_XUS_XUS'|)
(declare-fun $t10@@1 () T@$Mutation_188071)
(declare-fun $t27@@0 () T@$Mutation_188118)
(declare-fun $t42@@0 () T@$Mutation_14548)
(declare-fun $t49@@0 () T@$Mutation_14548)
(declare-fun $t52@@0 () T@$Mutation_158725)
; Valid
(declare-fun |$temp_0'$1_Diem_Preburn'$1_XDX_XDX''@1| () |T@$1_Diem_Preburn'$1_XDX_XDX'|)
(declare-fun $t0@0@@1 () T@$Mutation_192584)
(declare-fun $t13@@1 () Int)
(declare-fun $t14@@2 () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3| () T@$Memory_166410)
(declare-fun $t12@@2 () |T@$1_Diem_Preburn'$1_XDX_XDX'|)
(declare-fun |$1_Diem_MintCapability'$1_XDX_XDX'_$memory| () T@$Memory_176777)
(declare-fun |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory| () T@$Memory_177208)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory| () T@$Memory_182696)
(declare-fun |$1_Diem_Preburn'$1_XDX_XDX'_$memory| () T@$Memory_182279)
(declare-fun $es@1@@1 () T@$EventStore)
(declare-fun $t15@@1 () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun $t17@@1 () T@$1_Event_EventHandle)
(declare-fun $t16@@1 () (Seq Int))
(declare-fun _$t1@@2 () Int)
(declare-fun $abort_flag@4@@1 () Bool)
(declare-fun $t33@3@@1 () T@$Mutation_192630)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2| () T@$Memory_166410)
(declare-fun |Store__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)) (! (= (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| ?x0 ?y1))) :weight 0)))
(declare-fun $es@0@@1 () T@$EventStore)
(declare-fun inline$$Not$0$dst@1@@1 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@1| () T@$Memory_166410)
(declare-fun $t20@0@@1 () Int)
(declare-fun $abort_code@5@@1 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_Diem_BurnEvent'$0$handle@1@@1| () T@$1_Event_EventHandle)
(declare-fun $t52@0@@1 () T@$Mutation_158725)
(declare-fun $t53@0@@1 () T@$1_Diem_BurnEvent)
(declare-fun $t30@0@@1 () Int)
(declare-fun $t18@@1 () (Seq Int))
(declare-fun $t50@0@@1 () Bool)
(declare-fun $t49@0@@1 () T@$Mutation_14548)
(declare-fun $t33@2@@1 () T@$Mutation_192630)
(declare-fun $t49@1@@1 () T@$Mutation_14548)
(declare-fun inline$$Sub$1$dst@2@@1 () Int)
(declare-fun inline$$Sub$1$dst@0@@1 () Int)
(declare-fun $t47@0@@1 () Int)
(declare-fun inline$$Sub$1$dst@1@@1 () Int)
(declare-fun $abort_code@4@@1 () Int)
(declare-fun $abort_flag@3@@1 () Bool)
(declare-fun inline$$Ge$1$dst@1@@1 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@0| () T@$Memory_166410)
(declare-fun $t46@@1 () Int)
(declare-fun $t43@0@@1 () Int)
(declare-fun $t42@0@@1 () T@$Mutation_14548)
(declare-fun $t33@1@@1 () T@$Mutation_192630)
(declare-fun $t42@1@@1 () T@$Mutation_14548)
(declare-fun inline$$Sub$0$dst@2@@1 () Int)
(declare-fun inline$$Sub$0$dst@0@@1 () Int)
(declare-fun $t39@0@@1 () Int)
(declare-fun inline$$CastU128$1$dst@1@@1 () Int)
(declare-fun inline$$Sub$0$dst@1@@1 () Int)
(declare-fun $abort_flag@2@@1 () Bool)
(declare-fun $abort_code@3@@1 () Int)
(declare-fun inline$$CastU128$1$dst@0@@1 () Int)
(declare-fun $abort_code@2@@1 () Int)
(declare-fun $abort_flag@1@@1 () Bool)
(declare-fun inline$$Ge$0$dst@1@@1 () Bool)
(declare-fun $t38@@1 () Int)
(declare-fun $t34@0@@1 () Int)
(declare-fun inline$$CastU128$0$dst@1@@1 () Int)
(declare-fun inline$$CastU128$0$dst@0@@1 () Int)
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun |$temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX''@0| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun $t33@@1 () T@$Mutation_192630)
(declare-fun $t33@0@@1 () T@$Mutation_192630)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun $t31@@1 () Bool)
(declare-fun $t20@@2 () Int)
(declare-fun inline$$Gt$0$dst@1@@1 () Bool)
(declare-fun $t27@0@@1 () T@$Mutation_192677)
(declare-fun _$t0@@2 () T@$Mutation_192584)
(declare-fun $t29@0@@1 () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun $t27@1@@1 () T@$Mutation_192677)
(declare-fun |$temp_0'$1_Diem_Diem'$1_XDX_XDX''@0| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun $t28@@1 () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun $t26@@1 () Int)
(declare-fun $t22@0@@1 () Int)
(declare-fun $t19@@1 () Bool)
(declare-fun $t21@0@@1 () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun _$t2@@2 () |T@$1_Diem_BurnCapability'$1_XDX_XDX'|)
(declare-fun |$temp_0'$1_Diem_Preburn'$1_XDX_XDX''@0| () |T@$1_Diem_Preburn'$1_XDX_XDX'|)
(declare-fun $t10@@2 () T@$Mutation_192630)
(declare-fun $t27@@1 () T@$Mutation_192677)
(declare-fun $t42@@1 () T@$Mutation_14548)
(declare-fun $t49@@1 () T@$Mutation_14548)
(declare-fun $t52@@1 () T@$Mutation_158725)
; Valid
(declare-fun $t20@0@@2 () |T@$1_Diem_Diem'#0'|)
(declare-fun $t36 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@2@@0| () T@$Memory_176283)
(declare-fun $t8 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun _$t2@@3 () Int)
(declare-fun _$t0@@3 () Int)
(declare-fun $t9@@0 () (Seq |T@$1_Diem_PreburnWithMetadata'#0'|))
(declare-fun $t10@@3 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory@2| () T@$Memory_182795)
(declare-fun $es@1@@2 () T@$EventStore)
(declare-fun $t11@@0 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $t13@@2 () T@$1_Event_EventHandle)
(declare-fun $t12@@3 () (Seq Int))
(declare-fun $abort_flag@1@@2 () Bool)
(declare-fun $t24@2 () T@$Mutation_183598)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@1@@0| () T@$Memory_176283)
(declare-fun $es@0@@2 () T@$EventStore)
(declare-fun inline$$Not$0$dst@1@@2 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@0@@0| () T@$Memory_176283)
(declare-fun $t17@0@@0 () Int)
(declare-fun $abort_code@2@@2 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_Diem_CancelBurnEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t34@0@@2 () T@$Mutation_158725)
(declare-fun $t35@0 () T@$1_Diem_CancelBurnEvent)
(declare-fun $t21 () (Seq Int))
(declare-fun $t32@0 () Bool)
(declare-fun $t31@0 () T@$Mutation_14548)
(declare-fun $t24@1@@0 () T@$Mutation_183598)
(declare-fun $t31@1 () T@$Mutation_14548)
(declare-fun inline$$Sub$0$dst@2@@2 () Int)
(declare-fun inline$$Sub$0$dst@0@@2 () Int)
(declare-fun $t29@0@@2 () Int)
(declare-fun inline$$Sub$0$dst@1@@2 () Int)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_code@1@@3 () Int)
(declare-fun inline$$Ge$0$dst@1@@2 () Bool)
(declare-fun $t28@@2 () Int)
(declare-fun $t25@0 () Int)
(declare-fun |$temp_0'$1_Diem_CurrencyInfo'#0''@0@@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $t24@@0 () T@$Mutation_183598)
(declare-fun $t24@0@@0 () T@$Mutation_183598)
(declare-fun $abort_code@0@@3 () Int)
(declare-fun $t22 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$modifies| () |T@[Int]Bool|)
(declare-fun $t17@@2 () Int)
(declare-fun $t15@@2 () |T@$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun $t18@0@@0 () |T@$1_Diem_Preburn'#0'|)
(declare-fun $t19@0 () (Seq Int))
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory@1| () T@$Memory_182795)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory@0| () T@$Memory_182795)
(declare-fun |Store__T@[Int]$1_Diem_PreburnQueue'#0'_| (|T@[Int]$1_Diem_PreburnQueue'#0'| Int |T@$1_Diem_PreburnQueue'#0'|) |T@[Int]$1_Diem_PreburnQueue'#0'|)
(declare-fun |Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|T@[Int]$1_Diem_PreburnQueue'#0'| Int) |T@$1_Diem_PreburnQueue'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'#0'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'#0'|)) (! (= (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|Store__T@[Int]$1_Diem_PreburnQueue'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|Store__T@[Int]$1_Diem_PreburnQueue'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Diem_PreburnQueue'#0''@0| () |T@$1_Diem_PreburnQueue'#0'|)
(declare-fun $t16@@2 () Bool)
(declare-fun $t14@@3 () (Seq |T@$1_Diem_PreburnWithMetadata'#0'|))
(declare-fun |Select__T@[Int]$1_Diem_Preburn'#0'_| (|T@[Int]$1_Diem_Preburn'#0'| Int) |T@$1_Diem_Preburn'#0'|)
(declare-fun _$t1@@3 () |T@$1_Diem_BurnCapability'#0'|)
(declare-fun |$1_Diem_PreburnQueue'#0'_$modifies| () |T@[Int]Bool|)
(declare-fun $t6 () T@$Mutation_183598)
(declare-fun $t31@@2 () T@$Mutation_14548)
(declare-fun $t34 () T@$Mutation_158725)
; Valid
(declare-fun $t20@0@@3 () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun $t36@@0 () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2@@0| () T@$Memory_166171)
(declare-fun $t8@@0 () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun _$t2@@4 () Int)
(declare-fun _$t0@@4 () Int)
(declare-fun $t9@@1 () (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun $t10@@4 () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@2| () T@$Memory_182597)
(declare-fun $es@1@@3 () T@$EventStore)
(declare-fun $t11@@1 () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun $t13@@3 () T@$1_Event_EventHandle)
(declare-fun $t12@@4 () (Seq Int))
(declare-fun $abort_flag@1@@3 () Bool)
(declare-fun $t24@2@@0 () T@$Mutation_188071)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1@@0| () T@$Memory_166171)
(declare-fun $es@0@@3 () T@$EventStore)
(declare-fun inline$$Not$0$dst@1@@3 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0@@0| () T@$Memory_166171)
(declare-fun $t17@0@@1 () Int)
(declare-fun $abort_code@2@@3 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_Diem_CancelBurnEvent'$0$handle@1@@0| () T@$1_Event_EventHandle)
(declare-fun $t34@0@@3 () T@$Mutation_158725)
(declare-fun $t35@0@@0 () T@$1_Diem_CancelBurnEvent)
(declare-fun $t21@@0 () (Seq Int))
(declare-fun $t32@0@@0 () Bool)
(declare-fun $t31@0@@0 () T@$Mutation_14548)
(declare-fun $t24@1@@1 () T@$Mutation_188071)
(declare-fun $t31@1@@0 () T@$Mutation_14548)
(declare-fun inline$$Sub$0$dst@2@@3 () Int)
(declare-fun inline$$Sub$0$dst@0@@3 () Int)
(declare-fun $t29@0@@3 () Int)
(declare-fun inline$$Sub$0$dst@1@@3 () Int)
(declare-fun $abort_flag@0@@4 () Bool)
(declare-fun $abort_code@1@@4 () Int)
(declare-fun inline$$Ge$0$dst@1@@3 () Bool)
(declare-fun $t28@@3 () Int)
(declare-fun $t25@0@@0 () Int)
(declare-fun |$temp_0'$1_Diem_CurrencyInfo'$1_XUS_XUS''@0@@0| () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun $t24@@1 () T@$Mutation_188071)
(declare-fun $t24@0@@1 () T@$Mutation_188071)
(declare-fun $abort_code@0@@4 () Int)
(declare-fun $t22@@0 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$modifies| () |T@[Int]Bool|)
(declare-fun $t17@@3 () Int)
(declare-fun $t15@@3 () |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun $t18@0@@1 () |T@$1_Diem_Preburn'$1_XUS_XUS'|)
(declare-fun $t19@0@@0 () (Seq Int))
(declare-fun |$temp_0'bool'@0@@0| () Bool)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@1| () T@$Memory_182597)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@0| () T@$Memory_182597)
(declare-fun |Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| Int |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)) (! (= (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS''@0| () |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(declare-fun $t16@@3 () Bool)
(declare-fun $t14@@4 () (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun |Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| Int) |T@$1_Diem_Preburn'$1_XUS_XUS'|)
(declare-fun _$t1@@4 () |T@$1_Diem_BurnCapability'$1_XUS_XUS'|)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies| () |T@[Int]Bool|)
(declare-fun $t6@@0 () T@$Mutation_188071)
(declare-fun $t31@@3 () T@$Mutation_14548)
(declare-fun $t34@@0 () T@$Mutation_158725)
; Valid
(declare-fun $t20@0@@4 () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun $t36@@1 () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2@@0| () T@$Memory_166410)
(declare-fun $t8@@1 () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun _$t2@@5 () Int)
(declare-fun _$t0@@5 () Int)
(declare-fun $t9@@2 () (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun $t10@@5 () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@2| () T@$Memory_182696)
(declare-fun $es@1@@4 () T@$EventStore)
(declare-fun $t11@@2 () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun $t13@@4 () T@$1_Event_EventHandle)
(declare-fun $t12@@5 () (Seq Int))
(declare-fun $abort_flag@1@@4 () Bool)
(declare-fun $t24@2@@1 () T@$Mutation_192630)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@1@@0| () T@$Memory_166410)
(declare-fun $es@0@@4 () T@$EventStore)
(declare-fun inline$$Not$0$dst@1@@4 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@0@@0| () T@$Memory_166410)
(declare-fun $t17@0@@2 () Int)
(declare-fun $abort_code@2@@4 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_Diem_CancelBurnEvent'$0$handle@1@@1| () T@$1_Event_EventHandle)
(declare-fun $t34@0@@4 () T@$Mutation_158725)
(declare-fun $t35@0@@1 () T@$1_Diem_CancelBurnEvent)
(declare-fun $t21@@1 () (Seq Int))
(declare-fun $t32@0@@1 () Bool)
(declare-fun $t31@0@@1 () T@$Mutation_14548)
(declare-fun $t24@1@@2 () T@$Mutation_192630)
(declare-fun $t31@1@@1 () T@$Mutation_14548)
(declare-fun inline$$Sub$0$dst@2@@4 () Int)
(declare-fun inline$$Sub$0$dst@0@@4 () Int)
(declare-fun $t29@0@@4 () Int)
(declare-fun inline$$Sub$0$dst@1@@4 () Int)
(declare-fun $abort_flag@0@@5 () Bool)
(declare-fun $abort_code@1@@5 () Int)
(declare-fun inline$$Ge$0$dst@1@@4 () Bool)
(declare-fun $t28@@4 () Int)
(declare-fun $t25@0@@1 () Int)
(declare-fun |$temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX''@0@@0| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun $t24@@2 () T@$Mutation_192630)
(declare-fun $t24@0@@2 () T@$Mutation_192630)
(declare-fun $abort_code@0@@5 () Int)
(declare-fun $t22@@1 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$modifies| () |T@[Int]Bool|)
(declare-fun $t17@@4 () Int)
(declare-fun $t15@@4 () |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun $t18@0@@2 () |T@$1_Diem_Preburn'$1_XDX_XDX'|)
(declare-fun $t19@0@@1 () (Seq Int))
(declare-fun |$temp_0'bool'@0@@1| () Bool)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@1| () T@$Memory_182696)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory@0| () T@$Memory_182696)
(declare-fun |Store__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| Int |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|)
(declare-fun |Select__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| Int) |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|)) (! (= (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Diem_PreburnQueue'$1_XDX_XDX''@0| () |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|)
(declare-fun $t16@@4 () Bool)
(declare-fun $t14@@5 () (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun |Select__T@[Int]$1_Diem_Preburn'$1_XDX_XDX'_| (|T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| Int) |T@$1_Diem_Preburn'$1_XDX_XDX'|)
(declare-fun _$t1@@5 () |T@$1_Diem_BurnCapability'$1_XDX_XDX'|)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$modifies| () |T@[Int]Bool|)
(declare-fun $t6@@1 () T@$Mutation_192630)
(declare-fun $t31@@4 () T@$Mutation_14548)
(declare-fun $t34@@1 () T@$Mutation_158725)
; Valid
(declare-fun $t36@0 () |T@$1_Diem_Diem'#0'|)
(declare-fun _$t0@@6 () Int)
(declare-fun $t37 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@2@@1| () T@$Memory_176283)
(declare-fun $t8@@2 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $es@1@@5 () T@$EventStore)
(declare-fun $t9@@3 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $t10@@6 () T@$1_Event_EventHandle)
(declare-fun $t11@@3 () T@$1_Diem_MintEvent)
(declare-fun $abort_flag@4@@2 () Bool)
(declare-fun $t17@2 () T@$Mutation_183598)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@1@@1| () T@$Memory_176283)
(declare-fun $es@0@@5 () T@$EventStore)
(declare-fun inline$$Not$0$dst@1@@5 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@0@@1| () T@$Memory_176283)
(declare-fun $t13@0 () Int)
(declare-fun $abort_code@5@@2 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_Diem_MintEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t34@0@@5 () T@$Mutation_158725)
(declare-fun $t35@0@@2 () T@$1_Diem_MintEvent)
(declare-fun $t14@@6 () (Seq Int))
(declare-fun $t32@0@@2 () Bool)
(declare-fun $t31@0@@2 () T@$Mutation_14548)
(declare-fun $t17@1 () T@$Mutation_183598)
(declare-fun $t31@1@@2 () T@$Mutation_14548)
(declare-fun inline$$AddU128$0$dst@2 () Int)
(declare-fun inline$$AddU128$0$dst@0 () Int)
(declare-fun $t28@0 () Int)
(declare-fun inline$$CastU128$1$dst@1@@2 () Int)
(declare-fun inline$$AddU128$0$dst@1 () Int)
(declare-fun $abort_code@4@@2 () Int)
(declare-fun $abort_flag@3@@2 () Bool)
(declare-fun inline$$CastU128$1$dst@0@@2 () Int)
(declare-fun $abort_flag@2@@2 () Bool)
(declare-fun $abort_code@3@@2 () Int)
(declare-fun inline$$Ge$0$dst@1@@5 () Bool)
(declare-fun $t27@@2 () Int)
(declare-fun inline$$Sub$0$dst@2@@5 () Int)
(declare-fun inline$$CastU128$0$dst@1@@2 () Int)
(declare-fun inline$$CastU128$0$dst@0@@2 () Int)
(declare-fun $abort_code@2@@5 () Int)
(declare-fun $abort_flag@1@@5 () Bool)
(declare-fun inline$$Sub$0$dst@0@@5 () Int)
(declare-fun $t22@0@@2 () Int)
(declare-fun inline$$Sub$0$dst@1@@5 () Int)
(declare-fun $abort_flag@0@@6 () Bool)
(declare-fun $abort_code@1@@6 () Int)
(declare-fun $t18@0@@3 () Bool)
(declare-fun $t20@@3 () Int)
(declare-fun |$temp_0'$1_Diem_CurrencyInfo'#0''@0@@1| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $t17@@5 () T@$Mutation_183598)
(declare-fun $t17@0@@3 () T@$Mutation_183598)
(declare-fun $abort_code@0@@6 () Int)
(declare-fun $t15@@5 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$modifies@@0| () |T@[Int]Bool|)
(declare-fun $t13@@5 () Int)
(declare-fun $t12@@6 () Bool)
(declare-fun _$t1@@6 () |T@$1_Diem_MintCapability'#0'|)
(declare-fun $t7@@0 () T@$Mutation_183598)
(declare-fun $t31@@5 () T@$Mutation_14548)
(declare-fun $t34@@2 () T@$Mutation_158725)
; Valid
(declare-fun $t36@0@@0 () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun _$t0@@7 () Int)
(declare-fun $t37@@0 () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2@@1| () T@$Memory_166171)
(declare-fun $t8@@3 () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun $es@1@@6 () T@$EventStore)
(declare-fun $t9@@4 () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun $t10@@7 () T@$1_Event_EventHandle)
(declare-fun $t11@@4 () T@$1_Diem_MintEvent)
(declare-fun $abort_flag@4@@3 () Bool)
(declare-fun $t17@2@@0 () T@$Mutation_188071)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1@@1| () T@$Memory_166171)
(declare-fun $es@0@@6 () T@$EventStore)
(declare-fun inline$$Not$0$dst@1@@6 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0@@1| () T@$Memory_166171)
(declare-fun $t13@0@@0 () Int)
(declare-fun $abort_code@5@@3 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_Diem_MintEvent'$0$handle@1@@0| () T@$1_Event_EventHandle)
(declare-fun $t34@0@@6 () T@$Mutation_158725)
(declare-fun $t35@0@@3 () T@$1_Diem_MintEvent)
(declare-fun $t14@@7 () (Seq Int))
(declare-fun $t32@0@@3 () Bool)
(declare-fun $t31@0@@3 () T@$Mutation_14548)
(declare-fun $t17@1@@0 () T@$Mutation_188071)
(declare-fun $t31@1@@3 () T@$Mutation_14548)
(declare-fun inline$$AddU128$0$dst@2@@0 () Int)
(declare-fun inline$$AddU128$0$dst@0@@0 () Int)
(declare-fun $t28@0@@0 () Int)
(declare-fun inline$$CastU128$1$dst@1@@3 () Int)
(declare-fun inline$$AddU128$0$dst@1@@0 () Int)
(declare-fun $abort_code@4@@3 () Int)
(declare-fun $abort_flag@3@@3 () Bool)
(declare-fun inline$$CastU128$1$dst@0@@3 () Int)
(declare-fun $abort_flag@2@@3 () Bool)
(declare-fun $abort_code@3@@3 () Int)
(declare-fun inline$$Ge$0$dst@1@@6 () Bool)
(declare-fun $t27@@3 () Int)
(declare-fun inline$$Sub$0$dst@2@@6 () Int)
(declare-fun inline$$CastU128$0$dst@1@@3 () Int)
(declare-fun inline$$CastU128$0$dst@0@@3 () Int)
(declare-fun $abort_code@2@@6 () Int)
(declare-fun $abort_flag@1@@6 () Bool)
(declare-fun inline$$Sub$0$dst@0@@6 () Int)
(declare-fun $t22@0@@3 () Int)
(declare-fun inline$$Sub$0$dst@1@@6 () Int)
(declare-fun $abort_flag@0@@7 () Bool)
(declare-fun $abort_code@1@@7 () Int)
(declare-fun $t18@0@@4 () Bool)
(declare-fun $t20@@4 () Int)
(declare-fun |$temp_0'$1_Diem_CurrencyInfo'$1_XUS_XUS''@0@@1| () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun $t17@@6 () T@$Mutation_188071)
(declare-fun $t17@0@@4 () T@$Mutation_188071)
(declare-fun $abort_code@0@@7 () Int)
(declare-fun $t15@@6 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$modifies@@0| () |T@[Int]Bool|)
(declare-fun $t13@@6 () Int)
(declare-fun $t12@@7 () Bool)
(declare-fun _$t1@@7 () |T@$1_Diem_MintCapability'$1_XUS_XUS'|)
(declare-fun $t7@@1 () T@$Mutation_188071)
(declare-fun $t31@@6 () T@$Mutation_14548)
(declare-fun $t34@@3 () T@$Mutation_158725)
; Valid
(declare-fun $t36@0@@1 () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun _$t0@@8 () Int)
(declare-fun $t37@@1 () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2@@1| () T@$Memory_166410)
(declare-fun $t8@@4 () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun $es@1@@7 () T@$EventStore)
(declare-fun $t9@@5 () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun $t10@@8 () T@$1_Event_EventHandle)
(declare-fun $t11@@5 () T@$1_Diem_MintEvent)
(declare-fun $abort_flag@4@@4 () Bool)
(declare-fun $t17@2@@1 () T@$Mutation_192630)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@1@@1| () T@$Memory_166410)
(declare-fun $es@0@@7 () T@$EventStore)
(declare-fun inline$$Not$0$dst@1@@7 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@0@@1| () T@$Memory_166410)
(declare-fun $t13@0@@1 () Int)
(declare-fun $abort_code@5@@4 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_Diem_MintEvent'$0$handle@1@@1| () T@$1_Event_EventHandle)
(declare-fun $t34@0@@7 () T@$Mutation_158725)
(declare-fun $t35@0@@4 () T@$1_Diem_MintEvent)
(declare-fun $t14@@8 () (Seq Int))
(declare-fun $t32@0@@4 () Bool)
(declare-fun $t31@0@@4 () T@$Mutation_14548)
(declare-fun $t17@1@@1 () T@$Mutation_192630)
(declare-fun $t31@1@@4 () T@$Mutation_14548)
(declare-fun inline$$AddU128$0$dst@2@@1 () Int)
(declare-fun inline$$AddU128$0$dst@0@@1 () Int)
(declare-fun $t28@0@@1 () Int)
(declare-fun inline$$CastU128$1$dst@1@@4 () Int)
(declare-fun inline$$AddU128$0$dst@1@@1 () Int)
(declare-fun $abort_code@4@@4 () Int)
(declare-fun $abort_flag@3@@4 () Bool)
(declare-fun inline$$CastU128$1$dst@0@@4 () Int)
(declare-fun $abort_flag@2@@4 () Bool)
(declare-fun $abort_code@3@@4 () Int)
(declare-fun inline$$Ge$0$dst@1@@7 () Bool)
(declare-fun $t27@@4 () Int)
(declare-fun inline$$Sub$0$dst@2@@7 () Int)
(declare-fun inline$$CastU128$0$dst@1@@4 () Int)
(declare-fun inline$$CastU128$0$dst@0@@4 () Int)
(declare-fun $abort_code@2@@7 () Int)
(declare-fun $abort_flag@1@@7 () Bool)
(declare-fun inline$$Sub$0$dst@0@@7 () Int)
(declare-fun $t22@0@@4 () Int)
(declare-fun inline$$Sub$0$dst@1@@7 () Int)
(declare-fun $abort_flag@0@@8 () Bool)
(declare-fun $abort_code@1@@8 () Int)
(declare-fun $t18@0@@5 () Bool)
(declare-fun $t20@@5 () Int)
(declare-fun |$temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX''@0@@1| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun $t17@@7 () T@$Mutation_192630)
(declare-fun $t17@0@@5 () T@$Mutation_192630)
(declare-fun $abort_code@0@@8 () Int)
(declare-fun $t15@@7 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$modifies@@0| () |T@[Int]Bool|)
(declare-fun $t13@@7 () Int)
(declare-fun $t12@@8 () Bool)
(declare-fun _$t1@@8 () |T@$1_Diem_MintCapability'$1_XDX_XDX'|)
(declare-fun $t7@@2 () T@$Mutation_192630)
(declare-fun $t31@@7 () T@$Mutation_14548)
(declare-fun $t34@@4 () T@$Mutation_158725)
; Valid
(declare-fun |$temp_0'$1_Diem_Preburn'#0''@1@@0| () |T@$1_Diem_Preburn'#0'|)
(declare-fun $t1@0 () T@$Mutation_183552)
(declare-fun $t44 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@2@@2| () T@$Memory_176283)
(declare-fun $t15@0@@0 () |T@$1_Diem_Preburn'#0'|)
(declare-fun _$t0@@9 () |T@$1_Diem_Diem'#0'|)
(declare-fun $t10@@9 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $es@1@@8 () T@$EventStore)
(declare-fun $t11@@6 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $t13@@8 () T@$1_Event_EventHandle)
(declare-fun $t14@@9 () T@$1_Diem_PreburnEvent)
(declare-fun $abort_flag@2@@5 () Bool)
(declare-fun $t30@2 () T@$Mutation_183598)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@1@@2| () T@$Memory_176283)
(declare-fun $es@0@@8 () T@$EventStore)
(declare-fun inline$$Not$0$dst@1@@8 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@0@@2| () T@$Memory_176283)
(declare-fun $t17@0@@6 () Int)
(declare-fun $abort_code@3@@5 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_Diem_PreburnEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t42@0@@2 () T@$Mutation_158725)
(declare-fun $t43@0@@2 () T@$1_Diem_PreburnEvent)
(declare-fun |inline$$1_Diem_value'#0'$0$$t1@1| () Int)
(declare-fun $t27@@5 () (Seq Int))
(declare-fun _$t2@@6 () Int)
(declare-fun $t40@0 () Bool)
(declare-fun $t39@0@@2 () T@$Mutation_14548)
(declare-fun $t30@1 () T@$Mutation_183598)
(declare-fun $t39@1 () T@$Mutation_14548)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t37@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_code@2@@8 () Int)
(declare-fun $abort_flag@1@@8 () Bool)
(declare-fun inline$$Ge$0$dst@1@@8 () Bool)
(declare-fun $t36@@2 () Int)
(declare-fun inline$$Sub$0$dst@2@@8 () Int)
(declare-fun inline$$Sub$0$dst@0@@8 () Int)
(declare-fun $t32@0@@5 () Int)
(declare-fun inline$$Sub$0$dst@1@@8 () Int)
(declare-fun $abort_flag@0@@9 () Bool)
(declare-fun $abort_code@1@@9 () Int)
(declare-fun |$temp_0'$1_Diem_CurrencyInfo'#0''@0@@2| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $t30 () T@$Mutation_183598)
(declare-fun $t30@0@@2 () T@$Mutation_183598)
(declare-fun $abort_code@0@@9 () Int)
(declare-fun $t28@@5 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$modifies@@1| () |T@[Int]Bool|)
(declare-fun $t17@@8 () Int)
(declare-fun $t26@@2 () Bool)
(declare-fun $t24@1@@3 () T@$Mutation_183645)
(declare-fun $t24@0@@3 () T@$Mutation_183645)
(declare-fun |$temp_0'$1_Diem_Diem'#0''@0@@0| () |T@$1_Diem_Diem'#0'|)
(declare-fun $t25@0@@2 () |T@$1_Diem_Diem'#0'|)
(declare-fun _$t1@@9 () T@$Mutation_183552)
(declare-fun $t21@0@@2 () Bool)
(declare-fun $t23@@0 () Int)
(declare-fun |inline$$1_Diem_value'#0'$1$$t1@1| () Int)
(declare-fun $t18@0@@6 () |T@$1_Diem_Diem'#0'|)
(declare-fun $t12@@9 () (Seq Int))
(declare-fun |$temp_0'$1_Diem_Preburn'#0''@0@@0| () |T@$1_Diem_Preburn'#0'|)
(declare-fun $t9@@6 () T@$Mutation_183598)
(declare-fun $t24@@3 () T@$Mutation_183645)
(declare-fun $t39 () T@$Mutation_14548)
(declare-fun $t42@@2 () T@$Mutation_158725)
; Valid
(declare-fun |$temp_0'$1_Diem_Preburn'$1_XUS_XUS''@1@@0| () |T@$1_Diem_Preburn'$1_XUS_XUS'|)
(declare-fun $t1@0@@0 () T@$Mutation_188025)
(declare-fun $t44@@0 () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2@@2| () T@$Memory_166171)
(declare-fun $t15@0@@1 () |T@$1_Diem_Preburn'$1_XUS_XUS'|)
(declare-fun _$t0@@10 () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun $t10@@10 () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun $es@1@@9 () T@$EventStore)
(declare-fun $t11@@7 () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun $t13@@9 () T@$1_Event_EventHandle)
(declare-fun $t14@@10 () T@$1_Diem_PreburnEvent)
(declare-fun $abort_flag@2@@6 () Bool)
(declare-fun $t30@2@@0 () T@$Mutation_188071)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1@@2| () T@$Memory_166171)
(declare-fun $es@0@@9 () T@$EventStore)
(declare-fun inline$$Not$0$dst@1@@9 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0@@2| () T@$Memory_166171)
(declare-fun $t17@0@@7 () Int)
(declare-fun $abort_code@3@@6 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_Diem_PreburnEvent'$0$handle@1@@0| () T@$1_Event_EventHandle)
(declare-fun $t42@0@@3 () T@$Mutation_158725)
(declare-fun $t43@0@@3 () T@$1_Diem_PreburnEvent)
(declare-fun |inline$$1_Diem_value'$1_XUS_XUS'$0$$t1@1| () Int)
(declare-fun $t27@@6 () (Seq Int))
(declare-fun _$t2@@7 () Int)
(declare-fun $t40@0@@0 () Bool)
(declare-fun $t39@0@@3 () T@$Mutation_14548)
(declare-fun $t30@1@@0 () T@$Mutation_188071)
(declare-fun $t39@1@@0 () T@$Mutation_14548)
(declare-fun inline$$AddU64$0$dst@2@@0 () Int)
(declare-fun inline$$AddU64$0$dst@0@@0 () Int)
(declare-fun $t37@0@@0 () Int)
(declare-fun inline$$AddU64$0$dst@1@@0 () Int)
(declare-fun $abort_code@2@@9 () Int)
(declare-fun $abort_flag@1@@9 () Bool)
(declare-fun inline$$Ge$0$dst@1@@9 () Bool)
(declare-fun $t36@@3 () Int)
(declare-fun inline$$Sub$0$dst@2@@9 () Int)
(declare-fun inline$$Sub$0$dst@0@@9 () Int)
(declare-fun $t32@0@@6 () Int)
(declare-fun inline$$Sub$0$dst@1@@9 () Int)
(declare-fun $abort_flag@0@@10 () Bool)
(declare-fun $abort_code@1@@10 () Int)
(declare-fun |$temp_0'$1_Diem_CurrencyInfo'$1_XUS_XUS''@0@@2| () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun $t30@@0 () T@$Mutation_188071)
(declare-fun $t30@0@@3 () T@$Mutation_188071)
(declare-fun $abort_code@0@@10 () Int)
(declare-fun $t28@@6 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$modifies@@1| () |T@[Int]Bool|)
(declare-fun $t17@@9 () Int)
(declare-fun $t26@@3 () Bool)
(declare-fun $t24@1@@4 () T@$Mutation_188118)
(declare-fun $t24@0@@4 () T@$Mutation_188118)
(declare-fun |$temp_0'$1_Diem_Diem'$1_XUS_XUS''@0@@0| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun $t25@0@@3 () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun _$t1@@10 () T@$Mutation_188025)
(declare-fun $t21@0@@3 () Bool)
(declare-fun $t23@@1 () Int)
(declare-fun |inline$$1_Diem_value'$1_XUS_XUS'$1$$t1@1| () Int)
(declare-fun $t18@0@@7 () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun $t12@@10 () (Seq Int))
(declare-fun |$temp_0'$1_Diem_Preburn'$1_XUS_XUS''@0@@0| () |T@$1_Diem_Preburn'$1_XUS_XUS'|)
(declare-fun $t9@@7 () T@$Mutation_188071)
(declare-fun $t24@@4 () T@$Mutation_188118)
(declare-fun $t39@@0 () T@$Mutation_14548)
(declare-fun $t42@@3 () T@$Mutation_158725)
(push 1)
(set-info :boogie-vc-id $1_Diem_preburn_with_resource$verify_instantiated_0)
(assert (not
 (=> (= (ControlFlow 0 0) 488637) (let ((L7_correct@@6  (=> (= |$temp_0'$1_Diem_Preburn'$1_XUS_XUS''@1@@0| (|v#$Mutation_188025| $t1@0@@0)) (=> (and (= |$temp_0'$1_Diem_Preburn'$1_XUS_XUS''@1@@0| |$temp_0'$1_Diem_Preburn'$1_XUS_XUS''@1@@0|) (= $t44@@0 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2@@2|) 173345816))) (and (=> (= (ControlFlow 0 353954) (- 0 490800)) (not (> (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| $t15@0@@1)) 0))) (=> (not (> (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| $t15@0@@1)) 0)) (and (=> (= (ControlFlow 0 353954) (- 0 490814)) (not (> (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (|$value#$1_Diem_Diem'$1_XUS_XUS'| _$t0@@10)) 18446744073709551615))) (=> (not (> (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (|$value#$1_Diem_Diem'$1_XUS_XUS'| _$t0@@10)) 18446744073709551615)) (and (=> (= (ControlFlow 0 353954) (- 0 490833)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 353954) (- 0 490843)) (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2@@2|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2@@2|) 173345816) (and (=> (= (ControlFlow 0 353954) (- 0 490851)) (= $t44@@0 (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t10@@10) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t10@@10) (|$value#$1_Diem_Diem'$1_XUS_XUS'| _$t0@@10)) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t10@@10) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t10@@10) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t10@@10) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t10@@10) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t10@@10) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t10@@10) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t10@@10) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t10@@10) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t10@@10) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t10@@10) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t10@@10)))) (=> (= $t44@@0 (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t10@@10) (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t10@@10) (|$value#$1_Diem_Diem'$1_XUS_XUS'| _$t0@@10)) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t10@@10) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t10@@10) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t10@@10) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t10@@10) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t10@@10) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t10@@10) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t10@@10) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t10@@10) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t10@@10) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t10@@10) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t10@@10))) (and (=> (= (ControlFlow 0 353954) (- 0 490871)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (<= (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2@@2|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (<= (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2@@2|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 353954) (- 0 490891)) (forall ((addr@@179 Int) ) (!  (=> (|$IsValid'address'| addr@@179) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_176713| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr@@179)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_176713| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr@@179))))
 :qid |XDXbpl.15566:15|
 :skolemid |408|
))) (=> (forall ((addr@@180 Int) ) (!  (=> (|$IsValid'address'| addr@@180) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_176713| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr@@180)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_176713| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr@@180))))
 :qid |XDXbpl.15566:15|
 :skolemid |408|
)) (and (=> (= (ControlFlow 0 353954) (- 0 490920)) (forall ((addr@@181 Int) ) (!  (=> (|$IsValid'address'| addr@@181) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_176713| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr@@181) (|Select__T@[Int]Bool_| (|domain#$Memory_176713| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr@@181)))
 :qid |XDXbpl.15571:15|
 :skolemid |409|
))) (=> (forall ((addr@@182 Int) ) (!  (=> (|$IsValid'address'| addr@@182) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_176713| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr@@182) (|Select__T@[Int]Bool_| (|domain#$Memory_176713| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr@@182)))
 :qid |XDXbpl.15571:15|
 :skolemid |409|
)) (and (=> (= (ControlFlow 0 353954) (- 0 490945)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (>= (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2@@2|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (>= (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2@@2|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 353954) (- 0 490965)) (forall ((addr@@183 Int) ) (!  (=> (|$IsValid'address'| addr@@183) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_177121| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr@@183)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_177121| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr@@183))))
 :qid |XDXbpl.15581:15|
 :skolemid |410|
))) (=> (forall ((addr@@184 Int) ) (!  (=> (|$IsValid'address'| addr@@184) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_177121| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr@@184)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_177121| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr@@184))))
 :qid |XDXbpl.15581:15|
 :skolemid |410|
)) (and (=> (= (ControlFlow 0 353954) (- 0 490994)) (forall ((addr@@185 Int) ) (!  (=> (|$IsValid'address'| addr@@185) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_177121| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr@@185) (|Select__T@[Int]Bool_| (|domain#$Memory_177121| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr@@185)))
 :qid |XDXbpl.15586:15|
 :skolemid |411|
))) (=> (forall ((addr@@186 Int) ) (!  (=> (|$IsValid'address'| addr@@186) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_177121| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr@@186) (|Select__T@[Int]Bool_| (|domain#$Memory_177121| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr@@186)))
 :qid |XDXbpl.15586:15|
 :skolemid |411|
)) (and (=> (= (ControlFlow 0 353954) (- 0 491019)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (>= (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2@@2|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (>= (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2@@2|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 353954) (- 0 491039)) (forall ((addr@@187 Int) ) (!  (=> (|$IsValid'address'| addr@@187) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_182597| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@187) (|Select__T@[Int]Bool_| (|domain#$Memory_182188| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@187))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_182597| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@187))))
 :qid |XDXbpl.15596:15|
 :skolemid |412|
))) (=> (forall ((addr@@188 Int) ) (!  (=> (|$IsValid'address'| addr@@188) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_182597| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@188) (|Select__T@[Int]Bool_| (|domain#$Memory_182188| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@188))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_182597| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@188))))
 :qid |XDXbpl.15596:15|
 :skolemid |412|
)) (and (=> (= (ControlFlow 0 353954) (- 0 491075)) (forall ((addr@@189 Int) ) (!  (=> (|$IsValid'address'| addr@@189) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_182597| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@189) (|Select__T@[Int]Bool_| (|domain#$Memory_182597| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@189)))
 :qid |XDXbpl.15601:15|
 :skolemid |413|
))) (=> (forall ((addr@@190 Int) ) (!  (=> (|$IsValid'address'| addr@@190) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_182597| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@190) (|Select__T@[Int]Bool_| (|domain#$Memory_182597| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@190)))
 :qid |XDXbpl.15601:15|
 :skolemid |413|
)) (and (=> (= (ControlFlow 0 353954) (- 0 491100)) (let ((actual@@29 ($EventStore (- (|counter#$EventStore| $es@1@@9) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@1@@9) (|streams#$EventStore| $es)))))
(let ((expected@@29 (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t11@@7)) (let ((stream@@51 (|Select__T@[$1_Event_EventHandle]Multiset_131870_| (|streams#$EventStore| $EmptyEventStore) $t13@@9)))
(let ((stream_new@@39 (let ((len@@39 (|l#Multiset_131870| stream@@51)))
(let ((cnt@@39 (|Select__T@[$EventRep]Int_| (|v#Multiset_131870| stream@@51) (|$ToEventRep'$1_Diem_PreburnEvent'| $t14@@10))))
(Multiset_131870 (|Store__T@[$EventRep]Int_| (|v#Multiset_131870| stream@@51) (|$ToEventRep'$1_Diem_PreburnEvent'| $t14@@10) (+ cnt@@39 1)) (+ len@@39 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_131870_| (|streams#$EventStore| $EmptyEventStore) $t13@@9 stream_new@@39)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected@@29) (|counter#$EventStore| actual@@29)) (forall ((handle@@42 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_131870| (|Select__T@[$1_Event_EventHandle]Multiset_131870_| (|streams#$EventStore| expected@@29) handle@@42)) (|l#Multiset_131870| (|Select__T@[$1_Event_EventHandle]Multiset_131870_| (|streams#$EventStore| actual@@29) handle@@42))) (forall ((v@@82 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_131870| (|Select__T@[$1_Event_EventHandle]Multiset_131870_| (|streams#$EventStore| expected@@29) handle@@42)) v@@82) (|Select__T@[$EventRep]Int_| (|v#Multiset_131870| (|Select__T@[$1_Event_EventHandle]Multiset_131870_| (|streams#$EventStore| actual@@29) handle@@42)) v@@82))
 :qid |XDXbpl.139:13|
 :skolemid |3|
)))
 :qid |XDXbpl.2928:13|
 :skolemid |80|
)))))) (=> (let ((actual@@30 ($EventStore (- (|counter#$EventStore| $es@1@@9) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@1@@9) (|streams#$EventStore| $es)))))
(let ((expected@@30 (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t11@@7)) (let ((stream@@52 (|Select__T@[$1_Event_EventHandle]Multiset_131870_| (|streams#$EventStore| $EmptyEventStore) $t13@@9)))
(let ((stream_new@@40 (let ((len@@40 (|l#Multiset_131870| stream@@52)))
(let ((cnt@@40 (|Select__T@[$EventRep]Int_| (|v#Multiset_131870| stream@@52) (|$ToEventRep'$1_Diem_PreburnEvent'| $t14@@10))))
(Multiset_131870 (|Store__T@[$EventRep]Int_| (|v#Multiset_131870| stream@@52) (|$ToEventRep'$1_Diem_PreburnEvent'| $t14@@10) (+ cnt@@40 1)) (+ len@@40 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_131870_| (|streams#$EventStore| $EmptyEventStore) $t13@@9 stream_new@@40)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected@@30) (|counter#$EventStore| actual@@30)) (forall ((handle@@43 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_131870| (|Select__T@[$1_Event_EventHandle]Multiset_131870_| (|streams#$EventStore| expected@@30) handle@@43)) (|l#Multiset_131870| (|Select__T@[$1_Event_EventHandle]Multiset_131870_| (|streams#$EventStore| actual@@30) handle@@43))) (forall ((v@@83 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_131870| (|Select__T@[$1_Event_EventHandle]Multiset_131870_| (|streams#$EventStore| expected@@30) handle@@43)) v@@83) (|Select__T@[$EventRep]Int_| (|v#Multiset_131870| (|Select__T@[$1_Event_EventHandle]Multiset_131870_| (|streams#$EventStore| actual@@30) handle@@43)) v@@83))
 :qid |XDXbpl.139:13|
 :skolemid |3|
)))
 :qid |XDXbpl.2928:13|
 :skolemid |80|
))))) (=> (= (ControlFlow 0 353954) (- 0 491131)) (let ((actual@@31 ($EventStore (- (|counter#$EventStore| $es@1@@9) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@1@@9) (|streams#$EventStore| $es)))))
(let ((expected@@31 (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t11@@7)) (let ((stream@@53 (|Select__T@[$1_Event_EventHandle]Multiset_131870_| (|streams#$EventStore| $EmptyEventStore) $t13@@9)))
(let ((stream_new@@41 (let ((len@@41 (|l#Multiset_131870| stream@@53)))
(let ((cnt@@41 (|Select__T@[$EventRep]Int_| (|v#Multiset_131870| stream@@53) (|$ToEventRep'$1_Diem_PreburnEvent'| $t14@@10))))
(Multiset_131870 (|Store__T@[$EventRep]Int_| (|v#Multiset_131870| stream@@53) (|$ToEventRep'$1_Diem_PreburnEvent'| $t14@@10) (+ cnt@@41 1)) (+ len@@41 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_131870_| (|streams#$EventStore| $EmptyEventStore) $t13@@9 stream_new@@41)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| actual@@31) (|counter#$EventStore| expected@@31)) (forall ((handle@@44 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_131870| (|Select__T@[$1_Event_EventHandle]Multiset_131870_| (|streams#$EventStore| actual@@31) handle@@44)) (|l#Multiset_131870| (|Select__T@[$1_Event_EventHandle]Multiset_131870_| (|streams#$EventStore| expected@@31) handle@@44))) (forall ((v@@84 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_131870| (|Select__T@[$1_Event_EventHandle]Multiset_131870_| (|streams#$EventStore| actual@@31) handle@@44)) v@@84) (|Select__T@[$EventRep]Int_| (|v#Multiset_131870| (|Select__T@[$1_Event_EventHandle]Multiset_131870_| (|streams#$EventStore| expected@@31) handle@@44)) v@@84))
 :qid |XDXbpl.139:13|
 :skolemid |3|
)))
 :qid |XDXbpl.2928:13|
 :skolemid |80|
))))))))))))))))))))))))))))))))))))))))
(let ((anon45_Else_correct@@3  (=> (not $abort_flag@2@@6) (and (=> (= (ControlFlow 0 354309) (- 0 490512)) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_188071| $t30@2@@0))) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_188071| $t30@2@@0)) 10000000000))) (=> (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_188071| $t30@2@@0))) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_188071| $t30@2@@0)) 10000000000)) (=> (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1@@2| ($Memory_166171 (|Store__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) (|a#$Global| (|l#$Mutation_188071| $t30@2@@0)) true) (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) (|a#$Global| (|l#$Mutation_188071| $t30@2@@0)) (|v#$Mutation_188071| $t30@2@@0)))) (and (=> (= (ControlFlow 0 354309) (- 0 490560)) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1@@2|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1@@2|) 173345816)))) (forall ((mint_cap_owner1@@55 Int) (mint_cap_owner2@@55 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner1@@55) (=> (|$IsValid'address'| mint_cap_owner2@@55) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_176713| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner1@@55) (|Select__T@[Int]Bool_| (|domain#$Memory_176713| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner2@@55)) (= mint_cap_owner1@@55 mint_cap_owner2@@55))))
 :qid |XDXbpl.15386:99|
 :skolemid |400|
)))) (=> (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1@@2|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1@@2|) 173345816)))) (forall ((mint_cap_owner1@@56 Int) (mint_cap_owner2@@56 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner1@@56) (=> (|$IsValid'address'| mint_cap_owner2@@56) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_176713| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner1@@56) (|Select__T@[Int]Bool_| (|domain#$Memory_176713| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner2@@56)) (= mint_cap_owner1@@56 mint_cap_owner2@@56))))
 :qid |XDXbpl.15386:99|
 :skolemid |400|
))) (and (=> (= (ControlFlow 0 354309) (- 0 490605)) (forall ((addr3@@55 Int) ) (!  (=> (|$IsValid'address'| addr3@@55) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_176713| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr3@@55) (and (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1@@2|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1@@2|) 173345816))))))
 :qid |XDXbpl.15392:15|
 :skolemid |401|
))) (=> (forall ((addr3@@56 Int) ) (!  (=> (|$IsValid'address'| addr3@@56) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_176713| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr3@@56) (and (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1@@2|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1@@2|) 173345816))))))
 :qid |XDXbpl.15392:15|
 :skolemid |401|
)) (and (=> (= (ControlFlow 0 354309) (- 0 490628)) (forall ((addr@@191 Int) ) (!  (=> (|$IsValid'address'| addr@@191) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_182188| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@191) (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1@@2|) 173345816)))
 :qid |XDXbpl.15398:15|
 :skolemid |402|
))) (=> (forall ((addr@@192 Int) ) (!  (=> (|$IsValid'address'| addr@@192) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_182188| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@192) (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1@@2|) 173345816)))
 :qid |XDXbpl.15398:15|
 :skolemid |402|
)) (and (=> (= (ControlFlow 0 354309) (- 0 490651)) (forall ((dr_addr@@45 Int) ) (!  (=> (|$IsValid'address'| dr_addr@@45) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) dr_addr@@45) (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1@@2|) dr_addr@@45)))
 :qid |XDXbpl.15404:15|
 :skolemid |403|
))) (=> (forall ((dr_addr@@46 Int) ) (!  (=> (|$IsValid'address'| dr_addr@@46) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) dr_addr@@46) (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1@@2|) dr_addr@@46)))
 :qid |XDXbpl.15404:15|
 :skolemid |403|
)) (and (=> (= (ControlFlow 0 354309) (- 0 490675)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (=> (not (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1@@2|) 173345816)) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (exists ((a@@137 Int) ) (!  (and (|$IsValid'address'| a@@137) (and ($1_Signer_is_txn_signer_addr a@@137) (and (|Select__T@[Int]Bool_| (|domain#$Memory_165577| $1_Roles_RoleId_$memory) a@@137) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_165577| $1_Roles_RoleId_$memory) a@@137)) 1))))
 :qid |XDXbpl.4735:13|
 :skolemid |117|
))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (=> (not (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1@@2|) 173345816)) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (exists ((a@@138 Int) ) (!  (and (|$IsValid'address'| a@@138) (and ($1_Signer_is_txn_signer_addr a@@138) (and (|Select__T@[Int]Bool_| (|domain#$Memory_165577| $1_Roles_RoleId_$memory) a@@138) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_165577| $1_Roles_RoleId_$memory) a@@138)) 1))))
 :qid |XDXbpl.4735:13|
 :skolemid |117|
)))) (and (=> (= (ControlFlow 0 354309) (- 0 490699)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (=> (not (= (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1@@2|) 173345816)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (exists ((a@@139 Int) ) (!  (and (|$IsValid'address'| a@@139) (and ($1_Signer_is_txn_signer_addr a@@139) (and (|Select__T@[Int]Bool_| (|domain#$Memory_165577| $1_Roles_RoleId_$memory) a@@139) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_165577| $1_Roles_RoleId_$memory) a@@139)) 1))))
 :qid |XDXbpl.4735:13|
 :skolemid |117|
))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (=> (not (= (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1@@2|) 173345816)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (exists ((a@@140 Int) ) (!  (and (|$IsValid'address'| a@@140) (and ($1_Signer_is_txn_signer_addr a@@140) (and (|Select__T@[Int]Bool_| (|domain#$Memory_165577| $1_Roles_RoleId_$memory) a@@140) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_165577| $1_Roles_RoleId_$memory) a@@140)) 1))))
 :qid |XDXbpl.4735:13|
 :skolemid |117|
)))) (and (=> (= (ControlFlow 0 354309) (- 0 490723)) (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1@@2|) 173345816)) (exists ((a@@141 Int) ) (!  (and (|$IsValid'address'| a@@141) (and ($1_Signer_is_txn_signer_addr a@@141) (and (|Select__T@[Int]Bool_| (|domain#$Memory_165577| $1_Roles_RoleId_$memory) a@@141) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_165577| $1_Roles_RoleId_$memory) a@@141)) 0))))
 :qid |XDXbpl.4740:13|
 :skolemid |118|
)))) (=> (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1@@2|) 173345816)) (exists ((a@@142 Int) ) (!  (and (|$IsValid'address'| a@@142) (and ($1_Signer_is_txn_signer_addr a@@142) (and (|Select__T@[Int]Bool_| (|domain#$Memory_165577| $1_Roles_RoleId_$memory) a@@142) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_165577| $1_Roles_RoleId_$memory) a@@142)) 0))))
 :qid |XDXbpl.4740:13|
 :skolemid |118|
))) (and (=> (= (ControlFlow 0 354309) (- 0 490742)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_164899| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1@@2|) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_164899| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1@@2|) 173345816)) (=> (= $es@1@@9 $es@0@@9) (=> (and (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2@@2| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1@@2|) (= (ControlFlow 0 354309) 353954)) L7_correct@@6))))))))))))))))))))))))
(let ((anon44_Else_correct@@3  (=> (not inline$$Not$0$dst@1@@9) (and (=> (= (ControlFlow 0 353554) (- 0 490084)) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_188071| $t30@2@@0))) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_188071| $t30@2@@0)) 10000000000))) (=> (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_188071| $t30@2@@0))) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_188071| $t30@2@@0)) 10000000000)) (=> (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0@@2| ($Memory_166171 (|Store__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) (|a#$Global| (|l#$Mutation_188071| $t30@2@@0)) true) (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) (|a#$Global| (|l#$Mutation_188071| $t30@2@@0)) (|v#$Mutation_188071| $t30@2@@0)))) (and (=> (= (ControlFlow 0 353554) (- 0 490132)) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0@@2|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0@@2|) 173345816)))) (forall ((mint_cap_owner1@@57 Int) (mint_cap_owner2@@57 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner1@@57) (=> (|$IsValid'address'| mint_cap_owner2@@57) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_176713| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner1@@57) (|Select__T@[Int]Bool_| (|domain#$Memory_176713| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner2@@57)) (= mint_cap_owner1@@57 mint_cap_owner2@@57))))
 :qid |XDXbpl.15458:99|
 :skolemid |404|
)))) (=> (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0@@2|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0@@2|) 173345816)))) (forall ((mint_cap_owner1@@58 Int) (mint_cap_owner2@@58 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner1@@58) (=> (|$IsValid'address'| mint_cap_owner2@@58) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_176713| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner1@@58) (|Select__T@[Int]Bool_| (|domain#$Memory_176713| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner2@@58)) (= mint_cap_owner1@@58 mint_cap_owner2@@58))))
 :qid |XDXbpl.15458:99|
 :skolemid |404|
))) (and (=> (= (ControlFlow 0 353554) (- 0 490177)) (forall ((addr3@@57 Int) ) (!  (=> (|$IsValid'address'| addr3@@57) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_176713| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr3@@57) (and (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0@@2|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0@@2|) 173345816))))))
 :qid |XDXbpl.15464:15|
 :skolemid |405|
))) (=> (forall ((addr3@@58 Int) ) (!  (=> (|$IsValid'address'| addr3@@58) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_176713| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr3@@58) (and (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0@@2|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0@@2|) 173345816))))))
 :qid |XDXbpl.15464:15|
 :skolemid |405|
)) (and (=> (= (ControlFlow 0 353554) (- 0 490200)) (forall ((addr@@193 Int) ) (!  (=> (|$IsValid'address'| addr@@193) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_182188| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@193) (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0@@2|) 173345816)))
 :qid |XDXbpl.15470:15|
 :skolemid |406|
))) (=> (forall ((addr@@194 Int) ) (!  (=> (|$IsValid'address'| addr@@194) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_182188| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@194) (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0@@2|) 173345816)))
 :qid |XDXbpl.15470:15|
 :skolemid |406|
)) (and (=> (= (ControlFlow 0 353554) (- 0 490223)) (forall ((dr_addr@@47 Int) ) (!  (=> (|$IsValid'address'| dr_addr@@47) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) dr_addr@@47) (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0@@2|) dr_addr@@47)))
 :qid |XDXbpl.15476:15|
 :skolemid |407|
))) (=> (forall ((dr_addr@@48 Int) ) (!  (=> (|$IsValid'address'| dr_addr@@48) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) dr_addr@@48) (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0@@2|) dr_addr@@48)))
 :qid |XDXbpl.15476:15|
 :skolemid |407|
)) (and (=> (= (ControlFlow 0 353554) (- 0 490247)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (=> (not (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0@@2|) 173345816)) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (exists ((a@@143 Int) ) (!  (and (|$IsValid'address'| a@@143) (and ($1_Signer_is_txn_signer_addr a@@143) (and (|Select__T@[Int]Bool_| (|domain#$Memory_165577| $1_Roles_RoleId_$memory) a@@143) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_165577| $1_Roles_RoleId_$memory) a@@143)) 1))))
 :qid |XDXbpl.4735:13|
 :skolemid |117|
))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (=> (not (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0@@2|) 173345816)) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (exists ((a@@144 Int) ) (!  (and (|$IsValid'address'| a@@144) (and ($1_Signer_is_txn_signer_addr a@@144) (and (|Select__T@[Int]Bool_| (|domain#$Memory_165577| $1_Roles_RoleId_$memory) a@@144) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_165577| $1_Roles_RoleId_$memory) a@@144)) 1))))
 :qid |XDXbpl.4735:13|
 :skolemid |117|
)))) (and (=> (= (ControlFlow 0 353554) (- 0 490271)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (=> (not (= (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0@@2|) 173345816)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (exists ((a@@145 Int) ) (!  (and (|$IsValid'address'| a@@145) (and ($1_Signer_is_txn_signer_addr a@@145) (and (|Select__T@[Int]Bool_| (|domain#$Memory_165577| $1_Roles_RoleId_$memory) a@@145) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_165577| $1_Roles_RoleId_$memory) a@@145)) 1))))
 :qid |XDXbpl.4735:13|
 :skolemid |117|
))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (=> (not (= (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0@@2|) 173345816)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (exists ((a@@146 Int) ) (!  (and (|$IsValid'address'| a@@146) (and ($1_Signer_is_txn_signer_addr a@@146) (and (|Select__T@[Int]Bool_| (|domain#$Memory_165577| $1_Roles_RoleId_$memory) a@@146) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_165577| $1_Roles_RoleId_$memory) a@@146)) 1))))
 :qid |XDXbpl.4735:13|
 :skolemid |117|
)))) (and (=> (= (ControlFlow 0 353554) (- 0 490295)) (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0@@2|) 173345816)) (exists ((a@@147 Int) ) (!  (and (|$IsValid'address'| a@@147) (and ($1_Signer_is_txn_signer_addr a@@147) (and (|Select__T@[Int]Bool_| (|domain#$Memory_165577| $1_Roles_RoleId_$memory) a@@147) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_165577| $1_Roles_RoleId_$memory) a@@147)) 0))))
 :qid |XDXbpl.4740:13|
 :skolemid |118|
)))) (=> (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0@@2|) 173345816)) (exists ((a@@148 Int) ) (!  (and (|$IsValid'address'| a@@148) (and ($1_Signer_is_txn_signer_addr a@@148) (and (|Select__T@[Int]Bool_| (|domain#$Memory_165577| $1_Roles_RoleId_$memory) a@@148) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_165577| $1_Roles_RoleId_$memory) a@@148)) 0))))
 :qid |XDXbpl.4740:13|
 :skolemid |118|
))) (and (=> (= (ControlFlow 0 353554) (- 0 490314)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_164899| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0@@2|) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_164899| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0@@2|) 173345816)) (=> (= $es@1@@9 $es) (=> (and (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2@@2| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0@@2|) (= (ControlFlow 0 353554) 353954)) L7_correct@@6))))))))))))))))))))))))
(let ((L10_correct@@0  (and (=> (= (ControlFlow 0 352590) (- 0 490416)) (or (or (> (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| $t15@0@@1)) 0) (> (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (|$value#$1_Diem_Diem'$1_XUS_XUS'| _$t0@@10)) 18446744073709551615)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (=> (or (or (> (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| $t15@0@@1)) 0) (> (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (|$value#$1_Diem_Diem'$1_XUS_XUS'| _$t0@@10)) 18446744073709551615)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (=> (= (ControlFlow 0 352590) (- 0 490448)) (or (or (and (> (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| $t15@0@@1)) 0) (= 1 $t17@0@@7)) (and (> (+ (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (|$value#$1_Diem_Diem'$1_XUS_XUS'| _$t0@@10)) 18446744073709551615) (= 8 $t17@0@@7))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t17@0@@7))))))))
(let ((anon45_Then_correct@@3  (=> (and (and $abort_flag@2@@6 (= $abort_code@3@@6 $abort_code@3@@6)) (and (= $t17@0@@7 $abort_code@3@@6) (= (ControlFlow 0 354323) 352590))) L10_correct@@0)))
(let ((|inline$$1_Event_emit_event'$1_Diem_PreburnEvent'$0$anon0_correct@@0|  (=> (and (= |inline$$1_Event_emit_event'$1_Diem_PreburnEvent'$0$handle@1@@0| (|v#$Mutation_158725| $t42@0@@3)) (= $es@0@@9 (let ((stream@@54 (|Select__T@[$1_Event_EventHandle]Multiset_131870_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_Diem_PreburnEvent'$0$handle@1@@0|)))
(let ((stream_new@@42 (let ((len@@42 (|l#Multiset_131870| stream@@54)))
(let ((cnt@@42 (|Select__T@[$EventRep]Int_| (|v#Multiset_131870| stream@@54) (|$ToEventRep'$1_Diem_PreburnEvent'| $t43@0@@3))))
(Multiset_131870 (|Store__T@[$EventRep]Int_| (|v#Multiset_131870| stream@@54) (|$ToEventRep'$1_Diem_PreburnEvent'| $t43@0@@3) (+ cnt@@42 1)) (+ len@@42 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_131870_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_Diem_PreburnEvent'$0$handle@1@@0| stream_new@@42)))))) (and (=> (= (ControlFlow 0 354051) 354323) anon45_Then_correct@@3) (=> (= (ControlFlow 0 354051) 354309) anon45_Else_correct@@3)))))
(let ((anon44_Then_correct@@3  (=> (and (and inline$$Not$0$dst@1@@9 (= $t42@0@@3 ($Mutation_158725 (|l#$Mutation_188071| $t30@2@@0) (seq.++ (|p#$Mutation_188071| $t30@2@@0) (seq.unit 10)) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_188071| $t30@2@@0))))) (and (= $t43@0@@3 ($1_Diem_PreburnEvent |inline$$1_Diem_value'$1_XUS_XUS'$0$$t1@1| $t27@@6 _$t2@@7)) (= (ControlFlow 0 354057) 354051))) |inline$$1_Event_emit_event'$1_Diem_PreburnEvent'$0$anon0_correct@@0|)))
(let ((inline$$Not$0$anon0_correct@@9  (=> (= inline$$Not$0$dst@1@@9  (not $t40@0@@0)) (and (=> (= (ControlFlow 0 353294) 354057) anon44_Then_correct@@3) (=> (= (ControlFlow 0 353294) 353554) anon44_Else_correct@@3)))))
(let ((anon43_Else_correct@@3  (=> (and (not $abort_flag@2@@6) (= $t39@0@@3 ($Mutation_14548 (|l#$Mutation_188071| $t30@1@@0) (seq.++ (|p#$Mutation_188071| $t30@1@@0) (seq.unit 1)) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_188071| $t30@1@@0))))) (=> (and (and (= $t39@1@@0 ($Mutation_14548 (|l#$Mutation_14548| $t39@0@@3) (|p#$Mutation_14548| $t39@0@@3) inline$$AddU64$0$dst@2@@0)) (= $t30@2@@0 ($Mutation_188071 (|l#$Mutation_188071| $t30@1@@0) (|p#$Mutation_188071| $t30@1@@0) (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_188071| $t30@1@@0)) (|v#$Mutation_14548| $t39@1@@0) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_188071| $t30@1@@0)) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_188071| $t30@1@@0)) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_188071| $t30@1@@0)) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_188071| $t30@1@@0)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_188071| $t30@1@@0)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_188071| $t30@1@@0)) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_188071| $t30@1@@0)) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_188071| $t30@1@@0)) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_188071| $t30@1@@0)) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_188071| $t30@1@@0)) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_188071| $t30@1@@0)))))) (and (= $t40@0@@0 (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_188071| $t30@2@@0))) (= (ControlFlow 0 353300) 353294))) inline$$Not$0$anon0_correct@@9))))
(let ((anon43_Then_correct@@3  (=> (and (and $abort_flag@2@@6 (= $abort_code@3@@6 $abort_code@3@@6)) (and (= $t17@0@@7 $abort_code@3@@6) (= (ControlFlow 0 354337) 352590))) L10_correct@@0)))
(let ((inline$$AddU64$0$anon3_Then$1_correct@@0  (=> (= $abort_code@3@@6 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@2@@6 true) (= inline$$AddU64$0$dst@2@@0 inline$$AddU64$0$dst@0@@0)) (and (=> (= (ControlFlow 0 353210) 354337) anon43_Then_correct@@3) (=> (= (ControlFlow 0 353210) 353300) anon43_Else_correct@@3))))))
(let ((inline$$AddU64$0$anon3_Then_correct@@0  (=> (and (> (+ $t37@0@@0 |inline$$1_Diem_value'$1_XUS_XUS'$0$$t1@1|) $MAX_U64) (= (ControlFlow 0 353208) 353210)) inline$$AddU64$0$anon3_Then$1_correct@@0)))
(let ((inline$$AddU64$0$anon3_Else_correct@@0  (=> (>= $MAX_U64 (+ $t37@0@@0 |inline$$1_Diem_value'$1_XUS_XUS'$0$$t1@1|)) (=> (and (and (= inline$$AddU64$0$dst@1@@0 (+ $t37@0@@0 |inline$$1_Diem_value'$1_XUS_XUS'$0$$t1@1|)) (= $abort_code@3@@6 $abort_code@2@@9)) (and (= $abort_flag@2@@6 $abort_flag@1@@9) (= inline$$AddU64$0$dst@2@@0 inline$$AddU64$0$dst@1@@0))) (and (=> (= (ControlFlow 0 353156) 354337) anon43_Then_correct@@3) (=> (= (ControlFlow 0 353156) 353300) anon43_Else_correct@@3))))))
(let ((anon42_Then_correct@@6  (=> (and inline$$Ge$0$dst@1@@9 (= $t37@0@@0 (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_188071| $t30@1@@0)))) (and (=> (= (ControlFlow 0 353216) 353208) inline$$AddU64$0$anon3_Then_correct@@0) (=> (= (ControlFlow 0 353216) 353156) inline$$AddU64$0$anon3_Else_correct@@0)))))
(let ((anon42_Else_correct@@6  (=> (not inline$$Ge$0$dst@1@@9) (and (=> (= (ControlFlow 0 353053) (- 0 489844)) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_188071| $t30@1@@0))) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_188071| $t30@1@@0)) 10000000000))) (=> (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_188071| $t30@1@@0))) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_188071| $t30@1@@0)) 10000000000)) (=> (= $t36@@3 $t36@@3) (=> (and (= $t17@0@@7 $t36@@3) (= (ControlFlow 0 353053) 352590)) L10_correct@@0)))))))
(let ((anon41_Else$1_correct@@0  (=> (|$IsValid'u64'| 7) (=> (and (and (|$IsValid'u64'| $t36@@3) (= $t36@@3 8)) (and (= $t36@@3 $t36@@3) (= inline$$Ge$0$dst@1@@9 inline$$Ge$0$dst@1@@9))) (and (=> (= (ControlFlow 0 353011) 353216) anon42_Then_correct@@6) (=> (= (ControlFlow 0 353011) 353053) anon42_Else_correct@@6))))))
(let ((inline$$Ge$0$anon0_correct@@9  (=> (and (= inline$$Ge$0$dst@1@@9 (>= inline$$Sub$0$dst@2@@9 |inline$$1_Diem_value'$1_XUS_XUS'$0$$t1@1|)) (= (ControlFlow 0 352975) 353011)) anon41_Else$1_correct@@0)))
(let ((anon41_Else_correct@@6  (=> (and (not $abort_flag@1@@9) (= (ControlFlow 0 352981) 352975)) inline$$Ge$0$anon0_correct@@9)))
(let ((anon41_Then_correct@@6  (=> (and (and $abort_flag@1@@9 (= $abort_code@2@@9 $abort_code@2@@9)) (and (= $t17@0@@7 $abort_code@2@@9) (= (ControlFlow 0 354351) 352590))) L10_correct@@0)))
(let ((inline$$Sub$0$anon3_Then$1_correct@@9  (=> (= $abort_flag@1@@9 true) (=> (and (= $abort_code@2@@9 $EXEC_FAILURE_CODE) (= inline$$Sub$0$dst@2@@9 inline$$Sub$0$dst@0@@9)) (and (=> (= (ControlFlow 0 352921) 354351) anon41_Then_correct@@6) (=> (= (ControlFlow 0 352921) 352981) anon41_Else_correct@@6))))))
(let ((inline$$Sub$0$anon3_Then_correct@@9  (=> (and (< 18446744073709551615 $t32@0@@6) (= (ControlFlow 0 352919) 352921)) inline$$Sub$0$anon3_Then$1_correct@@9)))
(let ((inline$$Sub$0$anon3_Else_correct@@9  (=> (<= $t32@0@@6 18446744073709551615) (=> (and (and (= inline$$Sub$0$dst@1@@9 (- 18446744073709551615 $t32@0@@6)) (= $abort_flag@1@@9 $abort_flag@0@@10)) (and (= $abort_code@2@@9 $abort_code@1@@10) (= inline$$Sub$0$dst@2@@9 inline$$Sub$0$dst@1@@9))) (and (=> (= (ControlFlow 0 352871) 354351) anon41_Then_correct@@6) (=> (= (ControlFlow 0 352871) 352981) anon41_Else_correct@@6))))))
(let ((anon40_Else_correct@@6  (=> (not $abort_flag@0@@10) (=> (and (and (= |$temp_0'$1_Diem_CurrencyInfo'$1_XUS_XUS''@0@@2| (|v#$Mutation_188071| $t30@1@@0)) (= |$temp_0'$1_Diem_CurrencyInfo'$1_XUS_XUS''@0@@2| |$temp_0'$1_Diem_CurrencyInfo'$1_XUS_XUS''@0@@2|)) (and (|$IsValid'u64'| 18446744073709551615) (= $t32@0@@6 (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_188071| $t30@1@@0))))) (and (=> (= (ControlFlow 0 352927) 352919) inline$$Sub$0$anon3_Then_correct@@9) (=> (= (ControlFlow 0 352927) 352871) inline$$Sub$0$anon3_Else_correct@@9))))))
(let ((anon40_Then_correct@@6  (=> (and (and $abort_flag@0@@10 (= $abort_code@1@@10 $abort_code@1@@10)) (and (= $t17@0@@7 $abort_code@1@@10) (= (ControlFlow 0 354365) 352590))) L10_correct@@0)))
(let ((anon39_Then$1_correct@@0  (=> (= $t30@1@@0 $t30@@0) (=> (and (= $abort_flag@0@@10 true) (= $abort_code@1@@10 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 354417) 354365) anon40_Then_correct@@6) (=> (= (ControlFlow 0 354417) 352927) anon40_Else_correct@@6))))))
(let ((anon39_Then_correct@@6  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= (ControlFlow 0 354415) 354417)) anon39_Then$1_correct@@0)))
(let ((anon39_Else_correct@@6  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (=> (and (and (= $t30@0@@3 ($Mutation_188071 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= $t30@1@@0 $t30@0@@3)) (and (= $abort_flag@0@@10 false) (= $abort_code@1@@10 $abort_code@0@@10))) (and (=> (= (ControlFlow 0 352758) 354365) anon40_Then_correct@@6) (=> (= (ControlFlow 0 352758) 352927) anon40_Else_correct@@6))))))
(let ((anon38_Else_correct@@6  (=> (not $t28@@6) (=> (and (and (|$IsValid'vec'u8''| $t27@@6) (= $t27@@6 (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (= $t27@@6 $t27@@6) (|$IsValid'address'| 173345816))) (and (=> (= (ControlFlow 0 352736) (- 0 489576)) (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$modifies@@1| 173345816)) (=> (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$modifies@@1| 173345816) (and (=> (= (ControlFlow 0 352736) 354415) anon39_Then_correct@@6) (=> (= (ControlFlow 0 352736) 352758) anon39_Else_correct@@6))))))))
(let ((anon38_Then_correct@@6  (=> $t28@@6 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t17@@9)) (= $t17@@9 $t17@@9)) (and (= $t17@0@@7 $t17@@9) (= (ControlFlow 0 354443) 352590))) L10_correct@@0))))
(let ((anon37_Else_correct@@6  (=> (not $t26@@3) (=> (and (= $t24@1@@4 ($Mutation_188118 (|l#$Mutation_188118| $t24@0@@4) (|p#$Mutation_188118| $t24@0@@4) |$temp_0'$1_Diem_Diem'$1_XUS_XUS''@0@@0|)) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|v#$Mutation_188118| $t24@1@@4))) (=> (and (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|v#$Mutation_188118| $t24@1@@4)) (= (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|v#$Mutation_188118| $t24@1@@4)) (+ (|$value#$1_Diem_Diem'$1_XUS_XUS'| $t25@0@@3) (|$value#$1_Diem_Diem'$1_XUS_XUS'| _$t0@@10)))) (and (= $t1@0@@0 ($Mutation_188025 (|l#$Mutation_188025| _$t1@@10) (|p#$Mutation_188025| _$t1@@10) (|$1_Diem_Preburn'$1_XUS_XUS'| (|v#$Mutation_188118| $t24@1@@4)))) (= $t28@@6  (not (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 352698) 354443) anon38_Then_correct@@6) (=> (= (ControlFlow 0 352698) 352736) anon38_Else_correct@@6)))))))
(let ((anon37_Then_correct@@6  (=> $t26@@3 (=> (and (and (and (> (+ (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|v#$Mutation_188118| $t24@0@@4)) (|$value#$1_Diem_Diem'$1_XUS_XUS'| _$t0@@10)) 18446744073709551615) (= 8 $t17@@9)) (= $t17@@9 $t17@@9)) (and (= $t17@0@@7 $t17@@9) (= (ControlFlow 0 354479) 352590))) L10_correct@@0))))
(let ((anon36_Then_correct@@3  (=> (and (and $t21@0@@3 (= $t24@0@@4 ($Mutation_188118 (|l#$Mutation_188025| _$t1@@10) (seq.++ (|p#$Mutation_188025| _$t1@@10) (seq.unit 0)) (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| (|v#$Mutation_188025| _$t1@@10))))) (and (= $t25@0@@3 (|v#$Mutation_188118| $t24@0@@4)) (= $t26@@3 (> (+ (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|v#$Mutation_188118| $t24@0@@4)) (|$value#$1_Diem_Diem'$1_XUS_XUS'| _$t0@@10)) 18446744073709551615)))) (and (=> (= (ControlFlow 0 352630) 354479) anon37_Then_correct@@6) (=> (= (ControlFlow 0 352630) 352698) anon37_Else_correct@@6)))))
(let ((anon36_Else_correct@@3  (=> (and (and (not $t21@0@@3) (= $t23@@1 $t23@@1)) (and (= $t17@0@@7 $t23@@1) (= (ControlFlow 0 352486) 352590))) L10_correct@@0)))
(let ((anon35_Else_correct@@3  (=> (and (and (and (not false) (|$IsValid'u64'| 0)) (and (= $t21@0@@3 (= |inline$$1_Diem_value'$1_XUS_XUS'$1$$t1@1| 0)) (|$IsValid'u64'| 3))) (and (and (|$IsValid'u64'| $t23@@1) (= $t23@@1 1)) (and (= $t23@@1 $t23@@1) (= $t21@0@@3 $t21@0@@3)))) (and (=> (= (ControlFlow 0 352470) 352630) anon36_Then_correct@@3) (=> (= (ControlFlow 0 352470) 352486) anon36_Else_correct@@3)))))
(let ((anon35_Then_correct@@3 true))
(let ((|inline$$1_Diem_value'$1_XUS_XUS'$1$anon0_correct|  (=> (= $t18@0@@7 $t18@0@@7) (=> (and (= |inline$$1_Diem_value'$1_XUS_XUS'$1$$t1@1| (|$value#$1_Diem_Diem'$1_XUS_XUS'| $t18@0@@7)) (= |inline$$1_Diem_value'$1_XUS_XUS'$1$$t1@1| |inline$$1_Diem_value'$1_XUS_XUS'$1$$t1@1|)) (and (=> (= (ControlFlow 0 352416) 354493) anon35_Then_correct@@3) (=> (= (ControlFlow 0 352416) 352470) anon35_Else_correct@@3))))))
(let ((anon34_Else_correct@@3  (=> (and (and (not false) (= |inline$$1_Diem_value'$1_XUS_XUS'$0$$t1@1| |inline$$1_Diem_value'$1_XUS_XUS'$0$$t1@1|)) (and (= $t18@0@@7 (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| (|v#$Mutation_188025| _$t1@@10))) (= (ControlFlow 0 352422) 352416))) |inline$$1_Diem_value'$1_XUS_XUS'$1$anon0_correct|)))
(let ((anon34_Then_correct@@3 true))
(let ((|inline$$1_Diem_value'$1_XUS_XUS'$0$anon0_correct|  (=> (= _$t0@@10 _$t0@@10) (=> (and (= |inline$$1_Diem_value'$1_XUS_XUS'$0$$t1@1| (|$value#$1_Diem_Diem'$1_XUS_XUS'| _$t0@@10)) (= |inline$$1_Diem_value'$1_XUS_XUS'$0$$t1@1| |inline$$1_Diem_value'$1_XUS_XUS'$0$$t1@1|)) (and (=> (= (ControlFlow 0 352295) 354507) anon34_Then_correct@@3) (=> (= (ControlFlow 0 352295) 352422) anon34_Else_correct@@3))))))
(let ((anon0$1_correct@@10  (=> (= (|l#$Mutation_188025| _$t1@@10) ($Param 1)) (=> (and (and (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (forall ((mint_cap_owner1@@59 Int) (mint_cap_owner2@@59 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner1@@59) (=> (|$IsValid'address'| mint_cap_owner2@@59) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_176713| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner1@@59) (|Select__T@[Int]Bool_| (|domain#$Memory_176713| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner2@@59)) (= mint_cap_owner1@@59 mint_cap_owner2@@59))))
 :qid |XDXbpl.14976:104|
 :skolemid |396|
))) (forall ((addr3@@59 Int) ) (!  (=> (|$IsValid'address'| addr3@@59) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_176713| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr3@@59) (and (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))))
 :qid |XDXbpl.14980:20|
 :skolemid |397|
))) (and (forall ((addr@@195 Int) ) (!  (=> (|$IsValid'address'| addr@@195) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_182188| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@195) (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |XDXbpl.14984:20|
 :skolemid |398|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_164899| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (=> (and (and (and (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| _$t0@@10) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|v#$Mutation_188025| _$t1@@10))) (and (|$IsValid'address'| _$t2@@7) (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@13)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| $rsc@@13) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@13)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@13) 10000000000))))
 :qid |XDXbpl.15000:20|
 :skolemid |399|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@13))
)))) (and (and (= $t10@@10 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= $t11@@7 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (= $t12@@10 (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_166171| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= $t13@@9 (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t11@@7))))) (and (and (and (= $t14@@10 ($1_Diem_PreburnEvent (|$value#$1_Diem_Diem'$1_XUS_XUS'| _$t0@@10) $t12@@10 _$t2@@7)) (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$modifies@@1| 173345816)) (and (= $t15@0@@1 (|v#$Mutation_188025| _$t1@@10)) (= _$t0@@10 _$t0@@10))) (and (and (= |$temp_0'$1_Diem_Preburn'$1_XUS_XUS''@0@@0| (|v#$Mutation_188025| _$t1@@10)) (= |$temp_0'$1_Diem_Preburn'$1_XUS_XUS''@0@@0| |$temp_0'$1_Diem_Preburn'$1_XUS_XUS''@0@@0|)) (and (= _$t2@@7 _$t2@@7) (= (ControlFlow 0 352301) 352295))))) |inline$$1_Diem_value'$1_XUS_XUS'$0$anon0_correct|)))))
(let ((inline$$InitEventStore$0$anon0_correct@@10  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@45 T@$1_Event_EventHandle) ) (! (let ((stream@@55 (|Select__T@[$1_Event_EventHandle]Multiset_131870_| (|streams#$EventStore| $es) handle@@45)))
 (and (= (|l#Multiset_131870| stream@@55) 0) (forall ((v@@85 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_131870| stream@@55) v@@85) 0)
 :qid |XDXbpl.134:13|
 :skolemid |2|
))))
 :qid |XDXbpl.2912:13|
 :skolemid |79|
))) (= (ControlFlow 0 351923) 352301)) anon0$1_correct@@10)))
(let ((anon0_correct@@10  (=> (and (= (seq.len (|p#$Mutation_188071| $t9@@7)) 0) (= (seq.len (|p#$Mutation_188118| $t24@@4)) 0)) (=> (and (and (= (seq.len (|p#$Mutation_188071| $t30@@0)) 0) (= (seq.len (|p#$Mutation_14548| $t39@@0)) 0)) (and (= (seq.len (|p#$Mutation_158725| $t42@@3)) 0) (= (ControlFlow 0 351933) 351923))) inline$$InitEventStore$0$anon0_correct@@10))))
(let ((PreconditionGeneratedEntry_correct@@10  (=> (= (ControlFlow 0 488637) 351933) anon0_correct@@10)))
PreconditionGeneratedEntry_correct@@10))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
