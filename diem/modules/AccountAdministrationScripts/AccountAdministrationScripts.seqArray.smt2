(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-option :strings-seq-update true)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_119601 0)) ((($Memory_119601 (|domain#$Memory_119601| |T@[Int]Bool|) (|contents#$Memory_119601| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_191663 0)) ((($Memory_191663 (|domain#$Memory_191663| |T@[Int]Bool|) (|contents#$Memory_191663| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_162236 0)) ((($Memory_162236 (|domain#$Memory_162236| |T@[Int]Bool|) (|contents#$Memory_162236| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_159816 0)) ((($Memory_159816 (|domain#$Memory_159816| |T@[Int]Bool|) (|contents#$Memory_159816| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_160129 0)) ((($Memory_160129 (|domain#$Memory_160129| |T@[Int]Bool|) (|contents#$Memory_160129| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_159783 0)) ((($Memory_159783 (|domain#$Memory_159783| |T@[Int]Bool|) (|contents#$Memory_159783| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_159568 0)) ((($Memory_159568 (|domain#$Memory_159568| |T@[Int]Bool|) (|contents#$Memory_159568| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_155134 0)) ((($Memory_155134 (|domain#$Memory_155134| |T@[Int]Bool|) (|contents#$Memory_155134| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_155070 0)) ((($Memory_155070 (|domain#$Memory_155070| |T@[Int]Bool|) (|contents#$Memory_155070| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_153604 0)) ((($Memory_153604 (|domain#$Memory_153604| |T@[Int]Bool|) (|contents#$Memory_153604| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_153540 0)) ((($Memory_153540 (|domain#$Memory_153540| |T@[Int]Bool|) (|contents#$Memory_153540| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_152687 0)) ((($Memory_152687 (|domain#$Memory_152687| |T@[Int]Bool|) (|contents#$Memory_152687| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_152623 0)) ((($Memory_152623 (|domain#$Memory_152623| |T@[Int]Bool|) (|contents#$Memory_152623| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_149379 0)) ((($Memory_149379 (|domain#$Memory_149379| |T@[Int]Bool|) (|contents#$Memory_149379| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_149092 0)) ((($Memory_149092 (|domain#$Memory_149092| |T@[Int]Bool|) (|contents#$Memory_149092| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_148805 0)) ((($Memory_148805 (|domain#$Memory_148805| |T@[Int]Bool|) (|contents#$Memory_148805| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_148586 0)) ((($Memory_148586 (|domain#$Memory_148586| |T@[Int]Bool|) (|contents#$Memory_148586| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_161752 0)) ((($Memory_161752 (|domain#$Memory_161752| |T@[Int]Bool|) (|contents#$Memory_161752| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_140935 0)) ((($Memory_140935 (|domain#$Memory_140935| |T@[Int]Bool|) (|contents#$Memory_140935| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_140848 0)) ((($Memory_140848 (|domain#$Memory_140848| |T@[Int]Bool|) (|contents#$Memory_140848| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_136215 0)) ((($Memory_136215 (|domain#$Memory_136215| |T@[Int]Bool|) (|contents#$Memory_136215| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_136128 0)) ((($Memory_136128 (|domain#$Memory_136128| |T@[Int]Bool|) (|contents#$Memory_136128| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'#0'| 0)) (((|$1_DiemAccount_Balance'#0'| (|$coin#$1_DiemAccount_Balance'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'#0'| 0)
(declare-datatypes ((T@$Memory_162069 0)) ((($Memory_162069 (|domain#$Memory_162069| |T@[Int]Bool|) (|contents#$Memory_162069| |T@[Int]$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_141290 0)) ((($Memory_141290 (|domain#$Memory_141290| |T@[Int]Bool|) (|contents#$Memory_141290| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_141715 0)) ((($Memory_141715 (|domain#$Memory_141715| |T@[Int]Bool|) (|contents#$Memory_141715| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_161978 0)) ((($Memory_161978 (|domain#$Memory_161978| |T@[Int]Bool|) (|contents#$Memory_161978| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_141199 0)) ((($Memory_141199 (|domain#$Memory_141199| |T@[Int]Bool|) (|contents#$Memory_141199| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_151301 0)) ((($Memory_151301 (|domain#$Memory_151301| |T@[Int]Bool|) (|contents#$Memory_151301| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_141616 0)) ((($Memory_141616 (|domain#$Memory_141616| |T@[Int]Bool|) (|contents#$Memory_141616| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_161887 0)) ((($Memory_161887 (|domain#$Memory_161887| |T@[Int]Bool|) (|contents#$Memory_161887| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_141108 0)) ((($Memory_141108 (|domain#$Memory_141108| |T@[Int]Bool|) (|contents#$Memory_141108| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_153960 0)) ((($Memory_153960 (|domain#$Memory_153960| |T@[Int]Bool|) (|contents#$Memory_153960| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_141517 0)) ((($Memory_141517 (|domain#$Memory_141517| |T@[Int]Bool|) (|contents#$Memory_141517| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_135848 0)) ((($Memory_135848 (|domain#$Memory_135848| |T@[Int]Bool|) (|contents#$Memory_135848| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_135712 0)) ((($Memory_135712 (|domain#$Memory_135712| |T@[Int]Bool|) (|contents#$Memory_135712| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_135648 0)) ((($Memory_135648 (|domain#$Memory_135648| |T@[Int]Bool|) (|contents#$Memory_135648| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_131651 0)) ((($Memory_131651 (|domain#$Memory_131651| |T@[Int]Bool|) (|contents#$Memory_131651| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_131564 0)) ((($Memory_131564 (|domain#$Memory_131564| |T@[Int]Bool|) (|contents#$Memory_131564| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_131477 0)) ((($Memory_131477 (|domain#$Memory_131477| |T@[Int]Bool|) (|contents#$Memory_131477| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_131390 0)) ((($Memory_131390 (|domain#$Memory_131390| |T@[Int]Bool|) (|contents#$Memory_131390| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_131303 0)) ((($Memory_131303 (|domain#$Memory_131303| |T@[Int]Bool|) (|contents#$Memory_131303| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_131916 0)) ((($Memory_131916 (|domain#$Memory_131916| |T@[Int]Bool|) (|contents#$Memory_131916| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_130429 0)) ((($Memory_130429 (|domain#$Memory_130429| |T@[Int]Bool|) (|contents#$Memory_130429| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_130495 0)) ((($Memory_130495 (|domain#$Memory_130495| |T@[Int]Bool|) (|contents#$Memory_130495| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_130348 0)) ((($Memory_130348 (|domain#$Memory_130348| |T@[Int]Bool|) (|contents#$Memory_130348| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_130267 0)) ((($Memory_130267 (|domain#$Memory_130267| |T@[Int]Bool|) (|contents#$Memory_130267| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_130186 0)) ((($Memory_130186 (|domain#$Memory_130186| |T@[Int]Bool|) (|contents#$Memory_130186| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_130105 0)) ((($Memory_130105 (|domain#$Memory_130105| |T@[Int]Bool|) (|contents#$Memory_130105| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_129589 0)) ((($Memory_129589 (|domain#$Memory_129589| |T@[Int]Bool|) (|contents#$Memory_129589| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_RecoveryAddress_RecoveryAddress 0)) ((($1_RecoveryAddress_RecoveryAddress (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@[Int]$1_RecoveryAddress_RecoveryAddress| 0)
(declare-datatypes ((T@$Memory_168935 0)) ((($Memory_168935 (|domain#$Memory_168935| |T@[Int]Bool|) (|contents#$Memory_168935| |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ) ) ))
(declare-datatypes ((T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey 0)) ((($1_SharedEd25519PublicKey_SharedEd25519PublicKey (|$key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (Seq Int)) (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-sort |T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey| 0)
(declare-datatypes ((T@$Memory_167185 0)) ((($Memory_167185 (|domain#$Memory_167185| |T@[Int]Bool|) (|contents#$Memory_167185| |T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_160799 0)) ((($Memory_160799 (|domain#$Memory_160799| |T@[Int]Bool|) (|contents#$Memory_160799| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_130024 0)) ((($Memory_130024 (|domain#$Memory_130024| |T@[Int]Bool|) (|contents#$Memory_130024| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_129052 0)) ((($Memory_129052 (|domain#$Memory_129052| |T@[Int]Bool|) (|contents#$Memory_129052| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_128199 0)) ((($Memory_128199 (|domain#$Memory_128199| |T@[Int]Bool|) (|contents#$Memory_128199| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_126966 0)) ((($Memory_126966 (|domain#$Memory_126966| |T@[Int]Bool|) (|contents#$Memory_126966| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_126448 0)) ((($Memory_126448 (|domain#$Memory_126448| |T@[Int]Bool|) (|contents#$Memory_126448| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_89088 0)) (((Multiset_89088 (|v#Multiset_89088| |T@[$EventRep]Int|) (|l#Multiset_89088| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_89088| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_89088|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_170863 0)) ((($Mutation_170863 (|l#$Mutation_170863| T@$Location) (|p#$Mutation_170863| (Seq Int)) (|v#$Mutation_170863| T@$1_RecoveryAddress_RecoveryAddress) ) ) ))
(declare-datatypes ((T@$Mutation_167356 0)) ((($Mutation_167356 (|l#$Mutation_167356| T@$Location) (|p#$Mutation_167356| (Seq Int)) (|v#$Mutation_167356| T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey) ) ) ))
(declare-datatypes ((T@$Mutation_164822 0)) ((($Mutation_164822 (|l#$Mutation_164822| T@$Location) (|p#$Mutation_164822| (Seq Int)) (|v#$Mutation_164822| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_164778 0)) ((($Mutation_164778 (|l#$Mutation_164778| T@$Location) (|p#$Mutation_164778| (Seq Int)) (|v#$Mutation_164778| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_156478 0)) ((($Mutation_156478 (|l#$Mutation_156478| T@$Location) (|p#$Mutation_156478| (Seq Int)) (|v#$Mutation_156478| T@$1_DualAttestation_Credential) ) ) ))
(declare-datatypes ((T@$Mutation_38681 0)) ((($Mutation_38681 (|l#$Mutation_38681| T@$Location) (|p#$Mutation_38681| (Seq Int)) (|v#$Mutation_38681| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_147195 0)) ((($Mutation_147195 (|l#$Mutation_147195| T@$Location) (|p#$Mutation_147195| (Seq Int)) (|v#$Mutation_147195| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_134389 0)) ((($Mutation_134389 (|l#$Mutation_134389| T@$Location) (|p#$Mutation_134389| (Seq Int)) (|v#$Mutation_134389| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_120232 0)) ((($Mutation_120232 (|l#$Mutation_120232| T@$Location) (|p#$Mutation_120232| (Seq Int)) (|v#$Mutation_120232| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_16758 0)) ((($Mutation_16758 (|l#$Mutation_16758| T@$Location) (|p#$Mutation_16758| (Seq Int)) (|v#$Mutation_16758| Int) ) ) ))
(declare-datatypes ((T@$Mutation_115609 0)) ((($Mutation_115609 (|l#$Mutation_115609| T@$Location) (|p#$Mutation_115609| (Seq Int)) (|v#$Mutation_115609| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_114863 0)) ((($Mutation_114863 (|l#$Mutation_114863| T@$Location) (|p#$Mutation_114863| (Seq Int)) (|v#$Mutation_114863| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_113459 0)) ((($Mutation_113459 (|l#$Mutation_113459| T@$Location) (|p#$Mutation_113459| (Seq Int)) (|v#$Mutation_113459| T@$1_XUS_XUS) ) ) ))
(declare-datatypes ((T@$Mutation_112713 0)) ((($Mutation_112713 (|l#$Mutation_112713| T@$Location) (|p#$Mutation_112713| (Seq Int)) (|v#$Mutation_112713| (Seq T@$1_XUS_XUS)) ) ) ))
(declare-datatypes ((T@$Mutation_111309 0)) ((($Mutation_111309 (|l#$Mutation_111309| T@$Location) (|p#$Mutation_111309| (Seq Int)) (|v#$Mutation_111309| T@$1_XDX_XDX) ) ) ))
(declare-datatypes ((T@$Mutation_110563 0)) ((($Mutation_110563 (|l#$Mutation_110563| T@$Location) (|p#$Mutation_110563| (Seq Int)) (|v#$Mutation_110563| (Seq T@$1_XDX_XDX)) ) ) ))
(declare-datatypes ((T@$Mutation_109159 0)) ((($Mutation_109159 (|l#$Mutation_109159| T@$Location) (|p#$Mutation_109159| (Seq Int)) (|v#$Mutation_109159| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_108413 0)) ((($Mutation_108413 (|l#$Mutation_108413| T@$Location) (|p#$Mutation_108413| (Seq Int)) (|v#$Mutation_108413| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_107009 0)) ((($Mutation_107009 (|l#$Mutation_107009| T@$Location) (|p#$Mutation_107009| (Seq Int)) (|v#$Mutation_107009| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_106263 0)) ((($Mutation_106263 (|l#$Mutation_106263| T@$Location) (|p#$Mutation_106263| (Seq Int)) (|v#$Mutation_106263| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-datatypes ((T@$Mutation_104859 0)) ((($Mutation_104859 (|l#$Mutation_104859| T@$Location) (|p#$Mutation_104859| (Seq Int)) (|v#$Mutation_104859| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_104113 0)) ((($Mutation_104113 (|l#$Mutation_104113| T@$Location) (|p#$Mutation_104113| (Seq Int)) (|v#$Mutation_104113| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_102709 0)) ((($Mutation_102709 (|l#$Mutation_102709| T@$Location) (|p#$Mutation_102709| (Seq Int)) (|v#$Mutation_102709| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_101963 0)) ((($Mutation_101963 (|l#$Mutation_101963| T@$Location) (|p#$Mutation_101963| (Seq Int)) (|v#$Mutation_101963| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_100559 0)) ((($Mutation_100559 (|l#$Mutation_100559| T@$Location) (|p#$Mutation_100559| (Seq Int)) (|v#$Mutation_100559| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_99813 0)) ((($Mutation_99813 (|l#$Mutation_99813| T@$Location) (|p#$Mutation_99813| (Seq Int)) (|v#$Mutation_99813| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-datatypes ((T@$Mutation_98409 0)) ((($Mutation_98409 (|l#$Mutation_98409| T@$Location) (|p#$Mutation_98409| (Seq Int)) (|v#$Mutation_98409| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_97663 0)) ((($Mutation_97663 (|l#$Mutation_97663| T@$Location) (|p#$Mutation_97663| (Seq Int)) (|v#$Mutation_97663| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_96259 0)) ((($Mutation_96259 (|l#$Mutation_96259| T@$Location) (|p#$Mutation_96259| (Seq Int)) (|v#$Mutation_96259| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_95513 0)) ((($Mutation_95513 (|l#$Mutation_95513| T@$Location) (|p#$Mutation_95513| (Seq Int)) (|v#$Mutation_95513| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_94109 0)) ((($Mutation_94109 (|l#$Mutation_94109| T@$Location) (|p#$Mutation_94109| (Seq Int)) (|v#$Mutation_94109| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_93363 0)) ((($Mutation_93363 (|l#$Mutation_93363| T@$Location) (|p#$Mutation_93363| (Seq Int)) (|v#$Mutation_93363| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_91921 0)) ((($Mutation_91921 (|l#$Mutation_91921| T@$Location) (|p#$Mutation_91921| (Seq Int)) (|v#$Mutation_91921| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_91175 0)) ((($Mutation_91175 (|l#$Mutation_91175| T@$Location) (|p#$Mutation_91175| (Seq Int)) (|v#$Mutation_91175| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'$1_XDX_XDX''| ((Seq T@$1_XDX_XDX)) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IndexOfVec'$1_XDX_XDX'| ((Seq T@$1_XDX_XDX) T@$1_XDX_XDX) Int)
(declare-fun |$IsValid'vec'$1_XUS_XUS''| ((Seq T@$1_XUS_XUS)) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IndexOfVec'$1_XUS_XUS'| ((Seq T@$1_XUS_XUS) T@$1_XUS_XUS) Int)
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_89088_| (|T@[$1_Event_EventHandle]Multiset_89088| T@$1_Event_EventHandle) T@Multiset_89088)
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
(declare-fun $1_Authenticator_spec_ed25519_authentication_key ((Seq Int)) (Seq Int))
(declare-fun |$IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'| (T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey) Bool)
(declare-fun |$IsValid'$1_RecoveryAddress_RecoveryAddress'| (T@$1_RecoveryAddress_RecoveryAddress) Bool)
(declare-fun |$IsValid'$1_DiemBlock_BlockMetadata'| (T@$1_DiemBlock_BlockMetadata) Bool)
(declare-fun |$IsValid'$1_DiemBlock_NewBlockEvent'| (T@$1_DiemBlock_NewBlockEvent) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasSchedule'| (T@$1_DiemVMConfig_GasSchedule) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasConstants'| (T@$1_DiemVMConfig_GasConstants) Bool)
(declare-fun ReverseVec_16611 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_80706 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_79327 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_79524 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_79721 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_81297 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_80312 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_80115 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_79918 ((Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (Seq |T@$1_Diem_PreburnWithMetadata'#0'|))
(declare-fun ReverseVec_80509 ((Seq T@$1_VASPDomain_VASPDomain)) (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun ReverseVec_79130 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun ReverseVec_80903 ((Seq T@$1_XDX_XDX)) (Seq T@$1_XDX_XDX))
(declare-fun ReverseVec_81100 ((Seq T@$1_XUS_XUS)) (Seq T@$1_XUS_XUS))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_89088| |T@[$1_Event_EventHandle]Multiset_89088|) |T@[$1_Event_EventHandle]Multiset_89088|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |AccountAdministrationScriptsseqArraybpl.165:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |AccountAdministrationScriptsseqArraybpl.169:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |AccountAdministrationScriptsseqArraybpl.173:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |AccountAdministrationScriptsseqArraybpl.177:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |AccountAdministrationScriptsseqArraybpl.181:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |AccountAdministrationScriptsseqArraybpl.191:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |AccountAdministrationScriptsseqArraybpl.457:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |AccountAdministrationScriptsseqArraybpl.466:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |AccountAdministrationScriptsseqArraybpl.595:13|
 :skolemid |15|
))))
 :qid |AccountAdministrationScriptsseqArraybpl.593:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |AccountAdministrationScriptsseqArraybpl.600:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |AccountAdministrationScriptsseqArraybpl.608:17|
 :skolemid |18|
)))))
 :qid |AccountAdministrationScriptsseqArraybpl.604:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |AccountAdministrationScriptsseqArraybpl.775:13|
 :skolemid |20|
))))
 :qid |AccountAdministrationScriptsseqArraybpl.773:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |AccountAdministrationScriptsseqArraybpl.780:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |AccountAdministrationScriptsseqArraybpl.788:17|
 :skolemid |23|
)))))
 :qid |AccountAdministrationScriptsseqArraybpl.784:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |AccountAdministrationScriptsseqArraybpl.955:13|
 :skolemid |25|
))))
 :qid |AccountAdministrationScriptsseqArraybpl.953:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |AccountAdministrationScriptsseqArraybpl.960:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |AccountAdministrationScriptsseqArraybpl.968:17|
 :skolemid |28|
)))))
 :qid |AccountAdministrationScriptsseqArraybpl.964:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |AccountAdministrationScriptsseqArraybpl.1135:13|
 :skolemid |30|
))))
 :qid |AccountAdministrationScriptsseqArraybpl.1133:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |AccountAdministrationScriptsseqArraybpl.1140:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |AccountAdministrationScriptsseqArraybpl.1148:17|
 :skolemid |33|
)))))
 :qid |AccountAdministrationScriptsseqArraybpl.1144:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (seq.nth v@@12 i@@12)))
 :qid |AccountAdministrationScriptsseqArraybpl.1315:13|
 :skolemid |35|
))))
 :qid |AccountAdministrationScriptsseqArraybpl.1313:57|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |AccountAdministrationScriptsseqArraybpl.1320:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |AccountAdministrationScriptsseqArraybpl.1328:17|
 :skolemid |38|
)))))
 :qid |AccountAdministrationScriptsseqArraybpl.1324:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@14 i@@15)))
 :qid |AccountAdministrationScriptsseqArraybpl.1495:13|
 :skolemid |40|
))))
 :qid |AccountAdministrationScriptsseqArraybpl.1493:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |AccountAdministrationScriptsseqArraybpl.1500:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |AccountAdministrationScriptsseqArraybpl.1508:17|
 :skolemid |43|
)))))
 :qid |AccountAdministrationScriptsseqArraybpl.1504:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@16 i@@18)))
 :qid |AccountAdministrationScriptsseqArraybpl.1675:13|
 :skolemid |45|
))))
 :qid |AccountAdministrationScriptsseqArraybpl.1673:65|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@19 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |AccountAdministrationScriptsseqArraybpl.1680:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |AccountAdministrationScriptsseqArraybpl.1688:17|
 :skolemid |48|
)))))
 :qid |AccountAdministrationScriptsseqArraybpl.1684:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'$1_VASPDomain_VASPDomain'| (seq.nth v@@18 i@@21)))
 :qid |AccountAdministrationScriptsseqArraybpl.1855:13|
 :skolemid |50|
))))
 :qid |AccountAdministrationScriptsseqArraybpl.1853:50|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18))
)))
(assert (forall ((v@@19 (Seq T@$1_VASPDomain_VASPDomain)) (e@@6 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@22 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |AccountAdministrationScriptsseqArraybpl.1860:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |AccountAdministrationScriptsseqArraybpl.1868:17|
 :skolemid |53|
)))))
 :qid |AccountAdministrationScriptsseqArraybpl.1864:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@20 i@@24)))
 :qid |AccountAdministrationScriptsseqArraybpl.2035:13|
 :skolemid |55|
))))
 :qid |AccountAdministrationScriptsseqArraybpl.2033:51|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20))
)))
(assert (forall ((v@@21 (Seq T@$1_ValidatorConfig_Config)) (e@@7 T@$1_ValidatorConfig_Config) ) (! (let ((i@@25 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |AccountAdministrationScriptsseqArraybpl.2040:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |AccountAdministrationScriptsseqArraybpl.2048:17|
 :skolemid |58|
)))))
 :qid |AccountAdministrationScriptsseqArraybpl.2044:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq T@$1_XDX_XDX)) ) (! (= (|$IsValid'vec'$1_XDX_XDX''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'$1_XDX_XDX'| (seq.nth v@@22 i@@27)))
 :qid |AccountAdministrationScriptsseqArraybpl.2215:13|
 :skolemid |60|
))))
 :qid |AccountAdministrationScriptsseqArraybpl.2213:36|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'$1_XDX_XDX''| v@@22))
)))
(assert (forall ((v@@23 (Seq T@$1_XDX_XDX)) (e@@8 T@$1_XDX_XDX) ) (! (let ((i@@28 (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |AccountAdministrationScriptsseqArraybpl.2220:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |AccountAdministrationScriptsseqArraybpl.2228:17|
 :skolemid |63|
)))))
 :qid |AccountAdministrationScriptsseqArraybpl.2224:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8))
)))
(assert (forall ((v@@24 (Seq T@$1_XUS_XUS)) ) (! (= (|$IsValid'vec'$1_XUS_XUS''| v@@24)  (and (|$IsValid'u64'| (seq.len v@@24)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len v@@24))) (|$IsValid'$1_XUS_XUS'| (seq.nth v@@24 i@@30)))
 :qid |AccountAdministrationScriptsseqArraybpl.2395:13|
 :skolemid |65|
))))
 :qid |AccountAdministrationScriptsseqArraybpl.2393:36|
 :skolemid |66|
 :pattern ( (|$IsValid'vec'$1_XUS_XUS''| v@@24))
)))
(assert (forall ((v@@25 (Seq T@$1_XUS_XUS)) (e@@9 T@$1_XUS_XUS) ) (! (let ((i@@31 (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9)))
(ite  (not (exists ((i@@32 Int) ) (!  (and (and (|$IsValid'u64'| i@@32) (and (>= i@@32 0) (< i@@32 (seq.len v@@25)))) (= (seq.nth v@@25 i@@32) e@@9))
 :qid |AccountAdministrationScriptsseqArraybpl.2400:13|
 :skolemid |67|
))) (= i@@31 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@31) (and (>= i@@31 0) (< i@@31 (seq.len v@@25)))) (= (seq.nth v@@25 i@@31) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@31)) (not (= (seq.nth v@@25 j@@9) e@@9)))
 :qid |AccountAdministrationScriptsseqArraybpl.2408:17|
 :skolemid |68|
)))))
 :qid |AccountAdministrationScriptsseqArraybpl.2404:15|
 :skolemid |69|
 :pattern ( (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9))
)))
(assert (forall ((v@@26 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@26)  (and (|$IsValid'u64'| (seq.len v@@26)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len v@@26))) (|$IsValid'vec'u8''| (seq.nth v@@26 i@@33)))
 :qid |AccountAdministrationScriptsseqArraybpl.2575:13|
 :skolemid |70|
))))
 :qid |AccountAdministrationScriptsseqArraybpl.2573:33|
 :skolemid |71|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@26))
)))
(assert (forall ((v@@27 (Seq (Seq Int))) (e@@10 (Seq Int)) ) (! (let ((i@@34 (|$IndexOfVec'vec'u8''| v@@27 e@@10)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (and (>= i@@35 0) (< i@@35 (seq.len v@@27)))) (= (seq.nth v@@27 i@@35) e@@10))
 :qid |AccountAdministrationScriptsseqArraybpl.2580:13|
 :skolemid |72|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (and (>= i@@34 0) (< i@@34 (seq.len v@@27)))) (= (seq.nth v@@27 i@@34) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@34)) (not (= (seq.nth v@@27 j@@10) e@@10)))
 :qid |AccountAdministrationScriptsseqArraybpl.2588:17|
 :skolemid |73|
)))))
 :qid |AccountAdministrationScriptsseqArraybpl.2584:15|
 :skolemid |74|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@27 e@@10))
)))
(assert (forall ((v@@28 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@28)  (and (|$IsValid'u64'| (seq.len v@@28)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len v@@28))) (|$IsValid'address'| (seq.nth v@@28 i@@36)))
 :qid |AccountAdministrationScriptsseqArraybpl.2755:13|
 :skolemid |75|
))))
 :qid |AccountAdministrationScriptsseqArraybpl.2753:33|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'address''| v@@28))
)))
(assert (forall ((v@@29 (Seq Int)) (e@@11 Int) ) (! (let ((i@@37 (|$IndexOfVec'address'| v@@29 e@@11)))
(ite  (not (exists ((i@@38 Int) ) (!  (and (and (|$IsValid'u64'| i@@38) (and (>= i@@38 0) (< i@@38 (seq.len v@@29)))) (= (seq.nth v@@29 i@@38) e@@11))
 :qid |AccountAdministrationScriptsseqArraybpl.2760:13|
 :skolemid |77|
))) (= i@@37 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@37) (and (>= i@@37 0) (< i@@37 (seq.len v@@29)))) (= (seq.nth v@@29 i@@37) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@11) (>= j@@11 0)) (< j@@11 i@@37)) (not (= (seq.nth v@@29 j@@11) e@@11)))
 :qid |AccountAdministrationScriptsseqArraybpl.2768:17|
 :skolemid |78|
)))))
 :qid |AccountAdministrationScriptsseqArraybpl.2764:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'address'| v@@29 e@@11))
)))
(assert (forall ((v@@30 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@30)  (and (|$IsValid'u64'| (seq.len v@@30)) (forall ((i@@39 Int) ) (!  (=> (and (>= i@@39 0) (< i@@39 (seq.len v@@30))) (|$IsValid'u8'| (seq.nth v@@30 i@@39)))
 :qid |AccountAdministrationScriptsseqArraybpl.2935:13|
 :skolemid |80|
))))
 :qid |AccountAdministrationScriptsseqArraybpl.2933:28|
 :skolemid |81|
 :pattern ( (|$IsValid'vec'u8''| v@@30))
)))
(assert (forall ((v@@31 (Seq Int)) (e@@12 Int) ) (! (let ((i@@40 (|$IndexOfVec'u8'| v@@31 e@@12)))
(ite  (not (exists ((i@@41 Int) ) (!  (and (and (|$IsValid'u64'| i@@41) (and (>= i@@41 0) (< i@@41 (seq.len v@@31)))) (= (seq.nth v@@31 i@@41) e@@12))
 :qid |AccountAdministrationScriptsseqArraybpl.2940:13|
 :skolemid |82|
))) (= i@@40 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@40) (and (>= i@@40 0) (< i@@40 (seq.len v@@31)))) (= (seq.nth v@@31 i@@40) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@12) (>= j@@12 0)) (< j@@12 i@@40)) (not (= (seq.nth v@@31 j@@12) e@@12)))
 :qid |AccountAdministrationScriptsseqArraybpl.2948:17|
 :skolemid |83|
)))))
 :qid |AccountAdministrationScriptsseqArraybpl.2944:15|
 :skolemid |84|
 :pattern ( (|$IndexOfVec'u8'| v@@31 e@@12))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |AccountAdministrationScriptsseqArraybpl.3121:15|
 :skolemid |85|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |AccountAdministrationScriptsseqArraybpl.3137:15|
 :skolemid |86|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |AccountAdministrationScriptsseqArraybpl.3204:15|
 :skolemid |87|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |AccountAdministrationScriptsseqArraybpl.3207:15|
 :skolemid |88|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_89088_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_89088| stream) 0) (forall ((v@@32 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_89088| stream) v@@32) 0)
 :qid |AccountAdministrationScriptsseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |AccountAdministrationScriptsseqArraybpl.3268:13|
 :skolemid |89|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |AccountAdministrationScriptsseqArraybpl.3309:80|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |AccountAdministrationScriptsseqArraybpl.3315:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |AccountAdministrationScriptsseqArraybpl.3365:82|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |AccountAdministrationScriptsseqArraybpl.3371:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |AccountAdministrationScriptsseqArraybpl.3421:80|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |AccountAdministrationScriptsseqArraybpl.3427:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |AccountAdministrationScriptsseqArraybpl.3477:79|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |AccountAdministrationScriptsseqArraybpl.3483:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |AccountAdministrationScriptsseqArraybpl.3533:76|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |AccountAdministrationScriptsseqArraybpl.3539:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |AccountAdministrationScriptsseqArraybpl.3589:78|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |AccountAdministrationScriptsseqArraybpl.3595:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |AccountAdministrationScriptsseqArraybpl.3645:74|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |AccountAdministrationScriptsseqArraybpl.3651:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |AccountAdministrationScriptsseqArraybpl.3701:69|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |AccountAdministrationScriptsseqArraybpl.3707:15|
 :skolemid |106|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |AccountAdministrationScriptsseqArraybpl.3757:70|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |AccountAdministrationScriptsseqArraybpl.3763:15|
 :skolemid |108|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |AccountAdministrationScriptsseqArraybpl.3813:60|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |AccountAdministrationScriptsseqArraybpl.3819:15|
 :skolemid |110|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |AccountAdministrationScriptsseqArraybpl.3869:66|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |AccountAdministrationScriptsseqArraybpl.3875:15|
 :skolemid |112|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |AccountAdministrationScriptsseqArraybpl.3925:60|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |AccountAdministrationScriptsseqArraybpl.3931:15|
 :skolemid |114|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |AccountAdministrationScriptsseqArraybpl.3981:63|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |AccountAdministrationScriptsseqArraybpl.3987:15|
 :skolemid |116|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |AccountAdministrationScriptsseqArraybpl.4037:79|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |AccountAdministrationScriptsseqArraybpl.4043:15|
 :skolemid |118|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |AccountAdministrationScriptsseqArraybpl.4093:82|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |AccountAdministrationScriptsseqArraybpl.4099:15|
 :skolemid |120|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |AccountAdministrationScriptsseqArraybpl.4149:88|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |AccountAdministrationScriptsseqArraybpl.4155:15|
 :skolemid |122|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |AccountAdministrationScriptsseqArraybpl.4205:72|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |AccountAdministrationScriptsseqArraybpl.4211:15|
 :skolemid |124|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |AccountAdministrationScriptsseqArraybpl.4265:15|
 :skolemid |125|
)))
(assert (forall ((addr Int) ) (! true
 :qid |AccountAdministrationScriptsseqArraybpl.4274:15|
 :skolemid |126|
)))
(assert (forall ((s@@0 T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s@@0)))
 :qid |AccountAdministrationScriptsseqArraybpl.4304:61|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |AccountAdministrationScriptsseqArraybpl.4511:36|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@2)))
 :qid |AccountAdministrationScriptsseqArraybpl.4967:71|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@3) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@3)))
 :qid |AccountAdministrationScriptsseqArraybpl.5109:46|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@4)))
 :qid |AccountAdministrationScriptsseqArraybpl.5122:64|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@5)))
 :qid |AccountAdministrationScriptsseqArraybpl.5135:75|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@6)))
 :qid |AccountAdministrationScriptsseqArraybpl.5148:72|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@7)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@7))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@7))))
 :qid |AccountAdministrationScriptsseqArraybpl.5177:55|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7))
)))
(assert (forall ((s@@8 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@8)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@8)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@8))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@8))))
 :qid |AccountAdministrationScriptsseqArraybpl.5199:46|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@8))
)))
(assert (forall ((account T@$signer) (seq_nonce Int) ) (! (let (($$res ($1_SlidingNonce_spec_try_record_nonce account seq_nonce)))
(|$IsValid'u64'| $$res))
 :qid |AccountAdministrationScriptsseqArraybpl.5210:15|
 :skolemid |136|
)))
(assert (forall ((s@@9 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@9)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@9))))
 :qid |AccountAdministrationScriptsseqArraybpl.5223:49|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@10)))
 :qid |AccountAdministrationScriptsseqArraybpl.5439:71|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@11)))
 :qid |AccountAdministrationScriptsseqArraybpl.5453:91|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@12)))
 :qid |AccountAdministrationScriptsseqArraybpl.5467:113|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |AccountAdministrationScriptsseqArraybpl.5481:75|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |AccountAdministrationScriptsseqArraybpl.5495:73|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |AccountAdministrationScriptsseqArraybpl.5515:48|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |AccountAdministrationScriptsseqArraybpl.5531:57|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |AccountAdministrationScriptsseqArraybpl.5545:83|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |AccountAdministrationScriptsseqArraybpl.5559:103|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |AccountAdministrationScriptsseqArraybpl.5573:125|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20) true)
 :qid |AccountAdministrationScriptsseqArraybpl.5587:87|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21) true)
 :qid |AccountAdministrationScriptsseqArraybpl.5601:85|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21))
)))
(assert (forall ((s@@22 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@22)))
 :qid |AccountAdministrationScriptsseqArraybpl.5615:48|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@23)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@23))))
 :qid |AccountAdministrationScriptsseqArraybpl.5636:45|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@24)))
 :qid |AccountAdministrationScriptsseqArraybpl.5650:51|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@25)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@25))))
 :qid |AccountAdministrationScriptsseqArraybpl.5673:48|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25))
)))
(assert (forall ((s@@26 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@26)))
 :qid |AccountAdministrationScriptsseqArraybpl.5979:49|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26))
)))
(assert (forall ((s@@27 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@27)))
 :qid |AccountAdministrationScriptsseqArraybpl.5992:65|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@28)))
 :qid |AccountAdministrationScriptsseqArraybpl.6501:45|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@29)))
 :qid |AccountAdministrationScriptsseqArraybpl.6514:45|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@30)))
 :qid |AccountAdministrationScriptsseqArraybpl.6527:37|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31) true)
 :qid |AccountAdministrationScriptsseqArraybpl.6540:55|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32) true)
 :qid |AccountAdministrationScriptsseqArraybpl.6554:55|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@33)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@33))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@33))))
 :qid |AccountAdministrationScriptsseqArraybpl.6574:38|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@34))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@34))))
 :qid |AccountAdministrationScriptsseqArraybpl.6595:44|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))))
 :qid |AccountAdministrationScriptsseqArraybpl.6646:53|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))))
 :qid |AccountAdministrationScriptsseqArraybpl.6708:53|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@37)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@37)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@37))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@37))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@37))))
 :qid |AccountAdministrationScriptsseqArraybpl.6770:45|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@38) true)
 :qid |AccountAdministrationScriptsseqArraybpl.6796:55|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@39) true)
 :qid |AccountAdministrationScriptsseqArraybpl.6810:55|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@39))
)))
(assert (forall ((s@@40 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@40)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@40)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@40))))
 :qid |AccountAdministrationScriptsseqArraybpl.6827:38|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@41) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@41)))
 :qid |AccountAdministrationScriptsseqArraybpl.6841:48|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@42) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@42)))
 :qid |AccountAdministrationScriptsseqArraybpl.6855:48|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@43) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@43)))
 :qid |AccountAdministrationScriptsseqArraybpl.6869:40|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@43))
)))
(assert (forall ((s@@44 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@44)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@44)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@44))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@44))))
 :qid |AccountAdministrationScriptsseqArraybpl.6889:41|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@45) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@45)))
 :qid |AccountAdministrationScriptsseqArraybpl.6904:53|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@46) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@46)))
 :qid |AccountAdministrationScriptsseqArraybpl.6918:53|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@46))
)))
(assert (forall ((s@@47 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@47) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@47)))
 :qid |AccountAdministrationScriptsseqArraybpl.6932:45|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@48)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@48)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@48))))
 :qid |AccountAdministrationScriptsseqArraybpl.6949:60|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@49)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@49)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@49))))
 :qid |AccountAdministrationScriptsseqArraybpl.6966:60|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@50)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@50)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@50))))
 :qid |AccountAdministrationScriptsseqArraybpl.6983:52|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@50))
)))
(assert (forall ((s@@51 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@51)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@51)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@51))))
 :qid |AccountAdministrationScriptsseqArraybpl.7000:57|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@51))
)))
(assert (forall ((s@@52 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@52) true)
 :qid |AccountAdministrationScriptsseqArraybpl.9271:68|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@52))
)))
(assert (forall ((s@@53 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@53)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@53)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@53))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@53))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@53))))
 :qid |AccountAdministrationScriptsseqArraybpl.9293:66|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@53))
)))
(assert (forall ((s@@54 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@54)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@54)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@54))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@54))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@54))))
 :qid |AccountAdministrationScriptsseqArraybpl.9319:66|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@54))
)))
(assert (forall ((s@@55 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@55)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@55)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@55))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@55))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@55))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@55))))
 :qid |AccountAdministrationScriptsseqArraybpl.9348:56|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@55))
)))
(assert (forall ((s@@56 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@56)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@56)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@56))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@56))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@56))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@56))))
 :qid |AccountAdministrationScriptsseqArraybpl.9378:56|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@56))
)))
(assert (forall ((s@@57 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@57) true)
 :qid |AccountAdministrationScriptsseqArraybpl.9712:31|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@57))
)))
(assert (forall ((s@@58 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@58) true)
 :qid |AccountAdministrationScriptsseqArraybpl.10056:31|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@58))
)))
(assert (forall ((s@@59 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@59)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@59)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@59))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@59))))
 :qid |AccountAdministrationScriptsseqArraybpl.10075:35|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@59))
)))
(assert (forall ((s@@60 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@60) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@60)))
 :qid |AccountAdministrationScriptsseqArraybpl.10501:45|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@60))
)))
(assert (forall ((s@@61 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@61)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@61))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@61))))
 :qid |AccountAdministrationScriptsseqArraybpl.10520:50|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@61))
)))
(assert (forall ((s@@62 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@62) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@62)))
 :qid |AccountAdministrationScriptsseqArraybpl.10535:52|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@62))
)))
(assert (forall ((s@@63 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@63) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@63)))
 :qid |AccountAdministrationScriptsseqArraybpl.10549:46|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@63))
)))
(assert (forall ((s@@64 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@64) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@64)))
 :qid |AccountAdministrationScriptsseqArraybpl.10771:38|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@64))
)))
(assert (forall ((s@@65 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@65) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@65)))
 :qid |AccountAdministrationScriptsseqArraybpl.10785:39|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@65))
)))
(assert (forall ((s@@66 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@66)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@66)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@66))))
 :qid |AccountAdministrationScriptsseqArraybpl.10812:65|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@66))
)))
(assert (forall ((s@@67 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@67)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@67)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@67))))
 :qid |AccountAdministrationScriptsseqArraybpl.11197:60|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@68)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@68)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@68))))
 :qid |AccountAdministrationScriptsseqArraybpl.11214:66|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@69)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@69)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@69))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@69))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@69))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@69))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@69))))
 :qid |AccountAdministrationScriptsseqArraybpl.11243:50|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@70) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@70)))
 :qid |AccountAdministrationScriptsseqArraybpl.11262:45|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@71)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@71)) true))
 :qid |AccountAdministrationScriptsseqArraybpl.12124:87|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@72) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@72)))
 :qid |AccountAdministrationScriptsseqArraybpl.12336:47|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@73)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@73)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@73))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@73))))
 :qid |AccountAdministrationScriptsseqArraybpl.12356:58|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@73))
)))
(assert (forall ((s@@74 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@74) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@74)))
 :qid |AccountAdministrationScriptsseqArraybpl.12371:39|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@74))
)))
(assert (forall ((s@@75 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@75)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@75)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@75))))
 :qid |AccountAdministrationScriptsseqArraybpl.12398:58|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@75))
)))
(assert (forall ((s@@76 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@76)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@76)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@76))))
 :qid |AccountAdministrationScriptsseqArraybpl.12415:58|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@76))
)))
(assert (forall ((s@@77 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@77) true)
 :qid |AccountAdministrationScriptsseqArraybpl.12430:51|
 :skolemid |205|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@77))
)))
(assert (forall ((s@@78 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@78)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@78)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@78))))
 :qid |AccountAdministrationScriptsseqArraybpl.12447:60|
 :skolemid |206|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@79)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@79)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@79))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@79))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@79))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@79))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@79))))
 :qid |AccountAdministrationScriptsseqArraybpl.12760:47|
 :skolemid |207|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@80)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@80)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@80))))
 :qid |AccountAdministrationScriptsseqArraybpl.12782:63|
 :skolemid |208|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@81) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@81)))
 :qid |AccountAdministrationScriptsseqArraybpl.12797:57|
 :skolemid |209|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@81))
)))
(assert (forall ((s@@82 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@82) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@82)))
 :qid |AccountAdministrationScriptsseqArraybpl.12810:55|
 :skolemid |210|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@82))
)))
(assert (forall ((s@@83 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@83) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@83)))
 :qid |AccountAdministrationScriptsseqArraybpl.12824:55|
 :skolemid |211|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@83))
)))
(assert (forall ((s@@84 |T@$1_DiemAccount_Balance'#0'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'#0''| s@@84) (|$IsValid'$1_Diem_Diem'#0''| (|$coin#$1_DiemAccount_Balance'#0'| s@@84)))
 :qid |AccountAdministrationScriptsseqArraybpl.12838:47|
 :skolemid |212|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'#0''| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@85)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@85)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@85))))
 :qid |AccountAdministrationScriptsseqArraybpl.12855:54|
 :skolemid |213|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@86) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@86)))
 :qid |AccountAdministrationScriptsseqArraybpl.12869:55|
 :skolemid |214|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@87) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@87)))
 :qid |AccountAdministrationScriptsseqArraybpl.12883:57|
 :skolemid |215|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@88)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@88)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@88))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@88))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@88))))
 :qid |AccountAdministrationScriptsseqArraybpl.12905:56|
 :skolemid |216|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@89)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@89)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@89))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@89))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@89))))
 :qid |AccountAdministrationScriptsseqArraybpl.12930:52|
 :skolemid |217|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@90) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@90)))
 :qid |AccountAdministrationScriptsseqArraybpl.12946:54|
 :skolemid |218|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@90))
)))
(assert (forall ((public_key (Seq Int)) ) (! (let (($$res@@0 ($1_Authenticator_spec_ed25519_authentication_key public_key)))
(|$IsValid'vec'u8''| $$res@@0))
 :qid |AccountAdministrationScriptsseqArraybpl.14705:15|
 :skolemid |219|
)))
(assert (forall ((s@@91 T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey) ) (! (= (|$IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'| s@@91)  (and (|$IsValid'vec'u8''| (|$key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| s@@91)) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| s@@91))))
 :qid |AccountAdministrationScriptsseqArraybpl.14723:69|
 :skolemid |220|
 :pattern ( (|$IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'| s@@91))
)))
(assert (forall ((s@@92 T@$1_RecoveryAddress_RecoveryAddress) ) (! (= (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@92) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| s@@92)))
 :qid |AccountAdministrationScriptsseqArraybpl.15286:55|
 :skolemid |222|
 :pattern ( (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@92))
)))
(assert (forall ((s@@93 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@93)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@93)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@93))))
 :qid |AccountAdministrationScriptsseqArraybpl.19211:47|
 :skolemid |459|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@93))
)))
(assert (forall ((s@@94 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@94)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@94)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@94))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@94))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@94))))
 :qid |AccountAdministrationScriptsseqArraybpl.19235:47|
 :skolemid |460|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@94))
)))
(assert (forall ((s@@95 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@95) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@95)))
 :qid |AccountAdministrationScriptsseqArraybpl.19476:49|
 :skolemid |461|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@95))
)))
(assert (forall ((s@@96 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@96)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@96)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@96))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@96))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@96))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@96))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@96))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@96))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@96))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@96))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@96))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@96))))
 :qid |AccountAdministrationScriptsseqArraybpl.19519:49|
 :skolemid |462|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@96))
)))
(assert (forall ((s@@97 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@97)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@97)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@97))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@97))))
 :qid |AccountAdministrationScriptsseqArraybpl.19548:48|
 :skolemid |463|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@97))
)))
(assert (forall ((s@@98 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@98) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@98)))
 :qid |AccountAdministrationScriptsseqArraybpl.19843:47|
 :skolemid |464|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@98))
)))
(assert (forall ((v@@33 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_16611 v@@33)))
 (and (= (seq.len r@@0) (seq.len v@@33)) (forall ((i@@42 Int) ) (!  (=> (and (>= i@@42 0) (< i@@42 (seq.len r@@0))) (= (seq.nth r@@0 i@@42) (seq.nth v@@33 (- (- (seq.len v@@33) i@@42) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@42))
))))
 :qid |AccountAdministrationScriptsseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_16611 v@@33))
)))
(assert (forall ((v@@34 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_80706 v@@34)))
 (and (= (seq.len r@@1) (seq.len v@@34)) (forall ((i@@43 Int) ) (!  (=> (and (>= i@@43 0) (< i@@43 (seq.len r@@1))) (= (seq.nth r@@1 i@@43) (seq.nth v@@34 (- (- (seq.len v@@34) i@@43) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@43))
))))
 :qid |AccountAdministrationScriptsseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_80706 v@@34))
)))
(assert (forall ((v@@35 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_79327 v@@35)))
 (and (= (seq.len r@@2) (seq.len v@@35)) (forall ((i@@44 Int) ) (!  (=> (and (>= i@@44 0) (< i@@44 (seq.len r@@2))) (= (seq.nth r@@2 i@@44) (seq.nth v@@35 (- (- (seq.len v@@35) i@@44) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@44))
))))
 :qid |AccountAdministrationScriptsseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_79327 v@@35))
)))
(assert (forall ((v@@36 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_79524 v@@36)))
 (and (= (seq.len r@@3) (seq.len v@@36)) (forall ((i@@45 Int) ) (!  (=> (and (>= i@@45 0) (< i@@45 (seq.len r@@3))) (= (seq.nth r@@3 i@@45) (seq.nth v@@36 (- (- (seq.len v@@36) i@@45) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@45))
))))
 :qid |AccountAdministrationScriptsseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_79524 v@@36))
)))
(assert (forall ((v@@37 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_79721 v@@37)))
 (and (= (seq.len r@@4) (seq.len v@@37)) (forall ((i@@46 Int) ) (!  (=> (and (>= i@@46 0) (< i@@46 (seq.len r@@4))) (= (seq.nth r@@4 i@@46) (seq.nth v@@37 (- (- (seq.len v@@37) i@@46) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@46))
))))
 :qid |AccountAdministrationScriptsseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_79721 v@@37))
)))
(assert (forall ((v@@38 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_81297 v@@38)))
 (and (= (seq.len r@@5) (seq.len v@@38)) (forall ((i@@47 Int) ) (!  (=> (and (>= i@@47 0) (< i@@47 (seq.len r@@5))) (= (seq.nth r@@5 i@@47) (seq.nth v@@38 (- (- (seq.len v@@38) i@@47) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@47))
))))
 :qid |AccountAdministrationScriptsseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_81297 v@@38))
)))
(assert (forall ((v@@39 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@6 (ReverseVec_80312 v@@39)))
 (and (= (seq.len r@@6) (seq.len v@@39)) (forall ((i@@48 Int) ) (!  (=> (and (>= i@@48 0) (< i@@48 (seq.len r@@6))) (= (seq.nth r@@6 i@@48) (seq.nth v@@39 (- (- (seq.len v@@39) i@@48) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@48))
))))
 :qid |AccountAdministrationScriptsseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_80312 v@@39))
)))
(assert (forall ((v@@40 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@7 (ReverseVec_80115 v@@40)))
 (and (= (seq.len r@@7) (seq.len v@@40)) (forall ((i@@49 Int) ) (!  (=> (and (>= i@@49 0) (< i@@49 (seq.len r@@7))) (= (seq.nth r@@7 i@@49) (seq.nth v@@40 (- (- (seq.len v@@40) i@@49) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@49))
))))
 :qid |AccountAdministrationScriptsseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_80115 v@@40))
)))
(assert (forall ((v@@41 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (let ((r@@8 (ReverseVec_79918 v@@41)))
 (and (= (seq.len r@@8) (seq.len v@@41)) (forall ((i@@50 Int) ) (!  (=> (and (>= i@@50 0) (< i@@50 (seq.len r@@8))) (= (seq.nth r@@8 i@@50) (seq.nth v@@41 (- (- (seq.len v@@41) i@@50) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@50))
))))
 :qid |AccountAdministrationScriptsseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_79918 v@@41))
)))
(assert (forall ((v@@42 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (let ((r@@9 (ReverseVec_80509 v@@42)))
 (and (= (seq.len r@@9) (seq.len v@@42)) (forall ((i@@51 Int) ) (!  (=> (and (>= i@@51 0) (< i@@51 (seq.len r@@9))) (= (seq.nth r@@9 i@@51) (seq.nth v@@42 (- (- (seq.len v@@42) i@@51) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@9 i@@51))
))))
 :qid |AccountAdministrationScriptsseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_80509 v@@42))
)))
(assert (forall ((v@@43 (Seq |T@#0|)) ) (! (let ((r@@10 (ReverseVec_79130 v@@43)))
 (and (= (seq.len r@@10) (seq.len v@@43)) (forall ((i@@52 Int) ) (!  (=> (and (>= i@@52 0) (< i@@52 (seq.len r@@10))) (= (seq.nth r@@10 i@@52) (seq.nth v@@43 (- (- (seq.len v@@43) i@@52) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@10 i@@52))
))))
 :qid |AccountAdministrationScriptsseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_79130 v@@43))
)))
(assert (forall ((v@@44 (Seq T@$1_XDX_XDX)) ) (! (let ((r@@11 (ReverseVec_80903 v@@44)))
 (and (= (seq.len r@@11) (seq.len v@@44)) (forall ((i@@53 Int) ) (!  (=> (and (>= i@@53 0) (< i@@53 (seq.len r@@11))) (= (seq.nth r@@11 i@@53) (seq.nth v@@44 (- (- (seq.len v@@44) i@@53) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@11 i@@53))
))))
 :qid |AccountAdministrationScriptsseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_80903 v@@44))
)))
(assert (forall ((v@@45 (Seq T@$1_XUS_XUS)) ) (! (let ((r@@12 (ReverseVec_81100 v@@45)))
 (and (= (seq.len r@@12) (seq.len v@@45)) (forall ((i@@54 Int) ) (!  (=> (and (>= i@@54 0) (< i@@54 (seq.len r@@12))) (= (seq.nth r@@12 i@@54) (seq.nth v@@45 (- (- (seq.len v@@45) i@@54) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@12 i@@54))
))))
 :qid |AccountAdministrationScriptsseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_81100 v@@45))
)))
(assert (forall ((|l#0| Bool) (i@@55 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@55) |l#0|)
 :qid |AccountAdministrationScriptsseqArraybpl.250:54|
 :skolemid |543|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@55))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_89088|) (|l#1| |T@[$1_Event_EventHandle]Multiset_89088|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_89088_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_89088| (|Select__T@[$1_Event_EventHandle]Multiset_89088_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_89088| (|Select__T@[$1_Event_EventHandle]Multiset_89088_| |l#1| handle@@0))))
(Multiset_89088 (|lambda#3| (|v#Multiset_89088| (|Select__T@[$1_Event_EventHandle]Multiset_89088_| |l#0@@0| handle@@0)) (|v#Multiset_89088| (|Select__T@[$1_Event_EventHandle]Multiset_89088_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |AccountAdministrationScriptsseqArraybpl.3278:13|
 :skolemid |544|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_89088_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@46 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@46) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@46) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@46)))
 :qid |AccountAdministrationScriptsseqArraybpl.129:29|
 :skolemid |545|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@46))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_160799)
(declare-fun $t5 () Int)
(declare-fun |Select__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int) T@$1_DiemAccount_DiemAccount)
(declare-fun _$t0 () T@$signer)
(declare-fun $t4 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun _$t1 () (Seq Int))
(declare-fun $t8@0 () Int)
(declare-fun $abort_flag@7 () Bool)
(declare-fun $abort_code@8 () Int)
(declare-fun $abort_flag@5 () Bool)
(declare-fun $abort_code@6 () Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun $1_DiemAccount_DiemAccount_$memory@5 () T@$Memory_160799)
(declare-fun $t3 () Int)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t12@0 () Bool)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2 () T@$Mutation_164822)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1 () T@$Mutation_164822)
(declare-fun |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1| () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@3 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2 () T@$Mutation_164778)
(declare-fun $1_DiemAccount_DiemAccount_$memory@4 () T@$Memory_160799)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_DiemAccount_DiemAccount_$memory@3 () T@$Memory_160799)
(declare-fun |Store__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int T@$1_DiemAccount_DiemAccount) |T@[Int]$1_DiemAccount_DiemAccount|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_code@7 () Int)
(declare-fun $abort_flag@6 () Bool)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1 () Int)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@0 () Int)
(declare-fun |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@0 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1 () Int)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@1 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_exists_at$3$$t1@1 () Bool)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0 () Int)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t4@1 () Int)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t3@0 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@0 () T@$Mutation_164822)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1 () T@$Mutation_115609)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2 () T@$Mutation_115609)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3 () T@$Mutation_164778)
(declare-fun $1_DiemAccount_DiemAccount_$memory@2 () T@$Memory_160799)
(declare-fun $1_DiemAccount_DiemAccount_$memory@1 () T@$Memory_160799)
(declare-fun $abort_code@5 () Int)
(declare-fun $abort_flag@4 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0 () Int)
(declare-fun |inline$$1_Vector_length'u8'$0$l@1| () Int)
(declare-fun |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_exists_at$2$$t1@1 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t6@0 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@0 () T@$Mutation_115609)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2 () T@$Mutation_164822)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1 () T@$Mutation_164822)
(declare-fun |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1| () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1 () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2 () T@$Mutation_164778)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0 () T@$Memory_160799)
(declare-fun $abort_code@3 () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@0 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0 () Int)
(declare-fun |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1 () T@$Mutation_164778)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$1$$t1@1 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1 () Bool)
(declare-fun $abort_flag@0 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1 () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@0 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@0 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1 () T@$1_DiemAccount_DiemAccount)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$0$$t1@1 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t5@0 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@0 () T@$Mutation_164822)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t7@0 () Int)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_126966)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory () T@$Memory_161752)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_159816)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_161887)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_161978)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory| () T@$Memory_162069)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_126448)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int) T@$1_AccountFreezing_FreezingBit)
(declare-fun $t6 () Int)
(declare-fun $es () T@$EventStore)
(push 1)
(set-info :boogie-vc-id $1_AccountAdministrationScripts_rotate_authentication_key$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 319296) (let ((L2_correct  (and (=> (= (ControlFlow 0 211792) (- 0 321955)) (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t5)) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0))))) 0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| $t4)))) (not (= (seq.len _$t1) 32))) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0))))) 0))) (=> (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t5)) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0))))) 0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| $t4)))) (not (= (seq.len _$t1) 32))) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0))))) 0)) (=> (= (ControlFlow 0 211792) (- 0 322000)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t5)) (= 5 $t8@0)) (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0))))) 0) (= 1 $t8@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| $t4))) (= 5 $t8@0))) (and (not (= (seq.len _$t1) 32)) (= 7 $t8@0))) (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0))))) 0) (= 1 $t8@0))) (= 1 $t8@0)) (= 7 $t8@0)))))))
(let ((anon10_Then_correct  (=> (and (and $abort_flag@7 (= $abort_code@8 $abort_code@8)) (and (= $t8@0 $abort_code@8) (= (ControlFlow 0 211624) 211792))) L2_correct)))
(let ((anon9_Then_correct  (=> (and (and $abort_flag@5 (= $abort_code@6 $abort_code@6)) (and (= $t8@0 $abort_code@6) (= (ControlFlow 0 211806) 211792))) L2_correct)))
(let ((anon8_Then_correct  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= $t8@0 $abort_code@4) (= (ControlFlow 0 211820) 211792))) L2_correct)))
(let ((anon10_Else_correct  (=> (not $abort_flag@7) (and (=> (= (ControlFlow 0 211610) (- 0 321868)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t5))) (and (=> (= (ControlFlow 0 211610) (- 0 321880)) (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0))))) 0))) (=> (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0))))) 0)) (and (=> (= (ControlFlow 0 211610) (- 0 321891)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| $t4))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| $t4)))) (and (=> (= (ControlFlow 0 211610) (- 0 321905)) (not (not (= (seq.len _$t1) 32)))) (=> (not (not (= (seq.len _$t1) 32))) (and (=> (= (ControlFlow 0 211610) (- 0 321919)) (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0))))) 0))) (=> (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0))))) 0)) (=> (= (ControlFlow 0 211610) (- 0 321930)) (= (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@5) $t3)) _$t1)))))))))))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon18_Else_correct  (=> (not inline$$1_DiemAccount_restore_key_rotation_capability$0$$t12@0) (=> (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2 ($Mutation_164822 (|l#$Mutation_164822| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1) (|p#$Mutation_164822| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1) |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1|)) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_164822| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2))) (=> (and (and (and (and (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_164822| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2)) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2))) 1)) (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2))) 0))) (and (= (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2)) 0) inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@3 ($Mutation_164778 (|l#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2) (|p#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2) ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2)) (|v#$Mutation_164822| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2))))))) (and (and (= $1_DiemAccount_DiemAccount_$memory@4 ($Memory_160799 (|Store__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@3) (|a#$Global| (|l#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@3)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@3) (|a#$Global| (|l#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@3)) (|v#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@3)))) (= $abort_code@8 $abort_code@7)) (and (= $1_DiemAccount_DiemAccount_$memory@5 $1_DiemAccount_DiemAccount_$memory@4) (= $abort_flag@7 $abort_flag@6)))) (and (=> (= (ControlFlow 0 211412) 211624) anon10_Then_correct) (=> (= (ControlFlow 0 211412) 211610) anon10_Else_correct)))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$L3_correct  (=> (= $abort_code@8 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1) (=> (and (= $1_DiemAccount_DiemAccount_$memory@5 $1_DiemAccount_DiemAccount_$memory@3) (= $abort_flag@7 true)) (and (=> (= (ControlFlow 0 211258) 211624) anon10_Then_correct) (=> (= (ControlFlow 0 211258) 211610) anon10_Else_correct))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon18_Then_correct  (=> inline$$1_DiemAccount_restore_key_rotation_capability$0$$t12@0 (=> (and (and (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1))) 0)) (= 7 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@0)) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@0 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@0)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@0) (= (ControlFlow 0 211438) 211258))) inline$$1_DiemAccount_restore_key_rotation_capability$0$L3_correct))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Else_correct  (=> (not $abort_flag@6) (=> (and (and (= |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1| (|v#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2)) (= |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1| |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1|)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1 ($Mutation_164822 (|l#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2) (seq.++ (|p#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2) (seq.unit 2)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2)))) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t12@0  (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1))) 0))))) (and (=> (= (ControlFlow 0 211330) 211438) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon18_Then_correct) (=> (= (ControlFlow 0 211330) 211412) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon18_Else_correct))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Then_correct  (=> (and (and $abort_flag@6 (= $abort_code@7 $abort_code@7)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1 $abort_code@7) (= (ControlFlow 0 211452) 211258))) inline$$1_DiemAccount_restore_key_rotation_capability$0$L3_correct)))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Then$1_correct  (=> (= $abort_flag@6 true) (=> (and (= $abort_code@7 $EXEC_FAILURE_CODE) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@0)) (and (=> (= (ControlFlow 0 211504) 211452) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Then_correct) (=> (= (ControlFlow 0 211504) 211330) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Else_correct))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@3) inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1)) (= (ControlFlow 0 211502) 211504)) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Then$1_correct)))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@3) inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1) (=> (and (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@1 ($Mutation_164778 ($Global inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@3) inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1))) (= $abort_flag@6 $abort_flag@5)) (and (= $abort_code@7 $abort_code@6) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@1))) (and (=> (= (ControlFlow 0 211288) 211452) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Then_correct) (=> (= (ControlFlow 0 211288) 211330) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Else_correct))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon15_Then_correct  (=> (and inline$$1_DiemAccount_exists_at$3$$t1@1 (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1))) (and (=> (= (ControlFlow 0 211266) 211502) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Then_correct) (=> (= (ControlFlow 0 211266) 211288) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Else_correct)))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon15_Else_correct  (=> (and (and (not inline$$1_DiemAccount_exists_at$3$$t1@1) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0) (= (ControlFlow 0 211252) 211258))) inline$$1_DiemAccount_restore_key_rotation_capability$0$L3_correct)))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon14_Else_correct  (=> (and (not $abort_flag@5) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0 5)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0) (= inline$$1_DiemAccount_exists_at$3$$t1@1 inline$$1_DiemAccount_exists_at$3$$t1@1))) (and (=> (= (ControlFlow 0 211236) 211266) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon15_Then_correct) (=> (= (ControlFlow 0 211236) 211252) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon15_Else_correct))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon14_Then_correct  (=> (and (and $abort_flag@5 (= $abort_code@6 $abort_code@6)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1 $abort_code@6) (= (ControlFlow 0 211518) 211258))) inline$$1_DiemAccount_restore_key_rotation_capability$0$L3_correct)))
(let ((inline$$1_DiemAccount_exists_at$3$anon0_correct  (=> (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t4@1 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t4@1) (=> (and (= inline$$1_DiemAccount_exists_at$3$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@3) inline$$1_DiemAccount_restore_key_rotation_capability$0$$t4@1)) (= inline$$1_DiemAccount_exists_at$3$$t1@1 inline$$1_DiemAccount_exists_at$3$$t1@1)) (and (=> (= (ControlFlow 0 211194) 211518) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon14_Then_correct) (=> (= (ControlFlow 0 211194) 211236) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon14_Else_correct))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon0_correct  (=> (and (= (seq.len (|p#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t3@0)) 0) (= (seq.len (|p#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@0)) 0)) (=> (and (and (= (seq.len (|p#$Mutation_164822| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@0)) 0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t4@1 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1)) (= (ControlFlow 0 211200) 211194))) inline$$1_DiemAccount_exists_at$3$anon0_correct))))
(let ((anon9_Else_correct  (=> (and (not $abort_flag@5) (= (ControlFlow 0 211522) 211200)) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon0_correct)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Then_correct  (=> (and (and (and inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1 (= inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1 ($Mutation_115609 (|l#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2) (seq.++ (|p#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2) (seq.unit 0)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2))))) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2 ($Mutation_115609 (|l#$Mutation_115609| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1) (|p#$Mutation_115609| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1) _$t1)) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3 ($Mutation_164778 (|l#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2) (|p#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2) ($1_DiemAccount_DiemAccount (|v#$Mutation_115609| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2)) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2))))))) (and (and (= $1_DiemAccount_DiemAccount_$memory@2 ($Memory_160799 (|Store__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@1) (|a#$Global| (|l#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@1) (|a#$Global| (|l#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3)) (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3)))) (= $1_DiemAccount_DiemAccount_$memory@3 $1_DiemAccount_DiemAccount_$memory@2)) (and (= $abort_code@6 $abort_code@5) (= $abort_flag@5 $abort_flag@4)))) (and (=> (= (ControlFlow 0 210499) 211806) anon9_Then_correct) (=> (= (ControlFlow 0 210499) 211522) anon9_Else_correct)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct  (=> (= $1_DiemAccount_DiemAccount_$memory@3 $1_DiemAccount_DiemAccount_$memory@1) (=> (and (= $abort_code@6 inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1) (= $abort_flag@5 true)) (and (=> (= (ControlFlow 0 210295) 211806) anon9_Then_correct) (=> (= (ControlFlow 0 210295) 211522) anon9_Else_correct))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Else_correct  (=> (and (and (not inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0) (= (ControlFlow 0 210449) 210295))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Else_correct  (=> (and (and (and (not $abort_flag@4) (|$IsValid'u64'| 32)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1 (= |inline$$1_Vector_length'u8'$0$l@1| 32)) (|$IsValid'u64'| 8))) (and (and (|$IsValid'u64'| inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0 7)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1)))) (and (=> (= (ControlFlow 0 210433) 210499) inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Then_correct) (=> (= (ControlFlow 0 210433) 210449) inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Else_correct)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Then_correct  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1 $abort_code@5) (= (ControlFlow 0 210513) 210295))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct)))
(let ((|inline$$1_Vector_length'u8'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'u8'$0$l@1| (seq.len _$t1)) (and (=> (= (ControlFlow 0 210375) 210513) inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Then_correct) (=> (= (ControlFlow 0 210375) 210433) inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Else_correct)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct  (=> (and (and (not $abort_flag@4) (= |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1| (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2))) (and (= |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1| |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1|) (= (ControlFlow 0 210381) 210375))) |inline$$1_Vector_length'u8'$0$anon0_correct|)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1 $abort_code@5) (= (ControlFlow 0 210527) 210295))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then$1_correct  (=> (= $abort_flag@4 true) (=> (and (= $abort_code@5 $EXEC_FAILURE_CODE) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2 inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0)) (and (=> (= (ControlFlow 0 210579) 210527) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct) (=> (= (ControlFlow 0 210579) 210381) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@1) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1)) (= (ControlFlow 0 210577) 210579)) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then$1_correct)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@1) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1) (=> (and (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1 ($Mutation_164778 ($Global inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@1) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1))) (= $abort_flag@4 $abort_flag@3)) (and (= $abort_code@5 $abort_code@4) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2 inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1))) (and (=> (= (ControlFlow 0 210325) 210527) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct) (=> (= (ControlFlow 0 210325) 210381) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Then_correct  (=> (and inline$$1_DiemAccount_exists_at$2$$t1@1 (= inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1))) (and (=> (= (ControlFlow 0 210303) 210577) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then_correct) (=> (= (ControlFlow 0 210303) 210325) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Else_correct)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Else_correct  (=> (and (and (not inline$$1_DiemAccount_exists_at$2$$t1@1) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0) (= (ControlFlow 0 210289) 210295))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Else_correct  (=> (and (not $abort_flag@3) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0 5)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0) (= inline$$1_DiemAccount_exists_at$2$$t1@1 inline$$1_DiemAccount_exists_at$2$$t1@1))) (and (=> (= (ControlFlow 0 210273) 210303) inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Then_correct) (=> (= (ControlFlow 0 210273) 210289) inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Else_correct))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Then_correct  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1 $abort_code@4) (= (ControlFlow 0 210593) 210295))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct)))
(let ((inline$$1_DiemAccount_exists_at$2$anon0_correct  (=> (= inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1) (=> (and (= inline$$1_DiemAccount_exists_at$2$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@1) inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1)) (= inline$$1_DiemAccount_exists_at$2$$t1@1 inline$$1_DiemAccount_exists_at$2$$t1@1)) (and (=> (= (ControlFlow 0 210231) 210593) inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Then_correct) (=> (= (ControlFlow 0 210231) 210273) inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Else_correct))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon0_correct  (=> (= (seq.len (|p#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t6@0)) 0) (=> (and (= (seq.len (|p#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0)) 0) (= (seq.len (|p#$Mutation_115609| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@0)) 0)) (=> (and (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1) (= _$t1 _$t1)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1)) (= (ControlFlow 0 210237) 210231))) inline$$1_DiemAccount_exists_at$2$anon0_correct)))))
(let ((anon8_Else_correct  (=> (not $abort_flag@3) (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1) (= (ControlFlow 0 210597) 210237)) inline$$1_DiemAccount_rotate_authentication_key$0$anon0_correct))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Else_correct  (=> (not inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0) (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2 ($Mutation_164822 (|l#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1) (|p#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1) |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1|)) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2))) (=> (and (and (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2)) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2))) 1)) (and (|$IsValid'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0 (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1) 0)))) (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2))) 0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3 ($Mutation_164778 (|l#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2) (|p#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2) ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2)) (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2)))))) (and (= $1_DiemAccount_DiemAccount_$memory@0 ($Memory_160799 (|Store__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3)) (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3)))) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0))) (and (and (= $abort_code@4 $abort_code@3) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0)) (and (= $abort_flag@3 $abort_flag@2) (= $1_DiemAccount_DiemAccount_$memory@1 $1_DiemAccount_DiemAccount_$memory@0)))) (and (=> (= (ControlFlow 0 209435) 211820) anon8_Then_correct) (=> (= (ControlFlow 0 209435) 210597) anon8_Else_correct))))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct  (=> (and (and (= $abort_code@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@0)) (and (= $abort_flag@3 true) (= $1_DiemAccount_DiemAccount_$memory@1 $1_DiemAccount_DiemAccount_$memory))) (and (=> (= (ControlFlow 0 209112) 211820) anon8_Then_correct) (=> (= (ControlFlow 0 209112) 210597) anon8_Else_correct)))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Then_correct  (=> inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0 (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1))) 0) (= 7 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0)) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0) (= (ControlFlow 0 209461) 209112))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct  (=> (and (not $abort_flag@2) (= |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2))) (=> (and (and (= |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1| |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1|) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1 ($Mutation_164822 (|l#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2) (seq.++ (|p#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2) (seq.unit 2)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2))))) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1 (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1)) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0 (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1))) 0)))) (and (=> (= (ControlFlow 0 209343) 209461) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Then_correct) (=> (= (ControlFlow 0 209343) 209435) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Else_correct))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1 $abort_code@3) (= (ControlFlow 0 209475) 209112))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then$1_correct  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0) (=> (and (= $abort_flag@2 true) (= $abort_code@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 209527) 209475) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct) (=> (= (ControlFlow 0 209527) 209343) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0)) (= (ControlFlow 0 209525) 209527)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then$1_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (=> (and (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1 ($Mutation_164778 ($Global inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0))) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1)) (and (= $abort_flag@2 $abort_flag@1) (= $abort_code@3 $abort_code@2))) (and (=> (= (ControlFlow 0 209297) 209475) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct) (=> (= (ControlFlow 0 209297) 209343) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Then_correct  (=> inline$$1_DiemAccount_exists_at$1$$t1@1 (and (=> (= (ControlFlow 0 209275) 209525) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then_correct) (=> (= (ControlFlow 0 209275) 209297) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Else_correct)))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Else_correct  (=> (and (and (not inline$$1_DiemAccount_exists_at$1$$t1@1) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0) (= (ControlFlow 0 209271) 209112))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Else_correct  (=> (and (not $abort_flag@1) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0 5)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0) (= inline$$1_DiemAccount_exists_at$1$$t1@1 inline$$1_DiemAccount_exists_at$1$$t1@1))) (and (=> (= (ControlFlow 0 209255) 209275) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Then_correct) (=> (= (ControlFlow 0 209255) 209271) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Else_correct))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1 $abort_code@2) (= (ControlFlow 0 209541) 209112))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct)))
(let ((inline$$1_DiemAccount_exists_at$1$anon0_correct  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (=> (and (= inline$$1_DiemAccount_exists_at$1$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0)) (= inline$$1_DiemAccount_exists_at$1$$t1@1 inline$$1_DiemAccount_exists_at$1$$t1@1)) (and (=> (= (ControlFlow 0 209213) 209541) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Then_correct) (=> (= (ControlFlow 0 209213) 209255) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Else_correct))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Then_correct  (=> (and inline$$Not$0$dst@1 (= (ControlFlow 0 209219) 209213)) inline$$1_DiemAccount_exists_at$1$anon0_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0) (= (ControlFlow 0 209106) 209112))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else$1_correct  (=> (|$IsValid'u64'| 9) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0 1)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 209090) 209219) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Then_correct) (=> (= (ControlFlow 0 209090) 209106) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1)) (= (ControlFlow 0 209050) 209090)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else$1_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct  (=> (and (not $abort_flag@1) (= (ControlFlow 0 209056) 209050)) inline$$Not$0$anon0_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1 $abort_code@2) (= (ControlFlow 0 209555) 209112))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct  (=> (not $abort_flag@0) (=> (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1 (|$key_rotation_capability#$1_DiemAccount_DiemAccount| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2)) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0 (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1)) 0))) (=> (and (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0))) (and (=> (= (ControlFlow 0 208926) 209555) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct) (=> (= (ControlFlow 0 208926) 209056) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct)))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct  (=> (= $abort_code@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1) (=> (and (= $abort_flag@1 true) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@0)) (and (=> (= (ControlFlow 0 208874) 209555) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct) (=> (= (ControlFlow 0 208874) 209056) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1 $abort_code@1) (= (ControlFlow 0 208940) 208874))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@0)) (and (=> (= (ControlFlow 0 208992) 208940) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct) (=> (= (ControlFlow 0 208992) 208926) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0)) (= (ControlFlow 0 208990) 208992)) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then$1_correct)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (=> (and (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1))) (and (=> (= (ControlFlow 0 208892) 208940) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct) (=> (= (ControlFlow 0 208892) 208926) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Then_correct  (=> inline$$1_DiemAccount_exists_at$0$$t1@1 (and (=> (= (ControlFlow 0 208878) 208990) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then_correct) (=> (= (ControlFlow 0 208878) 208892) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Else_correct)))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Else_correct  (=> (and (and (not inline$$1_DiemAccount_exists_at$0$$t1@1) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0) (= (ControlFlow 0 208868) 208874))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Else_correct  (=> (and (not false) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0 5)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0) (= inline$$1_DiemAccount_exists_at$0$$t1@1 inline$$1_DiemAccount_exists_at$0$$t1@1))) (and (=> (= (ControlFlow 0 208852) 208878) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Then_correct) (=> (= (ControlFlow 0 208852) 208868) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Else_correct))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Then_correct true))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0)) (= inline$$1_DiemAccount_exists_at$0$$t1@1 inline$$1_DiemAccount_exists_at$0$$t1@1)) (and (=> (= (ControlFlow 0 208810) 209006) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Then_correct) (=> (= (ControlFlow 0 208810) 208852) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Else_correct))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon0_correct  (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (= (ControlFlow 0 208816) 208810)) inline$$1_DiemAccount_exists_at$0$anon0_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon0_correct  (=> (= (seq.len (|p#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t5@0)) 0) (=> (and (and (and (= (seq.len (|p#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0)) 0) (= (seq.len (|p#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@0)) 0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t7@0 (|$addr#$signer| _$t0)) (= _$t0 _$t0))) (and (and (|$IsValid'address'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0 (|$addr#$signer| _$t0))) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (= (ControlFlow 0 209012) 208816)))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon0_correct))))
(let ((anon0$1_correct  (=> (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@0) (or (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@0)))) 0) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@0)))) 0)) (= addr@@0 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@0))) 0)))))))
 :qid |AccountAdministrationScriptsseqArraybpl.16400:20|
 :skolemid |227|
)) (=> (and (and (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@1) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@1) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@1)))) 0)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@1)))) 0)) (= addr@@1 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@1))) 0)))))))
 :qid |AccountAdministrationScriptsseqArraybpl.16404:20|
 :skolemid |228|
)) (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@2)))
 :qid |AccountAdministrationScriptsseqArraybpl.16408:20|
 :skolemid |229|
))) (and (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (and (= addr@@3 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@3)) (|Select__T@[Int]Bool_| (|domain#$Memory_161752| $1_DiemAccount_AccountOperationsCapability_$memory) addr@@3)))
 :qid |AccountAdministrationScriptsseqArraybpl.16412:20|
 :skolemid |230|
)) (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@4) (|Select__T@[Int]Bool_| (|domain#$Memory_159816| $1_AccountFreezing_FreezingBit_$memory) addr@@4)))
 :qid |AccountAdministrationScriptsseqArraybpl.16416:20|
 :skolemid |231|
)))) (=> (and (and (and (and (and (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161887| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@5) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@5)))
 :qid |AccountAdministrationScriptsseqArraybpl.16420:22|
 :skolemid |232|
)) (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161978| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@6) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@6)))
 :qid |AccountAdministrationScriptsseqArraybpl.16420:218|
 :skolemid |233|
))) (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_162069| |$1_DiemAccount_Balance'#0'_$memory|) addr@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@7)))
 :qid |AccountAdministrationScriptsseqArraybpl.16420:415|
 :skolemid |234|
))) (|$IsValid'address'| (|$addr#$signer| _$t0))) (and (|$IsValid'vec'u8''| _$t1) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $a_0)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc) (and (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc))) 1) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc))) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.16429:20|
 :skolemid |235|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $a_0))
)))) (and (and (and (= $t3 (|$addr#$signer| _$t0)) (= $t4 (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t3))) 0))) (and (= $t5 (|$addr#$signer| _$t0)) (let ((addr@@8 (|$addr#$signer| _$t0)))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_126448| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@8)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_159816| $1_AccountFreezing_FreezingBit_$memory) addr@@8) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_159816| $1_AccountFreezing_FreezingBit_$memory) addr@@8)))))))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= $t6 (|$addr#$signer| _$t0)) (= (ControlFlow 0 209561) 209012))))) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon0_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_89088_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_89088| stream@@0) 0) (forall ((v@@47 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_89088| stream@@0) v@@47) 0)
 :qid |AccountAdministrationScriptsseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |AccountAdministrationScriptsseqArraybpl.3268:13|
 :skolemid |89|
))) (= (ControlFlow 0 207377) 209561)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 319296) 207377) inline$$InitEventStore$0$anon0_correct)))
anon0_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@17 () Bool)
(declare-fun _$t0@@0 () T@$signer)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory| () T@$Memory_135848)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory@3| () T@$Memory_162069)
(declare-fun |Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|T@[Int]$1_DiemAccount_Balance'#0'| Int) |T@$1_DiemAccount_Balance'#0'|)
(declare-fun $abort_code@15 () Int)
(declare-fun $abort_flag@16 () Bool)
(declare-fun $abort_code@14 () Int)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory@1| () T@$Memory_162069)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| () Int)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory@2| () T@$Memory_162069)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory@0| () T@$Memory_162069)
(declare-fun |Store__T@[Int]$1_DiemAccount_Balance'#0'_| (|T@[Int]$1_DiemAccount_Balance'#0'| Int |T@$1_DiemAccount_Balance'#0'|) |T@[Int]$1_DiemAccount_Balance'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'#0'|) ( ?x1 Int) ( ?x2 |T@$1_DiemAccount_Balance'#0'|)) (! (= (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|Store__T@[Int]$1_DiemAccount_Balance'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemAccount_Balance'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|Store__T@[Int]$1_DiemAccount_Balance'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t22@1| () |T@$1_DiemAccount_Balance'#0'|)
(declare-fun $abort_code@13 () Int)
(declare-fun $abort_flag@15 () Bool)
(declare-fun |inline$$1_Diem_zero'#0'$0$$ret0@1| () |T@$1_Diem_Diem'#0'|)
(declare-fun |inline$$1_Diem_zero'#0'$0$$t0@0| () Bool)
(declare-fun |inline$$1_Diem_zero'#0'$0$$t3@1| () |T@$1_Diem_Diem'#0'|)
(declare-fun $abort_flag@14 () Bool)
(declare-fun $abort_code@12 () Int)
(declare-fun |inline$$1_Diem_zero'#0'$0$$t1@0| () Int)
(declare-fun |inline$$1_Diem_zero'#0'$0$$ret0@0| () |T@$1_Diem_Diem'#0'|)
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t17@1| () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$0$$ret0@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0| () Int)
(declare-fun inline$$1_Roles_can_hold_balance$0$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$0$$t4@1 () Int)
(declare-fun $abort_flag@12 () Bool)
(declare-fun $abort_code@10 () Int)
(declare-fun $abort_flag@7@@0 () Bool)
(declare-fun $abort_code@6@@0 () Int)
(declare-fun $abort_flag@3@@0 () Bool)
(declare-fun $abort_code@3@@0 () Int)
(declare-fun inline$$1_Roles_can_hold_balance$0$$t2@1 () Bool)
(declare-fun $abort_flag@13 () Bool)
(declare-fun $abort_code@11 () Int)
(declare-fun inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 () Bool)
(declare-fun $abort_flag@11 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_designated_dealer_role$0$$ret0@0 () Bool)
(declare-fun $abort_flag@9 () Bool)
(declare-fun $abort_code@8@@0 () Int)
(declare-fun inline$$1_Roles_has_role$2$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t2@1 () Bool)
(declare-fun $abort_flag@10 () Bool)
(declare-fun $abort_code@9 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$2$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$2$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t6@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@7@@0 () Int)
(declare-fun $abort_flag@8 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t5@1 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$0$$t1@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$0$$ret0@1 () Bool)
(declare-fun $abort_flag@6@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$0$$ret0@0 () Bool)
(declare-fun $abort_flag@4@@0 () Bool)
(declare-fun $abort_code@4@@0 () Int)
(declare-fun inline$$1_Roles_has_role$1$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t2@1 () Bool)
(declare-fun $abort_code@5@@0 () Int)
(declare-fun $abort_flag@5@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$1$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$1$$t6@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t5@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 () Bool)
(declare-fun $abort_flag@2@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$0$$ret0@0 () Bool)
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun inline$$1_Roles_has_role$0$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t2@1 () Bool)
(declare-fun $abort_code@2@@0 () Int)
(declare-fun $abort_flag@1@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t5@1 () Bool)
(declare-fun inline$$1_DiemAccount_exists_at$0$$t1@1@@0 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t9@0| () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t10@0| () Int)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_128199)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_129052)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory| () T@$Memory_140848)
(declare-fun |$1_Diem_MintCapability'$1_XDX_XDX'_$memory| () T@$Memory_140935)
(declare-fun |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory| () T@$Memory_136128)
(declare-fun |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory| () T@$Memory_136215)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory| () T@$Memory_141517)
(declare-fun |$1_Diem_Preburn'$1_XUS_XUS'_$memory| () T@$Memory_141108)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory| () T@$Memory_141616)
(declare-fun |$1_Diem_Preburn'$1_XDX_XDX'_$memory| () T@$Memory_141199)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_135648)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_135712)
(declare-fun |$1_Diem_Preburn'#0'_$memory| () T@$Memory_141290)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory| () T@$Memory_141715)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_155070)
(declare-fun $1_VASPDomain_VASPDomainManager_$memory () T@$Memory_152687)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_159568)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_153604)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_153540)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|T@[Int]$1_Diem_CurrencyInfo'#0'| Int) |T@$1_Diem_CurrencyInfo'#0'|)
(push 1)
(set-info :boogie-vc-id $1_AccountAdministrationScripts_add_currency_to_account$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 322312) (let ((anon4_Else_correct  (=> (not $abort_flag@17) (and (=> (= (ControlFlow 0 217113) (- 0 325827)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_162069| |$1_DiemAccount_Balance'#0'_$memory|) (|$addr#$signer| _$t0@@0)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_162069| |$1_DiemAccount_Balance'#0'_$memory|) (|$addr#$signer| _$t0@@0))) (and (=> (= (ControlFlow 0 217113) (- 0 325838)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_135848| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_135848| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 217113) (- 0 325848)) (not (not (or (or (let ((addr@@9 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@9)) 5))) (let ((addr@@10 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@10)) 6)))) (let ((addr@@11 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@11)) 2))))))) (=> (not (not (or (or (let ((addr@@12 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@12)) 5))) (let ((addr@@13 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@13)) 6)))) (let ((addr@@14 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@14)) 2)))))) (and (=> (= (ControlFlow 0 217113) (- 0 325859)) (not (not (or (or (let ((addr@@15 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@15)) 5))) (let ((addr@@16 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@16)) 6)))) (let ((addr@@17 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@17)) 2))))))) (=> (not (not (or (or (let ((addr@@18 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@18)) 5))) (let ((addr@@19 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@19)) 6)))) (let ((addr@@20 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@20)) 2)))))) (and (=> (= (ControlFlow 0 217113) (- 0 325870)) (|Select__T@[Int]Bool_| (|domain#$Memory_162069| |$1_DiemAccount_Balance'#0'_$memory@3|) (|$addr#$signer| _$t0@@0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_162069| |$1_DiemAccount_Balance'#0'_$memory@3|) (|$addr#$signer| _$t0@@0)) (=> (= (ControlFlow 0 217113) (- 0 325879)) (= (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_162069| |$1_DiemAccount_Balance'#0'_$memory@3|) (|$addr#$signer| _$t0@@0)) (|$1_DiemAccount_Balance'#0'| (|$1_Diem_Diem'#0'| 0)))))))))))))))))
(let ((anon4_Then_correct  (=> (and $abort_flag@17 (= $abort_code@15 $abort_code@15)) (and (=> (= (ControlFlow 0 217261) (- 0 325706)) (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_162069| |$1_DiemAccount_Balance'#0'_$memory|) (|$addr#$signer| _$t0@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_135848| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (not (or (or (let ((addr@@21 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@21)) 5))) (let ((addr@@22 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@22)) 6)))) (let ((addr@@23 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@23)) 2)))))) (not (or (or (let ((addr@@24 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@24)) 5))) (let ((addr@@25 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@25)) 6)))) (let ((addr@@26 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@26)) 2))))))) (=> (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_162069| |$1_DiemAccount_Balance'#0'_$memory|) (|$addr#$signer| _$t0@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_135848| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (not (or (or (let ((addr@@27 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@27)) 5))) (let ((addr@@28 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@28)) 6)))) (let ((addr@@29 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@29)) 2)))))) (not (or (or (let ((addr@@30 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@30)) 5))) (let ((addr@@31 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@31)) 6)))) (let ((addr@@32 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@32)) 2)))))) (=> (= (ControlFlow 0 217261) (- 0 325735)) (or (or (or (or (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_162069| |$1_DiemAccount_Balance'#0'_$memory|) (|$addr#$signer| _$t0@@0)) (= 6 $abort_code@15)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_135848| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $abort_code@15))) (and (not (or (or (let ((addr@@33 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@33)) 5))) (let ((addr@@34 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@34)) 6)))) (let ((addr@@35 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@35)) 2))))) (= 7 $abort_code@15))) (and (not (or (or (let ((addr@@36 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@36)) 5))) (let ((addr@@37 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@37)) 6)))) (let ((addr@@38 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@38)) 2))))) (= 7 $abort_code@15))) (= 5 $abort_code@15)) (= 7 $abort_code@15)) (= 6 $abort_code@15))))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon31_Else_correct|  (=> (and (and (not $abort_flag@16) (= $abort_code@15 $abort_code@14)) (and (= |$1_DiemAccount_Balance'#0'_$memory@3| |$1_DiemAccount_Balance'#0'_$memory@1|) (= $abort_flag@17 $abort_flag@16))) (and (=> (= (ControlFlow 0 216891) 217261) anon4_Then_correct) (=> (= (ControlFlow 0 216891) 217113) anon4_Else_correct)))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|  (=> (= $abort_code@15 |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1|) (=> (and (= |$1_DiemAccount_Balance'#0'_$memory@3| |$1_DiemAccount_Balance'#0'_$memory@2|) (= $abort_flag@17 true)) (and (=> (= (ControlFlow 0 213976) 217261) anon4_Then_correct) (=> (= (ControlFlow 0 213976) 217113) anon4_Else_correct))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon31_Then_correct|  (=> $abort_flag@16 (=> (and (and (= $abort_code@14 $abort_code@14) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| $abort_code@14)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory@1|) (= (ControlFlow 0 216905) 213976))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon30_Then$1_correct|  (=> (= |$1_DiemAccount_Balance'#0'_$memory@1| |$1_DiemAccount_Balance'#0'_$memory|) (=> (and (= $abort_code@14 $EXEC_FAILURE_CODE) (= $abort_flag@16 true)) (and (=> (= (ControlFlow 0 216957) 216905) |inline$$1_DiemAccount_add_currency'#0'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 216957) 216891) |inline$$1_DiemAccount_add_currency'#0'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon30_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_162069| |$1_DiemAccount_Balance'#0'_$memory|) (|$addr#$signer| _$t0@@0)) (= (ControlFlow 0 216955) 216957)) |inline$$1_DiemAccount_add_currency'#0'$0$anon30_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon30_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_162069| |$1_DiemAccount_Balance'#0'_$memory|) (|$addr#$signer| _$t0@@0))) (=> (and (and (= |$1_DiemAccount_Balance'#0'_$memory@0| ($Memory_162069 (|Store__T@[Int]Bool_| (|domain#$Memory_162069| |$1_DiemAccount_Balance'#0'_$memory|) (|$addr#$signer| _$t0@@0) true) (|Store__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_162069| |$1_DiemAccount_Balance'#0'_$memory|) (|$addr#$signer| _$t0@@0) |inline$$1_DiemAccount_add_currency'#0'$0$$t22@1|))) (= |$1_DiemAccount_Balance'#0'_$memory@1| |$1_DiemAccount_Balance'#0'_$memory@0|)) (and (= $abort_code@14 $abort_code@13) (= $abort_flag@16 $abort_flag@15))) (and (=> (= (ControlFlow 0 216881) 216905) |inline$$1_DiemAccount_add_currency'#0'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 216881) 216891) |inline$$1_DiemAccount_add_currency'#0'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon29_Else_correct|  (=> (and (not $abort_flag@15) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t22@1| (|$1_DiemAccount_Balance'#0'| |inline$$1_Diem_zero'#0'$0$$ret0@1|))) (and (=> (= (ControlFlow 0 216859) 216955) |inline$$1_DiemAccount_add_currency'#0'$0$anon30_Then_correct|) (=> (= (ControlFlow 0 216859) 216881) |inline$$1_DiemAccount_add_currency'#0'$0$anon30_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon29_Then_correct|  (=> $abort_flag@15 (=> (and (and (= $abort_code@13 $abort_code@13) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| $abort_code@13)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 216971) 213976))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((|inline$$1_Diem_zero'#0'$0$anon3_Else_correct|  (=> (not |inline$$1_Diem_zero'#0'$0$$t0@0|) (=> (and (|$IsValid'u64'| 0) (= |inline$$1_Diem_zero'#0'$0$$t3@1| (|$1_Diem_Diem'#0'| 0))) (=> (and (and (= |inline$$1_Diem_zero'#0'$0$$t3@1| |inline$$1_Diem_zero'#0'$0$$t3@1|) (= $abort_flag@15 $abort_flag@14)) (and (= $abort_code@13 $abort_code@12) (= |inline$$1_Diem_zero'#0'$0$$ret0@1| |inline$$1_Diem_zero'#0'$0$$t3@1|))) (and (=> (= (ControlFlow 0 216811) 216971) |inline$$1_DiemAccount_add_currency'#0'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 216811) 216859) |inline$$1_DiemAccount_add_currency'#0'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'#0'$0$anon3_Then_correct|  (=> |inline$$1_Diem_zero'#0'$0$$t0@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_135848| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 |inline$$1_Diem_zero'#0'$0$$t1@0|)) (=> (and (and (= |inline$$1_Diem_zero'#0'$0$$t1@0| |inline$$1_Diem_zero'#0'$0$$t1@0|) (= $abort_flag@15 true)) (and (= $abort_code@13 |inline$$1_Diem_zero'#0'$0$$t1@0|) (= |inline$$1_Diem_zero'#0'$0$$ret0@1| |inline$$1_Diem_zero'#0'$0$$ret0@0|))) (and (=> (= (ControlFlow 0 216841) 216971) |inline$$1_DiemAccount_add_currency'#0'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 216841) 216859) |inline$$1_DiemAccount_add_currency'#0'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'#0'$0$anon0_correct|  (=> (= |inline$$1_Diem_zero'#0'$0$$t0@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_135848| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 216783) 216841) |inline$$1_Diem_zero'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 216783) 216811) |inline$$1_Diem_zero'#0'$0$anon3_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon28_Then_correct|  (=> (and inline$$Not$0$dst@1@@0 (= (ControlFlow 0 216847) 216783)) |inline$$1_Diem_zero'#0'$0$anon0_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon28_Else_correct|  (=> (not inline$$Not$0$dst@1@@0) (=> (and (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0|)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 216630) 213976))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon27_Then$1_correct|  (=> (|$IsValid'u64'| 15) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0| 6)) (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0|) (= inline$$Not$0$dst@1@@0 inline$$Not$0$dst@1@@0))) (and (=> (= (ControlFlow 0 216614) 216847) |inline$$1_DiemAccount_add_currency'#0'$0$anon28_Then_correct|) (=> (= (ControlFlow 0 216614) 216630) |inline$$1_DiemAccount_add_currency'#0'$0$anon28_Else_correct|))))))
(let ((inline$$Not$0$anon0_correct@@0  (=> (and (= inline$$Not$0$dst@1@@0  (not |inline$$1_DiemAccount_add_currency'#0'$0$$t17@1|)) (= (ControlFlow 0 216578) 216614)) |inline$$1_DiemAccount_add_currency'#0'$0$anon27_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon27_Then_correct|  (=> inline$$1_Roles_can_hold_balance$0$$ret0@1 (=> (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t17@1| (|Select__T@[Int]Bool_| (|domain#$Memory_162069| |$1_DiemAccount_Balance'#0'_$memory|) |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0|)) (= (ControlFlow 0 216584) 216578)) inline$$Not$0$anon0_correct@@0))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon27_Else_correct|  (=> (not inline$$1_Roles_can_hold_balance$0$$ret0@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0|)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 216538) 213976))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon26_Else_correct|  (=> (and (not $abort_flag@14) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0| 7)) (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0|) (= inline$$1_Roles_can_hold_balance$0$$ret0@1 inline$$1_Roles_can_hold_balance$0$$ret0@1))) (and (=> (= (ControlFlow 0 216522) 216584) |inline$$1_DiemAccount_add_currency'#0'$0$anon27_Then_correct|) (=> (= (ControlFlow 0 216522) 216538) |inline$$1_DiemAccount_add_currency'#0'$0$anon27_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon26_Then_correct|  (=> $abort_flag@14 (=> (and (and (= $abort_code@12 $abort_code@12) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| $abort_code@12)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 216985) 213976))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((inline$$1_Roles_can_hold_balance$0$L9_correct  (=> (= $abort_flag@14 true) (=> (and (= inline$$1_Roles_can_hold_balance$0$$ret0@1 inline$$1_Roles_can_hold_balance$0$$ret0@0) (= $abort_code@12 inline$$1_Roles_can_hold_balance$0$$t4@1)) (and (=> (= (ControlFlow 0 216412) 216985) |inline$$1_DiemAccount_add_currency'#0'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 216412) 216522) |inline$$1_DiemAccount_add_currency'#0'$0$anon26_Else_correct|))))))
(let ((inline$$1_Roles_can_hold_balance$0$anon17_Then_correct  (=> (and (and $abort_flag@12 (= $abort_code@10 $abort_code@10)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1 $abort_code@10) (= (ControlFlow 0 216406) 216412))) inline$$1_Roles_can_hold_balance$0$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$anon15_Then_correct  (=> (and (and $abort_flag@7@@0 (= $abort_code@6@@0 $abort_code@6@@0)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1 $abort_code@6@@0) (= (ControlFlow 0 216444) 216412))) inline$$1_Roles_can_hold_balance$0$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$anon13_Then_correct  (=> (and (and $abort_flag@3@@0 (= $abort_code@3@@0 $abort_code@3@@0)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1 $abort_code@3@@0) (= (ControlFlow 0 216476) 216412))) inline$$1_Roles_can_hold_balance$0$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$L7_correct  (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1 inline$$1_Roles_can_hold_balance$0$$t2@1) (= $abort_flag@14 $abort_flag@13)) (and (= inline$$1_Roles_can_hold_balance$0$$ret0@1 inline$$1_Roles_can_hold_balance$0$$t2@1) (= $abort_code@12 $abort_code@11))) (and (=> (= (ControlFlow 0 216392) 216985) |inline$$1_DiemAccount_add_currency'#0'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 216392) 216522) |inline$$1_DiemAccount_add_currency'#0'$0$anon26_Else_correct|)))))
(let ((inline$$1_Roles_can_hold_balance$0$anon17_Else_correct  (=> (and (not $abort_flag@12) (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@1)) (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@1) (= $abort_code@11 $abort_code@10)) (and (= $abort_flag@13 $abort_flag@12) (= (ControlFlow 0 216380) 216392))) inline$$1_Roles_can_hold_balance$0$L7_correct))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct  (=> (and (and (not $abort_flag@11) (= inline$$1_Roles_has_role$2$$ret0@1 inline$$1_Roles_has_role$2$$ret0@1)) (and (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 inline$$1_Roles_has_role$2$$ret0@1) (= $abort_flag@12 $abort_flag@11))) (and (=> (= (ControlFlow 0 216338) 216406) inline$$1_Roles_can_hold_balance$0$anon17_Then_correct) (=> (= (ControlFlow 0 216338) 216380) inline$$1_Roles_can_hold_balance$0$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct  (=> (and (and $abort_flag@11 (= $abort_code@10 $abort_code@10)) (and (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@0) (= $abort_flag@12 true))) (and (=> (= (ControlFlow 0 216356) 216406) inline$$1_Roles_can_hold_balance$0$anon17_Then_correct) (=> (= (ControlFlow 0 216356) 216380) inline$$1_Roles_can_hold_balance$0$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_role$2$anon11_Then_correct  (=> $abort_flag@9 (=> (and (and (= $abort_code@8@@0 $abort_code@8@@0) (= $abort_flag@11 true)) (and (= $abort_code@10 $abort_code@8@@0) (= inline$$1_Roles_has_role$2$$ret0@1 inline$$1_Roles_has_role$2$$ret0@0))) (and (=> (= (ControlFlow 0 216262) 216356) inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 216262) 216338) inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$2$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$2$$t2@1 inline$$1_Roles_has_role$2$$t2@1) (= $abort_flag@11 $abort_flag@10)) (and (= $abort_code@10 $abort_code@9) (= inline$$1_Roles_has_role$2$$ret0@1 inline$$1_Roles_has_role$2$$t2@1))) (and (=> (= (ControlFlow 0 216198) 216356) inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 216198) 216338) inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$2$anon11_Else_correct  (=> (and (and (and (not $abort_flag@9) (= inline$$1_Roles_has_role$2$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$2$$t6@2))) (and (= inline$$1_Roles_has_role$2$$t9@1 (= inline$$1_Roles_has_role$2$$t8@1 2)) (= inline$$1_Roles_has_role$2$$t9@1 inline$$1_Roles_has_role$2$$t9@1))) (and (and (= $abort_flag@10 $abort_flag@9) (= inline$$1_Roles_has_role$2$$t2@1 inline$$1_Roles_has_role$2$$t9@1)) (and (= $abort_code@9 $abort_code@8@@0) (= (ControlFlow 0 216244) 216198)))) inline$$1_Roles_has_role$2$L3_correct)))
(let ((inline$$1_Roles_has_role$2$anon10_Then$1_correct  (=> (= $abort_code@8@@0 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@9 true) (= inline$$1_Roles_has_role$2$$t6@2 inline$$1_Roles_has_role$2$$t6@0)) (and (=> (= (ControlFlow 0 216314) 216262) inline$$1_Roles_has_role$2$anon11_Then_correct) (=> (= (ControlFlow 0 216314) 216244) inline$$1_Roles_has_role$2$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$2$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0)) (= (ControlFlow 0 216312) 216314)) inline$$1_Roles_has_role$2$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$2$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$2$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0)) (= $abort_code@8@@0 $abort_code@7@@0)) (and (= $abort_flag@9 $abort_flag@8) (= inline$$1_Roles_has_role$2$$t6@2 inline$$1_Roles_has_role$2$$t6@1))) (and (=> (= (ControlFlow 0 216216) 216262) inline$$1_Roles_has_role$2$anon11_Then_correct) (=> (= (ControlFlow 0 216216) 216244) inline$$1_Roles_has_role$2$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$2$anon9_Then_correct  (=> inline$$1_Roles_has_role$2$$t5@1 (and (=> (= (ControlFlow 0 216202) 216312) inline$$1_Roles_has_role$2$anon10_Then_correct) (=> (= (ControlFlow 0 216202) 216216) inline$$1_Roles_has_role$2$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$2$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$2$$t5@1) (= false false)) (=> (and (and (= $abort_flag@10 $abort_flag@8) (= inline$$1_Roles_has_role$2$$t2@1 false)) (and (= $abort_code@9 $abort_code@7@@0) (= (ControlFlow 0 216186) 216198))) inline$$1_Roles_has_role$2$L3_correct))))
(let ((inline$$1_Roles_has_role$2$anon0_correct  (=> (and (= _$t0@@0 _$t0@@0) (= 2 2)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$2$$t4@0) (= inline$$1_Roles_has_role$2$$t4@0 (|$addr#$signer| _$t0@@0))) (and (= inline$$1_Roles_has_role$2$$t4@0 inline$$1_Roles_has_role$2$$t4@0) (= inline$$1_Roles_has_role$2$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0)))) (and (=> (= (ControlFlow 0 216166) 216202) inline$$1_Roles_has_role$2$anon9_Then_correct) (=> (= (ControlFlow 0 216166) 216186) inline$$1_Roles_has_role$2$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon0_correct  (=> (= _$t0@@0 _$t0@@0) (=> (and (|$IsValid'u64'| 2) (= (ControlFlow 0 216320) 216166)) inline$$1_Roles_has_role$2$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$0$anon16_Else_correct  (=> (and (not inline$$1_Roles_can_hold_balance$0$$t1@1) (= (ControlFlow 0 216362) 216320)) inline$$1_Roles_has_designated_dealer_role$0$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$anon16_Then_correct  (=> (and inline$$1_Roles_can_hold_balance$0$$t1@1 (= true true)) (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1 true) (= $abort_code@11 $abort_code@7@@0)) (and (= $abort_flag@13 $abort_flag@8) (= (ControlFlow 0 216430) 216392))) inline$$1_Roles_can_hold_balance$0$L7_correct))))
(let ((inline$$1_Roles_can_hold_balance$0$anon15_Else_correct  (=> (not $abort_flag@7@@0) (=> (and (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@1) (= inline$$1_Roles_can_hold_balance$0$$t1@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@1)) (and (= $abort_flag@8 $abort_flag@7@@0) (= $abort_code@7@@0 $abort_code@6@@0))) (and (=> (= (ControlFlow 0 215680) 216430) inline$$1_Roles_can_hold_balance$0$anon16_Then_correct) (=> (= (ControlFlow 0 215680) 216362) inline$$1_Roles_can_hold_balance$0$anon16_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct  (=> (and (and (not $abort_flag@6@@0) (= inline$$1_Roles_has_role$1$$ret0@1 inline$$1_Roles_has_role$1$$ret0@1)) (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1 inline$$1_Roles_has_role$1$$ret0@1) (= $abort_flag@7@@0 $abort_flag@6@@0))) (and (=> (= (ControlFlow 0 215638) 216444) inline$$1_Roles_can_hold_balance$0$anon15_Then_correct) (=> (= (ControlFlow 0 215638) 215680) inline$$1_Roles_can_hold_balance$0$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct  (=> (and (and $abort_flag@6@@0 (= $abort_code@6@@0 $abort_code@6@@0)) (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@0) (= $abort_flag@7@@0 true))) (and (=> (= (ControlFlow 0 215656) 216444) inline$$1_Roles_can_hold_balance$0$anon15_Then_correct) (=> (= (ControlFlow 0 215656) 215680) inline$$1_Roles_can_hold_balance$0$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_role$1$anon11_Then_correct  (=> $abort_flag@4@@0 (=> (and (and (= $abort_code@4@@0 $abort_code@4@@0) (= $abort_code@6@@0 $abort_code@4@@0)) (and (= $abort_flag@6@@0 true) (= inline$$1_Roles_has_role$1$$ret0@1 inline$$1_Roles_has_role$1$$ret0@0))) (and (=> (= (ControlFlow 0 215562) 215656) inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 215562) 215638) inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$1$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$1$$t2@1 inline$$1_Roles_has_role$1$$t2@1) (= $abort_code@6@@0 $abort_code@5@@0)) (and (= $abort_flag@6@@0 $abort_flag@5@@0) (= inline$$1_Roles_has_role$1$$ret0@1 inline$$1_Roles_has_role$1$$t2@1))) (and (=> (= (ControlFlow 0 215498) 215656) inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 215498) 215638) inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$1$anon11_Else_correct  (=> (and (and (and (not $abort_flag@4@@0) (= inline$$1_Roles_has_role$1$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$1$$t6@2))) (and (= inline$$1_Roles_has_role$1$$t9@1 (= inline$$1_Roles_has_role$1$$t8@1 6)) (= inline$$1_Roles_has_role$1$$t9@1 inline$$1_Roles_has_role$1$$t9@1))) (and (and (= $abort_code@5@@0 $abort_code@4@@0) (= inline$$1_Roles_has_role$1$$t2@1 inline$$1_Roles_has_role$1$$t9@1)) (and (= $abort_flag@5@@0 $abort_flag@4@@0) (= (ControlFlow 0 215544) 215498)))) inline$$1_Roles_has_role$1$L3_correct)))
(let ((inline$$1_Roles_has_role$1$anon10_Then$1_correct  (=> (= $abort_flag@4@@0 true) (=> (and (= $abort_code@4@@0 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$1$$t6@2 inline$$1_Roles_has_role$1$$t6@0)) (and (=> (= (ControlFlow 0 215614) 215562) inline$$1_Roles_has_role$1$anon11_Then_correct) (=> (= (ControlFlow 0 215614) 215544) inline$$1_Roles_has_role$1$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$1$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0)) (= (ControlFlow 0 215612) 215614)) inline$$1_Roles_has_role$1$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$1$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$1$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0)) (= $abort_flag@4@@0 $abort_flag@3@@0)) (and (= $abort_code@4@@0 $abort_code@3@@0) (= inline$$1_Roles_has_role$1$$t6@2 inline$$1_Roles_has_role$1$$t6@1))) (and (=> (= (ControlFlow 0 215516) 215562) inline$$1_Roles_has_role$1$anon11_Then_correct) (=> (= (ControlFlow 0 215516) 215544) inline$$1_Roles_has_role$1$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$1$anon9_Then_correct  (=> inline$$1_Roles_has_role$1$$t5@1 (and (=> (= (ControlFlow 0 215502) 215612) inline$$1_Roles_has_role$1$anon10_Then_correct) (=> (= (ControlFlow 0 215502) 215516) inline$$1_Roles_has_role$1$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$1$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$1$$t5@1) (= false false)) (=> (and (and (= $abort_code@5@@0 $abort_code@3@@0) (= inline$$1_Roles_has_role$1$$t2@1 false)) (and (= $abort_flag@5@@0 $abort_flag@3@@0) (= (ControlFlow 0 215486) 215498))) inline$$1_Roles_has_role$1$L3_correct))))
(let ((inline$$1_Roles_has_role$1$anon0_correct  (=> (and (= _$t0@@0 _$t0@@0) (= 6 6)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$1$$t4@0) (= inline$$1_Roles_has_role$1$$t4@0 (|$addr#$signer| _$t0@@0))) (and (= inline$$1_Roles_has_role$1$$t4@0 inline$$1_Roles_has_role$1$$t4@0) (= inline$$1_Roles_has_role$1$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0)))) (and (=> (= (ControlFlow 0 215466) 215502) inline$$1_Roles_has_role$1$anon9_Then_correct) (=> (= (ControlFlow 0 215466) 215486) inline$$1_Roles_has_role$1$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon0_correct  (=> (= _$t0@@0 _$t0@@0) (=> (and (|$IsValid'u64'| 6) (= (ControlFlow 0 215620) 215466)) inline$$1_Roles_has_role$1$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$0$anon14_Else_correct  (=> (and (not inline$$1_Roles_has_parent_VASP_role$0$$ret0@1) (= (ControlFlow 0 215662) 215620)) inline$$1_Roles_has_child_VASP_role$0$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$anon14_Then_correct  (=> inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 (=> (and (and (= true true) (= inline$$1_Roles_can_hold_balance$0$$t1@1 true)) (and (= $abort_flag@8 $abort_flag@3@@0) (= $abort_code@7@@0 $abort_code@3@@0))) (and (=> (= (ControlFlow 0 216462) 216430) inline$$1_Roles_can_hold_balance$0$anon16_Then_correct) (=> (= (ControlFlow 0 216462) 216362) inline$$1_Roles_can_hold_balance$0$anon16_Else_correct))))))
(let ((inline$$1_Roles_can_hold_balance$0$anon13_Else_correct  (=> (not $abort_flag@3@@0) (and (=> (= (ControlFlow 0 214982) 216462) inline$$1_Roles_can_hold_balance$0$anon14_Then_correct) (=> (= (ControlFlow 0 214982) 215662) inline$$1_Roles_can_hold_balance$0$anon14_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct  (=> (and (and (not $abort_flag@2@@0) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@1)) (and (= inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@1) (= $abort_flag@3@@0 $abort_flag@2@@0))) (and (=> (= (ControlFlow 0 214950) 216476) inline$$1_Roles_can_hold_balance$0$anon13_Then_correct) (=> (= (ControlFlow 0 214950) 214982) inline$$1_Roles_can_hold_balance$0$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct  (=> (and (and $abort_flag@2@@0 (= $abort_code@3@@0 $abort_code@3@@0)) (and (= inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 inline$$1_Roles_has_parent_VASP_role$0$$ret0@0) (= $abort_flag@3@@0 true))) (and (=> (= (ControlFlow 0 214968) 216476) inline$$1_Roles_can_hold_balance$0$anon13_Then_correct) (=> (= (ControlFlow 0 214968) 214982) inline$$1_Roles_can_hold_balance$0$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct  (=> $abort_flag@0@@0 (=> (and (and (= $abort_code@1@@0 $abort_code@1@@0) (= $abort_code@3@@0 $abort_code@1@@0)) (and (= $abort_flag@2@@0 true) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@0))) (and (=> (= (ControlFlow 0 214874) 214968) inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 214874) 214950) inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$0$$t2@1 inline$$1_Roles_has_role$0$$t2@1) (= $abort_code@3@@0 $abort_code@2@@0)) (and (= $abort_flag@2@@0 $abort_flag@1@@0) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$t2@1))) (and (=> (= (ControlFlow 0 214810) 214968) inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 214810) 214950) inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct  (=> (and (and (and (not $abort_flag@0@@0) (= inline$$1_Roles_has_role$0$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2))) (and (= inline$$1_Roles_has_role$0$$t9@1 (= inline$$1_Roles_has_role$0$$t8@1 5)) (= inline$$1_Roles_has_role$0$$t9@1 inline$$1_Roles_has_role$0$$t9@1))) (and (and (= $abort_code@2@@0 $abort_code@1@@0) (= inline$$1_Roles_has_role$0$$t2@1 inline$$1_Roles_has_role$0$$t9@1)) (and (= $abort_flag@1@@0 $abort_flag@0@@0) (= (ControlFlow 0 214856) 214810)))) inline$$1_Roles_has_role$0$L3_correct)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct  (=> (= $abort_flag@0@@0 true) (=> (and (= $abort_code@1@@0 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$0$$t6@2 inline$$1_Roles_has_role$0$$t6@0)) (and (=> (= (ControlFlow 0 214926) 214874) inline$$1_Roles_has_role$0$anon11_Then_correct) (=> (= (ControlFlow 0 214926) 214856) inline$$1_Roles_has_role$0$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0)) (= (ControlFlow 0 214924) 214926)) inline$$1_Roles_has_role$0$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0)) (= $abort_flag@0@@0 false)) (and (= $abort_code@1@@0 $abort_code@0@@0) (= inline$$1_Roles_has_role$0$$t6@2 inline$$1_Roles_has_role$0$$t6@1))) (and (=> (= (ControlFlow 0 214828) 214874) inline$$1_Roles_has_role$0$anon11_Then_correct) (=> (= (ControlFlow 0 214828) 214856) inline$$1_Roles_has_role$0$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct  (=> inline$$1_Roles_has_role$0$$t5@1 (and (=> (= (ControlFlow 0 214814) 214924) inline$$1_Roles_has_role$0$anon10_Then_correct) (=> (= (ControlFlow 0 214814) 214828) inline$$1_Roles_has_role$0$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$0$$t5@1) (= false false)) (=> (and (and (= $abort_code@2@@0 $abort_code@0@@0) (= inline$$1_Roles_has_role$0$$t2@1 false)) (and (= $abort_flag@1@@0 false) (= (ControlFlow 0 214798) 214810))) inline$$1_Roles_has_role$0$L3_correct))))
(let ((inline$$1_Roles_has_role$0$anon0_correct  (=> (and (= _$t0@@0 _$t0@@0) (= 5 5)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0) (= inline$$1_Roles_has_role$0$$t4@0 (|$addr#$signer| _$t0@@0))) (and (= inline$$1_Roles_has_role$0$$t4@0 inline$$1_Roles_has_role$0$$t4@0) (= inline$$1_Roles_has_role$0$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0)))) (and (=> (= (ControlFlow 0 214778) 214814) inline$$1_Roles_has_role$0$anon9_Then_correct) (=> (= (ControlFlow 0 214778) 214798) inline$$1_Roles_has_role$0$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon0_correct  (=> (= _$t0@@0 _$t0@@0) (=> (and (|$IsValid'u64'| 5) (= (ControlFlow 0 214932) 214778)) inline$$1_Roles_has_role$0$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$0$anon0_correct  (=> (and (= _$t0@@0 _$t0@@0) (= (ControlFlow 0 214974) 214932)) inline$$1_Roles_has_parent_VASP_role$0$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon25_Then_correct|  (=> (and inline$$1_DiemAccount_exists_at$0$$t1@1@@0 (= (ControlFlow 0 216482) 214974)) inline$$1_Roles_can_hold_balance$0$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon25_Else_correct|  (=> (not inline$$1_DiemAccount_exists_at$0$$t1@1@@0) (=> (and (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0|)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 213970) 213976))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon24_Else_correct|  (=> (and (not false) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0| 5)) (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0|) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@0 inline$$1_DiemAccount_exists_at$0$$t1@1@@0))) (and (=> (= (ControlFlow 0 213954) 216482) |inline$$1_DiemAccount_add_currency'#0'$0$anon25_Then_correct|) (=> (= (ControlFlow 0 213954) 213970) |inline$$1_DiemAccount_add_currency'#0'$0$anon25_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon23_Then_correct|  (=> |inline$$1_DiemAccount_add_currency'#0'$0$$t9@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_135848| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 |inline$$1_DiemAccount_add_currency'#0'$0$$t10@0|)) (=> (and (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t10@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| |inline$$1_DiemAccount_add_currency'#0'$0$$t10@0|)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 217025) 213976))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon24_Then_correct| true))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct@@0  (=> (= |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0|) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0|)) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@0 inline$$1_DiemAccount_exists_at$0$$t1@1@@0)) (and (=> (= (ControlFlow 0 213912) 216999) |inline$$1_DiemAccount_add_currency'#0'$0$anon24_Then_correct|) (=> (= (ControlFlow 0 213912) 213954) |inline$$1_DiemAccount_add_currency'#0'$0$anon24_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon23_Else_correct|  (=> (and (not |inline$$1_DiemAccount_add_currency'#0'$0$$t9@0|) (= (ControlFlow 0 213918) 213912)) inline$$1_DiemAccount_exists_at$0$anon0_correct@@0)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon0_correct|  (=> (= _$t0@@0 _$t0@@0) (=> (and (and (|$IsValid'address'| |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0| (|$addr#$signer| _$t0@@0))) (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t9@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_135848| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 213807) 217025) |inline$$1_DiemAccount_add_currency'#0'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 213807) 213918) |inline$$1_DiemAccount_add_currency'#0'$0$anon23_Else_correct|))))))
(let ((anon0$1_correct@@0  (=> (and (forall ((addr@@39 Int) ) (!  (=> (|$IsValid'address'| addr@@39) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_128199| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@39) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@39)) 4))))
 :qid |AccountAdministrationScriptsseqArraybpl.16571:20|
 :skolemid |236|
)) (forall ((addr@@40 Int) ) (!  (=> (|$IsValid'address'| addr@@40) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_129052| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@40) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@40) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@40)) 3))))
 :qid |AccountAdministrationScriptsseqArraybpl.16575:20|
 :skolemid |237|
))) (=> (and (and (forall ((addr@@41 Int) ) (!  (=> (|$IsValid'address'| addr@@41) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_129052| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@41) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@41) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@41)) 3))))
 :qid |AccountAdministrationScriptsseqArraybpl.16579:20|
 :skolemid |238|
)) (forall ((addr@@42 Int) ) (!  (=> (|$IsValid'address'| addr@@42) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_129052| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@42) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_129052| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@42)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@42)) 3))))
 :qid |AccountAdministrationScriptsseqArraybpl.16583:20|
 :skolemid |239|
))) (and (forall ((mint_cap_owner Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_140848| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) mint_cap_owner) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) mint_cap_owner)) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.16587:21|
 :skolemid |240|
)) (forall ((mint_cap_owner@@0 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_140935| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) mint_cap_owner@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) mint_cap_owner@@0)) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.16587:268|
 :skolemid |241|
)))) (=> (and (and (and (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_136128| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr1)) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.16595:21|
 :skolemid |242|
)) (forall ((addr1@@0 Int) ) (!  (=> (|$IsValid'address'| addr1@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_136215| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@0)) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.16595:231|
 :skolemid |243|
))) (and (forall ((addr1@@1 Int) ) (!  (=> (|$IsValid'address'| addr1@@1) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_141517| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_141108| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@1)) 2))))
 :qid |AccountAdministrationScriptsseqArraybpl.16599:21|
 :skolemid |244|
)) (forall ((addr1@@2 Int) ) (!  (=> (|$IsValid'address'| addr1@@2) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_141616| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_141199| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@2)) 2))))
 :qid |AccountAdministrationScriptsseqArraybpl.16599:292|
 :skolemid |245|
)))) (and (and (forall ((addr@@43 Int) ) (!  (=> (|$IsValid'address'| addr@@43) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141108| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@43) (|Select__T@[Int]Bool_| (|domain#$Memory_135648| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |AccountAdministrationScriptsseqArraybpl.16603:22|
 :skolemid |246|
)) (forall ((addr@@44 Int) ) (!  (=> (|$IsValid'address'| addr@@44) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141199| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@44) (|Select__T@[Int]Bool_| (|domain#$Memory_135712| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |AccountAdministrationScriptsseqArraybpl.16603:222|
 :skolemid |247|
))) (forall ((addr@@45 Int) ) (!  (=> (|$IsValid'address'| addr@@45) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141290| |$1_Diem_Preburn'#0'_$memory|) addr@@45) (|Select__T@[Int]Bool_| (|domain#$Memory_135848| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |AccountAdministrationScriptsseqArraybpl.16603:423|
 :skolemid |248|
)))) (=> (and (and (and (and (and (forall ((addr@@46 Int) ) (!  (=> (|$IsValid'address'| addr@@46) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141517| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@46) (|Select__T@[Int]Bool_| (|domain#$Memory_135648| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |AccountAdministrationScriptsseqArraybpl.16607:22|
 :skolemid |249|
)) (forall ((addr@@47 Int) ) (!  (=> (|$IsValid'address'| addr@@47) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141616| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@47) (|Select__T@[Int]Bool_| (|domain#$Memory_135712| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |AccountAdministrationScriptsseqArraybpl.16607:227|
 :skolemid |250|
))) (forall ((addr@@48 Int) ) (!  (=> (|$IsValid'address'| addr@@48) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141715| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@48) (|Select__T@[Int]Bool_| (|domain#$Memory_135848| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |AccountAdministrationScriptsseqArraybpl.16607:433|
 :skolemid |251|
))) (and (forall ((addr1@@3 Int) ) (!  (=> (|$IsValid'address'| addr1@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155070| $1_DualAttestation_Credential_$memory) addr1@@3) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@3)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@3)) 2)))))
 :qid |AccountAdministrationScriptsseqArraybpl.16615:20|
 :skolemid |252|
)) (forall ((addr@@49 Int) ) (!  (=> (|$IsValid'address'| addr@@49) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@49) (or (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@49)))) 0) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@49)))) 0)) (= addr@@49 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@49))) 0)))))))
 :qid |AccountAdministrationScriptsseqArraybpl.16619:20|
 :skolemid |253|
)))) (and (and (and (forall ((addr@@50 Int) ) (!  (=> (|$IsValid'address'| addr@@50) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@50) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@50) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@50)))) 0)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@50)))) 0)) (= addr@@50 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@50))) 0)))))))
 :qid |AccountAdministrationScriptsseqArraybpl.16623:20|
 :skolemid |254|
)) (forall ((addr@@51 Int) ) (!  (=> (|$IsValid'address'| addr@@51) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@51) (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@51)))
 :qid |AccountAdministrationScriptsseqArraybpl.16627:20|
 :skolemid |255|
))) (and (forall ((addr@@52 Int) ) (!  (=> (|$IsValid'address'| addr@@52) (=> (and (= addr@@52 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@52)) (|Select__T@[Int]Bool_| (|domain#$Memory_161752| $1_DiemAccount_AccountOperationsCapability_$memory) addr@@52)))
 :qid |AccountAdministrationScriptsseqArraybpl.16631:20|
 :skolemid |256|
)) (forall ((addr@@53 Int) ) (!  (=> (|$IsValid'address'| addr@@53) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_152687| $1_VASPDomain_VASPDomainManager_$memory) addr@@53) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@53) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@53)) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.16635:20|
 :skolemid |257|
)))) (and (and (forall ((addr@@54 Int) ) (!  (=> (|$IsValid'address'| addr@@54) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_161887| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@54) (|Select__T@[Int]Bool_| (|domain#$Memory_161978| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@54)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@54)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@54)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@54)) 2)))))
 :qid |AccountAdministrationScriptsseqArraybpl.16639:20|
 :skolemid |258|
)) (forall ((addr@@55 Int) ) (!  (=> (|$IsValid'address'| addr@@55) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_159568| $1_DesignatedDealer_Dealer_$memory) addr@@55) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@55) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@55)) 2))))
 :qid |AccountAdministrationScriptsseqArraybpl.16643:20|
 :skolemid |259|
))) (and (forall ((addr@@56 Int) ) (!  (=> (|$IsValid'address'| addr@@56) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155070| $1_DualAttestation_Credential_$memory) addr@@56) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@56)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@56)) 5)))))
 :qid |AccountAdministrationScriptsseqArraybpl.16647:20|
 :skolemid |260|
)) (forall ((addr@@57 Int) ) (!  (=> (|$IsValid'address'| addr@@57) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@57) (|Select__T@[Int]Bool_| (|domain#$Memory_159816| $1_AccountFreezing_FreezingBit_$memory) addr@@57)))
 :qid |AccountAdministrationScriptsseqArraybpl.16651:20|
 :skolemid |261|
)))))) (and (and (and (and (forall ((addr@@58 Int) ) (!  (=> (|$IsValid'address'| addr@@58) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161887| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@58) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@58)))
 :qid |AccountAdministrationScriptsseqArraybpl.16655:22|
 :skolemid |262|
)) (forall ((addr@@59 Int) ) (!  (=> (|$IsValid'address'| addr@@59) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161978| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@59) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@59)))
 :qid |AccountAdministrationScriptsseqArraybpl.16655:218|
 :skolemid |263|
))) (forall ((addr@@60 Int) ) (!  (=> (|$IsValid'address'| addr@@60) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_162069| |$1_DiemAccount_Balance'#0'_$memory|) addr@@60) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@60)))
 :qid |AccountAdministrationScriptsseqArraybpl.16655:415|
 :skolemid |264|
))) (and (and (forall ((addr@@61 Int) ) (!  (=> (|$IsValid'address'| addr@@61) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_129052| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@61) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@61)) 3))))
 :qid |AccountAdministrationScriptsseqArraybpl.16659:20|
 :skolemid |265|
)) (forall ((addr@@62 Int) ) (!  (=> (|$IsValid'address'| addr@@62) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_128199| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@62) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@62)) 4))))
 :qid |AccountAdministrationScriptsseqArraybpl.16663:20|
 :skolemid |266|
))) (and (forall ((addr@@63 Int) ) (!  (=> (|$IsValid'address'| addr@@63) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_153604| $1_VASP_ParentVASP_$memory) addr@@63) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@63)) 5))))
 :qid |AccountAdministrationScriptsseqArraybpl.16667:20|
 :skolemid |267|
)) (forall ((addr@@64 Int) ) (!  (=> (|$IsValid'address'| addr@@64) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_153540| $1_VASP_ChildVASP_$memory) addr@@64) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@64) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@64)) 6))))
 :qid |AccountAdministrationScriptsseqArraybpl.16671:20|
 :skolemid |268|
))))) (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@0)) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) $a_0@@0)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@0))
 :qid |AccountAdministrationScriptsseqArraybpl.16677:20|
 :skolemid |269|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) $a_0@@0))
))) (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_135848| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@1)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc@@1) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@1)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@1) 10000000000))))
 :qid |AccountAdministrationScriptsseqArraybpl.16681:20|
 :skolemid |270|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_135848| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@1))
)) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $a_0@@2)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@2) (and (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@2))) 1) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@2))) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.16685:20|
 :skolemid |271|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $a_0@@2))
)))) (and (and (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_162069| |$1_DiemAccount_Balance'#0'_$memory|) $a_0@@3)))
(|$IsValid'$1_DiemAccount_Balance'#0''| $rsc@@3))
 :qid |AccountAdministrationScriptsseqArraybpl.16689:20|
 :skolemid |272|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_162069| |$1_DiemAccount_Balance'#0'_$memory|) $a_0@@3))
)) (let ((addr@@65 (|$addr#$signer| _$t0@@0)))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_126448| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@65)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_159816| $1_AccountFreezing_FreezingBit_$memory) addr@@65) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_159816| $1_AccountFreezing_FreezingBit_$memory) addr@@65))))))) (and (= _$t0@@0 _$t0@@0) (= (ControlFlow 0 217029) 213807)))))) |inline$$1_DiemAccount_add_currency'#0'$0$anon0_correct|))))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_89088_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_89088| stream@@1) 0) (forall ((v@@48 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_89088| stream@@1) v@@48) 0)
 :qid |AccountAdministrationScriptsseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |AccountAdministrationScriptsseqArraybpl.3268:13|
 :skolemid |89|
))) (= (ControlFlow 0 212171) 217029)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 322312) 212171) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@17@@0 () Bool)
(declare-fun _$t0@@1 () T@$signer)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3| () T@$Memory_161887)
(declare-fun |Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| Int) |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)
(declare-fun $abort_code@15@@0 () Int)
(declare-fun $abort_flag@16@@0 () Bool)
(declare-fun $abort_code@14@@0 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1| () T@$Memory_161887)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@1| () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| () T@$Memory_161887)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@0| () T@$Memory_161887)
(declare-fun |Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| Int |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ( ?x1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)) (! (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t22@1| () |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)
(declare-fun $abort_code@13@@0 () Int)
(declare-fun $abort_flag@15@@0 () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@1| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t0@0| () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun $abort_flag@14@@0 () Bool)
(declare-fun $abort_code@12@@0 () Int)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0| () Int)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@0| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun inline$$Not$0$dst@1@@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t20@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@1| () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$0$$ret0@1@@0 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t16@0| () Int)
(declare-fun inline$$1_Roles_can_hold_balance$0$$ret0@0@@0 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$0$$t4@1@@0 () Int)
(declare-fun $abort_flag@12@@0 () Bool)
(declare-fun $abort_code@10@@0 () Int)
(declare-fun $abort_flag@7@@1 () Bool)
(declare-fun $abort_code@6@@1 () Int)
(declare-fun $abort_flag@3@@1 () Bool)
(declare-fun $abort_code@3@@1 () Int)
(declare-fun inline$$1_Roles_can_hold_balance$0$$t2@1@@0 () Bool)
(declare-fun $abort_flag@13@@0 () Bool)
(declare-fun $abort_code@11@@0 () Int)
(declare-fun inline$$1_Roles_has_designated_dealer_role$0$$ret0@1@@0 () Bool)
(declare-fun $abort_flag@11@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$ret0@1@@0 () Bool)
(declare-fun inline$$1_Roles_has_designated_dealer_role$0$$ret0@0@@0 () Bool)
(declare-fun $abort_flag@9@@0 () Bool)
(declare-fun $abort_code@8@@1 () Int)
(declare-fun inline$$1_Roles_has_role$2$$ret0@0@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t2@1@@0 () Bool)
(declare-fun $abort_flag@10@@0 () Bool)
(declare-fun $abort_code@9@@0 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t8@1@@0 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t6@2@@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$2$$t9@1@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t6@0@@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$2$$t4@0@@0 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t6@1@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@7@@1 () Int)
(declare-fun $abort_flag@8@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t5@1@@0 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$0$$t1@1@@0 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$0$$ret0@1@@0 () Bool)
(declare-fun $abort_flag@6@@1 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$ret0@1@@0 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$0$$ret0@0@@0 () Bool)
(declare-fun $abort_flag@4@@1 () Bool)
(declare-fun $abort_code@4@@1 () Int)
(declare-fun inline$$1_Roles_has_role$1$$ret0@0@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t2@1@@0 () Bool)
(declare-fun $abort_code@5@@1 () Int)
(declare-fun $abort_flag@5@@1 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t8@1@@0 () Int)
(declare-fun inline$$1_Roles_has_role$1$$t6@2@@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t9@1@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t6@0@@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t4@0@@0 () Int)
(declare-fun inline$$1_Roles_has_role$1$$t6@1@@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t5@1@@0 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$0$$ret0@1@@0 () Bool)
(declare-fun $abort_flag@2@@1 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1@@0 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$0$$ret0@0@@0 () Bool)
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun inline$$1_Roles_has_role$0$$ret0@0@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t2@1@@0 () Bool)
(declare-fun $abort_code@2@@1 () Int)
(declare-fun $abort_flag@1@@1 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t8@1@@0 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@2@@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t9@1@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t6@0@@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t4@0@@0 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@1@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t5@1@@0 () Bool)
(declare-fun inline$$1_DiemAccount_exists_at$0$$t1@1@@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t13@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0| () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@0| () Int)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(push 1)
(set-info :boogie-vc-id $1_AccountAdministrationScripts_add_currency_to_account$verify_instantiated_0)
(assert (not
 (=> (= (ControlFlow 0 0) 325902) (let ((anon4_Else_correct@@0  (=> (not $abort_flag@17@@0) (and (=> (= (ControlFlow 0 222549) (- 0 329427)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161887| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| _$t0@@1)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_161887| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| _$t0@@1))) (and (=> (= (ControlFlow 0 222549) (- 0 329438)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_135648| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_135648| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 222549) (- 0 329448)) (not (not (or (or (let ((addr@@66 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@66) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@66)) 5))) (let ((addr@@67 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@67) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@67)) 6)))) (let ((addr@@68 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@68) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@68)) 2))))))) (=> (not (not (or (or (let ((addr@@69 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@69) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@69)) 5))) (let ((addr@@70 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@70) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@70)) 6)))) (let ((addr@@71 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@71) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@71)) 2)))))) (and (=> (= (ControlFlow 0 222549) (- 0 329459)) (not (not (or (or (let ((addr@@72 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@72) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@72)) 5))) (let ((addr@@73 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@73) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@73)) 6)))) (let ((addr@@74 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@74) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@74)) 2))))))) (=> (not (not (or (or (let ((addr@@75 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@75) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@75)) 5))) (let ((addr@@76 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@76) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@76)) 6)))) (let ((addr@@77 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@77) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@77)) 2)))))) (and (=> (= (ControlFlow 0 222549) (- 0 329470)) (|Select__T@[Int]Bool_| (|domain#$Memory_161887| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3|) (|$addr#$signer| _$t0@@1))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161887| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3|) (|$addr#$signer| _$t0@@1)) (=> (= (ControlFlow 0 222549) (- 0 329479)) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_161887| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3|) (|$addr#$signer| _$t0@@1)) (|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$1_Diem_Diem'$1_XUS_XUS'| 0)))))))))))))))))
(let ((anon4_Then_correct@@0  (=> (and $abort_flag@17@@0 (= $abort_code@15@@0 $abort_code@15@@0)) (and (=> (= (ControlFlow 0 222697) (- 0 329306)) (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_161887| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| _$t0@@1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_135648| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (not (or (or (let ((addr@@78 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@78) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@78)) 5))) (let ((addr@@79 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@79) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@79)) 6)))) (let ((addr@@80 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@80) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@80)) 2)))))) (not (or (or (let ((addr@@81 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@81) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@81)) 5))) (let ((addr@@82 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@82) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@82)) 6)))) (let ((addr@@83 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@83) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@83)) 2))))))) (=> (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_161887| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| _$t0@@1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_135648| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (not (or (or (let ((addr@@84 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@84) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@84)) 5))) (let ((addr@@85 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@85) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@85)) 6)))) (let ((addr@@86 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@86) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@86)) 2)))))) (not (or (or (let ((addr@@87 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@87) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@87)) 5))) (let ((addr@@88 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@88) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@88)) 6)))) (let ((addr@@89 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@89) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@89)) 2)))))) (=> (= (ControlFlow 0 222697) (- 0 329335)) (or (or (or (or (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_161887| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| _$t0@@1)) (= 6 $abort_code@15@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_135648| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $abort_code@15@@0))) (and (not (or (or (let ((addr@@90 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@90) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@90)) 5))) (let ((addr@@91 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@91) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@91)) 6)))) (let ((addr@@92 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@92) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@92)) 2))))) (= 7 $abort_code@15@@0))) (and (not (or (or (let ((addr@@93 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@93) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@93)) 5))) (let ((addr@@94 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@94) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@94)) 6)))) (let ((addr@@95 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@95) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@95)) 2))))) (= 7 $abort_code@15@@0))) (= 5 $abort_code@15@@0)) (= 7 $abort_code@15@@0)) (= 6 $abort_code@15@@0))))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Else_correct|  (=> (and (and (not $abort_flag@16@@0) (= $abort_code@15@@0 $abort_code@14@@0)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1|) (= $abort_flag@17@@0 $abort_flag@16@@0))) (and (=> (= (ControlFlow 0 222327) 222697) anon4_Then_correct@@0) (=> (= (ControlFlow 0 222327) 222549) anon4_Else_correct@@0)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|  (=> (= $abort_code@15@@0 |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@1|) (=> (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2|) (= $abort_flag@17@@0 true)) (and (=> (= (ControlFlow 0 219412) 222697) anon4_Then_correct@@0) (=> (= (ControlFlow 0 219412) 222549) anon4_Else_correct@@0))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Then_correct|  (=> $abort_flag@16@@0 (=> (and (and (= $abort_code@14@@0 $abort_code@14@@0) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@1| $abort_code@14@@0)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1|) (= (ControlFlow 0 222341) 219412))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Then$1_correct|  (=> (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (=> (and (= $abort_code@14@@0 $EXEC_FAILURE_CODE) (= $abort_flag@16@@0 true)) (and (=> (= (ControlFlow 0 222393) 222341) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 222393) 222327) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_161887| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| _$t0@@1)) (= (ControlFlow 0 222391) 222393)) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_161887| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| _$t0@@1))) (=> (and (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@0| ($Memory_161887 (|Store__T@[Int]Bool_| (|domain#$Memory_161887| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| _$t0@@1) true) (|Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_161887| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| _$t0@@1) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t22@1|))) (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@0|)) (and (= $abort_code@14@@0 $abort_code@13@@0) (= $abort_flag@16@@0 $abort_flag@15@@0))) (and (=> (= (ControlFlow 0 222317) 222341) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 222317) 222327) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Else_correct|  (=> (and (not $abort_flag@15@@0) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t22@1| (|$1_DiemAccount_Balance'$1_XUS_XUS'| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@1|))) (and (=> (= (ControlFlow 0 222295) 222391) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Then_correct|) (=> (= (ControlFlow 0 222295) 222317) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Then_correct|  (=> $abort_flag@15@@0 (=> (and (and (= $abort_code@13@@0 $abort_code@13@@0) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@1| $abort_code@13@@0)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 222407) 219412))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Else_correct|  (=> (not |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t0@0|) (=> (and (|$IsValid'u64'| 0) (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1| (|$1_Diem_Diem'$1_XUS_XUS'| 0))) (=> (and (and (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1|) (= $abort_flag@15@@0 $abort_flag@14@@0)) (and (= $abort_code@13@@0 $abort_code@12@@0) (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@1| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1|))) (and (=> (= (ControlFlow 0 222247) 222407) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 222247) 222295) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Then_correct|  (=> |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t0@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_135648| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0|)) (=> (and (and (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0|) (= $abort_flag@15@@0 true)) (and (= $abort_code@13@@0 |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0|) (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@1| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@0|))) (and (=> (= (ControlFlow 0 222277) 222407) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 222277) 222295) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XUS_XUS'$0$anon0_correct|  (=> (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t0@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_135648| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 222219) 222277) |inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 222219) 222247) |inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon28_Then_correct|  (=> (and inline$$Not$0$dst@1@@1 (= (ControlFlow 0 222283) 222219)) |inline$$1_Diem_zero'$1_XUS_XUS'$0$anon0_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon28_Else_correct|  (=> (not inline$$Not$0$dst@1@@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t20@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t20@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t20@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 222066) 219412))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Then$1_correct|  (=> (|$IsValid'u64'| 15) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t20@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t20@0| 6)) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t20@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t20@0|) (= inline$$Not$0$dst@1@@1 inline$$Not$0$dst@1@@1))) (and (=> (= (ControlFlow 0 222050) 222283) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon28_Then_correct|) (=> (= (ControlFlow 0 222050) 222066) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon28_Else_correct|))))))
(let ((inline$$Not$0$anon0_correct@@1  (=> (and (= inline$$Not$0$dst@1@@1  (not |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@1|)) (= (ControlFlow 0 222014) 222050)) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Then_correct|  (=> inline$$1_Roles_can_hold_balance$0$$ret0@1@@0 (=> (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@1| (|Select__T@[Int]Bool_| (|domain#$Memory_161887| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0|)) (= (ControlFlow 0 222020) 222014)) inline$$Not$0$anon0_correct@@1))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Else_correct|  (=> (not inline$$1_Roles_can_hold_balance$0$$ret0@1@@0) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t16@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t16@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t16@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 221974) 219412))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Else_correct|  (=> (and (not $abort_flag@14@@0) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t16@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t16@0| 7)) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t16@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t16@0|) (= inline$$1_Roles_can_hold_balance$0$$ret0@1@@0 inline$$1_Roles_can_hold_balance$0$$ret0@1@@0))) (and (=> (= (ControlFlow 0 221958) 222020) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Then_correct|) (=> (= (ControlFlow 0 221958) 221974) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Then_correct|  (=> $abort_flag@14@@0 (=> (and (and (= $abort_code@12@@0 $abort_code@12@@0) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@1| $abort_code@12@@0)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 222421) 219412))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((inline$$1_Roles_can_hold_balance$0$L9_correct@@0  (=> (= $abort_flag@14@@0 true) (=> (and (= inline$$1_Roles_can_hold_balance$0$$ret0@1@@0 inline$$1_Roles_can_hold_balance$0$$ret0@0@@0) (= $abort_code@12@@0 inline$$1_Roles_can_hold_balance$0$$t4@1@@0)) (and (=> (= (ControlFlow 0 221848) 222421) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 221848) 221958) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Else_correct|))))))
(let ((inline$$1_Roles_can_hold_balance$0$anon17_Then_correct@@0  (=> (and (and $abort_flag@12@@0 (= $abort_code@10@@0 $abort_code@10@@0)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1@@0 $abort_code@10@@0) (= (ControlFlow 0 221842) 221848))) inline$$1_Roles_can_hold_balance$0$L9_correct@@0)))
(let ((inline$$1_Roles_can_hold_balance$0$anon15_Then_correct@@0  (=> (and (and $abort_flag@7@@1 (= $abort_code@6@@1 $abort_code@6@@1)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1@@0 $abort_code@6@@1) (= (ControlFlow 0 221880) 221848))) inline$$1_Roles_can_hold_balance$0$L9_correct@@0)))
(let ((inline$$1_Roles_can_hold_balance$0$anon13_Then_correct@@0  (=> (and (and $abort_flag@3@@1 (= $abort_code@3@@1 $abort_code@3@@1)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1@@0 $abort_code@3@@1) (= (ControlFlow 0 221912) 221848))) inline$$1_Roles_can_hold_balance$0$L9_correct@@0)))
(let ((inline$$1_Roles_can_hold_balance$0$L7_correct@@0  (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1@@0 inline$$1_Roles_can_hold_balance$0$$t2@1@@0) (= $abort_flag@14@@0 $abort_flag@13@@0)) (and (= inline$$1_Roles_can_hold_balance$0$$ret0@1@@0 inline$$1_Roles_can_hold_balance$0$$t2@1@@0) (= $abort_code@12@@0 $abort_code@11@@0))) (and (=> (= (ControlFlow 0 221828) 222421) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 221828) 221958) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Else_correct|)))))
(let ((inline$$1_Roles_can_hold_balance$0$anon17_Else_correct@@0  (=> (and (not $abort_flag@12@@0) (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1@@0 inline$$1_Roles_has_designated_dealer_role$0$$ret0@1@@0)) (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1@@0 inline$$1_Roles_has_designated_dealer_role$0$$ret0@1@@0) (= $abort_code@11@@0 $abort_code@10@@0)) (and (= $abort_flag@13@@0 $abort_flag@12@@0) (= (ControlFlow 0 221816) 221828))) inline$$1_Roles_can_hold_balance$0$L7_correct@@0))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct@@0  (=> (and (and (not $abort_flag@11@@0) (= inline$$1_Roles_has_role$2$$ret0@1@@0 inline$$1_Roles_has_role$2$$ret0@1@@0)) (and (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1@@0 inline$$1_Roles_has_role$2$$ret0@1@@0) (= $abort_flag@12@@0 $abort_flag@11@@0))) (and (=> (= (ControlFlow 0 221774) 221842) inline$$1_Roles_can_hold_balance$0$anon17_Then_correct@@0) (=> (= (ControlFlow 0 221774) 221816) inline$$1_Roles_can_hold_balance$0$anon17_Else_correct@@0)))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct@@0  (=> (and (and $abort_flag@11@@0 (= $abort_code@10@@0 $abort_code@10@@0)) (and (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1@@0 inline$$1_Roles_has_designated_dealer_role$0$$ret0@0@@0) (= $abort_flag@12@@0 true))) (and (=> (= (ControlFlow 0 221792) 221842) inline$$1_Roles_can_hold_balance$0$anon17_Then_correct@@0) (=> (= (ControlFlow 0 221792) 221816) inline$$1_Roles_can_hold_balance$0$anon17_Else_correct@@0)))))
(let ((inline$$1_Roles_has_role$2$anon11_Then_correct@@0  (=> $abort_flag@9@@0 (=> (and (and (= $abort_code@8@@1 $abort_code@8@@1) (= $abort_flag@11@@0 true)) (and (= $abort_code@10@@0 $abort_code@8@@1) (= inline$$1_Roles_has_role$2$$ret0@1@@0 inline$$1_Roles_has_role$2$$ret0@0@@0))) (and (=> (= (ControlFlow 0 221698) 221792) inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct@@0) (=> (= (ControlFlow 0 221698) 221774) inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct@@0))))))
(let ((inline$$1_Roles_has_role$2$L3_correct@@0  (=> (and (and (= inline$$1_Roles_has_role$2$$t2@1@@0 inline$$1_Roles_has_role$2$$t2@1@@0) (= $abort_flag@11@@0 $abort_flag@10@@0)) (and (= $abort_code@10@@0 $abort_code@9@@0) (= inline$$1_Roles_has_role$2$$ret0@1@@0 inline$$1_Roles_has_role$2$$t2@1@@0))) (and (=> (= (ControlFlow 0 221634) 221792) inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct@@0) (=> (= (ControlFlow 0 221634) 221774) inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct@@0)))))
(let ((inline$$1_Roles_has_role$2$anon11_Else_correct@@0  (=> (and (and (and (not $abort_flag@9@@0) (= inline$$1_Roles_has_role$2$$t8@1@@0 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$2$$t6@2@@0))) (and (= inline$$1_Roles_has_role$2$$t9@1@@0 (= inline$$1_Roles_has_role$2$$t8@1@@0 2)) (= inline$$1_Roles_has_role$2$$t9@1@@0 inline$$1_Roles_has_role$2$$t9@1@@0))) (and (and (= $abort_flag@10@@0 $abort_flag@9@@0) (= inline$$1_Roles_has_role$2$$t2@1@@0 inline$$1_Roles_has_role$2$$t9@1@@0)) (and (= $abort_code@9@@0 $abort_code@8@@1) (= (ControlFlow 0 221680) 221634)))) inline$$1_Roles_has_role$2$L3_correct@@0)))
(let ((inline$$1_Roles_has_role$2$anon10_Then$1_correct@@0  (=> (= $abort_code@8@@1 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@9@@0 true) (= inline$$1_Roles_has_role$2$$t6@2@@0 inline$$1_Roles_has_role$2$$t6@0@@0)) (and (=> (= (ControlFlow 0 221750) 221698) inline$$1_Roles_has_role$2$anon11_Then_correct@@0) (=> (= (ControlFlow 0 221750) 221680) inline$$1_Roles_has_role$2$anon11_Else_correct@@0))))))
(let ((inline$$1_Roles_has_role$2$anon10_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0@@0)) (= (ControlFlow 0 221748) 221750)) inline$$1_Roles_has_role$2$anon10_Then$1_correct@@0)))
(let ((inline$$1_Roles_has_role$2$anon10_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0@@0) (=> (and (and (= inline$$1_Roles_has_role$2$$t6@1@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0@@0)) (= $abort_code@8@@1 $abort_code@7@@1)) (and (= $abort_flag@9@@0 $abort_flag@8@@0) (= inline$$1_Roles_has_role$2$$t6@2@@0 inline$$1_Roles_has_role$2$$t6@1@@0))) (and (=> (= (ControlFlow 0 221652) 221698) inline$$1_Roles_has_role$2$anon11_Then_correct@@0) (=> (= (ControlFlow 0 221652) 221680) inline$$1_Roles_has_role$2$anon11_Else_correct@@0))))))
(let ((inline$$1_Roles_has_role$2$anon9_Then_correct@@0  (=> inline$$1_Roles_has_role$2$$t5@1@@0 (and (=> (= (ControlFlow 0 221638) 221748) inline$$1_Roles_has_role$2$anon10_Then_correct@@0) (=> (= (ControlFlow 0 221638) 221652) inline$$1_Roles_has_role$2$anon10_Else_correct@@0)))))
(let ((inline$$1_Roles_has_role$2$anon9_Else_correct@@0  (=> (and (not inline$$1_Roles_has_role$2$$t5@1@@0) (= false false)) (=> (and (and (= $abort_flag@10@@0 $abort_flag@8@@0) (= inline$$1_Roles_has_role$2$$t2@1@@0 false)) (and (= $abort_code@9@@0 $abort_code@7@@1) (= (ControlFlow 0 221622) 221634))) inline$$1_Roles_has_role$2$L3_correct@@0))))
(let ((inline$$1_Roles_has_role$2$anon0_correct@@0  (=> (and (= _$t0@@1 _$t0@@1) (= 2 2)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$2$$t4@0@@0) (= inline$$1_Roles_has_role$2$$t4@0@@0 (|$addr#$signer| _$t0@@1))) (and (= inline$$1_Roles_has_role$2$$t4@0@@0 inline$$1_Roles_has_role$2$$t4@0@@0) (= inline$$1_Roles_has_role$2$$t5@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0@@0)))) (and (=> (= (ControlFlow 0 221602) 221638) inline$$1_Roles_has_role$2$anon9_Then_correct@@0) (=> (= (ControlFlow 0 221602) 221622) inline$$1_Roles_has_role$2$anon9_Else_correct@@0))))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon0_correct@@0  (=> (= _$t0@@1 _$t0@@1) (=> (and (|$IsValid'u64'| 2) (= (ControlFlow 0 221756) 221602)) inline$$1_Roles_has_role$2$anon0_correct@@0))))
(let ((inline$$1_Roles_can_hold_balance$0$anon16_Else_correct@@0  (=> (and (not inline$$1_Roles_can_hold_balance$0$$t1@1@@0) (= (ControlFlow 0 221798) 221756)) inline$$1_Roles_has_designated_dealer_role$0$anon0_correct@@0)))
(let ((inline$$1_Roles_can_hold_balance$0$anon16_Then_correct@@0  (=> (and inline$$1_Roles_can_hold_balance$0$$t1@1@@0 (= true true)) (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1@@0 true) (= $abort_code@11@@0 $abort_code@7@@1)) (and (= $abort_flag@13@@0 $abort_flag@8@@0) (= (ControlFlow 0 221866) 221828))) inline$$1_Roles_can_hold_balance$0$L7_correct@@0))))
(let ((inline$$1_Roles_can_hold_balance$0$anon15_Else_correct@@0  (=> (not $abort_flag@7@@1) (=> (and (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1@@0 inline$$1_Roles_has_child_VASP_role$0$$ret0@1@@0) (= inline$$1_Roles_can_hold_balance$0$$t1@1@@0 inline$$1_Roles_has_child_VASP_role$0$$ret0@1@@0)) (and (= $abort_flag@8@@0 $abort_flag@7@@1) (= $abort_code@7@@1 $abort_code@6@@1))) (and (=> (= (ControlFlow 0 221116) 221866) inline$$1_Roles_can_hold_balance$0$anon16_Then_correct@@0) (=> (= (ControlFlow 0 221116) 221798) inline$$1_Roles_can_hold_balance$0$anon16_Else_correct@@0))))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct@@0  (=> (and (and (not $abort_flag@6@@1) (= inline$$1_Roles_has_role$1$$ret0@1@@0 inline$$1_Roles_has_role$1$$ret0@1@@0)) (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1@@0 inline$$1_Roles_has_role$1$$ret0@1@@0) (= $abort_flag@7@@1 $abort_flag@6@@1))) (and (=> (= (ControlFlow 0 221074) 221880) inline$$1_Roles_can_hold_balance$0$anon15_Then_correct@@0) (=> (= (ControlFlow 0 221074) 221116) inline$$1_Roles_can_hold_balance$0$anon15_Else_correct@@0)))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct@@0  (=> (and (and $abort_flag@6@@1 (= $abort_code@6@@1 $abort_code@6@@1)) (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1@@0 inline$$1_Roles_has_child_VASP_role$0$$ret0@0@@0) (= $abort_flag@7@@1 true))) (and (=> (= (ControlFlow 0 221092) 221880) inline$$1_Roles_can_hold_balance$0$anon15_Then_correct@@0) (=> (= (ControlFlow 0 221092) 221116) inline$$1_Roles_can_hold_balance$0$anon15_Else_correct@@0)))))
(let ((inline$$1_Roles_has_role$1$anon11_Then_correct@@0  (=> $abort_flag@4@@1 (=> (and (and (= $abort_code@4@@1 $abort_code@4@@1) (= $abort_code@6@@1 $abort_code@4@@1)) (and (= $abort_flag@6@@1 true) (= inline$$1_Roles_has_role$1$$ret0@1@@0 inline$$1_Roles_has_role$1$$ret0@0@@0))) (and (=> (= (ControlFlow 0 220998) 221092) inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct@@0) (=> (= (ControlFlow 0 220998) 221074) inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct@@0))))))
(let ((inline$$1_Roles_has_role$1$L3_correct@@0  (=> (and (and (= inline$$1_Roles_has_role$1$$t2@1@@0 inline$$1_Roles_has_role$1$$t2@1@@0) (= $abort_code@6@@1 $abort_code@5@@1)) (and (= $abort_flag@6@@1 $abort_flag@5@@1) (= inline$$1_Roles_has_role$1$$ret0@1@@0 inline$$1_Roles_has_role$1$$t2@1@@0))) (and (=> (= (ControlFlow 0 220934) 221092) inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct@@0) (=> (= (ControlFlow 0 220934) 221074) inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct@@0)))))
(let ((inline$$1_Roles_has_role$1$anon11_Else_correct@@0  (=> (and (and (and (not $abort_flag@4@@1) (= inline$$1_Roles_has_role$1$$t8@1@@0 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$1$$t6@2@@0))) (and (= inline$$1_Roles_has_role$1$$t9@1@@0 (= inline$$1_Roles_has_role$1$$t8@1@@0 6)) (= inline$$1_Roles_has_role$1$$t9@1@@0 inline$$1_Roles_has_role$1$$t9@1@@0))) (and (and (= $abort_code@5@@1 $abort_code@4@@1) (= inline$$1_Roles_has_role$1$$t2@1@@0 inline$$1_Roles_has_role$1$$t9@1@@0)) (and (= $abort_flag@5@@1 $abort_flag@4@@1) (= (ControlFlow 0 220980) 220934)))) inline$$1_Roles_has_role$1$L3_correct@@0)))
(let ((inline$$1_Roles_has_role$1$anon10_Then$1_correct@@0  (=> (= $abort_flag@4@@1 true) (=> (and (= $abort_code@4@@1 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$1$$t6@2@@0 inline$$1_Roles_has_role$1$$t6@0@@0)) (and (=> (= (ControlFlow 0 221050) 220998) inline$$1_Roles_has_role$1$anon11_Then_correct@@0) (=> (= (ControlFlow 0 221050) 220980) inline$$1_Roles_has_role$1$anon11_Else_correct@@0))))))
(let ((inline$$1_Roles_has_role$1$anon10_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0@@0)) (= (ControlFlow 0 221048) 221050)) inline$$1_Roles_has_role$1$anon10_Then$1_correct@@0)))
(let ((inline$$1_Roles_has_role$1$anon10_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0@@0) (=> (and (and (= inline$$1_Roles_has_role$1$$t6@1@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0@@0)) (= $abort_flag@4@@1 $abort_flag@3@@1)) (and (= $abort_code@4@@1 $abort_code@3@@1) (= inline$$1_Roles_has_role$1$$t6@2@@0 inline$$1_Roles_has_role$1$$t6@1@@0))) (and (=> (= (ControlFlow 0 220952) 220998) inline$$1_Roles_has_role$1$anon11_Then_correct@@0) (=> (= (ControlFlow 0 220952) 220980) inline$$1_Roles_has_role$1$anon11_Else_correct@@0))))))
(let ((inline$$1_Roles_has_role$1$anon9_Then_correct@@0  (=> inline$$1_Roles_has_role$1$$t5@1@@0 (and (=> (= (ControlFlow 0 220938) 221048) inline$$1_Roles_has_role$1$anon10_Then_correct@@0) (=> (= (ControlFlow 0 220938) 220952) inline$$1_Roles_has_role$1$anon10_Else_correct@@0)))))
(let ((inline$$1_Roles_has_role$1$anon9_Else_correct@@0  (=> (and (not inline$$1_Roles_has_role$1$$t5@1@@0) (= false false)) (=> (and (and (= $abort_code@5@@1 $abort_code@3@@1) (= inline$$1_Roles_has_role$1$$t2@1@@0 false)) (and (= $abort_flag@5@@1 $abort_flag@3@@1) (= (ControlFlow 0 220922) 220934))) inline$$1_Roles_has_role$1$L3_correct@@0))))
(let ((inline$$1_Roles_has_role$1$anon0_correct@@0  (=> (and (= _$t0@@1 _$t0@@1) (= 6 6)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$1$$t4@0@@0) (= inline$$1_Roles_has_role$1$$t4@0@@0 (|$addr#$signer| _$t0@@1))) (and (= inline$$1_Roles_has_role$1$$t4@0@@0 inline$$1_Roles_has_role$1$$t4@0@@0) (= inline$$1_Roles_has_role$1$$t5@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0@@0)))) (and (=> (= (ControlFlow 0 220902) 220938) inline$$1_Roles_has_role$1$anon9_Then_correct@@0) (=> (= (ControlFlow 0 220902) 220922) inline$$1_Roles_has_role$1$anon9_Else_correct@@0))))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon0_correct@@0  (=> (= _$t0@@1 _$t0@@1) (=> (and (|$IsValid'u64'| 6) (= (ControlFlow 0 221056) 220902)) inline$$1_Roles_has_role$1$anon0_correct@@0))))
(let ((inline$$1_Roles_can_hold_balance$0$anon14_Else_correct@@0  (=> (and (not inline$$1_Roles_has_parent_VASP_role$0$$ret0@1@@0) (= (ControlFlow 0 221098) 221056)) inline$$1_Roles_has_child_VASP_role$0$anon0_correct@@0)))
(let ((inline$$1_Roles_can_hold_balance$0$anon14_Then_correct@@0  (=> inline$$1_Roles_has_parent_VASP_role$0$$ret0@1@@0 (=> (and (and (= true true) (= inline$$1_Roles_can_hold_balance$0$$t1@1@@0 true)) (and (= $abort_flag@8@@0 $abort_flag@3@@1) (= $abort_code@7@@1 $abort_code@3@@1))) (and (=> (= (ControlFlow 0 221898) 221866) inline$$1_Roles_can_hold_balance$0$anon16_Then_correct@@0) (=> (= (ControlFlow 0 221898) 221798) inline$$1_Roles_can_hold_balance$0$anon16_Else_correct@@0))))))
(let ((inline$$1_Roles_can_hold_balance$0$anon13_Else_correct@@0  (=> (not $abort_flag@3@@1) (and (=> (= (ControlFlow 0 220418) 221898) inline$$1_Roles_can_hold_balance$0$anon14_Then_correct@@0) (=> (= (ControlFlow 0 220418) 221098) inline$$1_Roles_can_hold_balance$0$anon14_Else_correct@@0)))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct@@0  (=> (and (and (not $abort_flag@2@@1) (= inline$$1_Roles_has_role$0$$ret0@1@@0 inline$$1_Roles_has_role$0$$ret0@1@@0)) (and (= inline$$1_Roles_has_parent_VASP_role$0$$ret0@1@@0 inline$$1_Roles_has_role$0$$ret0@1@@0) (= $abort_flag@3@@1 $abort_flag@2@@1))) (and (=> (= (ControlFlow 0 220386) 221912) inline$$1_Roles_can_hold_balance$0$anon13_Then_correct@@0) (=> (= (ControlFlow 0 220386) 220418) inline$$1_Roles_can_hold_balance$0$anon13_Else_correct@@0)))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct@@0  (=> (and (and $abort_flag@2@@1 (= $abort_code@3@@1 $abort_code@3@@1)) (and (= inline$$1_Roles_has_parent_VASP_role$0$$ret0@1@@0 inline$$1_Roles_has_parent_VASP_role$0$$ret0@0@@0) (= $abort_flag@3@@1 true))) (and (=> (= (ControlFlow 0 220404) 221912) inline$$1_Roles_can_hold_balance$0$anon13_Then_correct@@0) (=> (= (ControlFlow 0 220404) 220418) inline$$1_Roles_can_hold_balance$0$anon13_Else_correct@@0)))))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct@@0  (=> $abort_flag@0@@1 (=> (and (and (= $abort_code@1@@1 $abort_code@1@@1) (= $abort_code@3@@1 $abort_code@1@@1)) (and (= $abort_flag@2@@1 true) (= inline$$1_Roles_has_role$0$$ret0@1@@0 inline$$1_Roles_has_role$0$$ret0@0@@0))) (and (=> (= (ControlFlow 0 220310) 220404) inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct@@0) (=> (= (ControlFlow 0 220310) 220386) inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct@@0))))))
(let ((inline$$1_Roles_has_role$0$L3_correct@@0  (=> (and (and (= inline$$1_Roles_has_role$0$$t2@1@@0 inline$$1_Roles_has_role$0$$t2@1@@0) (= $abort_code@3@@1 $abort_code@2@@1)) (and (= $abort_flag@2@@1 $abort_flag@1@@1) (= inline$$1_Roles_has_role$0$$ret0@1@@0 inline$$1_Roles_has_role$0$$t2@1@@0))) (and (=> (= (ControlFlow 0 220246) 220404) inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct@@0) (=> (= (ControlFlow 0 220246) 220386) inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct@@0)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct@@0  (=> (and (and (and (not $abort_flag@0@@1) (= inline$$1_Roles_has_role$0$$t8@1@@0 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2@@0))) (and (= inline$$1_Roles_has_role$0$$t9@1@@0 (= inline$$1_Roles_has_role$0$$t8@1@@0 5)) (= inline$$1_Roles_has_role$0$$t9@1@@0 inline$$1_Roles_has_role$0$$t9@1@@0))) (and (and (= $abort_code@2@@1 $abort_code@1@@1) (= inline$$1_Roles_has_role$0$$t2@1@@0 inline$$1_Roles_has_role$0$$t9@1@@0)) (and (= $abort_flag@1@@1 $abort_flag@0@@1) (= (ControlFlow 0 220292) 220246)))) inline$$1_Roles_has_role$0$L3_correct@@0)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct@@0  (=> (= $abort_flag@0@@1 true) (=> (and (= $abort_code@1@@1 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$0$$t6@2@@0 inline$$1_Roles_has_role$0$$t6@0@@0)) (and (=> (= (ControlFlow 0 220362) 220310) inline$$1_Roles_has_role$0$anon11_Then_correct@@0) (=> (= (ControlFlow 0 220362) 220292) inline$$1_Roles_has_role$0$anon11_Else_correct@@0))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@0)) (= (ControlFlow 0 220360) 220362)) inline$$1_Roles_has_role$0$anon10_Then$1_correct@@0)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@0) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@0)) (= $abort_flag@0@@1 false)) (and (= $abort_code@1@@1 $abort_code@0@@1) (= inline$$1_Roles_has_role$0$$t6@2@@0 inline$$1_Roles_has_role$0$$t6@1@@0))) (and (=> (= (ControlFlow 0 220264) 220310) inline$$1_Roles_has_role$0$anon11_Then_correct@@0) (=> (= (ControlFlow 0 220264) 220292) inline$$1_Roles_has_role$0$anon11_Else_correct@@0))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct@@0  (=> inline$$1_Roles_has_role$0$$t5@1@@0 (and (=> (= (ControlFlow 0 220250) 220360) inline$$1_Roles_has_role$0$anon10_Then_correct@@0) (=> (= (ControlFlow 0 220250) 220264) inline$$1_Roles_has_role$0$anon10_Else_correct@@0)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct@@0  (=> (and (not inline$$1_Roles_has_role$0$$t5@1@@0) (= false false)) (=> (and (and (= $abort_code@2@@1 $abort_code@0@@1) (= inline$$1_Roles_has_role$0$$t2@1@@0 false)) (and (= $abort_flag@1@@1 false) (= (ControlFlow 0 220234) 220246))) inline$$1_Roles_has_role$0$L3_correct@@0))))
(let ((inline$$1_Roles_has_role$0$anon0_correct@@0  (=> (and (= _$t0@@1 _$t0@@1) (= 5 5)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0@@0) (= inline$$1_Roles_has_role$0$$t4@0@@0 (|$addr#$signer| _$t0@@1))) (and (= inline$$1_Roles_has_role$0$$t4@0@@0 inline$$1_Roles_has_role$0$$t4@0@@0) (= inline$$1_Roles_has_role$0$$t5@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@0)))) (and (=> (= (ControlFlow 0 220214) 220250) inline$$1_Roles_has_role$0$anon9_Then_correct@@0) (=> (= (ControlFlow 0 220214) 220234) inline$$1_Roles_has_role$0$anon9_Else_correct@@0))))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon0_correct@@0  (=> (= _$t0@@1 _$t0@@1) (=> (and (|$IsValid'u64'| 5) (= (ControlFlow 0 220368) 220214)) inline$$1_Roles_has_role$0$anon0_correct@@0))))
(let ((inline$$1_Roles_can_hold_balance$0$anon0_correct@@0  (=> (and (= _$t0@@1 _$t0@@1) (= (ControlFlow 0 220410) 220368)) inline$$1_Roles_has_parent_VASP_role$0$anon0_correct@@0)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon25_Then_correct|  (=> (and inline$$1_DiemAccount_exists_at$0$$t1@1@@1 (= (ControlFlow 0 221918) 220410)) inline$$1_Roles_can_hold_balance$0$anon0_correct@@0)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon25_Else_correct|  (=> (not inline$$1_DiemAccount_exists_at$0$$t1@1@@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t13@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t13@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t13@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 219406) 219412))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon24_Else_correct|  (=> (and (not false) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t13@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t13@0| 5)) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t13@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t13@0|) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@1 inline$$1_DiemAccount_exists_at$0$$t1@1@@1))) (and (=> (= (ControlFlow 0 219390) 221918) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon25_Then_correct|) (=> (= (ControlFlow 0 219390) 219406) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon25_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon23_Then_correct|  (=> |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_135648| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@0|)) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 222461) 219412))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon24_Then_correct| true))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct@@1  (=> (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0|) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0|)) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@1 inline$$1_DiemAccount_exists_at$0$$t1@1@@1)) (and (=> (= (ControlFlow 0 219348) 222435) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon24_Then_correct|) (=> (= (ControlFlow 0 219348) 219390) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon24_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon23_Else_correct|  (=> (and (not |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0|) (= (ControlFlow 0 219354) 219348)) inline$$1_DiemAccount_exists_at$0$anon0_correct@@1)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon0_correct|  (=> (= _$t0@@1 _$t0@@1) (=> (and (and (|$IsValid'address'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0| (|$addr#$signer| _$t0@@1))) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_135648| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 219243) 222461) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 219243) 219354) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon23_Else_correct|))))))
(let ((anon0$1_correct@@1  (=> (and (forall ((addr@@96 Int) ) (!  (=> (|$IsValid'address'| addr@@96) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_128199| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@96) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@96) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@96)) 4))))
 :qid |AccountAdministrationScriptsseqArraybpl.16798:20|
 :skolemid |273|
)) (forall ((addr@@97 Int) ) (!  (=> (|$IsValid'address'| addr@@97) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_129052| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@97) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@97) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@97)) 3))))
 :qid |AccountAdministrationScriptsseqArraybpl.16802:20|
 :skolemid |274|
))) (=> (and (and (forall ((addr@@98 Int) ) (!  (=> (|$IsValid'address'| addr@@98) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_129052| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@98) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@98) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@98)) 3))))
 :qid |AccountAdministrationScriptsseqArraybpl.16806:20|
 :skolemid |275|
)) (forall ((addr@@99 Int) ) (!  (=> (|$IsValid'address'| addr@@99) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_129052| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@99) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_129052| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@99)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@99) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@99)) 3))))
 :qid |AccountAdministrationScriptsseqArraybpl.16810:20|
 :skolemid |276|
))) (and (forall ((mint_cap_owner@@1 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_140848| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) mint_cap_owner@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) mint_cap_owner@@1)) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.16814:21|
 :skolemid |277|
)) (forall ((mint_cap_owner@@2 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_140935| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@2) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) mint_cap_owner@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) mint_cap_owner@@2)) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.16814:268|
 :skolemid |278|
)))) (=> (and (and (and (forall ((addr1@@4 Int) ) (!  (=> (|$IsValid'address'| addr1@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_136128| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@4) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@4)) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.16822:21|
 :skolemid |279|
)) (forall ((addr1@@5 Int) ) (!  (=> (|$IsValid'address'| addr1@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_136215| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@5) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@5)) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.16822:231|
 :skolemid |280|
))) (and (forall ((addr1@@6 Int) ) (!  (=> (|$IsValid'address'| addr1@@6) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_141517| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@6) (|Select__T@[Int]Bool_| (|domain#$Memory_141108| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@6)) 2))))
 :qid |AccountAdministrationScriptsseqArraybpl.16826:21|
 :skolemid |281|
)) (forall ((addr1@@7 Int) ) (!  (=> (|$IsValid'address'| addr1@@7) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_141616| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_141199| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@7)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@7)) 2))))
 :qid |AccountAdministrationScriptsseqArraybpl.16826:292|
 :skolemid |282|
)))) (and (and (forall ((addr@@100 Int) ) (!  (=> (|$IsValid'address'| addr@@100) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141108| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@100) (|Select__T@[Int]Bool_| (|domain#$Memory_135648| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |AccountAdministrationScriptsseqArraybpl.16830:22|
 :skolemid |283|
)) (forall ((addr@@101 Int) ) (!  (=> (|$IsValid'address'| addr@@101) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141199| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@101) (|Select__T@[Int]Bool_| (|domain#$Memory_135712| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |AccountAdministrationScriptsseqArraybpl.16830:222|
 :skolemid |284|
))) (forall ((addr@@102 Int) ) (!  (=> (|$IsValid'address'| addr@@102) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141290| |$1_Diem_Preburn'#0'_$memory|) addr@@102) (|Select__T@[Int]Bool_| (|domain#$Memory_135848| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |AccountAdministrationScriptsseqArraybpl.16830:423|
 :skolemid |285|
)))) (=> (and (and (and (and (and (and (forall ((addr@@103 Int) ) (!  (=> (|$IsValid'address'| addr@@103) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141517| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@103) (|Select__T@[Int]Bool_| (|domain#$Memory_135648| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |AccountAdministrationScriptsseqArraybpl.16834:22|
 :skolemid |286|
)) (forall ((addr@@104 Int) ) (!  (=> (|$IsValid'address'| addr@@104) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141616| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@104) (|Select__T@[Int]Bool_| (|domain#$Memory_135712| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |AccountAdministrationScriptsseqArraybpl.16834:227|
 :skolemid |287|
))) (forall ((addr@@105 Int) ) (!  (=> (|$IsValid'address'| addr@@105) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141715| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@105) (|Select__T@[Int]Bool_| (|domain#$Memory_135848| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |AccountAdministrationScriptsseqArraybpl.16834:433|
 :skolemid |288|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126448| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_135648| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (forall ((addr1@@8 Int) ) (!  (=> (|$IsValid'address'| addr1@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155070| $1_DualAttestation_Credential_$memory) addr1@@8) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@8)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@8)) 2)))))
 :qid |AccountAdministrationScriptsseqArraybpl.16846:20|
 :skolemid |289|
)) (forall ((addr@@106 Int) ) (!  (=> (|$IsValid'address'| addr@@106) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@106) (or (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@106)))) 0) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@106)))) 0)) (= addr@@106 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@106))) 0)))))))
 :qid |AccountAdministrationScriptsseqArraybpl.16850:20|
 :skolemid |290|
)))) (and (and (and (forall ((addr@@107 Int) ) (!  (=> (|$IsValid'address'| addr@@107) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@107) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@107) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@107)))) 0)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@107)))) 0)) (= addr@@107 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@107))) 0)))))))
 :qid |AccountAdministrationScriptsseqArraybpl.16854:20|
 :skolemid |291|
)) (forall ((addr@@108 Int) ) (!  (=> (|$IsValid'address'| addr@@108) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@108) (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@108)))
 :qid |AccountAdministrationScriptsseqArraybpl.16858:20|
 :skolemid |292|
))) (and (forall ((addr@@109 Int) ) (!  (=> (|$IsValid'address'| addr@@109) (=> (and (= addr@@109 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@109)) (|Select__T@[Int]Bool_| (|domain#$Memory_161752| $1_DiemAccount_AccountOperationsCapability_$memory) addr@@109)))
 :qid |AccountAdministrationScriptsseqArraybpl.16862:20|
 :skolemid |293|
)) (forall ((addr@@110 Int) ) (!  (=> (|$IsValid'address'| addr@@110) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_152687| $1_VASPDomain_VASPDomainManager_$memory) addr@@110) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@110) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@110)) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.16866:20|
 :skolemid |294|
)))) (and (and (forall ((addr@@111 Int) ) (!  (=> (|$IsValid'address'| addr@@111) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_161887| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@111) (|Select__T@[Int]Bool_| (|domain#$Memory_161978| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@111)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@111) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@111)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@111) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@111)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@111) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@111)) 2)))))
 :qid |AccountAdministrationScriptsseqArraybpl.16870:20|
 :skolemid |295|
)) (forall ((addr@@112 Int) ) (!  (=> (|$IsValid'address'| addr@@112) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_159568| $1_DesignatedDealer_Dealer_$memory) addr@@112) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@112) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@112)) 2))))
 :qid |AccountAdministrationScriptsseqArraybpl.16874:20|
 :skolemid |296|
))) (and (forall ((addr@@113 Int) ) (!  (=> (|$IsValid'address'| addr@@113) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155070| $1_DualAttestation_Credential_$memory) addr@@113) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@113) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@113)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@113) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@113)) 5)))))
 :qid |AccountAdministrationScriptsseqArraybpl.16878:20|
 :skolemid |297|
)) (forall ((addr@@114 Int) ) (!  (=> (|$IsValid'address'| addr@@114) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@114) (|Select__T@[Int]Bool_| (|domain#$Memory_159816| $1_AccountFreezing_FreezingBit_$memory) addr@@114)))
 :qid |AccountAdministrationScriptsseqArraybpl.16882:20|
 :skolemid |298|
)))))) (and (and (and (and (forall ((addr@@115 Int) ) (!  (=> (|$IsValid'address'| addr@@115) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161887| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@115) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@115)))
 :qid |AccountAdministrationScriptsseqArraybpl.16886:22|
 :skolemid |299|
)) (forall ((addr@@116 Int) ) (!  (=> (|$IsValid'address'| addr@@116) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161978| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@116) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@116)))
 :qid |AccountAdministrationScriptsseqArraybpl.16886:218|
 :skolemid |300|
))) (forall ((addr@@117 Int) ) (!  (=> (|$IsValid'address'| addr@@117) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_162069| |$1_DiemAccount_Balance'#0'_$memory|) addr@@117) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@117)))
 :qid |AccountAdministrationScriptsseqArraybpl.16886:415|
 :skolemid |301|
))) (and (and (forall ((addr@@118 Int) ) (!  (=> (|$IsValid'address'| addr@@118) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_129052| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@118) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@118) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@118)) 3))))
 :qid |AccountAdministrationScriptsseqArraybpl.16890:20|
 :skolemid |302|
)) (forall ((addr@@119 Int) ) (!  (=> (|$IsValid'address'| addr@@119) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_128199| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@119) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@119) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@119)) 4))))
 :qid |AccountAdministrationScriptsseqArraybpl.16894:20|
 :skolemid |303|
))) (and (forall ((addr@@120 Int) ) (!  (=> (|$IsValid'address'| addr@@120) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_153604| $1_VASP_ParentVASP_$memory) addr@@120) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@120) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@120)) 5))))
 :qid |AccountAdministrationScriptsseqArraybpl.16898:20|
 :skolemid |304|
)) (forall ((addr@@121 Int) ) (!  (=> (|$IsValid'address'| addr@@121) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_153540| $1_VASP_ChildVASP_$memory) addr@@121) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@121) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@121)) 6))))
 :qid |AccountAdministrationScriptsseqArraybpl.16902:20|
 :skolemid |305|
))))) (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@1)) (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) $a_0@@4)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@4))
 :qid |AccountAdministrationScriptsseqArraybpl.16908:20|
 :skolemid |306|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) $a_0@@4))
))) (and (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_135648| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@5)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| $rsc@@5) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@5)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@5) 10000000000))))
 :qid |AccountAdministrationScriptsseqArraybpl.16912:20|
 :skolemid |307|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_135648| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@5))
)) (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $a_0@@6)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@6) (and (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@6))) 1) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@6))) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.16916:20|
 :skolemid |308|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $a_0@@6))
)))) (and (and (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_161887| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) $a_0@@7)))
(|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| $rsc@@7))
 :qid |AccountAdministrationScriptsseqArraybpl.16920:20|
 :skolemid |309|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_161887| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) $a_0@@7))
)) (let ((addr@@122 (|$addr#$signer| _$t0@@1)))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_126448| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@122)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_159816| $1_AccountFreezing_FreezingBit_$memory) addr@@122) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_159816| $1_AccountFreezing_FreezingBit_$memory) addr@@122))))))) (and (= _$t0@@1 _$t0@@1) (= (ControlFlow 0 222465) 219243)))))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon0_correct|))))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@3 T@$1_Event_EventHandle) ) (! (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_89088_| (|streams#$EventStore| $es) handle@@3)))
 (and (= (|l#Multiset_89088| stream@@2) 0) (forall ((v@@49 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_89088| stream@@2) v@@49) 0)
 :qid |AccountAdministrationScriptsseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |AccountAdministrationScriptsseqArraybpl.3268:13|
 :skolemid |89|
))) (= (ControlFlow 0 217597) 222465)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 325902) 217597) inline$$InitEventStore$0$anon0_correct@@1)))
anon0_correct@@1))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@17@@1 () Bool)
(declare-fun _$t0@@2 () T@$signer)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3| () T@$Memory_161978)
(declare-fun |Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| Int) |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)
(declare-fun $abort_code@15@@1 () Int)
(declare-fun $abort_flag@16@@1 () Bool)
(declare-fun $abort_code@14@@1 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1| () T@$Memory_161978)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@1| () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| () T@$Memory_161978)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@0| () T@$Memory_161978)
(declare-fun |Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| Int |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ( ?x1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)) (! (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t22@1| () |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)
(declare-fun $abort_code@13@@1 () Int)
(declare-fun $abort_flag@15@@1 () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0| () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun $abort_flag@14@@1 () Bool)
(declare-fun $abort_code@12@@1 () Int)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0| () Int)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@0| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun inline$$Not$0$dst@1@@2 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t20@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@1| () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$0$$ret0@1@@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t16@0| () Int)
(declare-fun inline$$1_Roles_can_hold_balance$0$$ret0@0@@1 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$0$$t4@1@@1 () Int)
(declare-fun $abort_flag@12@@1 () Bool)
(declare-fun $abort_code@10@@1 () Int)
(declare-fun $abort_flag@7@@2 () Bool)
(declare-fun $abort_code@6@@2 () Int)
(declare-fun $abort_flag@3@@2 () Bool)
(declare-fun $abort_code@3@@2 () Int)
(declare-fun inline$$1_Roles_can_hold_balance$0$$t2@1@@1 () Bool)
(declare-fun $abort_flag@13@@1 () Bool)
(declare-fun $abort_code@11@@1 () Int)
(declare-fun inline$$1_Roles_has_designated_dealer_role$0$$ret0@1@@1 () Bool)
(declare-fun $abort_flag@11@@1 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$ret0@1@@1 () Bool)
(declare-fun inline$$1_Roles_has_designated_dealer_role$0$$ret0@0@@1 () Bool)
(declare-fun $abort_flag@9@@1 () Bool)
(declare-fun $abort_code@8@@2 () Int)
(declare-fun inline$$1_Roles_has_role$2$$ret0@0@@1 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t2@1@@1 () Bool)
(declare-fun $abort_flag@10@@1 () Bool)
(declare-fun $abort_code@9@@1 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t8@1@@1 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t6@2@@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$2$$t9@1@@1 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t6@0@@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$2$$t4@0@@1 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t6@1@@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@7@@2 () Int)
(declare-fun $abort_flag@8@@1 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t5@1@@1 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$0$$t1@1@@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$0$$ret0@1@@1 () Bool)
(declare-fun $abort_flag@6@@2 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$ret0@1@@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$0$$ret0@0@@1 () Bool)
(declare-fun $abort_flag@4@@2 () Bool)
(declare-fun $abort_code@4@@2 () Int)
(declare-fun inline$$1_Roles_has_role$1$$ret0@0@@1 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t2@1@@1 () Bool)
(declare-fun $abort_code@5@@2 () Int)
(declare-fun $abort_flag@5@@2 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t8@1@@1 () Int)
(declare-fun inline$$1_Roles_has_role$1$$t6@2@@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t9@1@@1 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t6@0@@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t4@0@@1 () Int)
(declare-fun inline$$1_Roles_has_role$1$$t6@1@@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t5@1@@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$0$$ret0@1@@1 () Bool)
(declare-fun $abort_flag@2@@2 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1@@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$0$$ret0@0@@1 () Bool)
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun inline$$1_Roles_has_role$0$$ret0@0@@1 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t2@1@@1 () Bool)
(declare-fun $abort_code@2@@2 () Int)
(declare-fun $abort_flag@1@@2 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t8@1@@1 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@2@@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t9@1@@1 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t6@0@@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t4@0@@1 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@1@@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t5@1@@1 () Bool)
(declare-fun inline$$1_DiemAccount_exists_at$0$$t1@1@@2 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t13@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0| () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0| () Int)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(push 1)
(set-info :boogie-vc-id $1_AccountAdministrationScripts_add_currency_to_account$verify_instantiated_1)
(assert (not
 (=> (= (ControlFlow 0 0) 329502) (let ((anon4_Else_correct@@1  (=> (not $abort_flag@17@@1) (and (=> (= (ControlFlow 0 227987) (- 0 333027)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161978| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@2)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_161978| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@2))) (and (=> (= (ControlFlow 0 227987) (- 0 333038)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_135712| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_135712| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 227987) (- 0 333048)) (not (not (or (or (let ((addr@@123 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@123) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@123)) 5))) (let ((addr@@124 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@124) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@124)) 6)))) (let ((addr@@125 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@125) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@125)) 2))))))) (=> (not (not (or (or (let ((addr@@126 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@126) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@126)) 5))) (let ((addr@@127 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@127) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@127)) 6)))) (let ((addr@@128 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@128) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@128)) 2)))))) (and (=> (= (ControlFlow 0 227987) (- 0 333059)) (not (not (or (or (let ((addr@@129 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@129) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@129)) 5))) (let ((addr@@130 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@130) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@130)) 6)))) (let ((addr@@131 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@131) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@131)) 2))))))) (=> (not (not (or (or (let ((addr@@132 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@132) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@132)) 5))) (let ((addr@@133 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@133) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@133)) 6)))) (let ((addr@@134 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@134) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@134)) 2)))))) (and (=> (= (ControlFlow 0 227987) (- 0 333070)) (|Select__T@[Int]Bool_| (|domain#$Memory_161978| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (|$addr#$signer| _$t0@@2))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161978| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (|$addr#$signer| _$t0@@2)) (=> (= (ControlFlow 0 227987) (- 0 333079)) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_161978| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (|$addr#$signer| _$t0@@2)) (|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$1_Diem_Diem'$1_XDX_XDX'| 0)))))))))))))))))
(let ((anon4_Then_correct@@1  (=> (and $abort_flag@17@@1 (= $abort_code@15@@1 $abort_code@15@@1)) (and (=> (= (ControlFlow 0 228135) (- 0 332906)) (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_161978| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@2)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_135712| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (not (or (or (let ((addr@@135 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@135) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@135)) 5))) (let ((addr@@136 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@136) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@136)) 6)))) (let ((addr@@137 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@137) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@137)) 2)))))) (not (or (or (let ((addr@@138 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@138) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@138)) 5))) (let ((addr@@139 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@139) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@139)) 6)))) (let ((addr@@140 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@140) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@140)) 2))))))) (=> (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_161978| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@2)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_135712| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (not (or (or (let ((addr@@141 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@141) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@141)) 5))) (let ((addr@@142 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@142) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@142)) 6)))) (let ((addr@@143 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@143) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@143)) 2)))))) (not (or (or (let ((addr@@144 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@144) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@144)) 5))) (let ((addr@@145 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@145) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@145)) 6)))) (let ((addr@@146 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@146) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@146)) 2)))))) (=> (= (ControlFlow 0 228135) (- 0 332935)) (or (or (or (or (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_161978| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@2)) (= 6 $abort_code@15@@1)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_135712| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 $abort_code@15@@1))) (and (not (or (or (let ((addr@@147 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@147) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@147)) 5))) (let ((addr@@148 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@148) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@148)) 6)))) (let ((addr@@149 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@149) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@149)) 2))))) (= 7 $abort_code@15@@1))) (and (not (or (or (let ((addr@@150 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@150) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@150)) 5))) (let ((addr@@151 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@151) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@151)) 6)))) (let ((addr@@152 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@152) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@152)) 2))))) (= 7 $abort_code@15@@1))) (= 5 $abort_code@15@@1)) (= 7 $abort_code@15@@1)) (= 6 $abort_code@15@@1))))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Else_correct|  (=> (and (and (not $abort_flag@16@@1) (= $abort_code@15@@1 $abort_code@14@@1)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1|) (= $abort_flag@17@@1 $abort_flag@16@@1))) (and (=> (= (ControlFlow 0 227765) 228135) anon4_Then_correct@@1) (=> (= (ControlFlow 0 227765) 227987) anon4_Else_correct@@1)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|  (=> (= $abort_code@15@@1 |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@1|) (=> (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2|) (= $abort_flag@17@@1 true)) (and (=> (= (ControlFlow 0 224850) 228135) anon4_Then_correct@@1) (=> (= (ControlFlow 0 224850) 227987) anon4_Else_correct@@1))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Then_correct|  (=> $abort_flag@16@@1 (=> (and (and (= $abort_code@14@@1 $abort_code@14@@1) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@1| $abort_code@14@@1)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1|) (= (ControlFlow 0 227779) 224850))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Then$1_correct|  (=> (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (=> (and (= $abort_code@14@@1 $EXEC_FAILURE_CODE) (= $abort_flag@16@@1 true)) (and (=> (= (ControlFlow 0 227831) 227779) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 227831) 227765) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_161978| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@2)) (= (ControlFlow 0 227829) 227831)) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_161978| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@2))) (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@0| ($Memory_161978 (|Store__T@[Int]Bool_| (|domain#$Memory_161978| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@2) true) (|Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_161978| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@2) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t22@1|))) (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@0|)) (and (= $abort_code@14@@1 $abort_code@13@@1) (= $abort_flag@16@@1 $abort_flag@15@@1))) (and (=> (= (ControlFlow 0 227755) 227779) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 227755) 227765) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Else_correct|  (=> (and (not $abort_flag@15@@1) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t22@1| (|$1_DiemAccount_Balance'$1_XDX_XDX'| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1|))) (and (=> (= (ControlFlow 0 227733) 227829) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Then_correct|) (=> (= (ControlFlow 0 227733) 227755) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Then_correct|  (=> $abort_flag@15@@1 (=> (and (and (= $abort_code@13@@1 $abort_code@13@@1) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@1| $abort_code@13@@1)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 227845) 224850))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Else_correct|  (=> (not |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0|) (=> (and (|$IsValid'u64'| 0) (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1| (|$1_Diem_Diem'$1_XDX_XDX'| 0))) (=> (and (and (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1|) (= $abort_flag@15@@1 $abort_flag@14@@1)) (and (= $abort_code@13@@1 $abort_code@12@@1) (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1|))) (and (=> (= (ControlFlow 0 227685) 227845) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 227685) 227733) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Then_correct|  (=> |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_135712| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0|)) (=> (and (and (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0|) (= $abort_flag@15@@1 true)) (and (= $abort_code@13@@1 |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0|) (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@0|))) (and (=> (= (ControlFlow 0 227715) 227845) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 227715) 227733) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$0$anon0_correct|  (=> (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_135712| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 227657) 227715) |inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 227657) 227685) |inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon28_Then_correct|  (=> (and inline$$Not$0$dst@1@@2 (= (ControlFlow 0 227721) 227657)) |inline$$1_Diem_zero'$1_XDX_XDX'$0$anon0_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon28_Else_correct|  (=> (not inline$$Not$0$dst@1@@2) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t20@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t20@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t20@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 227504) 224850))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Then$1_correct|  (=> (|$IsValid'u64'| 15) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t20@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t20@0| 6)) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t20@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t20@0|) (= inline$$Not$0$dst@1@@2 inline$$Not$0$dst@1@@2))) (and (=> (= (ControlFlow 0 227488) 227721) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon28_Then_correct|) (=> (= (ControlFlow 0 227488) 227504) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon28_Else_correct|))))))
(let ((inline$$Not$0$anon0_correct@@2  (=> (and (= inline$$Not$0$dst@1@@2  (not |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@1|)) (= (ControlFlow 0 227452) 227488)) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Then_correct|  (=> inline$$1_Roles_can_hold_balance$0$$ret0@1@@1 (=> (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@1| (|Select__T@[Int]Bool_| (|domain#$Memory_161978| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0|)) (= (ControlFlow 0 227458) 227452)) inline$$Not$0$anon0_correct@@2))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Else_correct|  (=> (not inline$$1_Roles_can_hold_balance$0$$ret0@1@@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t16@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t16@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t16@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 227412) 224850))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Else_correct|  (=> (and (not $abort_flag@14@@1) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t16@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t16@0| 7)) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t16@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t16@0|) (= inline$$1_Roles_can_hold_balance$0$$ret0@1@@1 inline$$1_Roles_can_hold_balance$0$$ret0@1@@1))) (and (=> (= (ControlFlow 0 227396) 227458) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Then_correct|) (=> (= (ControlFlow 0 227396) 227412) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Then_correct|  (=> $abort_flag@14@@1 (=> (and (and (= $abort_code@12@@1 $abort_code@12@@1) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@1| $abort_code@12@@1)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 227859) 224850))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((inline$$1_Roles_can_hold_balance$0$L9_correct@@1  (=> (= $abort_flag@14@@1 true) (=> (and (= inline$$1_Roles_can_hold_balance$0$$ret0@1@@1 inline$$1_Roles_can_hold_balance$0$$ret0@0@@1) (= $abort_code@12@@1 inline$$1_Roles_can_hold_balance$0$$t4@1@@1)) (and (=> (= (ControlFlow 0 227286) 227859) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 227286) 227396) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Else_correct|))))))
(let ((inline$$1_Roles_can_hold_balance$0$anon17_Then_correct@@1  (=> (and (and $abort_flag@12@@1 (= $abort_code@10@@1 $abort_code@10@@1)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1@@1 $abort_code@10@@1) (= (ControlFlow 0 227280) 227286))) inline$$1_Roles_can_hold_balance$0$L9_correct@@1)))
(let ((inline$$1_Roles_can_hold_balance$0$anon15_Then_correct@@1  (=> (and (and $abort_flag@7@@2 (= $abort_code@6@@2 $abort_code@6@@2)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1@@1 $abort_code@6@@2) (= (ControlFlow 0 227318) 227286))) inline$$1_Roles_can_hold_balance$0$L9_correct@@1)))
(let ((inline$$1_Roles_can_hold_balance$0$anon13_Then_correct@@1  (=> (and (and $abort_flag@3@@2 (= $abort_code@3@@2 $abort_code@3@@2)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1@@1 $abort_code@3@@2) (= (ControlFlow 0 227350) 227286))) inline$$1_Roles_can_hold_balance$0$L9_correct@@1)))
(let ((inline$$1_Roles_can_hold_balance$0$L7_correct@@1  (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1@@1 inline$$1_Roles_can_hold_balance$0$$t2@1@@1) (= $abort_flag@14@@1 $abort_flag@13@@1)) (and (= inline$$1_Roles_can_hold_balance$0$$ret0@1@@1 inline$$1_Roles_can_hold_balance$0$$t2@1@@1) (= $abort_code@12@@1 $abort_code@11@@1))) (and (=> (= (ControlFlow 0 227266) 227859) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 227266) 227396) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Else_correct|)))))
(let ((inline$$1_Roles_can_hold_balance$0$anon17_Else_correct@@1  (=> (and (not $abort_flag@12@@1) (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1@@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@1@@1)) (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1@@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@1@@1) (= $abort_code@11@@1 $abort_code@10@@1)) (and (= $abort_flag@13@@1 $abort_flag@12@@1) (= (ControlFlow 0 227254) 227266))) inline$$1_Roles_can_hold_balance$0$L7_correct@@1))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct@@1  (=> (and (and (not $abort_flag@11@@1) (= inline$$1_Roles_has_role$2$$ret0@1@@1 inline$$1_Roles_has_role$2$$ret0@1@@1)) (and (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1@@1 inline$$1_Roles_has_role$2$$ret0@1@@1) (= $abort_flag@12@@1 $abort_flag@11@@1))) (and (=> (= (ControlFlow 0 227212) 227280) inline$$1_Roles_can_hold_balance$0$anon17_Then_correct@@1) (=> (= (ControlFlow 0 227212) 227254) inline$$1_Roles_can_hold_balance$0$anon17_Else_correct@@1)))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct@@1  (=> (and (and $abort_flag@11@@1 (= $abort_code@10@@1 $abort_code@10@@1)) (and (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1@@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@0@@1) (= $abort_flag@12@@1 true))) (and (=> (= (ControlFlow 0 227230) 227280) inline$$1_Roles_can_hold_balance$0$anon17_Then_correct@@1) (=> (= (ControlFlow 0 227230) 227254) inline$$1_Roles_can_hold_balance$0$anon17_Else_correct@@1)))))
(let ((inline$$1_Roles_has_role$2$anon11_Then_correct@@1  (=> $abort_flag@9@@1 (=> (and (and (= $abort_code@8@@2 $abort_code@8@@2) (= $abort_flag@11@@1 true)) (and (= $abort_code@10@@1 $abort_code@8@@2) (= inline$$1_Roles_has_role$2$$ret0@1@@1 inline$$1_Roles_has_role$2$$ret0@0@@1))) (and (=> (= (ControlFlow 0 227136) 227230) inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct@@1) (=> (= (ControlFlow 0 227136) 227212) inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct@@1))))))
(let ((inline$$1_Roles_has_role$2$L3_correct@@1  (=> (and (and (= inline$$1_Roles_has_role$2$$t2@1@@1 inline$$1_Roles_has_role$2$$t2@1@@1) (= $abort_flag@11@@1 $abort_flag@10@@1)) (and (= $abort_code@10@@1 $abort_code@9@@1) (= inline$$1_Roles_has_role$2$$ret0@1@@1 inline$$1_Roles_has_role$2$$t2@1@@1))) (and (=> (= (ControlFlow 0 227072) 227230) inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct@@1) (=> (= (ControlFlow 0 227072) 227212) inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct@@1)))))
(let ((inline$$1_Roles_has_role$2$anon11_Else_correct@@1  (=> (and (and (and (not $abort_flag@9@@1) (= inline$$1_Roles_has_role$2$$t8@1@@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$2$$t6@2@@1))) (and (= inline$$1_Roles_has_role$2$$t9@1@@1 (= inline$$1_Roles_has_role$2$$t8@1@@1 2)) (= inline$$1_Roles_has_role$2$$t9@1@@1 inline$$1_Roles_has_role$2$$t9@1@@1))) (and (and (= $abort_flag@10@@1 $abort_flag@9@@1) (= inline$$1_Roles_has_role$2$$t2@1@@1 inline$$1_Roles_has_role$2$$t9@1@@1)) (and (= $abort_code@9@@1 $abort_code@8@@2) (= (ControlFlow 0 227118) 227072)))) inline$$1_Roles_has_role$2$L3_correct@@1)))
(let ((inline$$1_Roles_has_role$2$anon10_Then$1_correct@@1  (=> (= $abort_code@8@@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@9@@1 true) (= inline$$1_Roles_has_role$2$$t6@2@@1 inline$$1_Roles_has_role$2$$t6@0@@1)) (and (=> (= (ControlFlow 0 227188) 227136) inline$$1_Roles_has_role$2$anon11_Then_correct@@1) (=> (= (ControlFlow 0 227188) 227118) inline$$1_Roles_has_role$2$anon11_Else_correct@@1))))))
(let ((inline$$1_Roles_has_role$2$anon10_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0@@1)) (= (ControlFlow 0 227186) 227188)) inline$$1_Roles_has_role$2$anon10_Then$1_correct@@1)))
(let ((inline$$1_Roles_has_role$2$anon10_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0@@1) (=> (and (and (= inline$$1_Roles_has_role$2$$t6@1@@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0@@1)) (= $abort_code@8@@2 $abort_code@7@@2)) (and (= $abort_flag@9@@1 $abort_flag@8@@1) (= inline$$1_Roles_has_role$2$$t6@2@@1 inline$$1_Roles_has_role$2$$t6@1@@1))) (and (=> (= (ControlFlow 0 227090) 227136) inline$$1_Roles_has_role$2$anon11_Then_correct@@1) (=> (= (ControlFlow 0 227090) 227118) inline$$1_Roles_has_role$2$anon11_Else_correct@@1))))))
(let ((inline$$1_Roles_has_role$2$anon9_Then_correct@@1  (=> inline$$1_Roles_has_role$2$$t5@1@@1 (and (=> (= (ControlFlow 0 227076) 227186) inline$$1_Roles_has_role$2$anon10_Then_correct@@1) (=> (= (ControlFlow 0 227076) 227090) inline$$1_Roles_has_role$2$anon10_Else_correct@@1)))))
(let ((inline$$1_Roles_has_role$2$anon9_Else_correct@@1  (=> (and (not inline$$1_Roles_has_role$2$$t5@1@@1) (= false false)) (=> (and (and (= $abort_flag@10@@1 $abort_flag@8@@1) (= inline$$1_Roles_has_role$2$$t2@1@@1 false)) (and (= $abort_code@9@@1 $abort_code@7@@2) (= (ControlFlow 0 227060) 227072))) inline$$1_Roles_has_role$2$L3_correct@@1))))
(let ((inline$$1_Roles_has_role$2$anon0_correct@@1  (=> (and (= _$t0@@2 _$t0@@2) (= 2 2)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$2$$t4@0@@1) (= inline$$1_Roles_has_role$2$$t4@0@@1 (|$addr#$signer| _$t0@@2))) (and (= inline$$1_Roles_has_role$2$$t4@0@@1 inline$$1_Roles_has_role$2$$t4@0@@1) (= inline$$1_Roles_has_role$2$$t5@1@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0@@1)))) (and (=> (= (ControlFlow 0 227040) 227076) inline$$1_Roles_has_role$2$anon9_Then_correct@@1) (=> (= (ControlFlow 0 227040) 227060) inline$$1_Roles_has_role$2$anon9_Else_correct@@1))))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon0_correct@@1  (=> (= _$t0@@2 _$t0@@2) (=> (and (|$IsValid'u64'| 2) (= (ControlFlow 0 227194) 227040)) inline$$1_Roles_has_role$2$anon0_correct@@1))))
(let ((inline$$1_Roles_can_hold_balance$0$anon16_Else_correct@@1  (=> (and (not inline$$1_Roles_can_hold_balance$0$$t1@1@@1) (= (ControlFlow 0 227236) 227194)) inline$$1_Roles_has_designated_dealer_role$0$anon0_correct@@1)))
(let ((inline$$1_Roles_can_hold_balance$0$anon16_Then_correct@@1  (=> (and inline$$1_Roles_can_hold_balance$0$$t1@1@@1 (= true true)) (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1@@1 true) (= $abort_code@11@@1 $abort_code@7@@2)) (and (= $abort_flag@13@@1 $abort_flag@8@@1) (= (ControlFlow 0 227304) 227266))) inline$$1_Roles_can_hold_balance$0$L7_correct@@1))))
(let ((inline$$1_Roles_can_hold_balance$0$anon15_Else_correct@@1  (=> (not $abort_flag@7@@2) (=> (and (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1@@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@1@@1) (= inline$$1_Roles_can_hold_balance$0$$t1@1@@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@1@@1)) (and (= $abort_flag@8@@1 $abort_flag@7@@2) (= $abort_code@7@@2 $abort_code@6@@2))) (and (=> (= (ControlFlow 0 226554) 227304) inline$$1_Roles_can_hold_balance$0$anon16_Then_correct@@1) (=> (= (ControlFlow 0 226554) 227236) inline$$1_Roles_can_hold_balance$0$anon16_Else_correct@@1))))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct@@1  (=> (and (and (not $abort_flag@6@@2) (= inline$$1_Roles_has_role$1$$ret0@1@@1 inline$$1_Roles_has_role$1$$ret0@1@@1)) (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1@@1 inline$$1_Roles_has_role$1$$ret0@1@@1) (= $abort_flag@7@@2 $abort_flag@6@@2))) (and (=> (= (ControlFlow 0 226512) 227318) inline$$1_Roles_can_hold_balance$0$anon15_Then_correct@@1) (=> (= (ControlFlow 0 226512) 226554) inline$$1_Roles_can_hold_balance$0$anon15_Else_correct@@1)))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct@@1  (=> (and (and $abort_flag@6@@2 (= $abort_code@6@@2 $abort_code@6@@2)) (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1@@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@0@@1) (= $abort_flag@7@@2 true))) (and (=> (= (ControlFlow 0 226530) 227318) inline$$1_Roles_can_hold_balance$0$anon15_Then_correct@@1) (=> (= (ControlFlow 0 226530) 226554) inline$$1_Roles_can_hold_balance$0$anon15_Else_correct@@1)))))
(let ((inline$$1_Roles_has_role$1$anon11_Then_correct@@1  (=> $abort_flag@4@@2 (=> (and (and (= $abort_code@4@@2 $abort_code@4@@2) (= $abort_code@6@@2 $abort_code@4@@2)) (and (= $abort_flag@6@@2 true) (= inline$$1_Roles_has_role$1$$ret0@1@@1 inline$$1_Roles_has_role$1$$ret0@0@@1))) (and (=> (= (ControlFlow 0 226436) 226530) inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct@@1) (=> (= (ControlFlow 0 226436) 226512) inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct@@1))))))
(let ((inline$$1_Roles_has_role$1$L3_correct@@1  (=> (and (and (= inline$$1_Roles_has_role$1$$t2@1@@1 inline$$1_Roles_has_role$1$$t2@1@@1) (= $abort_code@6@@2 $abort_code@5@@2)) (and (= $abort_flag@6@@2 $abort_flag@5@@2) (= inline$$1_Roles_has_role$1$$ret0@1@@1 inline$$1_Roles_has_role$1$$t2@1@@1))) (and (=> (= (ControlFlow 0 226372) 226530) inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct@@1) (=> (= (ControlFlow 0 226372) 226512) inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct@@1)))))
(let ((inline$$1_Roles_has_role$1$anon11_Else_correct@@1  (=> (and (and (and (not $abort_flag@4@@2) (= inline$$1_Roles_has_role$1$$t8@1@@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$1$$t6@2@@1))) (and (= inline$$1_Roles_has_role$1$$t9@1@@1 (= inline$$1_Roles_has_role$1$$t8@1@@1 6)) (= inline$$1_Roles_has_role$1$$t9@1@@1 inline$$1_Roles_has_role$1$$t9@1@@1))) (and (and (= $abort_code@5@@2 $abort_code@4@@2) (= inline$$1_Roles_has_role$1$$t2@1@@1 inline$$1_Roles_has_role$1$$t9@1@@1)) (and (= $abort_flag@5@@2 $abort_flag@4@@2) (= (ControlFlow 0 226418) 226372)))) inline$$1_Roles_has_role$1$L3_correct@@1)))
(let ((inline$$1_Roles_has_role$1$anon10_Then$1_correct@@1  (=> (= $abort_flag@4@@2 true) (=> (and (= $abort_code@4@@2 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$1$$t6@2@@1 inline$$1_Roles_has_role$1$$t6@0@@1)) (and (=> (= (ControlFlow 0 226488) 226436) inline$$1_Roles_has_role$1$anon11_Then_correct@@1) (=> (= (ControlFlow 0 226488) 226418) inline$$1_Roles_has_role$1$anon11_Else_correct@@1))))))
(let ((inline$$1_Roles_has_role$1$anon10_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0@@1)) (= (ControlFlow 0 226486) 226488)) inline$$1_Roles_has_role$1$anon10_Then$1_correct@@1)))
(let ((inline$$1_Roles_has_role$1$anon10_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0@@1) (=> (and (and (= inline$$1_Roles_has_role$1$$t6@1@@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0@@1)) (= $abort_flag@4@@2 $abort_flag@3@@2)) (and (= $abort_code@4@@2 $abort_code@3@@2) (= inline$$1_Roles_has_role$1$$t6@2@@1 inline$$1_Roles_has_role$1$$t6@1@@1))) (and (=> (= (ControlFlow 0 226390) 226436) inline$$1_Roles_has_role$1$anon11_Then_correct@@1) (=> (= (ControlFlow 0 226390) 226418) inline$$1_Roles_has_role$1$anon11_Else_correct@@1))))))
(let ((inline$$1_Roles_has_role$1$anon9_Then_correct@@1  (=> inline$$1_Roles_has_role$1$$t5@1@@1 (and (=> (= (ControlFlow 0 226376) 226486) inline$$1_Roles_has_role$1$anon10_Then_correct@@1) (=> (= (ControlFlow 0 226376) 226390) inline$$1_Roles_has_role$1$anon10_Else_correct@@1)))))
(let ((inline$$1_Roles_has_role$1$anon9_Else_correct@@1  (=> (and (not inline$$1_Roles_has_role$1$$t5@1@@1) (= false false)) (=> (and (and (= $abort_code@5@@2 $abort_code@3@@2) (= inline$$1_Roles_has_role$1$$t2@1@@1 false)) (and (= $abort_flag@5@@2 $abort_flag@3@@2) (= (ControlFlow 0 226360) 226372))) inline$$1_Roles_has_role$1$L3_correct@@1))))
(let ((inline$$1_Roles_has_role$1$anon0_correct@@1  (=> (and (= _$t0@@2 _$t0@@2) (= 6 6)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$1$$t4@0@@1) (= inline$$1_Roles_has_role$1$$t4@0@@1 (|$addr#$signer| _$t0@@2))) (and (= inline$$1_Roles_has_role$1$$t4@0@@1 inline$$1_Roles_has_role$1$$t4@0@@1) (= inline$$1_Roles_has_role$1$$t5@1@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0@@1)))) (and (=> (= (ControlFlow 0 226340) 226376) inline$$1_Roles_has_role$1$anon9_Then_correct@@1) (=> (= (ControlFlow 0 226340) 226360) inline$$1_Roles_has_role$1$anon9_Else_correct@@1))))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon0_correct@@1  (=> (= _$t0@@2 _$t0@@2) (=> (and (|$IsValid'u64'| 6) (= (ControlFlow 0 226494) 226340)) inline$$1_Roles_has_role$1$anon0_correct@@1))))
(let ((inline$$1_Roles_can_hold_balance$0$anon14_Else_correct@@1  (=> (and (not inline$$1_Roles_has_parent_VASP_role$0$$ret0@1@@1) (= (ControlFlow 0 226536) 226494)) inline$$1_Roles_has_child_VASP_role$0$anon0_correct@@1)))
(let ((inline$$1_Roles_can_hold_balance$0$anon14_Then_correct@@1  (=> inline$$1_Roles_has_parent_VASP_role$0$$ret0@1@@1 (=> (and (and (= true true) (= inline$$1_Roles_can_hold_balance$0$$t1@1@@1 true)) (and (= $abort_flag@8@@1 $abort_flag@3@@2) (= $abort_code@7@@2 $abort_code@3@@2))) (and (=> (= (ControlFlow 0 227336) 227304) inline$$1_Roles_can_hold_balance$0$anon16_Then_correct@@1) (=> (= (ControlFlow 0 227336) 227236) inline$$1_Roles_can_hold_balance$0$anon16_Else_correct@@1))))))
(let ((inline$$1_Roles_can_hold_balance$0$anon13_Else_correct@@1  (=> (not $abort_flag@3@@2) (and (=> (= (ControlFlow 0 225856) 227336) inline$$1_Roles_can_hold_balance$0$anon14_Then_correct@@1) (=> (= (ControlFlow 0 225856) 226536) inline$$1_Roles_can_hold_balance$0$anon14_Else_correct@@1)))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct@@1  (=> (and (and (not $abort_flag@2@@2) (= inline$$1_Roles_has_role$0$$ret0@1@@1 inline$$1_Roles_has_role$0$$ret0@1@@1)) (and (= inline$$1_Roles_has_parent_VASP_role$0$$ret0@1@@1 inline$$1_Roles_has_role$0$$ret0@1@@1) (= $abort_flag@3@@2 $abort_flag@2@@2))) (and (=> (= (ControlFlow 0 225824) 227350) inline$$1_Roles_can_hold_balance$0$anon13_Then_correct@@1) (=> (= (ControlFlow 0 225824) 225856) inline$$1_Roles_can_hold_balance$0$anon13_Else_correct@@1)))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct@@1  (=> (and (and $abort_flag@2@@2 (= $abort_code@3@@2 $abort_code@3@@2)) (and (= inline$$1_Roles_has_parent_VASP_role$0$$ret0@1@@1 inline$$1_Roles_has_parent_VASP_role$0$$ret0@0@@1) (= $abort_flag@3@@2 true))) (and (=> (= (ControlFlow 0 225842) 227350) inline$$1_Roles_can_hold_balance$0$anon13_Then_correct@@1) (=> (= (ControlFlow 0 225842) 225856) inline$$1_Roles_can_hold_balance$0$anon13_Else_correct@@1)))))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct@@1  (=> $abort_flag@0@@2 (=> (and (and (= $abort_code@1@@2 $abort_code@1@@2) (= $abort_code@3@@2 $abort_code@1@@2)) (and (= $abort_flag@2@@2 true) (= inline$$1_Roles_has_role$0$$ret0@1@@1 inline$$1_Roles_has_role$0$$ret0@0@@1))) (and (=> (= (ControlFlow 0 225748) 225842) inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct@@1) (=> (= (ControlFlow 0 225748) 225824) inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct@@1))))))
(let ((inline$$1_Roles_has_role$0$L3_correct@@1  (=> (and (and (= inline$$1_Roles_has_role$0$$t2@1@@1 inline$$1_Roles_has_role$0$$t2@1@@1) (= $abort_code@3@@2 $abort_code@2@@2)) (and (= $abort_flag@2@@2 $abort_flag@1@@2) (= inline$$1_Roles_has_role$0$$ret0@1@@1 inline$$1_Roles_has_role$0$$t2@1@@1))) (and (=> (= (ControlFlow 0 225684) 225842) inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct@@1) (=> (= (ControlFlow 0 225684) 225824) inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct@@1)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct@@1  (=> (and (and (and (not $abort_flag@0@@2) (= inline$$1_Roles_has_role$0$$t8@1@@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2@@1))) (and (= inline$$1_Roles_has_role$0$$t9@1@@1 (= inline$$1_Roles_has_role$0$$t8@1@@1 5)) (= inline$$1_Roles_has_role$0$$t9@1@@1 inline$$1_Roles_has_role$0$$t9@1@@1))) (and (and (= $abort_code@2@@2 $abort_code@1@@2) (= inline$$1_Roles_has_role$0$$t2@1@@1 inline$$1_Roles_has_role$0$$t9@1@@1)) (and (= $abort_flag@1@@2 $abort_flag@0@@2) (= (ControlFlow 0 225730) 225684)))) inline$$1_Roles_has_role$0$L3_correct@@1)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct@@1  (=> (= $abort_flag@0@@2 true) (=> (and (= $abort_code@1@@2 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$0$$t6@2@@1 inline$$1_Roles_has_role$0$$t6@0@@1)) (and (=> (= (ControlFlow 0 225800) 225748) inline$$1_Roles_has_role$0$anon11_Then_correct@@1) (=> (= (ControlFlow 0 225800) 225730) inline$$1_Roles_has_role$0$anon11_Else_correct@@1))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@1)) (= (ControlFlow 0 225798) 225800)) inline$$1_Roles_has_role$0$anon10_Then$1_correct@@1)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@1) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1@@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@1)) (= $abort_flag@0@@2 false)) (and (= $abort_code@1@@2 $abort_code@0@@2) (= inline$$1_Roles_has_role$0$$t6@2@@1 inline$$1_Roles_has_role$0$$t6@1@@1))) (and (=> (= (ControlFlow 0 225702) 225748) inline$$1_Roles_has_role$0$anon11_Then_correct@@1) (=> (= (ControlFlow 0 225702) 225730) inline$$1_Roles_has_role$0$anon11_Else_correct@@1))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct@@1  (=> inline$$1_Roles_has_role$0$$t5@1@@1 (and (=> (= (ControlFlow 0 225688) 225798) inline$$1_Roles_has_role$0$anon10_Then_correct@@1) (=> (= (ControlFlow 0 225688) 225702) inline$$1_Roles_has_role$0$anon10_Else_correct@@1)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct@@1  (=> (and (not inline$$1_Roles_has_role$0$$t5@1@@1) (= false false)) (=> (and (and (= $abort_code@2@@2 $abort_code@0@@2) (= inline$$1_Roles_has_role$0$$t2@1@@1 false)) (and (= $abort_flag@1@@2 false) (= (ControlFlow 0 225672) 225684))) inline$$1_Roles_has_role$0$L3_correct@@1))))
(let ((inline$$1_Roles_has_role$0$anon0_correct@@1  (=> (and (= _$t0@@2 _$t0@@2) (= 5 5)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0@@1) (= inline$$1_Roles_has_role$0$$t4@0@@1 (|$addr#$signer| _$t0@@2))) (and (= inline$$1_Roles_has_role$0$$t4@0@@1 inline$$1_Roles_has_role$0$$t4@0@@1) (= inline$$1_Roles_has_role$0$$t5@1@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@1)))) (and (=> (= (ControlFlow 0 225652) 225688) inline$$1_Roles_has_role$0$anon9_Then_correct@@1) (=> (= (ControlFlow 0 225652) 225672) inline$$1_Roles_has_role$0$anon9_Else_correct@@1))))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon0_correct@@1  (=> (= _$t0@@2 _$t0@@2) (=> (and (|$IsValid'u64'| 5) (= (ControlFlow 0 225806) 225652)) inline$$1_Roles_has_role$0$anon0_correct@@1))))
(let ((inline$$1_Roles_can_hold_balance$0$anon0_correct@@1  (=> (and (= _$t0@@2 _$t0@@2) (= (ControlFlow 0 225848) 225806)) inline$$1_Roles_has_parent_VASP_role$0$anon0_correct@@1)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon25_Then_correct|  (=> (and inline$$1_DiemAccount_exists_at$0$$t1@1@@2 (= (ControlFlow 0 227356) 225848)) inline$$1_Roles_can_hold_balance$0$anon0_correct@@1)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon25_Else_correct|  (=> (not inline$$1_DiemAccount_exists_at$0$$t1@1@@2) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t13@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t13@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t13@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 224844) 224850))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon24_Else_correct|  (=> (and (not false) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t13@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t13@0| 5)) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t13@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t13@0|) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@2 inline$$1_DiemAccount_exists_at$0$$t1@1@@2))) (and (=> (= (ControlFlow 0 224828) 227356) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon25_Then_correct|) (=> (= (ControlFlow 0 224828) 224844) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon25_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon23_Then_correct|  (=> |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_135712| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0|)) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 227899) 224850))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon24_Then_correct| true))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct@@2  (=> (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0|) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1@@2 (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0|)) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@2 inline$$1_DiemAccount_exists_at$0$$t1@1@@2)) (and (=> (= (ControlFlow 0 224786) 227873) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon24_Then_correct|) (=> (= (ControlFlow 0 224786) 224828) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon24_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon23_Else_correct|  (=> (and (not |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0|) (= (ControlFlow 0 224792) 224786)) inline$$1_DiemAccount_exists_at$0$anon0_correct@@2)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon0_correct|  (=> (= _$t0@@2 _$t0@@2) (=> (and (and (|$IsValid'address'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0| (|$addr#$signer| _$t0@@2))) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_135712| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 224681) 227899) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 224681) 224792) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon23_Else_correct|))))))
(let ((anon0$1_correct@@2  (=> (and (forall ((addr@@153 Int) ) (!  (=> (|$IsValid'address'| addr@@153) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_128199| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@153) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@153) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@153)) 4))))
 :qid |AccountAdministrationScriptsseqArraybpl.17029:20|
 :skolemid |310|
)) (forall ((addr@@154 Int) ) (!  (=> (|$IsValid'address'| addr@@154) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_129052| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@154) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@154) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@154)) 3))))
 :qid |AccountAdministrationScriptsseqArraybpl.17033:20|
 :skolemid |311|
))) (=> (and (and (forall ((addr@@155 Int) ) (!  (=> (|$IsValid'address'| addr@@155) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_129052| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@155) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@155) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@155)) 3))))
 :qid |AccountAdministrationScriptsseqArraybpl.17037:20|
 :skolemid |312|
)) (forall ((addr@@156 Int) ) (!  (=> (|$IsValid'address'| addr@@156) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_129052| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@156) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_129052| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@156)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@156) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@156)) 3))))
 :qid |AccountAdministrationScriptsseqArraybpl.17041:20|
 :skolemid |313|
))) (and (forall ((mint_cap_owner@@3 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_140848| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@3) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) mint_cap_owner@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) mint_cap_owner@@3)) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.17045:21|
 :skolemid |314|
)) (forall ((mint_cap_owner@@4 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_140935| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@4) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) mint_cap_owner@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) mint_cap_owner@@4)) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.17045:268|
 :skolemid |315|
)))) (=> (and (and (and (forall ((addr1@@9 Int) ) (!  (=> (|$IsValid'address'| addr1@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_136128| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@9) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@9)) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.17053:21|
 :skolemid |316|
)) (forall ((addr1@@10 Int) ) (!  (=> (|$IsValid'address'| addr1@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_136215| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@10) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@10)) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.17053:231|
 :skolemid |317|
))) (and (forall ((addr1@@11 Int) ) (!  (=> (|$IsValid'address'| addr1@@11) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_141517| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_141108| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@11)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@11)) 2))))
 :qid |AccountAdministrationScriptsseqArraybpl.17057:21|
 :skolemid |318|
)) (forall ((addr1@@12 Int) ) (!  (=> (|$IsValid'address'| addr1@@12) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_141616| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_141199| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@12)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@12)) 2))))
 :qid |AccountAdministrationScriptsseqArraybpl.17057:292|
 :skolemid |319|
)))) (and (and (forall ((addr@@157 Int) ) (!  (=> (|$IsValid'address'| addr@@157) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141108| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@157) (|Select__T@[Int]Bool_| (|domain#$Memory_135648| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |AccountAdministrationScriptsseqArraybpl.17061:22|
 :skolemid |320|
)) (forall ((addr@@158 Int) ) (!  (=> (|$IsValid'address'| addr@@158) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141199| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@158) (|Select__T@[Int]Bool_| (|domain#$Memory_135712| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |AccountAdministrationScriptsseqArraybpl.17061:222|
 :skolemid |321|
))) (forall ((addr@@159 Int) ) (!  (=> (|$IsValid'address'| addr@@159) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141290| |$1_Diem_Preburn'#0'_$memory|) addr@@159) (|Select__T@[Int]Bool_| (|domain#$Memory_135848| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |AccountAdministrationScriptsseqArraybpl.17061:423|
 :skolemid |322|
)))) (=> (and (and (and (and (and (and (forall ((addr@@160 Int) ) (!  (=> (|$IsValid'address'| addr@@160) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141517| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@160) (|Select__T@[Int]Bool_| (|domain#$Memory_135648| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |AccountAdministrationScriptsseqArraybpl.17065:22|
 :skolemid |323|
)) (forall ((addr@@161 Int) ) (!  (=> (|$IsValid'address'| addr@@161) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141616| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@161) (|Select__T@[Int]Bool_| (|domain#$Memory_135712| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |AccountAdministrationScriptsseqArraybpl.17065:227|
 :skolemid |324|
))) (forall ((addr@@162 Int) ) (!  (=> (|$IsValid'address'| addr@@162) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141715| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@162) (|Select__T@[Int]Bool_| (|domain#$Memory_135848| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |AccountAdministrationScriptsseqArraybpl.17065:433|
 :skolemid |325|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126448| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_135712| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (forall ((addr1@@13 Int) ) (!  (=> (|$IsValid'address'| addr1@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155070| $1_DualAttestation_Credential_$memory) addr1@@13) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@13)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@13)) 2)))))
 :qid |AccountAdministrationScriptsseqArraybpl.17077:20|
 :skolemid |326|
)) (forall ((addr@@163 Int) ) (!  (=> (|$IsValid'address'| addr@@163) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@163) (or (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@163)))) 0) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@163)))) 0)) (= addr@@163 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@163))) 0)))))))
 :qid |AccountAdministrationScriptsseqArraybpl.17081:20|
 :skolemid |327|
)))) (and (and (and (forall ((addr@@164 Int) ) (!  (=> (|$IsValid'address'| addr@@164) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@164) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@164) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@164)))) 0)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@164)))) 0)) (= addr@@164 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@164))) 0)))))))
 :qid |AccountAdministrationScriptsseqArraybpl.17085:20|
 :skolemid |328|
)) (forall ((addr@@165 Int) ) (!  (=> (|$IsValid'address'| addr@@165) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@165) (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@165)))
 :qid |AccountAdministrationScriptsseqArraybpl.17089:20|
 :skolemid |329|
))) (and (forall ((addr@@166 Int) ) (!  (=> (|$IsValid'address'| addr@@166) (=> (and (= addr@@166 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@166)) (|Select__T@[Int]Bool_| (|domain#$Memory_161752| $1_DiemAccount_AccountOperationsCapability_$memory) addr@@166)))
 :qid |AccountAdministrationScriptsseqArraybpl.17093:20|
 :skolemid |330|
)) (forall ((addr@@167 Int) ) (!  (=> (|$IsValid'address'| addr@@167) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_152687| $1_VASPDomain_VASPDomainManager_$memory) addr@@167) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@167) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@167)) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.17097:20|
 :skolemid |331|
)))) (and (and (forall ((addr@@168 Int) ) (!  (=> (|$IsValid'address'| addr@@168) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_161887| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@168) (|Select__T@[Int]Bool_| (|domain#$Memory_161978| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@168)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@168) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@168)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@168) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@168)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@168) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@168)) 2)))))
 :qid |AccountAdministrationScriptsseqArraybpl.17101:20|
 :skolemid |332|
)) (forall ((addr@@169 Int) ) (!  (=> (|$IsValid'address'| addr@@169) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_159568| $1_DesignatedDealer_Dealer_$memory) addr@@169) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@169) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@169)) 2))))
 :qid |AccountAdministrationScriptsseqArraybpl.17105:20|
 :skolemid |333|
))) (and (forall ((addr@@170 Int) ) (!  (=> (|$IsValid'address'| addr@@170) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155070| $1_DualAttestation_Credential_$memory) addr@@170) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@170) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@170)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@170) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@170)) 5)))))
 :qid |AccountAdministrationScriptsseqArraybpl.17109:20|
 :skolemid |334|
)) (forall ((addr@@171 Int) ) (!  (=> (|$IsValid'address'| addr@@171) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@171) (|Select__T@[Int]Bool_| (|domain#$Memory_159816| $1_AccountFreezing_FreezingBit_$memory) addr@@171)))
 :qid |AccountAdministrationScriptsseqArraybpl.17113:20|
 :skolemid |335|
)))))) (and (and (and (and (forall ((addr@@172 Int) ) (!  (=> (|$IsValid'address'| addr@@172) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161887| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@172) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@172)))
 :qid |AccountAdministrationScriptsseqArraybpl.17117:22|
 :skolemid |336|
)) (forall ((addr@@173 Int) ) (!  (=> (|$IsValid'address'| addr@@173) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161978| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@173) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@173)))
 :qid |AccountAdministrationScriptsseqArraybpl.17117:218|
 :skolemid |337|
))) (forall ((addr@@174 Int) ) (!  (=> (|$IsValid'address'| addr@@174) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_162069| |$1_DiemAccount_Balance'#0'_$memory|) addr@@174) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@174)))
 :qid |AccountAdministrationScriptsseqArraybpl.17117:415|
 :skolemid |338|
))) (and (and (forall ((addr@@175 Int) ) (!  (=> (|$IsValid'address'| addr@@175) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_129052| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@175) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@175) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@175)) 3))))
 :qid |AccountAdministrationScriptsseqArraybpl.17121:20|
 :skolemid |339|
)) (forall ((addr@@176 Int) ) (!  (=> (|$IsValid'address'| addr@@176) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_128199| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@176) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@176) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@176)) 4))))
 :qid |AccountAdministrationScriptsseqArraybpl.17125:20|
 :skolemid |340|
))) (and (forall ((addr@@177 Int) ) (!  (=> (|$IsValid'address'| addr@@177) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_153604| $1_VASP_ParentVASP_$memory) addr@@177) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@177) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@177)) 5))))
 :qid |AccountAdministrationScriptsseqArraybpl.17129:20|
 :skolemid |341|
)) (forall ((addr@@178 Int) ) (!  (=> (|$IsValid'address'| addr@@178) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_153540| $1_VASP_ChildVASP_$memory) addr@@178) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@178) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@178)) 6))))
 :qid |AccountAdministrationScriptsseqArraybpl.17133:20|
 :skolemid |342|
))))) (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@2)) (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) $a_0@@8)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@8))
 :qid |AccountAdministrationScriptsseqArraybpl.17139:20|
 :skolemid |343|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) $a_0@@8))
))) (and (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_135712| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@9)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| $rsc@@9) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@9)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@9) 10000000000))))
 :qid |AccountAdministrationScriptsseqArraybpl.17143:20|
 :skolemid |344|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_135712| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@9))
)) (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $a_0@@10)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@10) (and (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@10))) 1) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@10))) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.17147:20|
 :skolemid |345|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $a_0@@10))
)))) (and (and (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_161978| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $a_0@@11)))
(|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| $rsc@@11))
 :qid |AccountAdministrationScriptsseqArraybpl.17151:20|
 :skolemid |346|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_161978| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $a_0@@11))
)) (let ((addr@@179 (|$addr#$signer| _$t0@@2)))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_126448| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@179)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_159816| $1_AccountFreezing_FreezingBit_$memory) addr@@179) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_159816| $1_AccountFreezing_FreezingBit_$memory) addr@@179))))))) (and (= _$t0@@2 _$t0@@2) (= (ControlFlow 0 227903) 224681)))))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon0_correct|))))))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_89088_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_89088| stream@@3) 0) (forall ((v@@50 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_89088| stream@@3) v@@50) 0)
 :qid |AccountAdministrationScriptsseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |AccountAdministrationScriptsseqArraybpl.3268:13|
 :skolemid |89|
))) (= (ControlFlow 0 223035) 227903)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 329502) 223035) inline$$InitEventStore$0$anon0_correct@@2)))
anon0_correct@@2))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t4@@0 () Int)
(declare-fun _$t0@@3 () T@$signer)
(declare-fun $1_RecoveryAddress_RecoveryAddress_$memory () T@$Memory_168935)
(declare-fun _$t1@@0 () Int)
(declare-fun |Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|T@[Int]$1_RecoveryAddress_RecoveryAddress| Int) T@$1_RecoveryAddress_RecoveryAddress)
(declare-fun $t5@@0 () Int)
(declare-fun |Select__T@[Int]$1_VASP_ChildVASP_| (|T@[Int]$1_VASP_ChildVASP| Int) T@$1_VASP_ChildVASP)
(declare-fun $t8@0@@0 () Int)
(declare-fun $abort_flag@5@@3 () Bool)
(declare-fun $abort_code@6@@3 () Int)
(declare-fun $abort_flag@3@@3 () Bool)
(declare-fun $abort_code@4@@3 () Int)
(declare-fun $1_DiemAccount_DiemAccount_$memory@1@@0 () T@$Memory_160799)
(declare-fun $1_RecoveryAddress_RecoveryAddress_$memory@1 () T@$Memory_168935)
(declare-fun $t3@@0 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun $abort_flag@4@@3 () Bool)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@3 () T@$Mutation_170863)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@2 () T@$Mutation_170863)
(declare-fun |inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$m'@1| () T@$Mutation_93363)
(declare-fun $1_RecoveryAddress_RecoveryAddress_$memory@0 () T@$Memory_168935)
(declare-fun |Store__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|T@[Int]$1_RecoveryAddress_RecoveryAddress| Int T@$1_RecoveryAddress_RecoveryAddress) |T@[Int]$1_RecoveryAddress_RecoveryAddress|)
(assert (forall ( ( ?x0 |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ( ?x1 Int) ( ?x2 T@$1_RecoveryAddress_RecoveryAddress)) (! (= (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|Store__T@[Int]$1_RecoveryAddress_RecoveryAddress_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_RecoveryAddress_RecoveryAddress)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|Store__T@[Int]$1_RecoveryAddress_RecoveryAddress_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_code@5@@3 () Int)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t14@1 () Int)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t20@1 () T@$Mutation_93363)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@0 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t26@0 () Int)
(declare-fun |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$l@1| () Int)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t21@1 () (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun |inline$$1_RecoveryAddress_add_rotation_capability$0$$temp_0'vec'$1_DiemAccount_KeyRotationCapability''@1| () (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@0 () T@$Mutation_170863)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@1 () T@$Mutation_170863)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t16@0 () Bool)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t18@0 () Int)
(declare-fun inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1 () Int)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t11@1 () Bool)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t13@0 () Int)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t8@0 () T@$Mutation_93363)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t20@0 () T@$Mutation_93363)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t10@0 () Int)
(declare-fun $t9 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@0 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@0 () T@$Mutation_164822)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@0 () T@$Mutation_164822)
(declare-fun |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1@@0| () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@0 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@0 () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@0 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0 () T@$Mutation_164778)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0@@0 () T@$Memory_160799)
(declare-fun $abort_code@3@@3 () Int)
(declare-fun $abort_flag@2@@3 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@0 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@0@@0 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@0 () Int)
(declare-fun |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@0 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@0 () T@$Mutation_164778)
(declare-fun $abort_flag@1@@3 () Bool)
(declare-fun $abort_code@2@@3 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$1$$t1@1@@0 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@0 () Int)
(declare-fun inline$$Not$0$dst@1@@3 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@0 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@0 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@0 () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@0 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@0 () Bool)
(declare-fun $abort_code@1@@3 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@0 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@0@@0 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@0@@0 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@0 () T@$1_DiemAccount_DiemAccount)
(declare-fun $abort_code@0@@3 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$0$$t1@1@@3 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@0 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t5@0@@0 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@0@@0 () T@$Mutation_164822)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t7@0@@0 () Int)
(declare-fun |Select__T@[Int]$1_VASP_ParentVASP_| (|T@[Int]$1_VASP_ParentVASP| Int) T@$1_VASP_ParentVASP)
(declare-fun $t2 () Int)
(declare-fun $t6@@0 () Int)
(push 1)
(set-info :boogie-vc-id $1_AccountAdministrationScripts_add_recovery_rotation_capability$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 333103) (let ((L2_correct@@0  (and (=> (= (ControlFlow 0 232534) (- 0 335568)) (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t4@@0)) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@3))))) 0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0))) (>= (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0))) 256)) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_153604| $1_VASP_ParentVASP_$memory) _$t1@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_153540| $1_VASP_ChildVASP_$memory) _$t1@@0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_153604| $1_VASP_ParentVASP_$memory) $t5@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_153540| $1_VASP_ChildVASP_$memory) $t5@@0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_153604| $1_VASP_ParentVASP_$memory) _$t1@@0) _$t1@@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_153540| $1_VASP_ChildVASP_$memory) _$t1@@0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_153604| $1_VASP_ParentVASP_$memory) $t5@@0) $t5@@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_153540| $1_VASP_ChildVASP_$memory) $t5@@0)))))))) (=> (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t4@@0)) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@3))))) 0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0))) (>= (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0))) 256)) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_153604| $1_VASP_ParentVASP_$memory) _$t1@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_153540| $1_VASP_ChildVASP_$memory) _$t1@@0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_153604| $1_VASP_ParentVASP_$memory) $t5@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_153540| $1_VASP_ChildVASP_$memory) $t5@@0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_153604| $1_VASP_ParentVASP_$memory) _$t1@@0) _$t1@@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_153540| $1_VASP_ChildVASP_$memory) _$t1@@0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_153604| $1_VASP_ParentVASP_$memory) $t5@@0) $t5@@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_153540| $1_VASP_ChildVASP_$memory) $t5@@0))))))) (=> (= (ControlFlow 0 232534) (- 0 335616)) (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t4@@0)) (= 5 $t8@0@@0)) (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@3))))) 0) (= 1 $t8@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0)) (= 5 $t8@0@@0))) (and (>= (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0))) 256) (= 8 $t8@0@@0))) (and (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_153604| $1_VASP_ParentVASP_$memory) _$t1@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_153540| $1_VASP_ChildVASP_$memory) _$t1@@0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_153604| $1_VASP_ParentVASP_$memory) $t5@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_153540| $1_VASP_ChildVASP_$memory) $t5@@0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_153604| $1_VASP_ParentVASP_$memory) _$t1@@0) _$t1@@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_153540| $1_VASP_ChildVASP_$memory) _$t1@@0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_153604| $1_VASP_ParentVASP_$memory) $t5@@0) $t5@@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_153540| $1_VASP_ChildVASP_$memory) $t5@@0)))))) (= 7 $t8@0@@0))) (= 1 $t8@0@@0)) (= 5 $t8@0@@0)) (= 8 $t8@0@@0)) (= 7 $t8@0@@0)))))))
(let ((anon7_Then_correct  (=> (and (and $abort_flag@5@@3 (= $abort_code@6@@3 $abort_code@6@@3)) (and (= $t8@0@@0 $abort_code@6@@3) (= (ControlFlow 0 232338) 232534))) L2_correct@@0)))
(let ((anon6_Then_correct  (=> (and (and $abort_flag@3@@3 (= $abort_code@4@@3 $abort_code@4@@3)) (and (= $t8@0@@0 $abort_code@4@@3) (= (ControlFlow 0 232548) 232534))) L2_correct@@0)))
(let ((anon7_Else_correct  (=> (not $abort_flag@5@@3) (and (=> (= (ControlFlow 0 232324) (- 0 335462)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t4@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t4@@0))) (and (=> (= (ControlFlow 0 232324) (- 0 335474)) (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@3))))) 0))) (=> (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@3))))) 0)) (and (=> (= (ControlFlow 0 232324) (- 0 335485)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0))) (and (=> (= (ControlFlow 0 232324) (- 0 335496)) (not (>= (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0))) 256))) (=> (not (>= (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0))) 256)) (and (=> (= (ControlFlow 0 232324) (- 0 335513)) (not (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_153604| $1_VASP_ParentVASP_$memory) _$t1@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_153540| $1_VASP_ChildVASP_$memory) _$t1@@0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_153604| $1_VASP_ParentVASP_$memory) $t5@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_153540| $1_VASP_ChildVASP_$memory) $t5@@0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_153604| $1_VASP_ParentVASP_$memory) _$t1@@0) _$t1@@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_153540| $1_VASP_ChildVASP_$memory) _$t1@@0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_153604| $1_VASP_ParentVASP_$memory) $t5@@0) $t5@@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_153540| $1_VASP_ChildVASP_$memory) $t5@@0)))))))) (=> (not (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_153604| $1_VASP_ParentVASP_$memory) _$t1@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_153540| $1_VASP_ChildVASP_$memory) _$t1@@0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_153604| $1_VASP_ParentVASP_$memory) $t5@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_153540| $1_VASP_ChildVASP_$memory) $t5@@0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_153604| $1_VASP_ParentVASP_$memory) _$t1@@0) _$t1@@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_153540| $1_VASP_ChildVASP_$memory) _$t1@@0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_153604| $1_VASP_ParentVASP_$memory) $t5@@0) $t5@@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_153540| $1_VASP_ChildVASP_$memory) $t5@@0))))))) (and (=> (= (ControlFlow 0 232324) (- 0 335527)) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@1@@0) (|$addr#$signer| _$t0@@3))))) 0)) (=> (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@1@@0) (|$addr#$signer| _$t0@@3))))) 0) (=> (= (ControlFlow 0 232324) (- 0 335536)) (= (seq.nth (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory@1) _$t1@@0)) (- (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory@1) _$t1@@0))) 1)) $t3@@0)))))))))))))))))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon29_Else_correct  (=> (and (not $abort_flag@4@@3) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@3 ($Mutation_170863 (|l#$Mutation_170863| inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@2) (|p#$Mutation_170863| inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@2) ($1_RecoveryAddress_RecoveryAddress (|v#$Mutation_93363| |inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$m'@1|))))) (=> (and (and (= $1_RecoveryAddress_RecoveryAddress_$memory@0 ($Memory_168935 (|Store__T@[Int]Bool_| (|domain#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) (|a#$Global| (|l#$Mutation_170863| inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@3)) true) (|Store__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) (|a#$Global| (|l#$Mutation_170863| inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@3)) (|v#$Mutation_170863| inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@3)))) (= $abort_code@6@@3 $abort_code@5@@3)) (and (= $abort_flag@5@@3 $abort_flag@4@@3) (= $1_RecoveryAddress_RecoveryAddress_$memory@1 $1_RecoveryAddress_RecoveryAddress_$memory@0))) (and (=> (= (ControlFlow 0 232096) 232338) anon7_Then_correct) (=> (= (ControlFlow 0 232096) 232324) anon7_Else_correct))))))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$L7_correct  (=> (= $abort_code@6@@3 inline$$1_RecoveryAddress_add_rotation_capability$0$$t14@1) (=> (and (= $abort_flag@5@@3 true) (= $1_RecoveryAddress_RecoveryAddress_$memory@1 $1_RecoveryAddress_RecoveryAddress_$memory)) (and (=> (= (ControlFlow 0 231606) 232338) anon7_Then_correct) (=> (= (ControlFlow 0 231606) 232324) anon7_Else_correct))))))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon29_Then_correct  (=> (and (and $abort_flag@4@@3 (= $abort_code@5@@3 $abort_code@5@@3)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t14@1 $abort_code@5@@3) (= (ControlFlow 0 232110) 231606))) inline$$1_RecoveryAddress_add_rotation_capability$0$L7_correct)))
(let ((|inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$m'@1| ($Mutation_93363 (|l#$Mutation_93363| inline$$1_RecoveryAddress_add_rotation_capability$0$$t20@1) (|p#$Mutation_93363| inline$$1_RecoveryAddress_add_rotation_capability$0$$t20@1) (seq.++ (|v#$Mutation_93363| inline$$1_RecoveryAddress_add_rotation_capability$0$$t20@1) (seq.unit inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@0)))) (and (=> (= (ControlFlow 0 232054) 232110) inline$$1_RecoveryAddress_add_rotation_capability$0$anon29_Then_correct) (=> (= (ControlFlow 0 232054) 232096) inline$$1_RecoveryAddress_add_rotation_capability$0$anon29_Else_correct)))))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon28_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 232060) 232054)) |inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct|)))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon28_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t26@0 inline$$1_RecoveryAddress_add_rotation_capability$0$$t26@0)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t14@1 inline$$1_RecoveryAddress_add_rotation_capability$0$$t26@0) (= (ControlFlow 0 231999) 231606))) inline$$1_RecoveryAddress_add_rotation_capability$0$L7_correct)))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon27_Else$1_correct  (=> (|$IsValid'u64'| 6) (=> (and (and (|$IsValid'u64'| inline$$1_RecoveryAddress_add_rotation_capability$0$$t26@0) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t26@0 8)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t26@0 inline$$1_RecoveryAddress_add_rotation_capability$0$$t26@0) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 231983) 232060) inline$$1_RecoveryAddress_add_rotation_capability$0$anon28_Then_correct) (=> (= (ControlFlow 0 231983) 231999) inline$$1_RecoveryAddress_add_rotation_capability$0$anon28_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$l@1| 256)) (= (ControlFlow 0 231943) 231983)) inline$$1_RecoveryAddress_add_rotation_capability$0$anon27_Else$1_correct)))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon27_Else_correct  (=> (not $abort_flag@4@@3) (=> (and (|$IsValid'u64'| 256) (= (ControlFlow 0 231949) 231943)) inline$$Lt$0$anon0_correct))))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon27_Then_correct  (=> (and (and $abort_flag@4@@3 (= $abort_code@5@@3 $abort_code@5@@3)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t14@1 $abort_code@5@@3) (= (ControlFlow 0 232124) 231606))) inline$$1_RecoveryAddress_add_rotation_capability$0$L7_correct)))
(let ((|inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$l@1| (seq.len inline$$1_RecoveryAddress_add_rotation_capability$0$$t21@1)) (and (=> (= (ControlFlow 0 231883) 232124) inline$$1_RecoveryAddress_add_rotation_capability$0$anon27_Then_correct) (=> (= (ControlFlow 0 231883) 231949) inline$$1_RecoveryAddress_add_rotation_capability$0$anon27_Else_correct)))))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon26_Else_correct  (=> (and (not $abort_flag@4@@3) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t20@1 ($Mutation_93363 (|l#$Mutation_170863| inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@2) (seq.++ (|p#$Mutation_170863| inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@2) (seq.unit 0)) (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|v#$Mutation_170863| inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@2))))) (=> (and (and (= |inline$$1_RecoveryAddress_add_rotation_capability$0$$temp_0'vec'$1_DiemAccount_KeyRotationCapability''@1| (|v#$Mutation_93363| inline$$1_RecoveryAddress_add_rotation_capability$0$$t20@1)) (= |inline$$1_RecoveryAddress_add_rotation_capability$0$$temp_0'vec'$1_DiemAccount_KeyRotationCapability''@1| |inline$$1_RecoveryAddress_add_rotation_capability$0$$temp_0'vec'$1_DiemAccount_KeyRotationCapability''@1|)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t21@1 (|v#$Mutation_93363| inline$$1_RecoveryAddress_add_rotation_capability$0$$t20@1)) (= (ControlFlow 0 231889) 231883))) |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct|))))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon26_Then_correct  (=> (and (and $abort_flag@4@@3 (= $abort_code@5@@3 $abort_code@5@@3)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t14@1 $abort_code@5@@3) (= (ControlFlow 0 232138) 231606))) inline$$1_RecoveryAddress_add_rotation_capability$0$L7_correct)))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon25_Then$1_correct  (=> (= $abort_flag@4@@3 true) (=> (and (= $abort_code@5@@3 $EXEC_FAILURE_CODE) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@2 inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@0)) (and (=> (= (ControlFlow 0 232190) 232138) inline$$1_RecoveryAddress_add_rotation_capability$0$anon26_Then_correct) (=> (= (ControlFlow 0 232190) 231889) inline$$1_RecoveryAddress_add_rotation_capability$0$anon26_Else_correct))))))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon25_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0)) (= (ControlFlow 0 232188) 232190)) inline$$1_RecoveryAddress_add_rotation_capability$0$anon25_Then$1_correct)))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon25_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0) (=> (and (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@1 ($Mutation_170863 ($Global _$t1@@0) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0))) (= $abort_flag@4@@3 $abort_flag@3@@3)) (and (= $abort_code@5@@3 $abort_code@4@@3) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@2 inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@1))) (and (=> (= (ControlFlow 0 231817) 232138) inline$$1_RecoveryAddress_add_rotation_capability$0$anon26_Then_correct) (=> (= (ControlFlow 0 231817) 231889) inline$$1_RecoveryAddress_add_rotation_capability$0$anon26_Else_correct))))))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon24_Then_correct  (=> inline$$1_RecoveryAddress_add_rotation_capability$0$$t16@0 (and (=> (= (ControlFlow 0 231795) 232188) inline$$1_RecoveryAddress_add_rotation_capability$0$anon25_Then_correct) (=> (= (ControlFlow 0 231795) 231817) inline$$1_RecoveryAddress_add_rotation_capability$0$anon25_Else_correct)))))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon24_Else_correct  (=> (and (and (not inline$$1_RecoveryAddress_add_rotation_capability$0$$t16@0) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t18@0 inline$$1_RecoveryAddress_add_rotation_capability$0$$t18@0)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t14@1 inline$$1_RecoveryAddress_add_rotation_capability$0$$t18@0) (= (ControlFlow 0 231791) 231606))) inline$$1_RecoveryAddress_add_rotation_capability$0$L7_correct)))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon23_Else_correct  (=> (and (and (and (not $abort_flag@3@@3) (= inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1 inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t16@0  (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_153604| $1_VASP_ParentVASP_$memory) _$t1@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_153540| $1_VASP_ChildVASP_$memory) _$t1@@0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_153604| $1_VASP_ParentVASP_$memory) inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1) (|Select__T@[Int]Bool_| (|domain#$Memory_153540| $1_VASP_ChildVASP_$memory) inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_153604| $1_VASP_ParentVASP_$memory) _$t1@@0) _$t1@@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_153540| $1_VASP_ChildVASP_$memory) _$t1@@0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_153604| $1_VASP_ParentVASP_$memory) inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1) inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_153540| $1_VASP_ChildVASP_$memory) inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1)))))) (|$IsValid'u64'| 3))) (and (and (|$IsValid'u64'| inline$$1_RecoveryAddress_add_rotation_capability$0$$t18@0) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t18@0 7)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t18@0 inline$$1_RecoveryAddress_add_rotation_capability$0$$t18@0) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t16@0 inline$$1_RecoveryAddress_add_rotation_capability$0$$t16@0)))) (and (=> (= (ControlFlow 0 231775) 231795) inline$$1_RecoveryAddress_add_rotation_capability$0$anon24_Then_correct) (=> (= (ControlFlow 0 231775) 231791) inline$$1_RecoveryAddress_add_rotation_capability$0$anon24_Else_correct)))))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon23_Then_correct  (=> (and (and $abort_flag@3@@3 (= $abort_code@4@@3 $abort_code@4@@3)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t14@1 $abort_code@4@@3) (= (ControlFlow 0 232204) 231606))) inline$$1_RecoveryAddress_add_rotation_capability$0$L7_correct)))
(let ((inline$$1_DiemAccount_key_rotation_capability_address$0$anon0_correct  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@0) (=> (and (= inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@0)) (= inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1 inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1)) (and (=> (= (ControlFlow 0 231703) 232204) inline$$1_RecoveryAddress_add_rotation_capability$0$anon23_Then_correct) (=> (= (ControlFlow 0 231703) 231775) inline$$1_RecoveryAddress_add_rotation_capability$0$anon23_Else_correct))))))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon22_Then_correct  (=> (and inline$$1_RecoveryAddress_add_rotation_capability$0$$t11@1 (= (ControlFlow 0 231709) 231703)) inline$$1_DiemAccount_key_rotation_capability_address$0$anon0_correct)))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon22_Else_correct  (=> (and (and (not inline$$1_RecoveryAddress_add_rotation_capability$0$$t11@1) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t13@0 inline$$1_RecoveryAddress_add_rotation_capability$0$$t13@0)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t14@1 inline$$1_RecoveryAddress_add_rotation_capability$0$$t13@0) (= (ControlFlow 0 231600) 231606))) inline$$1_RecoveryAddress_add_rotation_capability$0$L7_correct)))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_93363| inline$$1_RecoveryAddress_add_rotation_capability$0$$t8@0)) 0) (= (seq.len (|p#$Mutation_170863| inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@0)) 0)) (and (= (seq.len (|p#$Mutation_93363| inline$$1_RecoveryAddress_add_rotation_capability$0$$t20@0)) 0) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t10@0 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@0)))) (=> (and (and (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@0) (= _$t1@@0 _$t1@@0)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t11@1 (|Select__T@[Int]Bool_| (|domain#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0)) (|$IsValid'u64'| 5))) (and (and (|$IsValid'u64'| inline$$1_RecoveryAddress_add_rotation_capability$0$$t13@0) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t13@0 5)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t13@0 inline$$1_RecoveryAddress_add_rotation_capability$0$$t13@0) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t11@1 inline$$1_RecoveryAddress_add_rotation_capability$0$$t11@1)))) (and (=> (= (ControlFlow 0 231584) 231709) inline$$1_RecoveryAddress_add_rotation_capability$0$anon22_Then_correct) (=> (= (ControlFlow 0 231584) 231600) inline$$1_RecoveryAddress_add_rotation_capability$0$anon22_Else_correct))))))
(let ((anon6_Else_correct  (=> (not $abort_flag@3@@3) (=> (and (= $t9 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@0)) (= (ControlFlow 0 232208) 231584)) inline$$1_RecoveryAddress_add_rotation_capability$0$anon0_correct))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Else_correct@@0  (=> (not inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@0) (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@0 ($Mutation_164822 (|l#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@0) (|p#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@0) |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1@@0|)) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@0))) (=> (and (and (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@0)) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@0))) 1)) (and (|$IsValid'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@0 (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@0) 0)))) (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@0))) 0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@0 ($Mutation_164778 (|l#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0) (|p#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0) ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0)) (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@0) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0)))))) (and (= $1_DiemAccount_DiemAccount_$memory@0@@0 ($Memory_160799 (|Store__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@0)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@0)) (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@0)))) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@0))) (and (and (= $abort_code@4@@3 $abort_code@3@@3) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@0)) (and (= $abort_flag@3@@3 $abort_flag@2@@3) (= $1_DiemAccount_DiemAccount_$memory@1@@0 $1_DiemAccount_DiemAccount_$memory@0@@0)))) (and (=> (= (ControlFlow 0 230690) 232548) anon6_Then_correct) (=> (= (ControlFlow 0 230690) 232208) anon6_Else_correct))))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@0  (=> (and (and (= $abort_code@4@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@0@@0)) (and (= $abort_flag@3@@3 true) (= $1_DiemAccount_DiemAccount_$memory@1@@0 $1_DiemAccount_DiemAccount_$memory))) (and (=> (= (ControlFlow 0 230367) 232548) anon6_Then_correct) (=> (= (ControlFlow 0 230367) 232208) anon6_Else_correct)))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Then_correct@@0  (=> inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@0 (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@0))) 0) (= 7 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@0)) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@0) (= (ControlFlow 0 230716) 230367))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@0))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@0  (=> (and (not $abort_flag@2@@3) (= |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0))) (=> (and (and (= |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0| |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0|) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@0 ($Mutation_164822 (|l#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0) (seq.++ (|p#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0) (seq.unit 2)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0))))) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@0 (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@0)) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@0 (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@0))) 0)))) (and (=> (= (ControlFlow 0 230598) 230716) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Then_correct@@0) (=> (= (ControlFlow 0 230598) 230690) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@0  (=> (and (and $abort_flag@2@@3 (= $abort_code@3@@3 $abort_code@3@@3)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@0 $abort_code@3@@3) (= (ControlFlow 0 230730) 230367))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@0)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then$1_correct@@0  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@0) (=> (and (= $abort_flag@2@@3 true) (= $abort_code@3@@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 230782) 230730) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@0) (=> (= (ControlFlow 0 230782) 230598) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0)) (= (ControlFlow 0 230780) 230782)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then$1_correct@@0)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0) (=> (and (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@0 ($Mutation_164778 ($Global inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0))) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@0)) (and (= $abort_flag@2@@3 $abort_flag@1@@3) (= $abort_code@3@@3 $abort_code@2@@3))) (and (=> (= (ControlFlow 0 230552) 230730) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@0) (=> (= (ControlFlow 0 230552) 230598) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Then_correct@@0  (=> inline$$1_DiemAccount_exists_at$1$$t1@1@@0 (and (=> (= (ControlFlow 0 230530) 230780) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then_correct@@0) (=> (= (ControlFlow 0 230530) 230552) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Else_correct@@0)))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Else_correct@@0  (=> (and (and (not inline$$1_DiemAccount_exists_at$1$$t1@1@@0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@0) (= (ControlFlow 0 230526) 230367))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@0)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Else_correct@@0  (=> (and (not $abort_flag@1@@3) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@0 5)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@0) (= inline$$1_DiemAccount_exists_at$1$$t1@1@@0 inline$$1_DiemAccount_exists_at$1$$t1@1@@0))) (and (=> (= (ControlFlow 0 230510) 230530) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Then_correct@@0) (=> (= (ControlFlow 0 230510) 230526) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Then_correct@@0  (=> (and (and $abort_flag@1@@3 (= $abort_code@2@@3 $abort_code@2@@3)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@0 $abort_code@2@@3) (= (ControlFlow 0 230796) 230367))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@0)))
(let ((inline$$1_DiemAccount_exists_at$1$anon0_correct@@0  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0) (=> (and (= inline$$1_DiemAccount_exists_at$1$$t1@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0)) (= inline$$1_DiemAccount_exists_at$1$$t1@1@@0 inline$$1_DiemAccount_exists_at$1$$t1@1@@0)) (and (=> (= (ControlFlow 0 230468) 230796) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Then_correct@@0) (=> (= (ControlFlow 0 230468) 230510) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Then_correct@@0  (=> (and inline$$Not$0$dst@1@@3 (= (ControlFlow 0 230474) 230468)) inline$$1_DiemAccount_exists_at$1$anon0_correct@@0)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Else_correct@@0  (=> (and (and (not inline$$Not$0$dst@1@@3) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@0) (= (ControlFlow 0 230361) 230367))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@0)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else$1_correct@@0  (=> (|$IsValid'u64'| 9) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@0 1)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@0) (= inline$$Not$0$dst@1@@3 inline$$Not$0$dst@1@@3))) (and (=> (= (ControlFlow 0 230345) 230474) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Then_correct@@0) (=> (= (ControlFlow 0 230345) 230361) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Else_correct@@0))))))
(let ((inline$$Not$0$anon0_correct@@3  (=> (and (= inline$$Not$0$dst@1@@3  (not inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@0)) (= (ControlFlow 0 230305) 230345)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else$1_correct@@0)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@0  (=> (and (not $abort_flag@1@@3) (= (ControlFlow 0 230311) 230305)) inline$$Not$0$anon0_correct@@3)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@0  (=> (and (and $abort_flag@1@@3 (= $abort_code@2@@3 $abort_code@2@@3)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@0 $abort_code@2@@3) (= (ControlFlow 0 230810) 230367))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@0)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@0  (=> (not $abort_flag@0@@3) (=> (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@0 (|$key_rotation_capability#$1_DiemAccount_DiemAccount| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@0)) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@0 (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@0)) 0))) (=> (and (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@0) (= $abort_code@2@@3 $abort_code@1@@3)) (and (= $abort_flag@1@@3 $abort_flag@0@@3) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@0))) (and (=> (= (ControlFlow 0 230181) 230810) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@0) (=> (= (ControlFlow 0 230181) 230311) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@0)))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@0  (=> (= $abort_code@2@@3 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@0) (=> (and (= $abort_flag@1@@3 true) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@0@@0)) (and (=> (= (ControlFlow 0 230129) 230810) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@0) (=> (= (ControlFlow 0 230129) 230311) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@0  (=> (and (and $abort_flag@0@@3 (= $abort_code@1@@3 $abort_code@1@@3)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@0 $abort_code@1@@3) (= (ControlFlow 0 230195) 230129))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@0)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then$1_correct@@0  (=> (= $abort_flag@0@@3 true) (=> (and (= $abort_code@1@@3 $EXEC_FAILURE_CODE) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@0@@0)) (and (=> (= (ControlFlow 0 230247) 230195) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@0) (=> (= (ControlFlow 0 230247) 230181) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0)) (= (ControlFlow 0 230245) 230247)) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then$1_correct@@0)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0) (=> (and (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@0 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0)) (= $abort_flag@0@@3 false)) (and (= $abort_code@1@@3 $abort_code@0@@3) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@0))) (and (=> (= (ControlFlow 0 230147) 230195) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@0) (=> (= (ControlFlow 0 230147) 230181) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Then_correct@@0  (=> inline$$1_DiemAccount_exists_at$0$$t1@1@@3 (and (=> (= (ControlFlow 0 230133) 230245) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then_correct@@0) (=> (= (ControlFlow 0 230133) 230147) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Else_correct@@0)))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Else_correct@@0  (=> (and (and (not inline$$1_DiemAccount_exists_at$0$$t1@1@@3) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@0)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@0) (= (ControlFlow 0 230123) 230129))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@0)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Else_correct@@0  (=> (and (not false) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@0) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@0 5)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@0) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@3 inline$$1_DiemAccount_exists_at$0$$t1@1@@3))) (and (=> (= (ControlFlow 0 230107) 230133) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Then_correct@@0) (=> (= (ControlFlow 0 230107) 230123) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Then_correct@@0 true))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct@@3  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1@@3 (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0)) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@3 inline$$1_DiemAccount_exists_at$0$$t1@1@@3)) (and (=> (= (ControlFlow 0 230065) 230261) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Then_correct@@0) (=> (= (ControlFlow 0 230065) 230107) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon0_correct@@0  (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0) (= (ControlFlow 0 230071) 230065)) inline$$1_DiemAccount_exists_at$0$anon0_correct@@3)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon0_correct@@0  (=> (= (seq.len (|p#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t5@0@@0)) 0) (=> (and (and (and (= (seq.len (|p#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@0)) 0) (= (seq.len (|p#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@0@@0)) 0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t7@0@@0 (|$addr#$signer| _$t0@@3)) (= _$t0@@3 _$t0@@3))) (and (and (|$IsValid'address'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0 (|$addr#$signer| _$t0@@3))) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0) (= (ControlFlow 0 230267) 230071)))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon0_correct@@0))))
(let ((anon0$1_correct@@3  (=> (and (forall ((child_addr Int) ) (!  (=> (|$IsValid'address'| child_addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_153540| $1_VASP_ChildVASP_$memory) child_addr) (|Select__T@[Int]Bool_| (|domain#$Memory_153604| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_153540| $1_VASP_ChildVASP_$memory) child_addr)))))
 :qid |AccountAdministrationScriptsseqArraybpl.17268:20|
 :skolemid |347|
)) (forall ((addr@@180 Int) ) (!  (=> (|$IsValid'address'| addr@@180) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@180) (or (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@180)))) 0) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@180)))) 0)) (= addr@@180 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@180))) 0)))))))
 :qid |AccountAdministrationScriptsseqArraybpl.17272:20|
 :skolemid |348|
))) (=> (and (and (forall ((addr@@181 Int) ) (!  (=> (|$IsValid'address'| addr@@181) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@181) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@181) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@181)))) 0)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@181)))) 0)) (= addr@@181 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@181))) 0)))))))
 :qid |AccountAdministrationScriptsseqArraybpl.17276:20|
 :skolemid |349|
)) (forall ((addr@@182 Int) ) (!  (=> (|$IsValid'address'| addr@@182) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@182) (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@182)))
 :qid |AccountAdministrationScriptsseqArraybpl.17280:20|
 :skolemid |350|
))) (and (forall ((addr@@183 Int) ) (!  (=> (|$IsValid'address'| addr@@183) (=> (and (= addr@@183 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@183)) (|Select__T@[Int]Bool_| (|domain#$Memory_161752| $1_DiemAccount_AccountOperationsCapability_$memory) addr@@183)))
 :qid |AccountAdministrationScriptsseqArraybpl.17284:20|
 :skolemid |351|
)) (forall ((addr@@184 Int) ) (!  (=> (|$IsValid'address'| addr@@184) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@184) (|Select__T@[Int]Bool_| (|domain#$Memory_159816| $1_AccountFreezing_FreezingBit_$memory) addr@@184)))
 :qid |AccountAdministrationScriptsseqArraybpl.17288:20|
 :skolemid |352|
)))) (=> (and (and (and (forall ((addr@@185 Int) ) (!  (=> (|$IsValid'address'| addr@@185) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161887| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@185) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@185)))
 :qid |AccountAdministrationScriptsseqArraybpl.17292:22|
 :skolemid |353|
)) (forall ((addr@@186 Int) ) (!  (=> (|$IsValid'address'| addr@@186) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161978| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@186) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@186)))
 :qid |AccountAdministrationScriptsseqArraybpl.17292:218|
 :skolemid |354|
))) (forall ((addr@@187 Int) ) (!  (=> (|$IsValid'address'| addr@@187) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_162069| |$1_DiemAccount_Balance'#0'_$memory|) addr@@187) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@187)))
 :qid |AccountAdministrationScriptsseqArraybpl.17292:415|
 :skolemid |355|
))) (forall ((addr@@188 Int) ) (!  (=> (|$IsValid'address'| addr@@188) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_153604| $1_VASP_ParentVASP_$memory) addr@@188) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@188) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@188)) 5))))
 :qid |AccountAdministrationScriptsseqArraybpl.17296:20|
 :skolemid |356|
))) (=> (and (and (and (and (forall ((addr@@189 Int) ) (!  (=> (|$IsValid'address'| addr@@189) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_153540| $1_VASP_ChildVASP_$memory) addr@@189) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@189) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@189)) 6))))
 :qid |AccountAdministrationScriptsseqArraybpl.17300:20|
 :skolemid |357|
)) (|$IsValid'address'| (|$addr#$signer| _$t0@@3))) (and (|$IsValid'address'| _$t1@@0) (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_153540| $1_VASP_ChildVASP_$memory) $a_0@@12)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@12))
 :qid |AccountAdministrationScriptsseqArraybpl.17309:20|
 :skolemid |358|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_153540| $1_VASP_ChildVASP_$memory) $a_0@@12))
)))) (and (and (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_153604| $1_VASP_ParentVASP_$memory) $a_0@@13)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@13))
 :qid |AccountAdministrationScriptsseqArraybpl.17313:20|
 :skolemid |359|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_153604| $1_VASP_ParentVASP_$memory) $a_0@@13))
)) (forall (($a_0@@14 Int) ) (! (let (($rsc@@14 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $a_0@@14)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@14) (and (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@14))) 1) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@14))) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.17317:20|
 :skolemid |360|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $a_0@@14))
))) (and (forall (($a_0@@15 Int) ) (! (let (($rsc@@15 (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) $a_0@@15)))
(|$IsValid'$1_RecoveryAddress_RecoveryAddress'| $rsc@@15))
 :qid |AccountAdministrationScriptsseqArraybpl.17321:20|
 :skolemid |361|
 :pattern ( (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) $a_0@@15))
)) (= $t2 (|$addr#$signer| _$t0@@3))))) (and (and (and (= $t3@@0 (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t2))) 0)) (= $t4@@0 (|$addr#$signer| _$t0@@3))) (and (= $t5@@0 (|$account_address#$1_DiemAccount_KeyRotationCapability| $t3@@0)) (let ((addr@@190 (|$addr#$signer| _$t0@@3)))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_126448| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@190)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_159816| $1_AccountFreezing_FreezingBit_$memory) addr@@190) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_159816| $1_AccountFreezing_FreezingBit_$memory) addr@@190)))))))) (and (and (= _$t0@@3 _$t0@@3) (= _$t1@@0 _$t1@@0)) (and (= $t6@@0 (|$addr#$signer| _$t0@@3)) (= (ControlFlow 0 230816) 230267))))) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon0_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@3  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@5 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_89088_| (|streams#$EventStore| $es) handle@@5)))
 (and (= (|l#Multiset_89088| stream@@4) 0) (forall ((v@@51 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_89088| stream@@4) v@@51) 0)
 :qid |AccountAdministrationScriptsseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |AccountAdministrationScriptsseqArraybpl.3268:13|
 :skolemid |89|
))) (= (ControlFlow 0 228475) 230816)) anon0$1_correct@@3)))
(let ((anon0_correct@@3  (=> (= (ControlFlow 0 333103) 228475) inline$$InitEventStore$0$anon0_correct@@3)))
anon0_correct@@3)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t3@@1 () Int)
(declare-fun _$t0@@4 () T@$signer)
(declare-fun $t4@@1 () Int)
(declare-fun $t2@@0 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun $t7@0 () Int)
(declare-fun $abort_flag@6@@3 () Bool)
(declare-fun $abort_code@6@@4 () Int)
(declare-fun $abort_flag@3@@4 () Bool)
(declare-fun $abort_code@4@@4 () Int)
(declare-fun $1_DiemAccount_DiemAccount_$memory@1@@1 () T@$Memory_160799)
(declare-fun $1_RecoveryAddress_RecoveryAddress_$memory@3 () T@$Memory_168935)
(declare-fun $t1 () Int)
(declare-fun $abort_flag@5@@4 () Bool)
(declare-fun $abort_code@5@@4 () Int)
(declare-fun $1_RecoveryAddress_RecoveryAddress_$memory@1@@0 () T@$Memory_168935)
(declare-fun inline$$1_RecoveryAddress_publish$0$$t15@1 () Int)
(declare-fun $1_RecoveryAddress_RecoveryAddress_$memory@2 () T@$Memory_168935)
(declare-fun $1_RecoveryAddress_RecoveryAddress_$memory@0@@0 () T@$Memory_168935)
(declare-fun inline$$1_RecoveryAddress_publish$0$$t25@1 () T@$1_RecoveryAddress_RecoveryAddress)
(declare-fun $abort_flag@4@@4 () Bool)
(declare-fun |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$ret0@1| () (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$ret0@0| () (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t1@1| () (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun |inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$m'@1@@0| () T@$Mutation_93363)
(declare-fun |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t3@1| () T@$Mutation_93363)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@1 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |inline$$1_Vector_empty'$1_DiemAccount_KeyRotationCapability'$0$v@1| () (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t3@0| () T@$Mutation_93363)
(declare-fun inline$$Not$1$dst@1 () Bool)
(declare-fun inline$$1_RecoveryAddress_publish$0$$t23@0 () Int)
(declare-fun inline$$1_RecoveryAddress_publish$0$$t20@1 () Bool)
(declare-fun inline$$1_RecoveryAddress_publish$0$$t17@1 () Bool)
(declare-fun inline$$1_RecoveryAddress_publish$0$$t11@0 () Int)
(declare-fun inline$$1_RecoveryAddress_publish$0$$t19@0 () Int)
(declare-fun inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1@@0 () Int)
(declare-fun inline$$1_RecoveryAddress_publish$0$$t12@0 () Bool)
(declare-fun inline$$1_RecoveryAddress_publish$0$$t14@0 () Int)
(declare-fun inline$$1_RecoveryAddress_publish$0$$t9@0 () Int)
(declare-fun inline$$1_RecoveryAddress_publish$0$$t10@0 () Int)
(declare-fun $t8 () Int)
(declare-fun $t9@@0 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@1 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@1 () T@$Mutation_164822)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@1 () T@$Mutation_164822)
(declare-fun |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1@@1| () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@1 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@1 () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@1 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1 () T@$Mutation_164778)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0@@1 () T@$Memory_160799)
(declare-fun $abort_code@3@@4 () Int)
(declare-fun $abort_flag@2@@4 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@1 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@0@@1 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@1 () Int)
(declare-fun |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@1| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@1 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@1 () T@$Mutation_164778)
(declare-fun $abort_flag@1@@4 () Bool)
(declare-fun $abort_code@2@@4 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$1$$t1@1@@1 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@1 () Int)
(declare-fun inline$$Not$0$dst@1@@4 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@1 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@1 () Bool)
(declare-fun $abort_flag@0@@4 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@1 () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@1 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@1 () Bool)
(declare-fun $abort_code@1@@4 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@1 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@0@@1 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@0@@1 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@1 () T@$1_DiemAccount_DiemAccount)
(declare-fun $abort_code@0@@4 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$0$$t1@1@@4 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@1 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t5@0@@1 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@0@@1 () T@$Mutation_164822)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t7@0@@1 () Int)
(declare-fun $t5@@1 () Int)
(push 1)
(set-info :boogie-vc-id $1_AccountAdministrationScripts_create_recovery_address$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 335741) (let ((L2_correct@@1  (and (=> (= (ControlFlow 0 237058) (- 0 338304)) (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t3@@1)) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@4))))) 0)) (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_153604| $1_VASP_ParentVASP_$memory) $t4@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_153540| $1_VASP_ChildVASP_$memory) $t4@@1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) $t4@@1)) (not (= (|$account_address#$1_DiemAccount_KeyRotationCapability| $t2@@0) $t4@@1)))) (=> (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t3@@1)) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@4))))) 0)) (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_153604| $1_VASP_ParentVASP_$memory) $t4@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_153540| $1_VASP_ChildVASP_$memory) $t4@@1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) $t4@@1)) (not (= (|$account_address#$1_DiemAccount_KeyRotationCapability| $t2@@0) $t4@@1))) (=> (= (ControlFlow 0 237058) (- 0 338348)) (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t3@@1)) (= 5 $t7@0)) (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@4))))) 0) (= 1 $t7@0))) (and (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_153604| $1_VASP_ParentVASP_$memory) $t4@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_153540| $1_VASP_ChildVASP_$memory) $t4@@1))) (= 7 $t7@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) $t4@@1) (= 6 $t7@0))) (and (not (= (|$account_address#$1_DiemAccount_KeyRotationCapability| $t2@@0) $t4@@1)) (= 7 $t7@0))) (= 1 $t7@0)) (= 7 $t7@0)) (= 6 $t7@0)))))))
(let ((anon7_Then_correct@@0  (=> (and (and $abort_flag@6@@3 (= $abort_code@6@@4 $abort_code@6@@4)) (and (= $t7@0 $abort_code@6@@4) (= (ControlFlow 0 236886) 237058))) L2_correct@@1)))
(let ((anon6_Then_correct@@0  (=> (and (and $abort_flag@3@@4 (= $abort_code@4@@4 $abort_code@4@@4)) (and (= $t7@0 $abort_code@4@@4) (= (ControlFlow 0 237072) 237058))) L2_correct@@1)))
(let ((anon7_Else_correct@@0  (=> (not $abort_flag@6@@3) (and (=> (= (ControlFlow 0 236872) (- 0 338187)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t3@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t3@@1))) (and (=> (= (ControlFlow 0 236872) (- 0 338199)) (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@4))))) 0))) (=> (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@4))))) 0)) (and (=> (= (ControlFlow 0 236872) (- 0 338210)) (not (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_153604| $1_VASP_ParentVASP_$memory) $t4@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_153540| $1_VASP_ChildVASP_$memory) $t4@@1))))) (=> (not (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_153604| $1_VASP_ParentVASP_$memory) $t4@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_153540| $1_VASP_ChildVASP_$memory) $t4@@1)))) (and (=> (= (ControlFlow 0 236872) (- 0 338223)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) $t4@@1))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) $t4@@1)) (and (=> (= (ControlFlow 0 236872) (- 0 338233)) (not (not (= (|$account_address#$1_DiemAccount_KeyRotationCapability| $t2@@0) $t4@@1)))) (=> (not (not (= (|$account_address#$1_DiemAccount_KeyRotationCapability| $t2@@0) $t4@@1))) (and (=> (= (ControlFlow 0 236872) (- 0 338248)) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@1@@1) (|$addr#$signer| _$t0@@4))))) 0)) (=> (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@1@@1) (|$addr#$signer| _$t0@@4))))) 0) (and (=> (= (ControlFlow 0 236872) (- 0 338257)) (|Select__T@[Int]Bool_| (|domain#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory@3) $t1)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory@3) $t1) (and (=> (= (ControlFlow 0 236872) (- 0 338265)) (= (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory@3) $t1))) 1)) (=> (= (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory@3) $t1))) 1) (=> (= (ControlFlow 0 236872) (- 0 338279)) (= (seq.nth (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory@3) $t1)) 0) $t2@@0)))))))))))))))))))))
(let ((inline$$1_RecoveryAddress_publish$0$anon25_Else_correct  (=> (and (and (not $abort_flag@5@@4) (= $abort_code@6@@4 $abort_code@5@@4)) (and (= $1_RecoveryAddress_RecoveryAddress_$memory@3 $1_RecoveryAddress_RecoveryAddress_$memory@1@@0) (= $abort_flag@6@@3 $abort_flag@5@@4))) (and (=> (= (ControlFlow 0 236654) 236886) anon7_Then_correct@@0) (=> (= (ControlFlow 0 236654) 236872) anon7_Else_correct@@0)))))
(let ((inline$$1_RecoveryAddress_publish$0$L7_correct  (=> (= $abort_code@6@@4 inline$$1_RecoveryAddress_publish$0$$t15@1) (=> (and (= $1_RecoveryAddress_RecoveryAddress_$memory@3 $1_RecoveryAddress_RecoveryAddress_$memory@2) (= $abort_flag@6@@3 true)) (and (=> (= (ControlFlow 0 235946) 236886) anon7_Then_correct@@0) (=> (= (ControlFlow 0 235946) 236872) anon7_Else_correct@@0))))))
(let ((inline$$1_RecoveryAddress_publish$0$anon25_Then_correct  (=> $abort_flag@5@@4 (=> (and (and (= $abort_code@5@@4 $abort_code@5@@4) (= inline$$1_RecoveryAddress_publish$0$$t15@1 $abort_code@5@@4)) (and (= $1_RecoveryAddress_RecoveryAddress_$memory@2 $1_RecoveryAddress_RecoveryAddress_$memory@1@@0) (= (ControlFlow 0 236668) 235946))) inline$$1_RecoveryAddress_publish$0$L7_correct))))
(let ((inline$$1_RecoveryAddress_publish$0$anon24_Then$1_correct  (=> (= $1_RecoveryAddress_RecoveryAddress_$memory@1@@0 $1_RecoveryAddress_RecoveryAddress_$memory) (=> (and (= $abort_code@5@@4 $EXEC_FAILURE_CODE) (= $abort_flag@5@@4 true)) (and (=> (= (ControlFlow 0 236720) 236668) inline$$1_RecoveryAddress_publish$0$anon25_Then_correct) (=> (= (ControlFlow 0 236720) 236654) inline$$1_RecoveryAddress_publish$0$anon25_Else_correct))))))
(let ((inline$$1_RecoveryAddress_publish$0$anon24_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) (|$addr#$signer| _$t0@@4)) (= (ControlFlow 0 236718) 236720)) inline$$1_RecoveryAddress_publish$0$anon24_Then$1_correct)))
(let ((inline$$1_RecoveryAddress_publish$0$anon24_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) (|$addr#$signer| _$t0@@4))) (=> (and (and (= $1_RecoveryAddress_RecoveryAddress_$memory@0@@0 ($Memory_168935 (|Store__T@[Int]Bool_| (|domain#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) (|$addr#$signer| _$t0@@4) true) (|Store__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) (|$addr#$signer| _$t0@@4) inline$$1_RecoveryAddress_publish$0$$t25@1))) (= $1_RecoveryAddress_RecoveryAddress_$memory@1@@0 $1_RecoveryAddress_RecoveryAddress_$memory@0@@0)) (and (= $abort_code@5@@4 $abort_code@4@@4) (= $abort_flag@5@@4 $abort_flag@4@@4))) (and (=> (= (ControlFlow 0 236644) 236668) inline$$1_RecoveryAddress_publish$0$anon25_Then_correct) (=> (= (ControlFlow 0 236644) 236654) inline$$1_RecoveryAddress_publish$0$anon25_Else_correct))))))
(let ((inline$$1_RecoveryAddress_publish$0$anon23_Else_correct  (=> (and (not $abort_flag@4@@4) (= inline$$1_RecoveryAddress_publish$0$$t25@1 ($1_RecoveryAddress_RecoveryAddress |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$ret0@1|))) (and (=> (= (ControlFlow 0 236622) 236718) inline$$1_RecoveryAddress_publish$0$anon24_Then_correct) (=> (= (ControlFlow 0 236622) 236644) inline$$1_RecoveryAddress_publish$0$anon24_Else_correct)))))
(let ((inline$$1_RecoveryAddress_publish$0$anon23_Then_correct  (=> $abort_flag@4@@4 (=> (and (and (= $abort_code@4@@4 $abort_code@4@@4) (= inline$$1_RecoveryAddress_publish$0$$t15@1 $abort_code@4@@4)) (and (= $1_RecoveryAddress_RecoveryAddress_$memory@2 $1_RecoveryAddress_RecoveryAddress_$memory) (= (ControlFlow 0 236734) 235946))) inline$$1_RecoveryAddress_publish$0$L7_correct))))
(let ((|inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$L2_correct|  (=> (and (= $abort_flag@4@@4 true) (= |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$ret0@1| |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$ret0@0|)) (and (=> (= (ControlFlow 0 236588) 236734) inline$$1_RecoveryAddress_publish$0$anon23_Then_correct) (=> (= (ControlFlow 0 236588) 236622) inline$$1_RecoveryAddress_publish$0$anon23_Else_correct)))))
(let ((|inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon6_Then_correct|  (=> $abort_flag@3@@4 (=> (and (= $abort_code@4@@4 $abort_code@4@@4) (= (ControlFlow 0 236582) 236588)) |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$L2_correct|))))
(let ((|inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon5_Then_correct|  (=> $abort_flag@3@@4 (=> (and (= $abort_code@4@@4 $abort_code@4@@4) (= (ControlFlow 0 236602) 236588)) |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$L2_correct|))))
(let ((|inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon6_Else_correct|  (=> (not $abort_flag@3@@4) (=> (and (and (= |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t1@1| (|v#$Mutation_93363| |inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$m'@1@@0|)) (= |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t1@1| |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t1@1|)) (and (= $abort_flag@4@@4 $abort_flag@3@@4) (= |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$ret0@1| |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t1@1|))) (and (=> (= (ControlFlow 0 236568) 236734) inline$$1_RecoveryAddress_publish$0$anon23_Then_correct) (=> (= (ControlFlow 0 236568) 236622) inline$$1_RecoveryAddress_publish$0$anon23_Else_correct))))))
(let ((|inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct@@0|  (=> (= |inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$m'@1@@0| ($Mutation_93363 (|l#$Mutation_93363| |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t3@1|) (|p#$Mutation_93363| |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t3@1|) (seq.++ (|v#$Mutation_93363| |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t3@1|) (seq.unit inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@1)))) (and (=> (= (ControlFlow 0 236536) 236582) |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon6_Then_correct|) (=> (= (ControlFlow 0 236536) 236568) |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon6_Else_correct|)))))
(let ((|inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon5_Else_correct|  (=> (and (and (not $abort_flag@3@@4) (= |inline$$1_Vector_empty'$1_DiemAccount_KeyRotationCapability'$0$v@1| |inline$$1_Vector_empty'$1_DiemAccount_KeyRotationCapability'$0$v@1|)) (and (= |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t3@1| ($Mutation_93363 ($Local 1) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'$1_DiemAccount_KeyRotationCapability'$0$v@1|)) (= (ControlFlow 0 236542) 236536))) |inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct@@0|)))
(let ((|inline$$1_Vector_empty'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'$1_DiemAccount_KeyRotationCapability'$0$v@1| (as seq.empty (Seq T@$1_DiemAccount_KeyRotationCapability))) (and (=> (= (ControlFlow 0 236453) 236602) |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon5_Then_correct|) (=> (= (ControlFlow 0 236453) 236542) |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon5_Else_correct|)))))
(let ((|inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct|  (=> (= (seq.len (|p#$Mutation_93363| |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t3@0|)) 0) (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@1) (= (ControlFlow 0 236459) 236453)) |inline$$1_Vector_empty'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct|))))
(let ((inline$$1_RecoveryAddress_publish$0$anon22_Then_correct  (=> (and inline$$Not$1$dst@1 (= (ControlFlow 0 236608) 236459)) |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct|)))
(let ((inline$$1_RecoveryAddress_publish$0$anon22_Else_correct  (=> (not inline$$Not$1$dst@1) (=> (and (and (= inline$$1_RecoveryAddress_publish$0$$t23@0 inline$$1_RecoveryAddress_publish$0$$t23@0) (= inline$$1_RecoveryAddress_publish$0$$t15@1 inline$$1_RecoveryAddress_publish$0$$t23@0)) (and (= $1_RecoveryAddress_RecoveryAddress_$memory@2 $1_RecoveryAddress_RecoveryAddress_$memory) (= (ControlFlow 0 236203) 235946))) inline$$1_RecoveryAddress_publish$0$L7_correct))))
(let ((inline$$1_RecoveryAddress_publish$0$anon21_Then$1_correct  (=> (|$IsValid'u64'| 5) (=> (and (and (|$IsValid'u64'| inline$$1_RecoveryAddress_publish$0$$t23@0) (= inline$$1_RecoveryAddress_publish$0$$t23@0 6)) (and (= inline$$1_RecoveryAddress_publish$0$$t23@0 inline$$1_RecoveryAddress_publish$0$$t23@0) (= inline$$Not$1$dst@1 inline$$Not$1$dst@1))) (and (=> (= (ControlFlow 0 236187) 236608) inline$$1_RecoveryAddress_publish$0$anon22_Then_correct) (=> (= (ControlFlow 0 236187) 236203) inline$$1_RecoveryAddress_publish$0$anon22_Else_correct))))))
(let ((inline$$Not$1$anon0_correct  (=> (and (= inline$$Not$1$dst@1  (not inline$$1_RecoveryAddress_publish$0$$t20@1)) (= (ControlFlow 0 236151) 236187)) inline$$1_RecoveryAddress_publish$0$anon21_Then$1_correct)))
(let ((inline$$1_RecoveryAddress_publish$0$anon21_Then_correct  (=> inline$$1_RecoveryAddress_publish$0$$t17@1 (=> (and (= inline$$1_RecoveryAddress_publish$0$$t20@1 (|Select__T@[Int]Bool_| (|domain#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) inline$$1_RecoveryAddress_publish$0$$t11@0)) (= (ControlFlow 0 236157) 236151)) inline$$Not$1$anon0_correct))))
(let ((inline$$1_RecoveryAddress_publish$0$anon21_Else_correct  (=> (not inline$$1_RecoveryAddress_publish$0$$t17@1) (=> (and (and (= inline$$1_RecoveryAddress_publish$0$$t19@0 inline$$1_RecoveryAddress_publish$0$$t19@0) (= inline$$1_RecoveryAddress_publish$0$$t15@1 inline$$1_RecoveryAddress_publish$0$$t19@0)) (and (= $1_RecoveryAddress_RecoveryAddress_$memory@2 $1_RecoveryAddress_RecoveryAddress_$memory) (= (ControlFlow 0 236111) 235946))) inline$$1_RecoveryAddress_publish$0$L7_correct))))
(let ((inline$$1_RecoveryAddress_publish$0$anon20_Else_correct  (=> (not $abort_flag@3@@4) (=> (and (= inline$$1_RecoveryAddress_publish$0$$t17@1 (= inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1@@0 inline$$1_RecoveryAddress_publish$0$$t11@0)) (|$IsValid'u64'| 1)) (=> (and (and (|$IsValid'u64'| inline$$1_RecoveryAddress_publish$0$$t19@0) (= inline$$1_RecoveryAddress_publish$0$$t19@0 7)) (and (= inline$$1_RecoveryAddress_publish$0$$t19@0 inline$$1_RecoveryAddress_publish$0$$t19@0) (= inline$$1_RecoveryAddress_publish$0$$t17@1 inline$$1_RecoveryAddress_publish$0$$t17@1))) (and (=> (= (ControlFlow 0 236095) 236157) inline$$1_RecoveryAddress_publish$0$anon21_Then_correct) (=> (= (ControlFlow 0 236095) 236111) inline$$1_RecoveryAddress_publish$0$anon21_Else_correct)))))))
(let ((inline$$1_RecoveryAddress_publish$0$anon20_Then_correct  (=> $abort_flag@3@@4 (=> (and (and (= $abort_code@4@@4 $abort_code@4@@4) (= inline$$1_RecoveryAddress_publish$0$$t15@1 $abort_code@4@@4)) (and (= $1_RecoveryAddress_RecoveryAddress_$memory@2 $1_RecoveryAddress_RecoveryAddress_$memory) (= (ControlFlow 0 236748) 235946))) inline$$1_RecoveryAddress_publish$0$L7_correct))))
(let ((inline$$1_DiemAccount_key_rotation_capability_address$0$anon0_correct@@0  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@1) (=> (and (= inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1@@0 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@1)) (= inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1@@0 inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1@@0)) (and (=> (= (ControlFlow 0 236043) 236748) inline$$1_RecoveryAddress_publish$0$anon20_Then_correct) (=> (= (ControlFlow 0 236043) 236095) inline$$1_RecoveryAddress_publish$0$anon20_Else_correct))))))
(let ((inline$$1_RecoveryAddress_publish$0$anon19_Then_correct  (=> (and inline$$1_RecoveryAddress_publish$0$$t12@0 (= (ControlFlow 0 236049) 236043)) inline$$1_DiemAccount_key_rotation_capability_address$0$anon0_correct@@0)))
(let ((inline$$1_RecoveryAddress_publish$0$anon19_Else_correct  (=> (not inline$$1_RecoveryAddress_publish$0$$t12@0) (=> (and (and (= inline$$1_RecoveryAddress_publish$0$$t14@0 inline$$1_RecoveryAddress_publish$0$$t14@0) (= inline$$1_RecoveryAddress_publish$0$$t15@1 inline$$1_RecoveryAddress_publish$0$$t14@0)) (and (= $1_RecoveryAddress_RecoveryAddress_$memory@2 $1_RecoveryAddress_RecoveryAddress_$memory) (= (ControlFlow 0 235940) 235946))) inline$$1_RecoveryAddress_publish$0$L7_correct))))
(let ((inline$$1_RecoveryAddress_publish$0$anon0_correct  (=> (= inline$$1_RecoveryAddress_publish$0$$t9@0 (|$addr#$signer| _$t0@@4)) (=> (and (and (= inline$$1_RecoveryAddress_publish$0$$t10@0 (|$addr#$signer| _$t0@@4)) (= _$t0@@4 _$t0@@4)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@1) (|$IsValid'address'| inline$$1_RecoveryAddress_publish$0$$t11@0))) (=> (and (and (and (= inline$$1_RecoveryAddress_publish$0$$t11@0 (|$addr#$signer| _$t0@@4)) (= inline$$1_RecoveryAddress_publish$0$$t11@0 inline$$1_RecoveryAddress_publish$0$$t11@0)) (and (= inline$$1_RecoveryAddress_publish$0$$t12@0  (or (|Select__T@[Int]Bool_| (|domain#$Memory_153604| $1_VASP_ParentVASP_$memory) inline$$1_RecoveryAddress_publish$0$$t11@0) (|Select__T@[Int]Bool_| (|domain#$Memory_153540| $1_VASP_ChildVASP_$memory) inline$$1_RecoveryAddress_publish$0$$t11@0))) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| inline$$1_RecoveryAddress_publish$0$$t14@0) (= inline$$1_RecoveryAddress_publish$0$$t14@0 7)) (and (= inline$$1_RecoveryAddress_publish$0$$t14@0 inline$$1_RecoveryAddress_publish$0$$t14@0) (= inline$$1_RecoveryAddress_publish$0$$t12@0 inline$$1_RecoveryAddress_publish$0$$t12@0)))) (and (=> (= (ControlFlow 0 235924) 236049) inline$$1_RecoveryAddress_publish$0$anon19_Then_correct) (=> (= (ControlFlow 0 235924) 235940) inline$$1_RecoveryAddress_publish$0$anon19_Else_correct)))))))
(let ((anon6_Else_correct@@0  (=> (and (and (not $abort_flag@3@@4) (= $t8 (|$addr#$signer| _$t0@@4))) (and (= $t9@@0 (|$addr#$signer| _$t0@@4)) (= (ControlFlow 0 236752) 235924))) inline$$1_RecoveryAddress_publish$0$anon0_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Else_correct@@1  (=> (not inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@1) (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@1 ($Mutation_164822 (|l#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@1) (|p#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@1) |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1@@1|)) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@1))) (=> (and (and (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@1)) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@1))) 1)) (and (|$IsValid'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@1) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@1 (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@1) 0)))) (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@1))) 0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@1 ($Mutation_164778 (|l#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1) (|p#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1) ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1)) (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@1) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1)))))) (and (= $1_DiemAccount_DiemAccount_$memory@0@@1 ($Memory_160799 (|Store__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@1)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@1)) (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@1)))) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@1))) (and (and (= $abort_code@4@@4 $abort_code@3@@4) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@1)) (and (= $abort_flag@3@@4 $abort_flag@2@@4) (= $1_DiemAccount_DiemAccount_$memory@1@@1 $1_DiemAccount_DiemAccount_$memory@0@@1)))) (and (=> (= (ControlFlow 0 235092) 237072) anon6_Then_correct@@0) (=> (= (ControlFlow 0 235092) 236752) anon6_Else_correct@@0))))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@1  (=> (and (and (= $abort_code@4@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@1) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@0@@1)) (and (= $abort_flag@3@@4 true) (= $1_DiemAccount_DiemAccount_$memory@1@@1 $1_DiemAccount_DiemAccount_$memory))) (and (=> (= (ControlFlow 0 234769) 237072) anon6_Then_correct@@0) (=> (= (ControlFlow 0 234769) 236752) anon6_Else_correct@@0)))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Then_correct@@1  (=> inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@1 (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@1))) 0) (= 7 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@1)) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@1)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@1) (= (ControlFlow 0 235118) 234769))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@1))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@1  (=> (and (not $abort_flag@2@@4) (= |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@1| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1))) (=> (and (and (= |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@1| |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@1|) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@1 ($Mutation_164822 (|l#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1) (seq.++ (|p#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1) (seq.unit 2)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1))))) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@1 (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@1)) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@1 (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@1))) 0)))) (and (=> (= (ControlFlow 0 235000) 235118) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Then_correct@@1) (=> (= (ControlFlow 0 235000) 235092) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@1  (=> (and (and $abort_flag@2@@4 (= $abort_code@3@@4 $abort_code@3@@4)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@1 $abort_code@3@@4) (= (ControlFlow 0 235132) 234769))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@1)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then$1_correct@@1  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@1) (=> (and (= $abort_flag@2@@4 true) (= $abort_code@3@@4 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 235184) 235132) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@1) (=> (= (ControlFlow 0 235184) 235000) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1)) (= (ControlFlow 0 235182) 235184)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then$1_correct@@1)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1) (=> (and (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@1 ($Mutation_164778 ($Global inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1))) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@1)) (and (= $abort_flag@2@@4 $abort_flag@1@@4) (= $abort_code@3@@4 $abort_code@2@@4))) (and (=> (= (ControlFlow 0 234954) 235132) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@1) (=> (= (ControlFlow 0 234954) 235000) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Then_correct@@1  (=> inline$$1_DiemAccount_exists_at$1$$t1@1@@1 (and (=> (= (ControlFlow 0 234932) 235182) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then_correct@@1) (=> (= (ControlFlow 0 234932) 234954) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Else_correct@@1)))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Else_correct@@1  (=> (and (and (not inline$$1_DiemAccount_exists_at$1$$t1@1@@1) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@1)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@1) (= (ControlFlow 0 234928) 234769))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@1)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Else_correct@@1  (=> (and (not $abort_flag@1@@4) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@1) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@1 5)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@1) (= inline$$1_DiemAccount_exists_at$1$$t1@1@@1 inline$$1_DiemAccount_exists_at$1$$t1@1@@1))) (and (=> (= (ControlFlow 0 234912) 234932) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Then_correct@@1) (=> (= (ControlFlow 0 234912) 234928) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Then_correct@@1  (=> (and (and $abort_flag@1@@4 (= $abort_code@2@@4 $abort_code@2@@4)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@1 $abort_code@2@@4) (= (ControlFlow 0 235198) 234769))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@1)))
(let ((inline$$1_DiemAccount_exists_at$1$anon0_correct@@1  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1) (=> (and (= inline$$1_DiemAccount_exists_at$1$$t1@1@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1)) (= inline$$1_DiemAccount_exists_at$1$$t1@1@@1 inline$$1_DiemAccount_exists_at$1$$t1@1@@1)) (and (=> (= (ControlFlow 0 234870) 235198) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Then_correct@@1) (=> (= (ControlFlow 0 234870) 234912) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Then_correct@@1  (=> (and inline$$Not$0$dst@1@@4 (= (ControlFlow 0 234876) 234870)) inline$$1_DiemAccount_exists_at$1$anon0_correct@@1)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Else_correct@@1  (=> (and (and (not inline$$Not$0$dst@1@@4) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@1)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@1) (= (ControlFlow 0 234763) 234769))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@1)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else$1_correct@@1  (=> (|$IsValid'u64'| 9) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@1) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@1 1)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@1) (= inline$$Not$0$dst@1@@4 inline$$Not$0$dst@1@@4))) (and (=> (= (ControlFlow 0 234747) 234876) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Then_correct@@1) (=> (= (ControlFlow 0 234747) 234763) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Else_correct@@1))))))
(let ((inline$$Not$0$anon0_correct@@4  (=> (and (= inline$$Not$0$dst@1@@4  (not inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@1)) (= (ControlFlow 0 234707) 234747)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else$1_correct@@1)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@1  (=> (and (not $abort_flag@1@@4) (= (ControlFlow 0 234713) 234707)) inline$$Not$0$anon0_correct@@4)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@1  (=> (and (and $abort_flag@1@@4 (= $abort_code@2@@4 $abort_code@2@@4)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@1 $abort_code@2@@4) (= (ControlFlow 0 235212) 234769))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@1)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@1  (=> (not $abort_flag@0@@4) (=> (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@1 (|$key_rotation_capability#$1_DiemAccount_DiemAccount| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@1)) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@1 (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@1)) 0))) (=> (and (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@1) (= $abort_code@2@@4 $abort_code@1@@4)) (and (= $abort_flag@1@@4 $abort_flag@0@@4) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@1))) (and (=> (= (ControlFlow 0 234583) 235212) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@1) (=> (= (ControlFlow 0 234583) 234713) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@1)))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@1  (=> (= $abort_code@2@@4 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@1) (=> (and (= $abort_flag@1@@4 true) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@0@@1)) (and (=> (= (ControlFlow 0 234531) 235212) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@1) (=> (= (ControlFlow 0 234531) 234713) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@1  (=> (and (and $abort_flag@0@@4 (= $abort_code@1@@4 $abort_code@1@@4)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@1 $abort_code@1@@4) (= (ControlFlow 0 234597) 234531))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@1)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then$1_correct@@1  (=> (= $abort_flag@0@@4 true) (=> (and (= $abort_code@1@@4 $EXEC_FAILURE_CODE) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@0@@1)) (and (=> (= (ControlFlow 0 234649) 234597) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@1) (=> (= (ControlFlow 0 234649) 234583) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1)) (= (ControlFlow 0 234647) 234649)) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then$1_correct@@1)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1) (=> (and (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@1 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1)) (= $abort_flag@0@@4 false)) (and (= $abort_code@1@@4 $abort_code@0@@4) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@1))) (and (=> (= (ControlFlow 0 234549) 234597) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@1) (=> (= (ControlFlow 0 234549) 234583) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Then_correct@@1  (=> inline$$1_DiemAccount_exists_at$0$$t1@1@@4 (and (=> (= (ControlFlow 0 234535) 234647) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then_correct@@1) (=> (= (ControlFlow 0 234535) 234549) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Else_correct@@1)))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Else_correct@@1  (=> (and (and (not inline$$1_DiemAccount_exists_at$0$$t1@1@@4) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@1)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@1) (= (ControlFlow 0 234525) 234531))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@1)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Else_correct@@1  (=> (and (not false) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@1) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@1 5)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@1) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@4 inline$$1_DiemAccount_exists_at$0$$t1@1@@4))) (and (=> (= (ControlFlow 0 234509) 234535) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Then_correct@@1) (=> (= (ControlFlow 0 234509) 234525) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Then_correct@@1 true))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct@@4  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1@@4 (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1)) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@4 inline$$1_DiemAccount_exists_at$0$$t1@1@@4)) (and (=> (= (ControlFlow 0 234467) 234663) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Then_correct@@1) (=> (= (ControlFlow 0 234467) 234509) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon0_correct@@1  (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1) (= (ControlFlow 0 234473) 234467)) inline$$1_DiemAccount_exists_at$0$anon0_correct@@4)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon0_correct@@1  (=> (= (seq.len (|p#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t5@0@@1)) 0) (=> (and (and (and (= (seq.len (|p#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@1)) 0) (= (seq.len (|p#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@0@@1)) 0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t7@0@@1 (|$addr#$signer| _$t0@@4)) (= _$t0@@4 _$t0@@4))) (and (and (|$IsValid'address'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1 (|$addr#$signer| _$t0@@4))) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1) (= (ControlFlow 0 234669) 234473)))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon0_correct@@1))))
(let ((anon0$1_correct@@4  (=> (and (forall ((child_addr@@0 Int) ) (!  (=> (|$IsValid'address'| child_addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_153540| $1_VASP_ChildVASP_$memory) child_addr@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_153604| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_153540| $1_VASP_ChildVASP_$memory) child_addr@@0)))))
 :qid |AccountAdministrationScriptsseqArraybpl.17481:20|
 :skolemid |362|
)) (forall ((addr@@191 Int) ) (!  (=> (|$IsValid'address'| addr@@191) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@191) (or (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@191)))) 0) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@191)))) 0)) (= addr@@191 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@191))) 0)))))))
 :qid |AccountAdministrationScriptsseqArraybpl.17485:20|
 :skolemid |363|
))) (=> (and (and (forall ((addr@@192 Int) ) (!  (=> (|$IsValid'address'| addr@@192) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@192) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@192) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@192)))) 0)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@192)))) 0)) (= addr@@192 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@192))) 0)))))))
 :qid |AccountAdministrationScriptsseqArraybpl.17489:20|
 :skolemid |364|
)) (forall ((addr@@193 Int) ) (!  (=> (|$IsValid'address'| addr@@193) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@193) (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@193)))
 :qid |AccountAdministrationScriptsseqArraybpl.17493:20|
 :skolemid |365|
))) (and (forall ((addr@@194 Int) ) (!  (=> (|$IsValid'address'| addr@@194) (=> (and (= addr@@194 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@194)) (|Select__T@[Int]Bool_| (|domain#$Memory_161752| $1_DiemAccount_AccountOperationsCapability_$memory) addr@@194)))
 :qid |AccountAdministrationScriptsseqArraybpl.17497:20|
 :skolemid |366|
)) (forall ((addr@@195 Int) ) (!  (=> (|$IsValid'address'| addr@@195) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@195) (|Select__T@[Int]Bool_| (|domain#$Memory_159816| $1_AccountFreezing_FreezingBit_$memory) addr@@195)))
 :qid |AccountAdministrationScriptsseqArraybpl.17501:20|
 :skolemid |367|
)))) (=> (and (and (and (and (and (and (forall ((addr@@196 Int) ) (!  (=> (|$IsValid'address'| addr@@196) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161887| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@196) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@196)))
 :qid |AccountAdministrationScriptsseqArraybpl.17505:22|
 :skolemid |368|
)) (forall ((addr@@197 Int) ) (!  (=> (|$IsValid'address'| addr@@197) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161978| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@197) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@197)))
 :qid |AccountAdministrationScriptsseqArraybpl.17505:218|
 :skolemid |369|
))) (forall ((addr@@198 Int) ) (!  (=> (|$IsValid'address'| addr@@198) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_162069| |$1_DiemAccount_Balance'#0'_$memory|) addr@@198) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@198)))
 :qid |AccountAdministrationScriptsseqArraybpl.17505:415|
 :skolemid |370|
))) (forall ((addr@@199 Int) ) (!  (=> (|$IsValid'address'| addr@@199) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_153604| $1_VASP_ParentVASP_$memory) addr@@199) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@199) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@199)) 5))))
 :qid |AccountAdministrationScriptsseqArraybpl.17509:20|
 :skolemid |371|
))) (and (forall ((addr@@200 Int) ) (!  (=> (|$IsValid'address'| addr@@200) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_153540| $1_VASP_ChildVASP_$memory) addr@@200) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@200) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@200)) 6))))
 :qid |AccountAdministrationScriptsseqArraybpl.17513:20|
 :skolemid |372|
)) (|$IsValid'address'| (|$addr#$signer| _$t0@@4)))) (and (and (forall (($a_0@@16 Int) ) (! (let (($rsc@@16 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_153540| $1_VASP_ChildVASP_$memory) $a_0@@16)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@16))
 :qid |AccountAdministrationScriptsseqArraybpl.17519:20|
 :skolemid |373|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_153540| $1_VASP_ChildVASP_$memory) $a_0@@16))
)) (forall (($a_0@@17 Int) ) (! (let (($rsc@@17 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_153604| $1_VASP_ParentVASP_$memory) $a_0@@17)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@17))
 :qid |AccountAdministrationScriptsseqArraybpl.17523:20|
 :skolemid |374|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_153604| $1_VASP_ParentVASP_$memory) $a_0@@17))
))) (and (forall (($a_0@@18 Int) ) (! (let (($rsc@@18 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $a_0@@18)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@18) (and (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@18))) 1) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@18))) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.17527:20|
 :skolemid |375|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $a_0@@18))
)) (forall (($a_0@@19 Int) ) (! (let (($rsc@@19 (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) $a_0@@19)))
(|$IsValid'$1_RecoveryAddress_RecoveryAddress'| $rsc@@19))
 :qid |AccountAdministrationScriptsseqArraybpl.17531:20|
 :skolemid |376|
 :pattern ( (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) $a_0@@19))
))))) (and (and (and (= $t1 (|$addr#$signer| _$t0@@4)) (= $t2@@0 (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t1))) 0))) (and (= $t3@@1 (|$addr#$signer| _$t0@@4)) (= $t4@@1 (|$addr#$signer| _$t0@@4)))) (and (and (let ((addr@@201 (|$addr#$signer| _$t0@@4)))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_126448| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@201)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_159816| $1_AccountFreezing_FreezingBit_$memory) addr@@201) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_159816| $1_AccountFreezing_FreezingBit_$memory) addr@@201)))))) (= _$t0@@4 _$t0@@4)) (and (= $t5@@1 (|$addr#$signer| _$t0@@4)) (= (ControlFlow 0 235218) 234669))))) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon0_correct@@1)))))
(let ((inline$$InitEventStore$0$anon0_correct@@4  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@6 T@$1_Event_EventHandle) ) (! (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_89088_| (|streams#$EventStore| $es) handle@@6)))
 (and (= (|l#Multiset_89088| stream@@5) 0) (forall ((v@@52 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_89088| stream@@5) v@@52) 0)
 :qid |AccountAdministrationScriptsseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |AccountAdministrationScriptsseqArraybpl.3268:13|
 :skolemid |89|
))) (= (ControlFlow 0 232887) 235218)) anon0$1_correct@@4)))
(let ((anon0_correct@@4  (=> (= (ControlFlow 0 335741) 232887) inline$$InitEventStore$0$anon0_correct@@4)))
anon0_correct@@4)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@1@@5 () Bool)
(declare-fun $t2@@1 () Int)
(declare-fun $1_VASPDomain_VASPDomains_$memory () T@$Memory_152623)
(declare-fun $t1@@0 () Int)
(declare-fun $1_VASPDomain_VASPDomains_$memory@3 () T@$Memory_152623)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomains_| (|T@[Int]$1_VASPDomain_VASPDomains| Int) T@$1_VASPDomain_VASPDomains)
(declare-fun $abort_code@2@@5 () Int)
(declare-fun $abort_flag@0@@5 () Bool)
(declare-fun $1_VASPDomain_VASPDomains_$memory@1 () T@$Memory_152623)
(declare-fun $abort_code@1@@5 () Int)
(declare-fun $1_VASPDomain_VASPDomains_$memory@2 () T@$Memory_152623)
(declare-fun inline$$1_VASPDomain_publish_vasp_domains$0$$t7@1 () Int)
(declare-fun _$t0@@5 () T@$signer)
(declare-fun $1_VASPDomain_VASPDomains_$memory@0 () T@$Memory_152623)
(declare-fun |Store__T@[Int]$1_VASPDomain_VASPDomains_| (|T@[Int]$1_VASPDomain_VASPDomains| Int T@$1_VASPDomain_VASPDomains) |T@[Int]$1_VASPDomain_VASPDomains|)
(assert (forall ( ( ?x0 |T@[Int]$1_VASPDomain_VASPDomains|) ( ?x1 Int) ( ?x2 T@$1_VASPDomain_VASPDomains)) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|Store__T@[Int]$1_VASPDomain_VASPDomains_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_VASPDomain_VASPDomains|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_VASPDomain_VASPDomains)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|Store__T@[Int]$1_VASPDomain_VASPDomains_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_VASPDomain_VASPDomains_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$1_VASPDomain_publish_vasp_domains$0$$t14@1 () T@$1_VASPDomain_VASPDomains)
(declare-fun $abort_code@0@@5 () Int)
(declare-fun |inline$$1_Vector_empty'$1_VASPDomain_VASPDomain'$0$v@1| () (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun inline$$Not$0$dst@1@@5 () Bool)
(declare-fun inline$$1_VASPDomain_publish_vasp_domains$0$$t12@0 () Int)
(declare-fun inline$$1_VASPDomain_publish_vasp_domains$0$$t9@1 () Bool)
(declare-fun inline$$1_VASPDomain_publish_vasp_domains$0$$t6@0 () Bool)
(declare-fun inline$$1_VASPDomain_publish_vasp_domains$0$$t8@0 () Int)
(declare-fun inline$$1_VASPDomain_publish_vasp_domains$0$$t5@0 () Int)
(declare-fun inline$$1_VASPDomain_publish_vasp_domains$0$$t7@0 () Int)
(declare-fun inline$$1_VASPDomain_publish_vasp_domains$0$$t3@0 () Int)
(declare-fun inline$$1_VASPDomain_publish_vasp_domains$0$$t4@0 () Int)
(declare-fun $t3@@2 () Int)
(declare-fun $t4@@2 () Int)
(push 1)
(set-info :boogie-vc-id $1_AccountAdministrationScripts_create_vasp_domains$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 338462) (let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon15_Then_correct true))
(let ((anon4_Else_correct@@2  (=> (not $abort_flag@1@@5) (and (=> (= (ControlFlow 0 239185) (- 0 339895)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) $t2@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) $t2@@1))) (and (=> (= (ControlFlow 0 239185) (- 0 339907)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) $t2@@1)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (and (=> (= (ControlFlow 0 239185) (- 0 339925)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_152623| $1_VASPDomain_VASPDomains_$memory) $t1@@0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_152623| $1_VASPDomain_VASPDomains_$memory) $t1@@0)) (and (=> (= (ControlFlow 0 239185) (- 0 339935)) (|Select__T@[Int]Bool_| (|domain#$Memory_152623| $1_VASPDomain_VASPDomains_$memory@3) $t1@@0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_152623| $1_VASPDomain_VASPDomains_$memory@3) $t1@@0) (=> (= (ControlFlow 0 239185) (- 0 339943)) (= (seq.len (|$domains#$1_VASPDomain_VASPDomains| (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_152623| $1_VASPDomain_VASPDomains_$memory@3) $t1@@0))) 0)))))))))))))
(let ((anon4_Then_correct@@2  (=> (and $abort_flag@1@@5 (= $abort_code@2@@5 $abort_code@2@@5)) (and (=> (= (ControlFlow 0 239309) (- 0 339788)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) $t2@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (|Select__T@[Int]Bool_| (|domain#$Memory_152623| $1_VASPDomain_VASPDomains_$memory) $t1@@0))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) $t2@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (|Select__T@[Int]Bool_| (|domain#$Memory_152623| $1_VASPDomain_VASPDomains_$memory) $t1@@0)) (=> (= (ControlFlow 0 239309) (- 0 339817)) (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) $t2@@1)) (= 5 $abort_code@2@@5)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) $t2@@1)) 5)) (= 3 $abort_code@2@@5))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_152623| $1_VASPDomain_VASPDomains_$memory) $t1@@0) (= 6 $abort_code@2@@5))) (= 6 $abort_code@2@@5)) (= 3 $abort_code@2@@5))))))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon17_Else_correct  (=> (and (and (not $abort_flag@0@@5) (= $abort_flag@1@@5 $abort_flag@0@@5)) (and (= $1_VASPDomain_VASPDomains_$memory@3 $1_VASPDomain_VASPDomains_$memory@1) (= $abort_code@2@@5 $abort_code@1@@5))) (and (=> (= (ControlFlow 0 238979) 239309) anon4_Then_correct@@2) (=> (= (ControlFlow 0 238979) 239185) anon4_Else_correct@@2)))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$L3_correct  (=> (= $abort_flag@1@@5 true) (=> (and (= $1_VASPDomain_VASPDomains_$memory@3 $1_VASPDomain_VASPDomains_$memory@2) (= $abort_code@2@@5 inline$$1_VASPDomain_publish_vasp_domains$0$$t7@1)) (and (=> (= (ControlFlow 0 238901) 239309) anon4_Then_correct@@2) (=> (= (ControlFlow 0 238901) 239185) anon4_Else_correct@@2))))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon17_Then_correct  (=> $abort_flag@0@@5 (=> (and (and (= $abort_code@1@@5 $abort_code@1@@5) (= $1_VASPDomain_VASPDomains_$memory@2 $1_VASPDomain_VASPDomains_$memory@1)) (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t7@1 $abort_code@1@@5) (= (ControlFlow 0 238993) 238901))) inline$$1_VASPDomain_publish_vasp_domains$0$L3_correct))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon16_Then$1_correct  (=> (= $1_VASPDomain_VASPDomains_$memory@1 $1_VASPDomain_VASPDomains_$memory) (=> (and (= $abort_flag@0@@5 true) (= $abort_code@1@@5 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 239045) 238993) inline$$1_VASPDomain_publish_vasp_domains$0$anon17_Then_correct) (=> (= (ControlFlow 0 239045) 238979) inline$$1_VASPDomain_publish_vasp_domains$0$anon17_Else_correct))))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon16_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_152623| $1_VASPDomain_VASPDomains_$memory) (|$addr#$signer| _$t0@@5)) (= (ControlFlow 0 239043) 239045)) inline$$1_VASPDomain_publish_vasp_domains$0$anon16_Then$1_correct)))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon16_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_152623| $1_VASPDomain_VASPDomains_$memory) (|$addr#$signer| _$t0@@5))) (=> (and (and (= $1_VASPDomain_VASPDomains_$memory@0 ($Memory_152623 (|Store__T@[Int]Bool_| (|domain#$Memory_152623| $1_VASPDomain_VASPDomains_$memory) (|$addr#$signer| _$t0@@5) true) (|Store__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_152623| $1_VASPDomain_VASPDomains_$memory) (|$addr#$signer| _$t0@@5) inline$$1_VASPDomain_publish_vasp_domains$0$$t14@1))) (= $1_VASPDomain_VASPDomains_$memory@1 $1_VASPDomain_VASPDomains_$memory@0)) (and (= $abort_flag@0@@5 false) (= $abort_code@1@@5 $abort_code@0@@5))) (and (=> (= (ControlFlow 0 238969) 238993) inline$$1_VASPDomain_publish_vasp_domains$0$anon17_Then_correct) (=> (= (ControlFlow 0 238969) 238979) inline$$1_VASPDomain_publish_vasp_domains$0$anon17_Else_correct))))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon15_Else_correct  (=> (and (not false) (= inline$$1_VASPDomain_publish_vasp_domains$0$$t14@1 ($1_VASPDomain_VASPDomains |inline$$1_Vector_empty'$1_VASPDomain_VASPDomain'$0$v@1|))) (and (=> (= (ControlFlow 0 238947) 239043) inline$$1_VASPDomain_publish_vasp_domains$0$anon16_Then_correct) (=> (= (ControlFlow 0 238947) 238969) inline$$1_VASPDomain_publish_vasp_domains$0$anon16_Else_correct)))))
(let ((|inline$$1_Vector_empty'$1_VASPDomain_VASPDomain'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'$1_VASPDomain_VASPDomain'$0$v@1| (as seq.empty (Seq T@$1_VASPDomain_VASPDomain))) (and (=> (= (ControlFlow 0 238927) 239059) inline$$1_VASPDomain_publish_vasp_domains$0$anon15_Then_correct) (=> (= (ControlFlow 0 238927) 238947) inline$$1_VASPDomain_publish_vasp_domains$0$anon15_Else_correct)))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon14_Then_correct  (=> (and inline$$Not$0$dst@1@@5 (= (ControlFlow 0 238933) 238927)) |inline$$1_Vector_empty'$1_VASPDomain_VASPDomain'$0$anon0_correct|)))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon14_Else_correct  (=> (not inline$$Not$0$dst@1@@5) (=> (and (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t12@0 inline$$1_VASPDomain_publish_vasp_domains$0$$t12@0) (= $1_VASPDomain_VASPDomains_$memory@2 $1_VASPDomain_VASPDomains_$memory)) (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t7@1 inline$$1_VASPDomain_publish_vasp_domains$0$$t12@0) (= (ControlFlow 0 238895) 238901))) inline$$1_VASPDomain_publish_vasp_domains$0$L3_correct))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon13_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| inline$$1_VASPDomain_publish_vasp_domains$0$$t12@0) (= inline$$1_VASPDomain_publish_vasp_domains$0$$t12@0 6)) (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t12@0 inline$$1_VASPDomain_publish_vasp_domains$0$$t12@0) (= inline$$Not$0$dst@1@@5 inline$$Not$0$dst@1@@5))) (and (=> (= (ControlFlow 0 238879) 238933) inline$$1_VASPDomain_publish_vasp_domains$0$anon14_Then_correct) (=> (= (ControlFlow 0 238879) 238895) inline$$1_VASPDomain_publish_vasp_domains$0$anon14_Else_correct))))))
(let ((inline$$Not$0$anon0_correct@@5  (=> (and (= inline$$Not$0$dst@1@@5  (not inline$$1_VASPDomain_publish_vasp_domains$0$$t9@1)) (= (ControlFlow 0 238839) 238879)) inline$$1_VASPDomain_publish_vasp_domains$0$anon13_Else$1_correct)))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon13_Else_correct  (=> (not inline$$1_VASPDomain_publish_vasp_domains$0$$t6@0) (=> (and (and (|$IsValid'address'| inline$$1_VASPDomain_publish_vasp_domains$0$$t8@0) (= inline$$1_VASPDomain_publish_vasp_domains$0$$t8@0 (|$addr#$signer| _$t0@@5))) (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t9@1 (|Select__T@[Int]Bool_| (|domain#$Memory_152623| $1_VASPDomain_VASPDomains_$memory) inline$$1_VASPDomain_publish_vasp_domains$0$$t8@0)) (= (ControlFlow 0 238845) 238839))) inline$$Not$0$anon0_correct@@5))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon13_Then_correct  (=> (and inline$$1_VASPDomain_publish_vasp_domains$0$$t6@0 (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_VASPDomain_publish_vasp_domains$0$$t5@0)) (= 5 inline$$1_VASPDomain_publish_vasp_domains$0$$t7@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_VASPDomain_publish_vasp_domains$0$$t5@0)) 5)) (= 3 inline$$1_VASPDomain_publish_vasp_domains$0$$t7@0)))) (=> (and (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t7@0 inline$$1_VASPDomain_publish_vasp_domains$0$$t7@0) (= $1_VASPDomain_VASPDomains_$memory@2 $1_VASPDomain_VASPDomains_$memory)) (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t7@1 inline$$1_VASPDomain_publish_vasp_domains$0$$t7@0) (= (ControlFlow 0 239111) 238901))) inline$$1_VASPDomain_publish_vasp_domains$0$L3_correct))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon0_correct  (=> (= inline$$1_VASPDomain_publish_vasp_domains$0$$t3@0 (|$addr#$signer| _$t0@@5)) (=> (and (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t4@0 (|$addr#$signer| _$t0@@5)) (= _$t0@@5 _$t0@@5)) (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t5@0 (|$addr#$signer| _$t0@@5)) (= inline$$1_VASPDomain_publish_vasp_domains$0$$t6@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_VASPDomain_publish_vasp_domains$0$$t5@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) inline$$1_VASPDomain_publish_vasp_domains$0$$t5@0)) 5)))))) (and (=> (= (ControlFlow 0 238783) 239111) inline$$1_VASPDomain_publish_vasp_domains$0$anon13_Then_correct) (=> (= (ControlFlow 0 238783) 238845) inline$$1_VASPDomain_publish_vasp_domains$0$anon13_Else_correct))))))
(let ((anon0$1_correct@@5  (=> (and (forall ((addr@@202 Int) ) (!  (=> (|$IsValid'address'| addr@@202) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_128199| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@202) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@202) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@202)) 4))))
 :qid |AccountAdministrationScriptsseqArraybpl.17696:20|
 :skolemid |377|
)) (forall ((addr@@203 Int) ) (!  (=> (|$IsValid'address'| addr@@203) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_129052| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@203) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@203) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@203)) 3))))
 :qid |AccountAdministrationScriptsseqArraybpl.17700:20|
 :skolemid |378|
))) (=> (and (and (forall ((addr@@204 Int) ) (!  (=> (|$IsValid'address'| addr@@204) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_129052| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@204) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@204) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@204)) 3))))
 :qid |AccountAdministrationScriptsseqArraybpl.17704:20|
 :skolemid |379|
)) (forall ((addr@@205 Int) ) (!  (=> (|$IsValid'address'| addr@@205) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_129052| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@205) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_129052| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@205)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@205) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@205)) 3))))
 :qid |AccountAdministrationScriptsseqArraybpl.17708:20|
 :skolemid |380|
))) (and (forall ((mint_cap_owner@@5 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_140848| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@5) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) mint_cap_owner@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) mint_cap_owner@@5)) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.17712:21|
 :skolemid |381|
)) (forall ((mint_cap_owner@@6 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_140935| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@6) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) mint_cap_owner@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) mint_cap_owner@@6)) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.17712:268|
 :skolemid |382|
)))) (=> (and (and (and (forall ((addr1@@14 Int) ) (!  (=> (|$IsValid'address'| addr1@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_136128| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@14) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@14)) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.17716:21|
 :skolemid |383|
)) (forall ((addr1@@15 Int) ) (!  (=> (|$IsValid'address'| addr1@@15) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_136215| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@15) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@15)) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.17716:231|
 :skolemid |384|
))) (and (forall ((addr1@@16 Int) ) (!  (=> (|$IsValid'address'| addr1@@16) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_141517| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@16) (|Select__T@[Int]Bool_| (|domain#$Memory_141108| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@16)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@16)) 2))))
 :qid |AccountAdministrationScriptsseqArraybpl.17720:21|
 :skolemid |385|
)) (forall ((addr1@@17 Int) ) (!  (=> (|$IsValid'address'| addr1@@17) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_141616| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@17) (|Select__T@[Int]Bool_| (|domain#$Memory_141199| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@17)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@17)) 2))))
 :qid |AccountAdministrationScriptsseqArraybpl.17720:292|
 :skolemid |386|
)))) (and (and (forall ((addr1@@18 Int) ) (!  (=> (|$IsValid'address'| addr1@@18) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155070| $1_DualAttestation_Credential_$memory) addr1@@18) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@18)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr1@@18)) 2)))))
 :qid |AccountAdministrationScriptsseqArraybpl.17728:20|
 :skolemid |387|
)) (forall ((addr@@206 Int) ) (!  (=> (|$IsValid'address'| addr@@206) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@206) (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@206)))
 :qid |AccountAdministrationScriptsseqArraybpl.17732:20|
 :skolemid |388|
))) (and (forall ((addr@@207 Int) ) (!  (=> (|$IsValid'address'| addr@@207) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_152687| $1_VASPDomain_VASPDomainManager_$memory) addr@@207) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@207) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@207)) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.17736:20|
 :skolemid |389|
)) (forall ((addr@@208 Int) ) (!  (=> (|$IsValid'address'| addr@@208) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_161887| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@208) (|Select__T@[Int]Bool_| (|domain#$Memory_161978| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@208)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@208) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@208)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@208) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@208)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@208) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@208)) 2)))))
 :qid |AccountAdministrationScriptsseqArraybpl.17740:20|
 :skolemid |390|
))))) (=> (and (and (and (and (forall ((addr@@209 Int) ) (!  (=> (|$IsValid'address'| addr@@209) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_159568| $1_DesignatedDealer_Dealer_$memory) addr@@209) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@209) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@209)) 2))))
 :qid |AccountAdministrationScriptsseqArraybpl.17744:20|
 :skolemid |391|
)) (forall ((addr@@210 Int) ) (!  (=> (|$IsValid'address'| addr@@210) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155070| $1_DualAttestation_Credential_$memory) addr@@210) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@210) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@210)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@210) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@210)) 5)))))
 :qid |AccountAdministrationScriptsseqArraybpl.17748:20|
 :skolemid |392|
))) (and (forall ((addr@@211 Int) ) (!  (=> (|$IsValid'address'| addr@@211) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_129052| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@211) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@211) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@211)) 3))))
 :qid |AccountAdministrationScriptsseqArraybpl.17752:20|
 :skolemid |393|
)) (forall ((addr@@212 Int) ) (!  (=> (|$IsValid'address'| addr@@212) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_128199| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@212) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@212) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@212)) 4))))
 :qid |AccountAdministrationScriptsseqArraybpl.17756:20|
 :skolemid |394|
)))) (and (and (forall ((addr@@213 Int) ) (!  (=> (|$IsValid'address'| addr@@213) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_153604| $1_VASP_ParentVASP_$memory) addr@@213) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@213) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@213)) 5))))
 :qid |AccountAdministrationScriptsseqArraybpl.17760:20|
 :skolemid |395|
)) (forall ((addr@@214 Int) ) (!  (=> (|$IsValid'address'| addr@@214) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_153540| $1_VASP_ChildVASP_$memory) addr@@214) (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@214) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@214)) 6))))
 :qid |AccountAdministrationScriptsseqArraybpl.17764:20|
 :skolemid |396|
))) (and (|$IsValid'address'| (|$addr#$signer| _$t0@@5)) (forall (($a_0@@20 Int) ) (! (let (($rsc@@20 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) $a_0@@20)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@20))
 :qid |AccountAdministrationScriptsseqArraybpl.17770:20|
 :skolemid |397|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) $a_0@@20))
))))) (and (and (and (forall (($a_0@@21 Int) ) (! (let (($rsc@@21 (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_152623| $1_VASPDomain_VASPDomains_$memory) $a_0@@21)))
 (and (|$IsValid'$1_VASPDomain_VASPDomains'| $rsc@@21) (and (and (let (($range_1 ($Range 0 (seq.len (|$domains#$1_VASPDomain_VASPDomains| $rsc@@21)))))
(forall (($i_2 Int) ) (!  (=> ($InRange $range_1 $i_2) (let ((i@@56 $i_2))
(<= (seq.len (|$domain#$1_VASPDomain_VASPDomain| (seq.nth (|$domains#$1_VASPDomain_VASPDomains| $rsc@@21) i@@56))) 63)))
 :qid |AccountAdministrationScriptsseqArraybpl.17775:140|
 :skolemid |398|
))) (let (($range_3 ($Range 0 (seq.len (|$domains#$1_VASPDomain_VASPDomains| $rsc@@21)))))
(forall (($i_4 Int) ) (!  (=> ($InRange $range_3 $i_4) (let ((i@@57 $i_4))
(let (($range_5 ($Range (+ i@@57 1) (seq.len (|$domains#$1_VASPDomain_VASPDomains| $rsc@@21)))))
(forall (($i_6 Int) ) (!  (=> ($InRange $range_5 $i_6) (let ((j@@13 $i_6))
 (not (= (seq.nth (|$domains#$1_VASPDomain_VASPDomains| $rsc@@21) i@@57) (seq.nth (|$domains#$1_VASPDomain_VASPDomains| $rsc@@21) j@@13)))))
 :qid |AccountAdministrationScriptsseqArraybpl.17777:98|
 :skolemid |399|
)))))
 :qid |AccountAdministrationScriptsseqArraybpl.17776:202|
 :skolemid |400|
)))) (let (($range_7 (|$domains#$1_VASPDomain_VASPDomains| $rsc@@21)))
(forall (($i_8 Int) ) (!  (=> (and (>= $i_8 0) (< $i_8 (seq.len $range_7))) (let (($elem (seq.nth $range_7 $i_8)))
(<= (seq.len (|$domain#$1_VASPDomain_VASPDomain| $elem)) 63)))
 :qid |AccountAdministrationScriptsseqArraybpl.17778:229|
 :skolemid |401|
))))))
 :qid |AccountAdministrationScriptsseqArraybpl.17774:20|
 :skolemid |402|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_152623| $1_VASPDomain_VASPDomains_$memory) $a_0@@21))
)) (= $t1@@0 (|$addr#$signer| _$t0@@5))) (and (= $t2@@1 (|$addr#$signer| _$t0@@5)) (let ((addr@@215 (|$addr#$signer| _$t0@@5)))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_126448| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@215)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_159816| $1_AccountFreezing_FreezingBit_$memory) addr@@215) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_159816| $1_AccountFreezing_FreezingBit_$memory) addr@@215)))))))) (and (and (= _$t0@@5 _$t0@@5) (= $t3@@2 (|$addr#$signer| _$t0@@5))) (and (= $t4@@2 (|$addr#$signer| _$t0@@5)) (= (ControlFlow 0 239115) 238783))))) inline$$1_VASPDomain_publish_vasp_domains$0$anon0_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@5  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@7 T@$1_Event_EventHandle) ) (! (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_89088_| (|streams#$EventStore| $es) handle@@7)))
 (and (= (|l#Multiset_89088| stream@@6) 0) (forall ((v@@53 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_89088| stream@@6) v@@53) 0)
 :qid |AccountAdministrationScriptsseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |AccountAdministrationScriptsseqArraybpl.3268:13|
 :skolemid |89|
))) (= (ControlFlow 0 237455) 239115)) anon0$1_correct@@5)))
(let ((anon0_correct@@5  (=> (= (ControlFlow 0 338462) 237455) inline$$InitEventStore$0$anon0_correct@@5)))
anon0_correct@@5))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@8@@2 () Bool)
(declare-fun $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory () T@$Memory_167185)
(declare-fun $t2@@2 () Int)
(declare-fun $t3@@3 () Int)
(declare-fun _$t0@@6 () T@$signer)
(declare-fun _$t1@@1 () (Seq Int))
(declare-fun $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@3 () T@$Memory_167185)
(declare-fun $t4@@3 () Int)
(declare-fun |Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey| Int) T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)
(declare-fun $abort_code@9@@2 () Int)
(declare-fun $abort_flag@7@@3 () Bool)
(declare-fun $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@1 () T@$Memory_167185)
(declare-fun $abort_code@8@@3 () Int)
(declare-fun $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@2 () T@$Memory_167185)
(declare-fun inline$$1_SharedEd25519PublicKey_publish$0$$t11@1 () Int)
(declare-fun $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@0 () T@$Memory_167185)
(declare-fun |Store__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey| Int T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey) |T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey|)
(assert (forall ( ( ?x0 |T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey|) ( ?x1 Int) ( ?x2 T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)) (! (= (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|Store__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|Store__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$1_SharedEd25519PublicKey_publish$0$$t4@2 () T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)
(declare-fun $abort_flag@6@@4 () Bool)
(declare-fun $abort_code@7@@3 () Int)
(declare-fun inline$$Not$1$dst@1@@0 () Bool)
(declare-fun inline$$1_SharedEd25519PublicKey_publish$0$$t17@0 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1 () Bool)
(declare-fun inline$$1_SharedEd25519PublicKey_publish$0$$t13@0 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@1 () T@$Mutation_167356)
(declare-fun $abort_flag@5@@5 () Bool)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@1 () T@$Mutation_115609)
(declare-fun inline$$1_SharedEd25519PublicKey_publish$0$$t12@1 () T@$Mutation_167356)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@2 () T@$Mutation_115609)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t0@1 () T@$Mutation_167356)
(declare-fun |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@2| () T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)
(declare-fun $abort_code@6@@5 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@0 () T@$Mutation_167356)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t5@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@0 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@0 () T@$Mutation_115609)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2@@0 () T@$Mutation_115609)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0 () (Seq Int))
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@0 () T@$Mutation_164778)
(declare-fun $1_DiemAccount_DiemAccount_$memory@2@@0 () T@$Memory_160799)
(declare-fun $1_DiemAccount_DiemAccount_$memory@1@@2 () T@$Memory_160799)
(declare-fun $abort_code@5@@5 () Int)
(declare-fun $abort_flag@4@@5 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@0 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0 () Int)
(declare-fun |inline$$1_Vector_length'u8'$0$l@1@@0| () Int)
(declare-fun |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0@@0 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@0 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1@@0 () T@$Mutation_164778)
(declare-fun $abort_flag@3@@5 () Bool)
(declare-fun $abort_code@4@@5 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$2$$t1@1@@0 () Bool)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@0 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t6@0@@0 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@0@@0 () T@$Mutation_115609)
(declare-fun inline$$1_Signature_ed25519_validate_pubkey$0$res@1 () Bool)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@0 () T@$Mutation_115609)
(declare-fun |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@1| () T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)
(declare-fun inline$$1_SharedEd25519PublicKey_publish$0$$t4@1 () T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)
(declare-fun inline$$1_SharedEd25519PublicKey_publish$0$$t8@1 () (Seq Int))
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@2 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@2 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@2 () T@$Mutation_164822)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@2 () T@$Mutation_164822)
(declare-fun |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1@@2| () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@2 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@2 () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@2 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2 () T@$Mutation_164778)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0@@2 () T@$Memory_160799)
(declare-fun $abort_code@3@@5 () Int)
(declare-fun $abort_flag@2@@5 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@2 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@0@@2 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@2 () Int)
(declare-fun |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@2| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@2 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@2 () T@$Mutation_164778)
(declare-fun $abort_flag@1@@6 () Bool)
(declare-fun $abort_code@2@@6 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$1$$t1@1@@2 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@2 () Int)
(declare-fun inline$$Not$0$dst@1@@6 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@2 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@2 () Bool)
(declare-fun $abort_flag@0@@6 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@2 () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@2 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@2 () Bool)
(declare-fun $abort_code@1@@6 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@2 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@0@@2 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@0@@2 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@2 () T@$1_DiemAccount_DiemAccount)
(declare-fun $abort_code@0@@6 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$0$$t1@1@@5 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@2 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t5@0@@2 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@0@@2 () T@$Mutation_164822)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t7@0@@2 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_publish$0$$t12@0 () T@$Mutation_167356)
(declare-fun inline$$1_SharedEd25519PublicKey_publish$0$$t5@0 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_publish$0$$t6@0 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_publish$0$$t7@0 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_publish$0$$t9@0 () Int)
(declare-fun $t5@@2 () Int)
(declare-fun $t6@@1 () Int)
(declare-fun $t7 () Int)
(push 1)
(set-info :boogie-vc-id $1_AccountAdministrationScripts_publish_shared_ed25519_public_key$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 339962) (let ((anon4_Else_correct@@3  (=> (not $abort_flag@8@@2) (and (=> (= (ControlFlow 0 244476) (- 0 343117)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_167185| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t2@@2))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_167185| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t2@@2)) (and (=> (= (ControlFlow 0 244476) (- 0 343127)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t3@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t3@@3))) (and (=> (= (ControlFlow 0 244476) (- 0 343139)) (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@6))))) 0))) (=> (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@6))))) 0)) (and (=> (= (ControlFlow 0 244476) (- 0 343150)) (not (not ($1_Signature_$ed25519_validate_pubkey _$t1@@1)))) (=> (not (not ($1_Signature_$ed25519_validate_pubkey _$t1@@1))) (and (=> (= (ControlFlow 0 244476) (- 0 343160)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| ($1_SharedEd25519PublicKey_SharedEd25519PublicKey (as seq.empty (Seq Int)) (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t2@@2))) 0)))))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| ($1_SharedEd25519PublicKey_SharedEd25519PublicKey (as seq.empty (Seq Int)) (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t2@@2))) 0))))))) (and (=> (= (ControlFlow 0 244476) (- 0 343183)) (not (not (= (seq.len ($1_Authenticator_spec_ed25519_authentication_key _$t1@@1)) 32)))) (=> (not (not (= (seq.len ($1_Authenticator_spec_ed25519_authentication_key _$t1@@1)) 32))) (and (=> (= (ControlFlow 0 244476) (- 0 343199)) (|Select__T@[Int]Bool_| (|domain#$Memory_167185| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@3) $t4@@3)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_167185| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@3) $t4@@3) (=> (= (ControlFlow 0 244476) (- 0 343207)) (= (|$key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_167185| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@3) $t4@@3)) _$t1@@1)))))))))))))))))))
(let ((anon4_Then_correct@@3  (=> (and $abort_flag@8@@2 (= $abort_code@9@@2 $abort_code@9@@2)) (and (=> (= (ControlFlow 0 244708) (- 0 342916)) (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_167185| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t2@@2) (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t3@@3))) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@6))))) 0)) (not ($1_Signature_$ed25519_validate_pubkey _$t1@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| ($1_SharedEd25519PublicKey_SharedEd25519PublicKey (as seq.empty (Seq Int)) (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t2@@2))) 0))))))) (not (= (seq.len ($1_Authenticator_spec_ed25519_authentication_key _$t1@@1)) 32)))) (=> (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_167185| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t2@@2) (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t3@@3))) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@6))))) 0)) (not ($1_Signature_$ed25519_validate_pubkey _$t1@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| ($1_SharedEd25519PublicKey_SharedEd25519PublicKey (as seq.empty (Seq Int)) (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t2@@2))) 0))))))) (not (= (seq.len ($1_Authenticator_spec_ed25519_authentication_key _$t1@@1)) 32))) (=> (= (ControlFlow 0 244708) (- 0 342978)) (or (or (or (or (or (or (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_167185| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t2@@2) (= 6 $abort_code@9@@2)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t3@@3)) (= 5 $abort_code@9@@2))) (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@6))))) 0) (= 1 $abort_code@9@@2))) (and (not ($1_Signature_$ed25519_validate_pubkey _$t1@@1)) (= 7 $abort_code@9@@2))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| ($1_SharedEd25519PublicKey_SharedEd25519PublicKey (as seq.empty (Seq Int)) (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t2@@2))) 0)))))) (= 5 $abort_code@9@@2))) (and (not (= (seq.len ($1_Authenticator_spec_ed25519_authentication_key _$t1@@1)) 32)) (= 7 $abort_code@9@@2))) (= 1 $abort_code@9@@2)) (= 6 $abort_code@9@@2)) (= 7 $abort_code@9@@2))))))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon20_Else_correct  (=> (and (and (not $abort_flag@7@@3) (= $abort_flag@8@@2 $abort_flag@7@@3)) (and (= $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@3 $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@1) (= $abort_code@9@@2 $abort_code@8@@3))) (and (=> (= (ControlFlow 0 244248) 244708) anon4_Then_correct@@3) (=> (= (ControlFlow 0 244248) 244476) anon4_Else_correct@@3)))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$L3_correct  (=> (= $abort_flag@8@@2 true) (=> (and (= $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@3 $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@2) (= $abort_code@9@@2 inline$$1_SharedEd25519PublicKey_publish$0$$t11@1)) (and (=> (= (ControlFlow 0 244210) 244708) anon4_Then_correct@@3) (=> (= (ControlFlow 0 244210) 244476) anon4_Else_correct@@3))))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon20_Then_correct  (=> $abort_flag@7@@3 (=> (and (and (= $abort_code@8@@3 $abort_code@8@@3) (= inline$$1_SharedEd25519PublicKey_publish$0$$t11@1 $abort_code@8@@3)) (and (= $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@2 $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@1) (= (ControlFlow 0 244262) 244210))) inline$$1_SharedEd25519PublicKey_publish$0$L3_correct))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon19_Then$1_correct  (=> (= $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@1 $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) (=> (and (= $abort_flag@7@@3 true) (= $abort_code@8@@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 244314) 244262) inline$$1_SharedEd25519PublicKey_publish$0$anon20_Then_correct) (=> (= (ControlFlow 0 244314) 244248) inline$$1_SharedEd25519PublicKey_publish$0$anon20_Else_correct))))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon19_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_167185| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) (|$addr#$signer| _$t0@@6)) (= (ControlFlow 0 244312) 244314)) inline$$1_SharedEd25519PublicKey_publish$0$anon19_Then$1_correct)))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon19_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_167185| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) (|$addr#$signer| _$t0@@6))) (=> (and (and (= $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@0 ($Memory_167185 (|Store__T@[Int]Bool_| (|domain#$Memory_167185| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) (|$addr#$signer| _$t0@@6) true) (|Store__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_167185| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) (|$addr#$signer| _$t0@@6) inline$$1_SharedEd25519PublicKey_publish$0$$t4@2))) (= $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@1 $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@0)) (and (= $abort_flag@7@@3 $abort_flag@6@@4) (= $abort_code@8@@3 $abort_code@7@@3))) (and (=> (= (ControlFlow 0 244238) 244262) inline$$1_SharedEd25519PublicKey_publish$0$anon20_Then_correct) (=> (= (ControlFlow 0 244238) 244248) inline$$1_SharedEd25519PublicKey_publish$0$anon20_Else_correct))))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon18_Then_correct  (=> inline$$Not$1$dst@1@@0 (and (=> (= (ControlFlow 0 244216) 244312) inline$$1_SharedEd25519PublicKey_publish$0$anon19_Then_correct) (=> (= (ControlFlow 0 244216) 244238) inline$$1_SharedEd25519PublicKey_publish$0$anon19_Else_correct)))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon18_Else_correct  (=> (not inline$$Not$1$dst@1@@0) (=> (and (and (= inline$$1_SharedEd25519PublicKey_publish$0$$t17@0 inline$$1_SharedEd25519PublicKey_publish$0$$t17@0) (= inline$$1_SharedEd25519PublicKey_publish$0$$t11@1 inline$$1_SharedEd25519PublicKey_publish$0$$t17@0)) (and (= $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@2 $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) (= (ControlFlow 0 244204) 244210))) inline$$1_SharedEd25519PublicKey_publish$0$L3_correct))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon17_Else$1_correct  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| inline$$1_SharedEd25519PublicKey_publish$0$$t17@0) (= inline$$1_SharedEd25519PublicKey_publish$0$$t17@0 6)) (and (= inline$$1_SharedEd25519PublicKey_publish$0$$t17@0 inline$$1_SharedEd25519PublicKey_publish$0$$t17@0) (= inline$$Not$1$dst@1@@0 inline$$Not$1$dst@1@@0))) (and (=> (= (ControlFlow 0 244188) 244216) inline$$1_SharedEd25519PublicKey_publish$0$anon18_Then_correct) (=> (= (ControlFlow 0 244188) 244204) inline$$1_SharedEd25519PublicKey_publish$0$anon18_Else_correct))))))
(let ((inline$$Not$1$anon0_correct@@0  (=> (and (= inline$$Not$1$dst@1@@0  (not inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1)) (= (ControlFlow 0 244152) 244188)) inline$$1_SharedEd25519PublicKey_publish$0$anon17_Else$1_correct)))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon17_Else_correct  (=> (and (not $abort_flag@6@@4) (= (ControlFlow 0 244158) 244152)) inline$$Not$1$anon0_correct@@0)))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon17_Then_correct  (=> $abort_flag@6@@4 (=> (and (and (= $abort_code@7@@3 $abort_code@7@@3) (= inline$$1_SharedEd25519PublicKey_publish$0$$t11@1 $abort_code@7@@3)) (and (= $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@2 $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) (= (ControlFlow 0 244328) 244210))) inline$$1_SharedEd25519PublicKey_publish$0$L3_correct))))
(let ((inline$$1_SharedEd25519PublicKey_exists_at$0$anon0_correct  (=> (= inline$$1_SharedEd25519PublicKey_publish$0$$t13@0 inline$$1_SharedEd25519PublicKey_publish$0$$t13@0) (=> (and (= inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_167185| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) inline$$1_SharedEd25519PublicKey_publish$0$$t13@0)) (= inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1 inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1)) (and (=> (= (ControlFlow 0 244108) 244328) inline$$1_SharedEd25519PublicKey_publish$0$anon17_Then_correct) (=> (= (ControlFlow 0 244108) 244158) inline$$1_SharedEd25519PublicKey_publish$0$anon17_Else_correct))))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon16_Else_correct  (=> (not $abort_flag@6@@4) (=> (and (and (= inline$$1_SharedEd25519PublicKey_publish$0$$t4@2 (|v#$Mutation_167356| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@1)) (|$IsValid'address'| inline$$1_SharedEd25519PublicKey_publish$0$$t13@0)) (and (= inline$$1_SharedEd25519PublicKey_publish$0$$t13@0 (|$addr#$signer| _$t0@@6)) (= (ControlFlow 0 244114) 244108))) inline$$1_SharedEd25519PublicKey_exists_at$0$anon0_correct))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon16_Then_correct  (=> $abort_flag@6@@4 (=> (and (and (= $abort_code@7@@3 $abort_code@7@@3) (= inline$$1_SharedEd25519PublicKey_publish$0$$t11@1 $abort_code@7@@3)) (and (= $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@2 $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) (= (ControlFlow 0 244342) 244210))) inline$$1_SharedEd25519PublicKey_publish$0$L3_correct))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Else_correct  (=> (not $abort_flag@5@@5) (=> (and (and (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@1 ($Mutation_115609 (|l#$Mutation_167356| inline$$1_SharedEd25519PublicKey_publish$0$$t12@1) (seq.++ (|p#$Mutation_167356| inline$$1_SharedEd25519PublicKey_publish$0$$t12@1) (seq.unit 0)) (|$key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|v#$Mutation_167356| inline$$1_SharedEd25519PublicKey_publish$0$$t12@1)))) (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@2 ($Mutation_115609 (|l#$Mutation_115609| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@1) (|p#$Mutation_115609| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@1) _$t1@@1))) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t0@1 ($Mutation_167356 (|l#$Mutation_167356| inline$$1_SharedEd25519PublicKey_publish$0$$t12@1) (|p#$Mutation_167356| inline$$1_SharedEd25519PublicKey_publish$0$$t12@1) ($1_SharedEd25519PublicKey_SharedEd25519PublicKey (|v#$Mutation_115609| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@2) (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|v#$Mutation_167356| inline$$1_SharedEd25519PublicKey_publish$0$$t12@1))))) (= |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@2| (|v#$Mutation_167356| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t0@1)))) (and (and (= |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@2| |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@2|) (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@1 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t0@1)) (and (= $abort_flag@6@@4 $abort_flag@5@@5) (= $abort_code@7@@3 $abort_code@6@@5)))) (and (=> (= (ControlFlow 0 243951) 244342) inline$$1_SharedEd25519PublicKey_publish$0$anon16_Then_correct) (=> (= (ControlFlow 0 243951) 244114) inline$$1_SharedEd25519PublicKey_publish$0$anon16_Else_correct))))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$L3_correct  (=> (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@1 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@0) (=> (and (= $abort_flag@6@@4 true) (= $abort_code@7@@3 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t5@1)) (and (=> (= (ControlFlow 0 242849) 244342) inline$$1_SharedEd25519PublicKey_publish$0$anon16_Then_correct) (=> (= (ControlFlow 0 242849) 244114) inline$$1_SharedEd25519PublicKey_publish$0$anon16_Else_correct))))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Then_correct  (=> (and (and $abort_flag@5@@5 (= $abort_code@6@@5 $abort_code@6@@5)) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t5@1 $abort_code@6@@5) (= (ControlFlow 0 243965) 242849))) inline$$1_SharedEd25519PublicKey_rotate_key_$0$L3_correct)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Then_correct@@0  (=> inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@0 (=> (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@0 ($Mutation_115609 (|l#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0) (seq.++ (|p#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0) (seq.unit 0)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0)))) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2@@0 ($Mutation_115609 (|l#$Mutation_115609| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@0) (|p#$Mutation_115609| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@0) inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0))) (=> (and (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@0 ($Mutation_164778 (|l#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0) (|p#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0) ($1_DiemAccount_DiemAccount (|v#$Mutation_115609| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2@@0) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0)) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0))))) (= $1_DiemAccount_DiemAccount_$memory@2@@0 ($Memory_160799 (|Store__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@1@@2) (|a#$Global| (|l#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@0)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@1@@2) (|a#$Global| (|l#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@0)) (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@0))))) (and (= $abort_code@6@@5 $abort_code@5@@5) (= $abort_flag@5@@5 $abort_flag@4@@5))) (and (=> (= (ControlFlow 0 243797) 243965) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Then_correct) (=> (= (ControlFlow 0 243797) 243951) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Else_correct)))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@0  (=> (and (= $abort_code@6@@5 inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@0) (= $abort_flag@5@@5 true)) (and (=> (= (ControlFlow 0 243593) 243965) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Then_correct) (=> (= (ControlFlow 0 243593) 243951) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Else_correct)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Else_correct@@0  (=> (and (and (not inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0) (= (ControlFlow 0 243747) 243593))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@0)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Else_correct@@0  (=> (and (and (and (not $abort_flag@4@@5) (|$IsValid'u64'| 32)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@0 (= |inline$$1_Vector_length'u8'$0$l@1@@0| 32)) (|$IsValid'u64'| 8))) (and (and (|$IsValid'u64'| inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0 7)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@0)))) (and (=> (= (ControlFlow 0 243731) 243797) inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Then_correct@@0) (=> (= (ControlFlow 0 243731) 243747) inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Else_correct@@0)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Then_correct@@0  (=> (and (and $abort_flag@4@@5 (= $abort_code@5@@5 $abort_code@5@@5)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@0 $abort_code@5@@5) (= (ControlFlow 0 243811) 243593))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@0)))
(let ((|inline$$1_Vector_length'u8'$0$anon0_correct@@0|  (=> (= |inline$$1_Vector_length'u8'$0$l@1@@0| (seq.len inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0)) (and (=> (= (ControlFlow 0 243673) 243811) inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Then_correct@@0) (=> (= (ControlFlow 0 243673) 243731) inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Else_correct@@0)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct@@0  (=> (and (and (not $abort_flag@4@@5) (= |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0| (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0))) (and (= |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0| |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0|) (= (ControlFlow 0 243679) 243673))) |inline$$1_Vector_length'u8'$0$anon0_correct@@0|)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct@@0  (=> (and (and $abort_flag@4@@5 (= $abort_code@5@@5 $abort_code@5@@5)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@0 $abort_code@5@@5) (= (ControlFlow 0 243825) 243593))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@0)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then$1_correct@@0  (=> (= $abort_flag@4@@5 true) (=> (and (= $abort_code@5@@5 $EXEC_FAILURE_CODE) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0@@0)) (and (=> (= (ControlFlow 0 243877) 243825) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct@@0) (=> (= (ControlFlow 0 243877) 243679) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@1@@2) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@0)) (= (ControlFlow 0 243875) 243877)) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then$1_correct@@0)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@1@@2) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@0) (=> (and (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1@@0 ($Mutation_164778 ($Global inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@0) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@1@@2) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@0))) (= $abort_flag@4@@5 $abort_flag@3@@5)) (and (= $abort_code@5@@5 $abort_code@4@@5) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1@@0))) (and (=> (= (ControlFlow 0 243623) 243825) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct@@0) (=> (= (ControlFlow 0 243623) 243679) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Then_correct@@0  (=> (and inline$$1_DiemAccount_exists_at$2$$t1@1@@0 (= inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@0 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1))) (and (=> (= (ControlFlow 0 243601) 243875) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then_correct@@0) (=> (= (ControlFlow 0 243601) 243623) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Else_correct@@0)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Else_correct@@0  (=> (and (and (not inline$$1_DiemAccount_exists_at$2$$t1@1@@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0) (= (ControlFlow 0 243587) 243593))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@0)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Else_correct@@0  (=> (and (not $abort_flag@3@@5) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0 5)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0) (= inline$$1_DiemAccount_exists_at$2$$t1@1@@0 inline$$1_DiemAccount_exists_at$2$$t1@1@@0))) (and (=> (= (ControlFlow 0 243571) 243601) inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Then_correct@@0) (=> (= (ControlFlow 0 243571) 243587) inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Then_correct@@0  (=> (and (and $abort_flag@3@@5 (= $abort_code@4@@5 $abort_code@4@@5)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@0 $abort_code@4@@5) (= (ControlFlow 0 243891) 243593))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@0)))
(let ((inline$$1_DiemAccount_exists_at$2$anon0_correct@@0  (=> (= inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@0) (=> (and (= inline$$1_DiemAccount_exists_at$2$$t1@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@1@@2) inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@0)) (= inline$$1_DiemAccount_exists_at$2$$t1@1@@0 inline$$1_DiemAccount_exists_at$2$$t1@1@@0)) (and (=> (= (ControlFlow 0 243529) 243891) inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Then_correct@@0) (=> (= (ControlFlow 0 243529) 243571) inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon0_correct@@0  (=> (= (seq.len (|p#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t6@0@@0)) 0) (=> (and (= (seq.len (|p#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0@@0)) 0) (= (seq.len (|p#$Mutation_115609| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@0@@0)) 0)) (=> (and (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1) (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@0 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1)) (= (ControlFlow 0 243535) 243529))) inline$$1_DiemAccount_exists_at$2$anon0_correct@@0)))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon9_Then_correct  (=> inline$$1_Signature_ed25519_validate_pubkey$0$res@1 (=> (and (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1 (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|v#$Mutation_167356| inline$$1_SharedEd25519PublicKey_publish$0$$t12@1))) (|$IsValid'vec'u8''| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0)) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0 ($1_Authenticator_spec_ed25519_authentication_key _$t1@@1)) (= (ControlFlow 0 243895) 243535))) inline$$1_DiemAccount_rotate_authentication_key$0$anon0_correct@@0))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon9_Else_correct  (=> (and (and (not inline$$1_Signature_ed25519_validate_pubkey$0$res@1) (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0)) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t5@1 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0) (= (ControlFlow 0 242843) 242849))) inline$$1_SharedEd25519PublicKey_rotate_key_$0$L3_correct)))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon8_Else_correct  (=> (and (not $abort_flag@3@@5) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0) (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0 7)) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0) (= inline$$1_Signature_ed25519_validate_pubkey$0$res@1 inline$$1_Signature_ed25519_validate_pubkey$0$res@1))) (and (=> (= (ControlFlow 0 242827) 243895) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon9_Then_correct) (=> (= (ControlFlow 0 242827) 242843) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon9_Else_correct))))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon8_Then_correct  (=> (and (and $abort_flag@3@@5 (= $abort_code@4@@5 $abort_code@4@@5)) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t5@1 $abort_code@4@@5) (= (ControlFlow 0 243979) 242849))) inline$$1_SharedEd25519PublicKey_rotate_key_$0$L3_correct)))
(let ((inline$$1_Signature_ed25519_validate_pubkey$0$anon0_correct  (=> (= inline$$1_Signature_ed25519_validate_pubkey$0$res@1 ($1_Signature_$ed25519_validate_pubkey _$t1@@1)) (and (=> (= (ControlFlow 0 242781) 243979) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon8_Then_correct) (=> (= (ControlFlow 0 242781) 242827) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon8_Else_correct)))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon0_correct  (=> (= (seq.len (|p#$Mutation_115609| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@0)) 0) (=> (and (and (= |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@1| (|v#$Mutation_167356| inline$$1_SharedEd25519PublicKey_publish$0$$t12@1)) (= |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@1| |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@1|)) (and (= _$t1@@1 _$t1@@1) (= (ControlFlow 0 242787) 242781))) inline$$1_Signature_ed25519_validate_pubkey$0$anon0_correct))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon15_Else_correct  (=> (not $abort_flag@3@@5) (=> (and (and (= inline$$1_SharedEd25519PublicKey_publish$0$$t4@1 ($1_SharedEd25519PublicKey_SharedEd25519PublicKey inline$$1_SharedEd25519PublicKey_publish$0$$t8@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@2)) (= inline$$1_SharedEd25519PublicKey_publish$0$$t4@1 inline$$1_SharedEd25519PublicKey_publish$0$$t4@1)) (and (= inline$$1_SharedEd25519PublicKey_publish$0$$t12@1 ($Mutation_167356 ($Local 4) (as seq.empty (Seq Int)) inline$$1_SharedEd25519PublicKey_publish$0$$t4@1)) (= (ControlFlow 0 243985) 242787))) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon0_correct))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon15_Then_correct  (=> $abort_flag@3@@5 (=> (and (and (= $abort_code@4@@5 $abort_code@4@@5) (= inline$$1_SharedEd25519PublicKey_publish$0$$t11@1 $abort_code@4@@5)) (and (= $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@2 $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) (= (ControlFlow 0 244356) 244210))) inline$$1_SharedEd25519PublicKey_publish$0$L3_correct))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Else_correct@@2  (=> (not inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@2) (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@2 ($Mutation_164822 (|l#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@2) (|p#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@2) |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1@@2|)) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@2))) (=> (and (and (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@2)) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@2))) 1)) (and (|$IsValid'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@2) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@2 (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@2) 0)))) (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@2))) 0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@2 ($Mutation_164778 (|l#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2) (|p#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2) ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2)) (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@2) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2)))))) (and (= $1_DiemAccount_DiemAccount_$memory@0@@2 ($Memory_160799 (|Store__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@2)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@2)) (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@2)))) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@2))) (and (and (= $abort_code@4@@5 $abort_code@3@@5) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@2)) (and (= $abort_flag@3@@5 $abort_flag@2@@5) (= $1_DiemAccount_DiemAccount_$memory@1@@2 $1_DiemAccount_DiemAccount_$memory@0@@2)))) (and (=> (= (ControlFlow 0 242206) 244356) inline$$1_SharedEd25519PublicKey_publish$0$anon15_Then_correct) (=> (= (ControlFlow 0 242206) 243985) inline$$1_SharedEd25519PublicKey_publish$0$anon15_Else_correct))))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@2  (=> (and (and (= $abort_code@4@@5 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@2) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@0@@2)) (and (= $abort_flag@3@@5 true) (= $1_DiemAccount_DiemAccount_$memory@1@@2 $1_DiemAccount_DiemAccount_$memory))) (and (=> (= (ControlFlow 0 241883) 244356) inline$$1_SharedEd25519PublicKey_publish$0$anon15_Then_correct) (=> (= (ControlFlow 0 241883) 243985) inline$$1_SharedEd25519PublicKey_publish$0$anon15_Else_correct)))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Then_correct@@2  (=> inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@2 (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@2))) 0) (= 7 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@2)) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@2)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@2) (= (ControlFlow 0 242232) 241883))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@2))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@2  (=> (and (not $abort_flag@2@@5) (= |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@2| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2))) (=> (and (and (= |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@2| |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@2|) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@2 ($Mutation_164822 (|l#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2) (seq.++ (|p#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2) (seq.unit 2)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2))))) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@2 (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@2)) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@2 (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@2))) 0)))) (and (=> (= (ControlFlow 0 242114) 242232) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Then_correct@@2) (=> (= (ControlFlow 0 242114) 242206) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Else_correct@@2))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@2  (=> (and (and $abort_flag@2@@5 (= $abort_code@3@@5 $abort_code@3@@5)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@2 $abort_code@3@@5) (= (ControlFlow 0 242246) 241883))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@2)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then$1_correct@@2  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@2) (=> (and (= $abort_flag@2@@5 true) (= $abort_code@3@@5 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 242298) 242246) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@2) (=> (= (ControlFlow 0 242298) 242114) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@2))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then_correct@@2  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2)) (= (ControlFlow 0 242296) 242298)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then$1_correct@@2)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Else_correct@@2  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2) (=> (and (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@2 ($Mutation_164778 ($Global inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2))) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@2)) (and (= $abort_flag@2@@5 $abort_flag@1@@6) (= $abort_code@3@@5 $abort_code@2@@6))) (and (=> (= (ControlFlow 0 242068) 242246) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@2) (=> (= (ControlFlow 0 242068) 242114) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@2))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Then_correct@@2  (=> inline$$1_DiemAccount_exists_at$1$$t1@1@@2 (and (=> (= (ControlFlow 0 242046) 242296) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then_correct@@2) (=> (= (ControlFlow 0 242046) 242068) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Else_correct@@2)))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Else_correct@@2  (=> (and (and (not inline$$1_DiemAccount_exists_at$1$$t1@1@@2) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@2)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@2) (= (ControlFlow 0 242042) 241883))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@2)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Else_correct@@2  (=> (and (not $abort_flag@1@@6) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@2) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@2 5)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@2) (= inline$$1_DiemAccount_exists_at$1$$t1@1@@2 inline$$1_DiemAccount_exists_at$1$$t1@1@@2))) (and (=> (= (ControlFlow 0 242026) 242046) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Then_correct@@2) (=> (= (ControlFlow 0 242026) 242042) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Else_correct@@2))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Then_correct@@2  (=> (and (and $abort_flag@1@@6 (= $abort_code@2@@6 $abort_code@2@@6)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@2 $abort_code@2@@6) (= (ControlFlow 0 242312) 241883))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@2)))
(let ((inline$$1_DiemAccount_exists_at$1$anon0_correct@@2  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2) (=> (and (= inline$$1_DiemAccount_exists_at$1$$t1@1@@2 (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2)) (= inline$$1_DiemAccount_exists_at$1$$t1@1@@2 inline$$1_DiemAccount_exists_at$1$$t1@1@@2)) (and (=> (= (ControlFlow 0 241984) 242312) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Then_correct@@2) (=> (= (ControlFlow 0 241984) 242026) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Else_correct@@2))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Then_correct@@2  (=> (and inline$$Not$0$dst@1@@6 (= (ControlFlow 0 241990) 241984)) inline$$1_DiemAccount_exists_at$1$anon0_correct@@2)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Else_correct@@2  (=> (and (and (not inline$$Not$0$dst@1@@6) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@2)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@2) (= (ControlFlow 0 241877) 241883))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@2)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else$1_correct@@2  (=> (|$IsValid'u64'| 9) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@2) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@2 1)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@2) (= inline$$Not$0$dst@1@@6 inline$$Not$0$dst@1@@6))) (and (=> (= (ControlFlow 0 241861) 241990) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Then_correct@@2) (=> (= (ControlFlow 0 241861) 241877) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Else_correct@@2))))))
(let ((inline$$Not$0$anon0_correct@@6  (=> (and (= inline$$Not$0$dst@1@@6  (not inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@2)) (= (ControlFlow 0 241821) 241861)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else$1_correct@@2)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@2  (=> (and (not $abort_flag@1@@6) (= (ControlFlow 0 241827) 241821)) inline$$Not$0$anon0_correct@@6)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@2  (=> (and (and $abort_flag@1@@6 (= $abort_code@2@@6 $abort_code@2@@6)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@2 $abort_code@2@@6) (= (ControlFlow 0 242326) 241883))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@2)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@2  (=> (not $abort_flag@0@@6) (=> (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@2 (|$key_rotation_capability#$1_DiemAccount_DiemAccount| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@2)) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@2 (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@2)) 0))) (=> (and (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@2) (= $abort_code@2@@6 $abort_code@1@@6)) (and (= $abort_flag@1@@6 $abort_flag@0@@6) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@2))) (and (=> (= (ControlFlow 0 241697) 242326) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@2) (=> (= (ControlFlow 0 241697) 241827) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@2)))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@2  (=> (= $abort_code@2@@6 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@2) (=> (and (= $abort_flag@1@@6 true) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@0@@2)) (and (=> (= (ControlFlow 0 241645) 242326) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@2) (=> (= (ControlFlow 0 241645) 241827) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@2))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@2  (=> (and (and $abort_flag@0@@6 (= $abort_code@1@@6 $abort_code@1@@6)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@2 $abort_code@1@@6) (= (ControlFlow 0 241711) 241645))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@2)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then$1_correct@@2  (=> (= $abort_flag@0@@6 true) (=> (and (= $abort_code@1@@6 $EXEC_FAILURE_CODE) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@0@@2)) (and (=> (= (ControlFlow 0 241763) 241711) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@2) (=> (= (ControlFlow 0 241763) 241697) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@2))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then_correct@@2  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2)) (= (ControlFlow 0 241761) 241763)) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then$1_correct@@2)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Else_correct@@2  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2) (=> (and (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@2 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2)) (= $abort_flag@0@@6 false)) (and (= $abort_code@1@@6 $abort_code@0@@6) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@2))) (and (=> (= (ControlFlow 0 241663) 241711) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@2) (=> (= (ControlFlow 0 241663) 241697) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@2))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Then_correct@@2  (=> inline$$1_DiemAccount_exists_at$0$$t1@1@@5 (and (=> (= (ControlFlow 0 241649) 241761) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then_correct@@2) (=> (= (ControlFlow 0 241649) 241663) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Else_correct@@2)))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Else_correct@@2  (=> (and (and (not inline$$1_DiemAccount_exists_at$0$$t1@1@@5) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@2)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@2) (= (ControlFlow 0 241639) 241645))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@2)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Else_correct@@2  (=> (and (not false) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@2) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@2 5)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@2) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@5 inline$$1_DiemAccount_exists_at$0$$t1@1@@5))) (and (=> (= (ControlFlow 0 241623) 241649) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Then_correct@@2) (=> (= (ControlFlow 0 241623) 241639) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Else_correct@@2))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Then_correct@@2 true))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct@@5  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1@@5 (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2)) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@5 inline$$1_DiemAccount_exists_at$0$$t1@1@@5)) (and (=> (= (ControlFlow 0 241581) 241777) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Then_correct@@2) (=> (= (ControlFlow 0 241581) 241623) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Else_correct@@2))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon0_correct@@2  (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2) (= (ControlFlow 0 241587) 241581)) inline$$1_DiemAccount_exists_at$0$anon0_correct@@5)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon0_correct@@2  (=> (= (seq.len (|p#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t5@0@@2)) 0) (=> (and (and (and (= (seq.len (|p#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@2)) 0) (= (seq.len (|p#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@0@@2)) 0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t7@0@@2 (|$addr#$signer| _$t0@@6)) (= _$t0@@6 _$t0@@6))) (and (and (|$IsValid'address'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2 (|$addr#$signer| _$t0@@6))) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2) (= (ControlFlow 0 241783) 241587)))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon0_correct@@2))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon0_correct  (=> (and (= (seq.len (|p#$Mutation_167356| inline$$1_SharedEd25519PublicKey_publish$0$$t12@0)) 0) (= inline$$1_SharedEd25519PublicKey_publish$0$$t5@0 (|$addr#$signer| _$t0@@6))) (=> (and (and (and (= inline$$1_SharedEd25519PublicKey_publish$0$$t6@0 (|$addr#$signer| _$t0@@6)) (= inline$$1_SharedEd25519PublicKey_publish$0$$t7@0 (|$addr#$signer| _$t0@@6))) (and (= _$t0@@6 _$t0@@6) (= _$t1@@1 _$t1@@1))) (and (and (= inline$$1_SharedEd25519PublicKey_publish$0$$t8@1 (as seq.empty (Seq Int))) (|$IsValid'vec'u8''| inline$$1_SharedEd25519PublicKey_publish$0$$t8@1)) (and (= inline$$1_SharedEd25519PublicKey_publish$0$$t9@0 (|$addr#$signer| _$t0@@6)) (= (ControlFlow 0 242332) 241783)))) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon0_correct@@2))))
(let ((anon0$1_correct@@6  (=> (forall ((addr@@216 Int) ) (!  (=> (|$IsValid'address'| addr@@216) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@216) (or (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@216)))) 0) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@216)))) 0)) (= addr@@216 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@216))) 0)))))))
 :qid |AccountAdministrationScriptsseqArraybpl.17900:20|
 :skolemid |403|
)) (=> (and (and (forall ((addr@@217 Int) ) (!  (=> (|$IsValid'address'| addr@@217) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@217) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@217) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@217)))) 0)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@217)))) 0)) (= addr@@217 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@217))) 0)))))))
 :qid |AccountAdministrationScriptsseqArraybpl.17904:20|
 :skolemid |404|
)) (forall ((addr@@218 Int) ) (!  (=> (|$IsValid'address'| addr@@218) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@218) (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@218)))
 :qid |AccountAdministrationScriptsseqArraybpl.17908:20|
 :skolemid |405|
))) (and (forall ((addr@@219 Int) ) (!  (=> (|$IsValid'address'| addr@@219) (=> (and (= addr@@219 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@219)) (|Select__T@[Int]Bool_| (|domain#$Memory_161752| $1_DiemAccount_AccountOperationsCapability_$memory) addr@@219)))
 :qid |AccountAdministrationScriptsseqArraybpl.17912:20|
 :skolemid |406|
)) (forall ((addr@@220 Int) ) (!  (=> (|$IsValid'address'| addr@@220) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@220) (|Select__T@[Int]Bool_| (|domain#$Memory_159816| $1_AccountFreezing_FreezingBit_$memory) addr@@220)))
 :qid |AccountAdministrationScriptsseqArraybpl.17916:20|
 :skolemid |407|
)))) (=> (and (and (and (and (and (forall ((addr@@221 Int) ) (!  (=> (|$IsValid'address'| addr@@221) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161887| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@221) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@221)))
 :qid |AccountAdministrationScriptsseqArraybpl.17920:22|
 :skolemid |408|
)) (forall ((addr@@222 Int) ) (!  (=> (|$IsValid'address'| addr@@222) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161978| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@222) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@222)))
 :qid |AccountAdministrationScriptsseqArraybpl.17920:218|
 :skolemid |409|
))) (forall ((addr@@223 Int) ) (!  (=> (|$IsValid'address'| addr@@223) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_162069| |$1_DiemAccount_Balance'#0'_$memory|) addr@@223) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@223)))
 :qid |AccountAdministrationScriptsseqArraybpl.17920:415|
 :skolemid |410|
))) (and (|$IsValid'address'| (|$addr#$signer| _$t0@@6)) (|$IsValid'vec'u8''| _$t1@@1))) (and (and (forall (($a_0@@22 Int) ) (! (let (($rsc@@22 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $a_0@@22)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@22) (and (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@22))) 1) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@22))) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.17929:20|
 :skolemid |411|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $a_0@@22))
)) (forall (($a_0@@23 Int) ) (! (let (($rsc@@23 (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_167185| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $a_0@@23)))
(|$IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'| $rsc@@23))
 :qid |AccountAdministrationScriptsseqArraybpl.17933:20|
 :skolemid |412|
 :pattern ( (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_167185| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $a_0@@23))
))) (and (= $t2@@2 (|$addr#$signer| _$t0@@6)) (= $t3@@3 (|$addr#$signer| _$t0@@6))))) (and (and (and (= $t4@@3 (|$addr#$signer| _$t0@@6)) (let ((addr@@224 (|$addr#$signer| _$t0@@6)))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_126448| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@224)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_159816| $1_AccountFreezing_FreezingBit_$memory) addr@@224) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_159816| $1_AccountFreezing_FreezingBit_$memory) addr@@224))))))) (and (= _$t0@@6 _$t0@@6) (= _$t1@@1 _$t1@@1))) (and (and (= $t5@@2 (|$addr#$signer| _$t0@@6)) (= $t6@@1 (|$addr#$signer| _$t0@@6))) (and (= $t7 (|$addr#$signer| _$t0@@6)) (= (ControlFlow 0 244360) 242332))))) inline$$1_SharedEd25519PublicKey_publish$0$anon0_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct@@6  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@8 T@$1_Event_EventHandle) ) (! (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_89088_| (|streams#$EventStore| $es) handle@@8)))
 (and (= (|l#Multiset_89088| stream@@7) 0) (forall ((v@@54 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_89088| stream@@7) v@@54) 0)
 :qid |AccountAdministrationScriptsseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |AccountAdministrationScriptsseqArraybpl.3268:13|
 :skolemid |89|
))) (= (ControlFlow 0 239521) 244360)) anon0$1_correct@@6)))
(let ((anon0_correct@@6  (=> (= (ControlFlow 0 339962) 239521) inline$$InitEventStore$0$anon0_correct@@6)))
anon0_correct@@6))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_129589)
(declare-fun _$t0@@7 () T@$signer)
(declare-fun _$t1@@2 () Int)
(declare-fun $t6@@2 () Int)
(declare-fun $t5@@3 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun _$t2 () (Seq Int))
(declare-fun $t7@0@@0 () Int)
(declare-fun $abort_flag@8@@3 () Bool)
(declare-fun $abort_code@9@@3 () Int)
(declare-fun $abort_flag@6@@5 () Bool)
(declare-fun $abort_code@7@@4 () Int)
(declare-fun $abort_flag@4@@6 () Bool)
(declare-fun $abort_code@5@@6 () Int)
(declare-fun $abort_flag@0@@7 () Bool)
(declare-fun $abort_code@1@@7 () Int)
(declare-fun $1_DiemAccount_DiemAccount_$memory@5@@0 () T@$Memory_160799)
(declare-fun $t4@@4 () Int)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t12@0@@0 () Bool)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2@@0 () T@$Mutation_164822)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1@@0 () T@$Mutation_164822)
(declare-fun |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1@@0| () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@3 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@3@@0 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@0 () T@$Mutation_164778)
(declare-fun $1_DiemAccount_DiemAccount_$memory@4@@0 () T@$Memory_160799)
(declare-fun $1_DiemAccount_DiemAccount_$memory@3@@0 () T@$Memory_160799)
(declare-fun $abort_code@8@@4 () Int)
(declare-fun $abort_flag@7@@4 () Bool)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1@@0 () Int)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@0@@0 () Int)
(declare-fun |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@0@@0 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1@@0 () Int)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@1@@0 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_exists_at$3$$t1@1@@0 () Bool)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0@@0 () Int)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t4@1@@0 () Int)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t3@0@@0 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@0@@0 () T@$Mutation_164822)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@1 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@1 () T@$Mutation_115609)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2@@1 () T@$Mutation_115609)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@1 () T@$Mutation_164778)
(declare-fun $1_DiemAccount_DiemAccount_$memory@2@@1 () T@$Memory_160799)
(declare-fun $1_DiemAccount_DiemAccount_$memory@1@@3 () T@$Memory_160799)
(declare-fun $abort_code@6@@6 () Int)
(declare-fun $abort_flag@5@@6 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@1 () Int)
(declare-fun |inline$$1_Vector_length'u8'$0$l@1@@1| () Int)
(declare-fun |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@1| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0@@1 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1@@1 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_exists_at$2$$t1@1@@1 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t6@0@@1 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@0@@1 () T@$Mutation_115609)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@3 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@3 () T@$Mutation_164822)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@3 () T@$Mutation_164822)
(declare-fun |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1@@3| () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@3 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@3 () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@3 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@3 () T@$Mutation_164778)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0@@3 () T@$Memory_160799)
(declare-fun $abort_flag@3@@6 () Bool)
(declare-fun $abort_code@4@@6 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@0@@3 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@3 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@3 () Int)
(declare-fun |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@3| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@3 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@3 () T@$Mutation_164778)
(declare-fun $abort_code@3@@6 () Int)
(declare-fun $abort_flag@2@@6 () Bool)
(declare-fun inline$$1_DiemAccount_exists_at$1$$t1@1@@3 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@3 () Int)
(declare-fun inline$$Not$0$dst@1@@7 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@3 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@3 () Bool)
(declare-fun $abort_flag@1@@7 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@3 () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@3 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@3 () Bool)
(declare-fun $abort_code@2@@7 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@3 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@0@@3 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@0@@3 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@3 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_exists_at$0$$t1@1@@6 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@3 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t5@0@@3 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@0@@3 () T@$Mutation_164822)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t7@0@@3 () Int)
(declare-fun $t8@@0 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1 () Bool)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0 () Bool)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0 () Int)
(declare-fun $abort_code@0@@7 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0 () Int)
(declare-fun |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1| () Bool)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@1 () T@$Memory_129589)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@0 () T@$Memory_129589)
(declare-fun |Store__T@[Int]$1_SlidingNonce_SlidingNonce_| (|T@[Int]$1_SlidingNonce_SlidingNonce| Int T@$1_SlidingNonce_SlidingNonce) |T@[Int]$1_SlidingNonce_SlidingNonce|)
(declare-fun |Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|T@[Int]$1_SlidingNonce_SlidingNonce| Int) T@$1_SlidingNonce_SlidingNonce)
(assert (forall ( ( ?x0 |T@[Int]$1_SlidingNonce_SlidingNonce|) ( ?x1 Int) ( ?x2 T@$1_SlidingNonce_SlidingNonce)) (! (= (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_SlidingNonce_SlidingNonce|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_SlidingNonce_SlidingNonce)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'$1_SlidingNonce_SlidingNonce'@1| () T@$1_SlidingNonce_SlidingNonce)
(push 1)
(set-info :boogie-vc-id $1_AccountAdministrationScripts_rotate_authentication_key_with_nonce$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 343228) (let ((L2_correct@@2  (and (=> (= (ControlFlow 0 250218) (- 0 346268)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_129589| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@7))) (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@7 _$t1@@2) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t6@@2))) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@7))))) 0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| $t5@@3)))) (not (= (seq.len _$t2) 32))) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@7))))) 0))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_129589| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@7))) (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@7 _$t1@@2) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t6@@2))) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@7))))) 0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| $t5@@3)))) (not (= (seq.len _$t2) 32))) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@7))))) 0)) (=> (= (ControlFlow 0 250218) (- 0 346335)) (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_129589| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@7))) (= 5 $t7@0@@0)) (and (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@7 _$t1@@2) 0)) (= 7 $t7@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t6@@2)) (= 5 $t7@0@@0))) (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@7))))) 0) (= 1 $t7@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| $t5@@3))) (= 5 $t7@0@@0))) (and (not (= (seq.len _$t2) 32)) (= 7 $t7@0@@0))) (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@7))))) 0) (= 1 $t7@0@@0))) (= 7 $t7@0@@0)) (= 1 $t7@0@@0)) (= 5 $t7@0@@0)))))))
(let ((anon13_Then_correct  (=> (and (and $abort_flag@8@@3 (= $abort_code@9@@3 $abort_code@9@@3)) (and (= $t7@0@@0 $abort_code@9@@3) (= (ControlFlow 0 249974) 250218))) L2_correct@@2)))
(let ((anon12_Then_correct  (=> (and (and $abort_flag@6@@5 (= $abort_code@7@@4 $abort_code@7@@4)) (and (= $t7@0@@0 $abort_code@7@@4) (= (ControlFlow 0 250232) 250218))) L2_correct@@2)))
(let ((anon11_Then_correct  (=> (and (and $abort_flag@4@@6 (= $abort_code@5@@6 $abort_code@5@@6)) (and (= $t7@0@@0 $abort_code@5@@6) (= (ControlFlow 0 250246) 250218))) L2_correct@@2)))
(let ((anon10_Then_correct@@0  (=> (and (and $abort_flag@0@@7 (= $abort_code@1@@7 $abort_code@1@@7)) (and (= $t7@0@@0 $abort_code@1@@7) (= (ControlFlow 0 250260) 250218))) L2_correct@@2)))
(let ((anon13_Else_correct  (=> (not $abort_flag@8@@3) (and (=> (= (ControlFlow 0 249960) (- 0 346150)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_129589| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@7))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_129589| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@7)))) (and (=> (= (ControlFlow 0 249960) (- 0 346163)) (not (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@7 _$t1@@2) 0)))) (=> (not (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@7 _$t1@@2) 0))) (and (=> (= (ControlFlow 0 249960) (- 0 346178)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t6@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t6@@2))) (and (=> (= (ControlFlow 0 249960) (- 0 346190)) (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@7))))) 0))) (=> (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@7))))) 0)) (and (=> (= (ControlFlow 0 249960) (- 0 346201)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| $t5@@3))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| $t5@@3)))) (and (=> (= (ControlFlow 0 249960) (- 0 346215)) (not (not (= (seq.len _$t2) 32)))) (=> (not (not (= (seq.len _$t2) 32))) (and (=> (= (ControlFlow 0 249960) (- 0 346229)) (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@7))))) 0))) (=> (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@7))))) 0)) (=> (= (ControlFlow 0 249960) (- 0 346240)) (= (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@5@@0) $t4@@4)) _$t2)))))))))))))))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon18_Else_correct@@0  (=> (not inline$$1_DiemAccount_restore_key_rotation_capability$0$$t12@0@@0) (=> (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2@@0 ($Mutation_164822 (|l#$Mutation_164822| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1@@0) (|p#$Mutation_164822| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1@@0) |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1@@0|)) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_164822| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2@@0))) (=> (and (and (and (and (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_164822| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2@@0)) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2@@0))) 1)) (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2@@0))) 0))) (and (= (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2@@0)) 0) inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@3) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@3@@0 ($Mutation_164778 (|l#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@0) (|p#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@0) ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@0)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@0)) (|v#$Mutation_164822| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2@@0) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@0)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@0)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@0))))))) (and (and (= $1_DiemAccount_DiemAccount_$memory@4@@0 ($Memory_160799 (|Store__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@3@@0) (|a#$Global| (|l#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@3@@0)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@3@@0) (|a#$Global| (|l#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@3@@0)) (|v#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@3@@0)))) (= $1_DiemAccount_DiemAccount_$memory@5@@0 $1_DiemAccount_DiemAccount_$memory@4@@0)) (and (= $abort_code@9@@3 $abort_code@8@@4) (= $abort_flag@8@@3 $abort_flag@7@@4)))) (and (=> (= (ControlFlow 0 249732) 249974) anon13_Then_correct) (=> (= (ControlFlow 0 249732) 249960) anon13_Else_correct)))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$L3_correct@@0  (=> (= $1_DiemAccount_DiemAccount_$memory@5@@0 $1_DiemAccount_DiemAccount_$memory@3@@0) (=> (and (= $abort_code@9@@3 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1@@0) (= $abort_flag@8@@3 true)) (and (=> (= (ControlFlow 0 249578) 249974) anon13_Then_correct) (=> (= (ControlFlow 0 249578) 249960) anon13_Else_correct))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon18_Then_correct@@0  (=> inline$$1_DiemAccount_restore_key_rotation_capability$0$$t12@0@@0 (=> (and (and (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1@@0))) 0)) (= 7 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@0@@0)) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@0@@0 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@0@@0)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1@@0 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@0@@0) (= (ControlFlow 0 249758) 249578))) inline$$1_DiemAccount_restore_key_rotation_capability$0$L3_correct@@0))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Else_correct@@0  (=> (not $abort_flag@7@@4) (=> (and (and (= |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0| (|v#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@0)) (= |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0| |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0|)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1@@0 ($Mutation_164822 (|l#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@0) (seq.++ (|p#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@0) (seq.unit 2)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@0)))) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t12@0@@0  (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1@@0))) 0))))) (and (=> (= (ControlFlow 0 249650) 249758) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon18_Then_correct@@0) (=> (= (ControlFlow 0 249650) 249732) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon18_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Then_correct@@0  (=> (and (and $abort_flag@7@@4 (= $abort_code@8@@4 $abort_code@8@@4)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1@@0 $abort_code@8@@4) (= (ControlFlow 0 249772) 249578))) inline$$1_DiemAccount_restore_key_rotation_capability$0$L3_correct@@0)))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Then$1_correct@@0  (=> (= $abort_flag@7@@4 true) (=> (and (= $abort_code@8@@4 $EXEC_FAILURE_CODE) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@0 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@0@@0)) (and (=> (= (ControlFlow 0 249824) 249772) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Then_correct@@0) (=> (= (ControlFlow 0 249824) 249650) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@3@@0) inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1@@0)) (= (ControlFlow 0 249822) 249824)) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Then$1_correct@@0)))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@3@@0) inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1@@0) (=> (and (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@1@@0 ($Mutation_164778 ($Global inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1@@0) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@3@@0) inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1@@0))) (= $abort_flag@7@@4 $abort_flag@6@@5)) (and (= $abort_code@8@@4 $abort_code@7@@4) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@0 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@1@@0))) (and (=> (= (ControlFlow 0 249608) 249772) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Then_correct@@0) (=> (= (ControlFlow 0 249608) 249650) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon15_Then_correct@@0  (=> (and inline$$1_DiemAccount_exists_at$3$$t1@1@@0 (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1@@0 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@3))) (and (=> (= (ControlFlow 0 249586) 249822) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Then_correct@@0) (=> (= (ControlFlow 0 249586) 249608) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Else_correct@@0)))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon15_Else_correct@@0  (=> (and (and (not inline$$1_DiemAccount_exists_at$3$$t1@1@@0) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0@@0 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0@@0)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1@@0 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0@@0) (= (ControlFlow 0 249572) 249578))) inline$$1_DiemAccount_restore_key_rotation_capability$0$L3_correct@@0)))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon14_Else_correct@@0  (=> (and (not $abort_flag@6@@5) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0@@0) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0@@0 5)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0@@0 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0@@0) (= inline$$1_DiemAccount_exists_at$3$$t1@1@@0 inline$$1_DiemAccount_exists_at$3$$t1@1@@0))) (and (=> (= (ControlFlow 0 249556) 249586) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon15_Then_correct@@0) (=> (= (ControlFlow 0 249556) 249572) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon15_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon14_Then_correct@@0  (=> (and (and $abort_flag@6@@5 (= $abort_code@7@@4 $abort_code@7@@4)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1@@0 $abort_code@7@@4) (= (ControlFlow 0 249838) 249578))) inline$$1_DiemAccount_restore_key_rotation_capability$0$L3_correct@@0)))
(let ((inline$$1_DiemAccount_exists_at$3$anon0_correct@@0  (=> (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t4@1@@0 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t4@1@@0) (=> (and (= inline$$1_DiemAccount_exists_at$3$$t1@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@3@@0) inline$$1_DiemAccount_restore_key_rotation_capability$0$$t4@1@@0)) (= inline$$1_DiemAccount_exists_at$3$$t1@1@@0 inline$$1_DiemAccount_exists_at$3$$t1@1@@0)) (and (=> (= (ControlFlow 0 249514) 249838) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon14_Then_correct@@0) (=> (= (ControlFlow 0 249514) 249556) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon14_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon0_correct@@0  (=> (and (= (seq.len (|p#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t3@0@@0)) 0) (= (seq.len (|p#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@0@@0)) 0)) (=> (and (and (= (seq.len (|p#$Mutation_164822| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@0@@0)) 0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@3)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t4@1@@0 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@3)) (= (ControlFlow 0 249520) 249514))) inline$$1_DiemAccount_exists_at$3$anon0_correct@@0))))
(let ((anon12_Else_correct  (=> (and (not $abort_flag@6@@5) (= (ControlFlow 0 249842) 249520)) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon0_correct@@0)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Then_correct@@1  (=> (and (and (and inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@1 (= inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@1 ($Mutation_115609 (|l#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1) (seq.++ (|p#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1) (seq.unit 0)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1))))) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2@@1 ($Mutation_115609 (|l#$Mutation_115609| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@1) (|p#$Mutation_115609| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@1) _$t2)) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@1 ($Mutation_164778 (|l#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1) (|p#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1) ($1_DiemAccount_DiemAccount (|v#$Mutation_115609| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2@@1) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1)) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1))))))) (and (and (= $1_DiemAccount_DiemAccount_$memory@2@@1 ($Memory_160799 (|Store__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@1@@3) (|a#$Global| (|l#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@1)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@1@@3) (|a#$Global| (|l#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@1)) (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@1)))) (= $abort_code@7@@4 $abort_code@6@@6)) (and (= $1_DiemAccount_DiemAccount_$memory@3@@0 $1_DiemAccount_DiemAccount_$memory@2@@1) (= $abort_flag@6@@5 $abort_flag@5@@6)))) (and (=> (= (ControlFlow 0 248819) 250232) anon12_Then_correct) (=> (= (ControlFlow 0 248819) 249842) anon12_Else_correct)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@1  (=> (= $abort_code@7@@4 inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@1) (=> (and (= $1_DiemAccount_DiemAccount_$memory@3@@0 $1_DiemAccount_DiemAccount_$memory@1@@3) (= $abort_flag@6@@5 true)) (and (=> (= (ControlFlow 0 248615) 250232) anon12_Then_correct) (=> (= (ControlFlow 0 248615) 249842) anon12_Else_correct))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Else_correct@@1  (=> (and (and (not inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@1) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@1)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@1) (= (ControlFlow 0 248769) 248615))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@1)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Else_correct@@1  (=> (and (and (and (not $abort_flag@5@@6) (|$IsValid'u64'| 32)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@1 (= |inline$$1_Vector_length'u8'$0$l@1@@1| 32)) (|$IsValid'u64'| 8))) (and (and (|$IsValid'u64'| inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@1) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@1 7)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@1) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@1)))) (and (=> (= (ControlFlow 0 248753) 248819) inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Then_correct@@1) (=> (= (ControlFlow 0 248753) 248769) inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Else_correct@@1)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Then_correct@@1  (=> (and (and $abort_flag@5@@6 (= $abort_code@6@@6 $abort_code@6@@6)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@1 $abort_code@6@@6) (= (ControlFlow 0 248833) 248615))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@1)))
(let ((|inline$$1_Vector_length'u8'$0$anon0_correct@@1|  (=> (= |inline$$1_Vector_length'u8'$0$l@1@@1| (seq.len _$t2)) (and (=> (= (ControlFlow 0 248695) 248833) inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Then_correct@@1) (=> (= (ControlFlow 0 248695) 248753) inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Else_correct@@1)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct@@1  (=> (and (and (not $abort_flag@5@@6) (= |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@1| (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1))) (and (= |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@1| |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@1|) (= (ControlFlow 0 248701) 248695))) |inline$$1_Vector_length'u8'$0$anon0_correct@@1|)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct@@1  (=> (and (and $abort_flag@5@@6 (= $abort_code@6@@6 $abort_code@6@@6)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@1 $abort_code@6@@6) (= (ControlFlow 0 248847) 248615))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@1)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then$1_correct@@1  (=> (= $abort_flag@5@@6 true) (=> (and (= $abort_code@6@@6 $EXEC_FAILURE_CODE) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0@@1)) (and (=> (= (ControlFlow 0 248899) 248847) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct@@1) (=> (= (ControlFlow 0 248899) 248701) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@1@@3) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@1)) (= (ControlFlow 0 248897) 248899)) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then$1_correct@@1)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@1@@3) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@1) (=> (and (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1@@1 ($Mutation_164778 ($Global inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@1) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@1@@3) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@1))) (= $abort_flag@5@@6 $abort_flag@4@@6)) (and (= $abort_code@6@@6 $abort_code@5@@6) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1@@1))) (and (=> (= (ControlFlow 0 248645) 248847) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct@@1) (=> (= (ControlFlow 0 248645) 248701) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Then_correct@@1  (=> (and inline$$1_DiemAccount_exists_at$2$$t1@1@@1 (= inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@1 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@3))) (and (=> (= (ControlFlow 0 248623) 248897) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then_correct@@1) (=> (= (ControlFlow 0 248623) 248645) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Else_correct@@1)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Else_correct@@1  (=> (and (and (not inline$$1_DiemAccount_exists_at$2$$t1@1@@1) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@1)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@1) (= (ControlFlow 0 248609) 248615))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@1)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Else_correct@@1  (=> (and (not $abort_flag@4@@6) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@1) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@1 5)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@1) (= inline$$1_DiemAccount_exists_at$2$$t1@1@@1 inline$$1_DiemAccount_exists_at$2$$t1@1@@1))) (and (=> (= (ControlFlow 0 248593) 248623) inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Then_correct@@1) (=> (= (ControlFlow 0 248593) 248609) inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Then_correct@@1  (=> (and (and $abort_flag@4@@6 (= $abort_code@5@@6 $abort_code@5@@6)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@1 $abort_code@5@@6) (= (ControlFlow 0 248913) 248615))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@1)))
(let ((inline$$1_DiemAccount_exists_at$2$anon0_correct@@1  (=> (= inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@1) (=> (and (= inline$$1_DiemAccount_exists_at$2$$t1@1@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@1@@3) inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@1)) (= inline$$1_DiemAccount_exists_at$2$$t1@1@@1 inline$$1_DiemAccount_exists_at$2$$t1@1@@1)) (and (=> (= (ControlFlow 0 248551) 248913) inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Then_correct@@1) (=> (= (ControlFlow 0 248551) 248593) inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon0_correct@@1  (=> (= (seq.len (|p#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t6@0@@1)) 0) (=> (and (= (seq.len (|p#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0@@1)) 0) (= (seq.len (|p#$Mutation_115609| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@0@@1)) 0)) (=> (and (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@3) (= _$t2 _$t2)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@1 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@3)) (= (ControlFlow 0 248557) 248551))) inline$$1_DiemAccount_exists_at$2$anon0_correct@@1)))))
(let ((anon11_Else_correct  (=> (not $abort_flag@4@@6) (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@3) (= (ControlFlow 0 248917) 248557)) inline$$1_DiemAccount_rotate_authentication_key$0$anon0_correct@@1))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Else_correct@@3  (=> (not inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@3) (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@3 ($Mutation_164822 (|l#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@3) (|p#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@3) |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1@@3|)) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@3))) (=> (and (and (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@3)) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@3))) 1)) (and (|$IsValid'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@3) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@3 (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@3) 0)))) (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@3))) 0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@3 ($Mutation_164778 (|l#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@3) (|p#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@3) ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@3)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@3)) (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@3) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@3)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@3)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@3)))))) (and (= $1_DiemAccount_DiemAccount_$memory@0@@3 ($Memory_160799 (|Store__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@3)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@3)) (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@3)))) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@3))) (and (and (= $abort_flag@4@@6 $abort_flag@3@@6) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@3)) (and (= $abort_code@5@@6 $abort_code@4@@6) (= $1_DiemAccount_DiemAccount_$memory@1@@3 $1_DiemAccount_DiemAccount_$memory@0@@3)))) (and (=> (= (ControlFlow 0 247755) 250246) anon11_Then_correct) (=> (= (ControlFlow 0 247755) 248917) anon11_Else_correct))))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@3  (=> (and (and (= $abort_flag@4@@6 true) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@0@@3)) (and (= $abort_code@5@@6 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@3) (= $1_DiemAccount_DiemAccount_$memory@1@@3 $1_DiemAccount_DiemAccount_$memory))) (and (=> (= (ControlFlow 0 247432) 250246) anon11_Then_correct) (=> (= (ControlFlow 0 247432) 248917) anon11_Else_correct)))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Then_correct@@3  (=> inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@3 (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@3))) 0) (= 7 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@3)) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@3)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@3) (= (ControlFlow 0 247781) 247432))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@3))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@3  (=> (and (not $abort_flag@3@@6) (= |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@3| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@3))) (=> (and (and (= |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@3| |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@3|) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@3 ($Mutation_164822 (|l#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@3) (seq.++ (|p#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@3) (seq.unit 2)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@3))))) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@3 (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@3)) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@3 (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@3))) 0)))) (and (=> (= (ControlFlow 0 247663) 247781) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Then_correct@@3) (=> (= (ControlFlow 0 247663) 247755) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Else_correct@@3))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@3  (=> (and (and $abort_flag@3@@6 (= $abort_code@4@@6 $abort_code@4@@6)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@3 $abort_code@4@@6) (= (ControlFlow 0 247795) 247432))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@3)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then$1_correct@@3  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@3) (=> (and (= $abort_code@4@@6 $EXEC_FAILURE_CODE) (= $abort_flag@3@@6 true)) (and (=> (= (ControlFlow 0 247847) 247795) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@3) (=> (= (ControlFlow 0 247847) 247663) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@3))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then_correct@@3  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3)) (= (ControlFlow 0 247845) 247847)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then$1_correct@@3)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Else_correct@@3  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3) (=> (and (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@3 ($Mutation_164778 ($Global inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3))) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@3)) (and (= $abort_code@4@@6 $abort_code@3@@6) (= $abort_flag@3@@6 $abort_flag@2@@6))) (and (=> (= (ControlFlow 0 247617) 247795) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@3) (=> (= (ControlFlow 0 247617) 247663) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@3))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Then_correct@@3  (=> inline$$1_DiemAccount_exists_at$1$$t1@1@@3 (and (=> (= (ControlFlow 0 247595) 247845) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then_correct@@3) (=> (= (ControlFlow 0 247595) 247617) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Else_correct@@3)))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Else_correct@@3  (=> (and (and (not inline$$1_DiemAccount_exists_at$1$$t1@1@@3) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@3)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@3) (= (ControlFlow 0 247591) 247432))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@3)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Else_correct@@3  (=> (and (not $abort_flag@2@@6) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@3) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@3 5)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@3) (= inline$$1_DiemAccount_exists_at$1$$t1@1@@3 inline$$1_DiemAccount_exists_at$1$$t1@1@@3))) (and (=> (= (ControlFlow 0 247575) 247595) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Then_correct@@3) (=> (= (ControlFlow 0 247575) 247591) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Else_correct@@3))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Then_correct@@3  (=> (and (and $abort_flag@2@@6 (= $abort_code@3@@6 $abort_code@3@@6)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@3 $abort_code@3@@6) (= (ControlFlow 0 247861) 247432))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@3)))
(let ((inline$$1_DiemAccount_exists_at$1$anon0_correct@@3  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3) (=> (and (= inline$$1_DiemAccount_exists_at$1$$t1@1@@3 (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3)) (= inline$$1_DiemAccount_exists_at$1$$t1@1@@3 inline$$1_DiemAccount_exists_at$1$$t1@1@@3)) (and (=> (= (ControlFlow 0 247533) 247861) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Then_correct@@3) (=> (= (ControlFlow 0 247533) 247575) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Else_correct@@3))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Then_correct@@3  (=> (and inline$$Not$0$dst@1@@7 (= (ControlFlow 0 247539) 247533)) inline$$1_DiemAccount_exists_at$1$anon0_correct@@3)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Else_correct@@3  (=> (and (and (not inline$$Not$0$dst@1@@7) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@3)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@3) (= (ControlFlow 0 247426) 247432))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@3)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else$1_correct@@3  (=> (|$IsValid'u64'| 9) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@3) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@3 1)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@3) (= inline$$Not$0$dst@1@@7 inline$$Not$0$dst@1@@7))) (and (=> (= (ControlFlow 0 247410) 247539) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Then_correct@@3) (=> (= (ControlFlow 0 247410) 247426) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Else_correct@@3))))))
(let ((inline$$Not$0$anon0_correct@@7  (=> (and (= inline$$Not$0$dst@1@@7  (not inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@3)) (= (ControlFlow 0 247370) 247410)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else$1_correct@@3)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@3  (=> (and (not $abort_flag@2@@6) (= (ControlFlow 0 247376) 247370)) inline$$Not$0$anon0_correct@@7)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@3  (=> (and (and $abort_flag@2@@6 (= $abort_code@3@@6 $abort_code@3@@6)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@3 $abort_code@3@@6) (= (ControlFlow 0 247875) 247432))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@3)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@3  (=> (not $abort_flag@1@@7) (=> (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@3 (|$key_rotation_capability#$1_DiemAccount_DiemAccount| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@3)) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@3 (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@3)) 0))) (=> (and (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@3 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@3) (= $abort_flag@2@@6 $abort_flag@1@@7)) (and (= $abort_code@3@@6 $abort_code@2@@7) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@3 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@3))) (and (=> (= (ControlFlow 0 247246) 247875) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@3) (=> (= (ControlFlow 0 247246) 247376) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@3)))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@3  (=> (= $abort_flag@2@@6 true) (=> (and (= $abort_code@3@@6 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@3) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@3 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@0@@3)) (and (=> (= (ControlFlow 0 247194) 247875) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@3) (=> (= (ControlFlow 0 247194) 247376) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@3))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@3  (=> (and (and $abort_flag@1@@7 (= $abort_code@2@@7 $abort_code@2@@7)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@3 $abort_code@2@@7) (= (ControlFlow 0 247260) 247194))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@3)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then$1_correct@@3  (=> (= $abort_code@2@@7 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1@@7 true) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@3 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@0@@3)) (and (=> (= (ControlFlow 0 247312) 247260) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@3) (=> (= (ControlFlow 0 247312) 247246) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@3))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then_correct@@3  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3)) (= (ControlFlow 0 247310) 247312)) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then$1_correct@@3)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Else_correct@@3  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3) (=> (and (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@3 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3)) (= $abort_code@2@@7 $abort_code@1@@7)) (and (= $abort_flag@1@@7 $abort_flag@0@@7) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@3 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@3))) (and (=> (= (ControlFlow 0 247212) 247260) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@3) (=> (= (ControlFlow 0 247212) 247246) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@3))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Then_correct@@3  (=> inline$$1_DiemAccount_exists_at$0$$t1@1@@6 (and (=> (= (ControlFlow 0 247198) 247310) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then_correct@@3) (=> (= (ControlFlow 0 247198) 247212) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Else_correct@@3)))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Else_correct@@3  (=> (and (and (not inline$$1_DiemAccount_exists_at$0$$t1@1@@6) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@3 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@3)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@3 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@3) (= (ControlFlow 0 247188) 247194))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@3)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Else_correct@@3  (=> (and (not $abort_flag@0@@7) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@3) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@3 5)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@3 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@3) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@6 inline$$1_DiemAccount_exists_at$0$$t1@1@@6))) (and (=> (= (ControlFlow 0 247172) 247198) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Then_correct@@3) (=> (= (ControlFlow 0 247172) 247188) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Else_correct@@3))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Then_correct@@3  (=> (and (and $abort_flag@0@@7 (= $abort_code@1@@7 $abort_code@1@@7)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@3 $abort_code@1@@7) (= (ControlFlow 0 247326) 247194))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@3)))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct@@6  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1@@6 (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3)) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@6 inline$$1_DiemAccount_exists_at$0$$t1@1@@6)) (and (=> (= (ControlFlow 0 247130) 247326) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Then_correct@@3) (=> (= (ControlFlow 0 247130) 247172) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Else_correct@@3))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon0_correct@@3  (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3) (= (ControlFlow 0 247136) 247130)) inline$$1_DiemAccount_exists_at$0$anon0_correct@@6)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon0_correct@@3  (=> (= (seq.len (|p#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t5@0@@3)) 0) (=> (and (and (and (= (seq.len (|p#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@3)) 0) (= (seq.len (|p#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@0@@3)) 0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t7@0@@3 (|$addr#$signer| _$t0@@7)) (= _$t0@@7 _$t0@@7))) (and (and (|$IsValid'address'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3 (|$addr#$signer| _$t0@@7))) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3) (= (ControlFlow 0 247332) 247136)))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon0_correct@@3))))
(let ((anon10_Else_correct@@0  (=> (not $abort_flag@0@@7) (=> (and (= $t8@@0 (|$addr#$signer| _$t0@@7)) (= (ControlFlow 0 247881) 247332)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon0_correct@@3))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct  (=> (and (= $abort_flag@0@@7 true) (= $abort_code@1@@7 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1)) (and (=> (= (ControlFlow 0 245979) 250260) anon10_Then_correct@@0) (=> (= (ControlFlow 0 245979) 247881) anon10_Else_correct@@0)))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Else_correct  (=> (and (and (not inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0) (= (ControlFlow 0 245973) 245979))) inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct)))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Then_correct  (=> inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_129589| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@7))) (= 5 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0)) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0) (= (ControlFlow 0 246029) 245979))) inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Then_correct  (=> inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1 (=> (and (= $abort_flag@0@@7 false) (= $abort_code@1@@7 $abort_code@0@@7)) (and (=> (= (ControlFlow 0 245985) 250260) anon10_Then_correct@@0) (=> (= (ControlFlow 0 245985) 247881) anon10_Else_correct@@0))))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct  (=> (|$IsValid'u64'| inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0) (=> (and (and (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0 ($1_SlidingNonce_spec_try_record_nonce _$t0@@7 _$t1@@2)) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0)) (and (|$IsValid'u64'| 0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1 (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0 0)))) (and (and (|$IsValid'u64'| inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0 7)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1)))) (and (=> (= (ControlFlow 0 245957) 245985) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Then_correct) (=> (= (ControlFlow 0 245957) 245973) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Else_correct))))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Else_correct  (=> (not |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1|) (=> (and (= $1_SlidingNonce_SlidingNonce_$memory@1 ($Memory_129589 (|Store__T@[Int]Bool_| (|domain#$Memory_129589| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@7) false) (|contents#$Memory_129589| $1_SlidingNonce_SlidingNonce_$memory))) (= (ControlFlow 0 245899) 245957)) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Then_correct  (=> |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1| (=> (and (= $1_SlidingNonce_SlidingNonce_$memory@0 ($Memory_129589 (|Store__T@[Int]Bool_| (|domain#$Memory_129589| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@7) true) (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_129589| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@7) |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'$1_SlidingNonce_SlidingNonce'@1|))) (= (ControlFlow 0 245999) 245957)) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Else_correct  (=> (not inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0) (and (=> (= (ControlFlow 0 245885) 245999) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Then_correct) (=> (= (ControlFlow 0 245885) 245899) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Else_correct)))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon0_correct  (=> (= _$t0@@7 _$t0@@7) (=> (and (= _$t1@@2 _$t1@@2) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_129589| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@7))))) (and (=> (= (ControlFlow 0 245879) 246029) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Then_correct) (=> (= (ControlFlow 0 245879) 245885) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Else_correct))))))
(let ((anon0$1_correct@@7  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126448| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_129589| $1_SlidingNonce_SlidingNonce_$memory) 173345816)) (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126448| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_129589| $1_SlidingNonce_SlidingNonce_$memory) 186537453)) (forall ((addr@@225 Int) ) (!  (=> (|$IsValid'address'| addr@@225) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@225) (or (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@225)))) 0) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@225)))) 0)) (= addr@@225 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@225))) 0)))))))
 :qid |AccountAdministrationScriptsseqArraybpl.18093:20|
 :skolemid |413|
))) (=> (and (and (forall ((addr@@226 Int) ) (!  (=> (|$IsValid'address'| addr@@226) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@226) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@226) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@226)))) 0)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@226)))) 0)) (= addr@@226 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@226))) 0)))))))
 :qid |AccountAdministrationScriptsseqArraybpl.18097:20|
 :skolemid |414|
)) (forall ((addr@@227 Int) ) (!  (=> (|$IsValid'address'| addr@@227) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@227) (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@227)))
 :qid |AccountAdministrationScriptsseqArraybpl.18101:20|
 :skolemid |415|
))) (and (forall ((addr@@228 Int) ) (!  (=> (|$IsValid'address'| addr@@228) (=> (and (= addr@@228 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@228)) (|Select__T@[Int]Bool_| (|domain#$Memory_161752| $1_DiemAccount_AccountOperationsCapability_$memory) addr@@228)))
 :qid |AccountAdministrationScriptsseqArraybpl.18105:20|
 :skolemid |416|
)) (forall ((addr@@229 Int) ) (!  (=> (|$IsValid'address'| addr@@229) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@229) (|Select__T@[Int]Bool_| (|domain#$Memory_159816| $1_AccountFreezing_FreezingBit_$memory) addr@@229)))
 :qid |AccountAdministrationScriptsseqArraybpl.18109:20|
 :skolemid |417|
)))) (=> (and (and (and (and (and (forall ((addr@@230 Int) ) (!  (=> (|$IsValid'address'| addr@@230) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161887| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@230) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@230)))
 :qid |AccountAdministrationScriptsseqArraybpl.18113:22|
 :skolemid |418|
)) (forall ((addr@@231 Int) ) (!  (=> (|$IsValid'address'| addr@@231) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161978| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@231) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@231)))
 :qid |AccountAdministrationScriptsseqArraybpl.18113:218|
 :skolemid |419|
))) (forall ((addr@@232 Int) ) (!  (=> (|$IsValid'address'| addr@@232) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_162069| |$1_DiemAccount_Balance'#0'_$memory|) addr@@232) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@232)))
 :qid |AccountAdministrationScriptsseqArraybpl.18113:415|
 :skolemid |420|
))) (|$IsValid'address'| (|$addr#$signer| _$t0@@7))) (and (and (|$IsValid'u64'| _$t1@@2) (|$IsValid'vec'u8''| _$t2)) (and (forall (($a_0@@24 Int) ) (! (let (($rsc@@24 (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_129589| $1_SlidingNonce_SlidingNonce_$memory) $a_0@@24)))
(|$IsValid'$1_SlidingNonce_SlidingNonce'| $rsc@@24))
 :qid |AccountAdministrationScriptsseqArraybpl.18125:20|
 :skolemid |421|
 :pattern ( (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_129589| $1_SlidingNonce_SlidingNonce_$memory) $a_0@@24))
)) (forall (($a_0@@25 Int) ) (! (let (($rsc@@25 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $a_0@@25)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@25) (and (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@25))) 1) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@25))) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.18129:20|
 :skolemid |422|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $a_0@@25))
))))) (and (and (and (= $t4@@4 (|$addr#$signer| _$t0@@7)) (= $t5@@3 (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t4@@4))) 0))) (and (= $t6@@2 (|$addr#$signer| _$t0@@7)) (let ((addr@@233 (|$addr#$signer| _$t0@@7)))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_126448| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@233)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_159816| $1_AccountFreezing_FreezingBit_$memory) addr@@233) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_159816| $1_AccountFreezing_FreezingBit_$memory) addr@@233)))))))) (and (and (= _$t0@@7 _$t0@@7) (= _$t1@@2 _$t1@@2)) (and (= _$t2 _$t2) (= (ControlFlow 0 246033) 245879))))) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon0_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@7  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@9 T@$1_Event_EventHandle) ) (! (let ((stream@@8 (|Select__T@[$1_Event_EventHandle]Multiset_89088_| (|streams#$EventStore| $es) handle@@9)))
 (and (= (|l#Multiset_89088| stream@@8) 0) (forall ((v@@55 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_89088| stream@@8) v@@55) 0)
 :qid |AccountAdministrationScriptsseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |AccountAdministrationScriptsseqArraybpl.3268:13|
 :skolemid |89|
))) (= (ControlFlow 0 245135) 246033)) anon0$1_correct@@7)))
(let ((anon0_correct@@7  (=> (= (ControlFlow 0 343228) 245135) inline$$InitEventStore$0$anon0_correct@@7)))
anon0_correct@@7)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@8 () T@$signer)
(declare-fun _$t2@@0 () Int)
(declare-fun $t7@@0 () Int)
(declare-fun _$t1@@3 () T@$signer)
(declare-fun $t6@@3 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun _$t3 () (Seq Int))
(declare-fun $t8@0@@1 () Int)
(declare-fun $abort_flag@8@@4 () Bool)
(declare-fun $abort_code@9@@4 () Int)
(declare-fun $abort_flag@6@@6 () Bool)
(declare-fun $abort_code@7@@5 () Int)
(declare-fun $abort_flag@4@@7 () Bool)
(declare-fun $abort_code@5@@7 () Int)
(declare-fun $abort_flag@0@@8 () Bool)
(declare-fun $abort_code@1@@8 () Int)
(declare-fun $1_DiemAccount_DiemAccount_$memory@5@@1 () T@$Memory_160799)
(declare-fun $t5@@4 () Int)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t12@0@@1 () Bool)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2@@1 () T@$Mutation_164822)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1@@1 () T@$Mutation_164822)
(declare-fun |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1@@1| () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@4 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@3@@1 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@1 () T@$Mutation_164778)
(declare-fun $1_DiemAccount_DiemAccount_$memory@4@@1 () T@$Memory_160799)
(declare-fun $1_DiemAccount_DiemAccount_$memory@3@@1 () T@$Memory_160799)
(declare-fun $abort_code@8@@5 () Int)
(declare-fun $abort_flag@7@@5 () Bool)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1@@1 () Int)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@0@@1 () Int)
(declare-fun |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@1| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@0@@1 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1@@1 () Int)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@1@@1 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_exists_at$3$$t1@1@@1 () Bool)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0@@1 () Int)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t4@1@@1 () Int)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t3@0@@1 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@0@@1 () T@$Mutation_164822)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@2 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@2 () T@$Mutation_115609)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@2 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2@@2 () T@$Mutation_115609)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@2 () T@$Mutation_164778)
(declare-fun $1_DiemAccount_DiemAccount_$memory@2@@2 () T@$Memory_160799)
(declare-fun $1_DiemAccount_DiemAccount_$memory@1@@4 () T@$Memory_160799)
(declare-fun $abort_code@6@@7 () Int)
(declare-fun $abort_flag@5@@7 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@2 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@2 () Int)
(declare-fun |inline$$1_Vector_length'u8'$0$l@1@@2| () Int)
(declare-fun |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@2| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0@@2 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@2 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1@@2 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_exists_at$2$$t1@1@@2 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@2 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@2 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t6@0@@2 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@0@@2 () T@$Mutation_115609)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@4 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@4 () T@$Mutation_164822)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@4 () T@$Mutation_164822)
(declare-fun |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1@@4| () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@4 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@4 () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@4 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@4 () T@$Mutation_164778)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0@@4 () T@$Memory_160799)
(declare-fun $abort_flag@3@@7 () Bool)
(declare-fun $abort_code@4@@7 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@0@@4 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@4 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@4 () Int)
(declare-fun |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@4| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@4 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@4 () T@$Mutation_164778)
(declare-fun $abort_code@3@@7 () Int)
(declare-fun $abort_flag@2@@7 () Bool)
(declare-fun inline$$1_DiemAccount_exists_at$1$$t1@1@@4 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@4 () Int)
(declare-fun inline$$Not$0$dst@1@@8 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@4 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@4 () Bool)
(declare-fun $abort_flag@1@@8 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@4 () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@4 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@4 () Bool)
(declare-fun $abort_code@2@@8 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@4 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@0@@4 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@0@@4 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@4 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_exists_at$0$$t1@1@@7 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@4 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t5@0@@4 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@0@@4 () T@$Mutation_164822)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t7@0@@4 () Int)
(declare-fun $t9@@1 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1@@0 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1@@0 () Bool)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@0 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0@@0 () Bool)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0@@0 () Int)
(declare-fun $abort_code@0@@8 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0@@0 () Int)
(declare-fun |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1@@0| () Bool)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@1@@0 () T@$Memory_129589)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@0@@0 () T@$Memory_129589)
(declare-fun |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'$1_SlidingNonce_SlidingNonce'@1@@0| () T@$1_SlidingNonce_SlidingNonce)
(push 1)
(set-info :boogie-vc-id $1_AccountAdministrationScripts_rotate_authentication_key_with_nonce_admin$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 346488) (let ((L2_correct@@3  (and (=> (= (ControlFlow 0 255766) (- 0 349549)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_129589| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@8))) (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@8 _$t2@@0) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t7@@0))) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t1@@3))))) 0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| $t6@@3)))) (not (= (seq.len _$t3) 32))) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t1@@3))))) 0))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_129589| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@8))) (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@8 _$t2@@0) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t7@@0))) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t1@@3))))) 0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| $t6@@3)))) (not (= (seq.len _$t3) 32))) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t1@@3))))) 0)) (=> (= (ControlFlow 0 255766) (- 0 349616)) (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_129589| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@8))) (= 5 $t8@0@@1)) (and (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@8 _$t2@@0) 0)) (= 7 $t8@0@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t7@@0)) (= 5 $t8@0@@1))) (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t1@@3))))) 0) (= 1 $t8@0@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| $t6@@3))) (= 5 $t8@0@@1))) (and (not (= (seq.len _$t3) 32)) (= 7 $t8@0@@1))) (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t1@@3))))) 0) (= 1 $t8@0@@1))) (= 7 $t8@0@@1)) (= 1 $t8@0@@1)) (= 5 $t8@0@@1)))))))
(let ((anon13_Then_correct@@0  (=> (and (and $abort_flag@8@@4 (= $abort_code@9@@4 $abort_code@9@@4)) (and (= $t8@0@@1 $abort_code@9@@4) (= (ControlFlow 0 255522) 255766))) L2_correct@@3)))
(let ((anon12_Then_correct@@0  (=> (and (and $abort_flag@6@@6 (= $abort_code@7@@5 $abort_code@7@@5)) (and (= $t8@0@@1 $abort_code@7@@5) (= (ControlFlow 0 255780) 255766))) L2_correct@@3)))
(let ((anon11_Then_correct@@0  (=> (and (and $abort_flag@4@@7 (= $abort_code@5@@7 $abort_code@5@@7)) (and (= $t8@0@@1 $abort_code@5@@7) (= (ControlFlow 0 255794) 255766))) L2_correct@@3)))
(let ((anon10_Then_correct@@1  (=> (and (and $abort_flag@0@@8 (= $abort_code@1@@8 $abort_code@1@@8)) (and (= $t8@0@@1 $abort_code@1@@8) (= (ControlFlow 0 255808) 255766))) L2_correct@@3)))
(let ((anon13_Else_correct@@0  (=> (not $abort_flag@8@@4) (and (=> (= (ControlFlow 0 255508) (- 0 349431)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_129589| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@8))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_129589| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@8)))) (and (=> (= (ControlFlow 0 255508) (- 0 349444)) (not (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@8 _$t2@@0) 0)))) (=> (not (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@8 _$t2@@0) 0))) (and (=> (= (ControlFlow 0 255508) (- 0 349459)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t7@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t7@@0))) (and (=> (= (ControlFlow 0 255508) (- 0 349471)) (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t1@@3))))) 0))) (=> (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t1@@3))))) 0)) (and (=> (= (ControlFlow 0 255508) (- 0 349482)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| $t6@@3))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| $t6@@3)))) (and (=> (= (ControlFlow 0 255508) (- 0 349496)) (not (not (= (seq.len _$t3) 32)))) (=> (not (not (= (seq.len _$t3) 32))) (and (=> (= (ControlFlow 0 255508) (- 0 349510)) (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t1@@3))))) 0))) (=> (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t1@@3))))) 0)) (=> (= (ControlFlow 0 255508) (- 0 349521)) (= (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@5@@1) $t5@@4)) _$t3)))))))))))))))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon18_Else_correct@@1  (=> (not inline$$1_DiemAccount_restore_key_rotation_capability$0$$t12@0@@1) (=> (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2@@1 ($Mutation_164822 (|l#$Mutation_164822| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1@@1) (|p#$Mutation_164822| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1@@1) |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1@@1|)) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_164822| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2@@1))) (=> (and (and (and (and (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_164822| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2@@1)) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2@@1))) 1)) (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2@@1))) 0))) (and (= (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2@@1)) 0) inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@4) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@3@@1 ($Mutation_164778 (|l#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@1) (|p#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@1) ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@1)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@1)) (|v#$Mutation_164822| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2@@1) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@1)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@1)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@1))))))) (and (and (= $1_DiemAccount_DiemAccount_$memory@4@@1 ($Memory_160799 (|Store__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@3@@1) (|a#$Global| (|l#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@3@@1)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@3@@1) (|a#$Global| (|l#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@3@@1)) (|v#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@3@@1)))) (= $1_DiemAccount_DiemAccount_$memory@5@@1 $1_DiemAccount_DiemAccount_$memory@4@@1)) (and (= $abort_code@9@@4 $abort_code@8@@5) (= $abort_flag@8@@4 $abort_flag@7@@5)))) (and (=> (= (ControlFlow 0 255280) 255522) anon13_Then_correct@@0) (=> (= (ControlFlow 0 255280) 255508) anon13_Else_correct@@0)))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$L3_correct@@1  (=> (= $1_DiemAccount_DiemAccount_$memory@5@@1 $1_DiemAccount_DiemAccount_$memory@3@@1) (=> (and (= $abort_code@9@@4 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1@@1) (= $abort_flag@8@@4 true)) (and (=> (= (ControlFlow 0 255126) 255522) anon13_Then_correct@@0) (=> (= (ControlFlow 0 255126) 255508) anon13_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon18_Then_correct@@1  (=> inline$$1_DiemAccount_restore_key_rotation_capability$0$$t12@0@@1 (=> (and (and (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1@@1))) 0)) (= 7 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@0@@1)) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@0@@1 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@0@@1)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1@@1 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@0@@1) (= (ControlFlow 0 255306) 255126))) inline$$1_DiemAccount_restore_key_rotation_capability$0$L3_correct@@1))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Else_correct@@1  (=> (not $abort_flag@7@@5) (=> (and (and (= |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@1| (|v#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@1)) (= |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@1| |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@1|)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1@@1 ($Mutation_164822 (|l#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@1) (seq.++ (|p#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@1) (seq.unit 2)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@1)))) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t12@0@@1  (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1@@1))) 0))))) (and (=> (= (ControlFlow 0 255198) 255306) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon18_Then_correct@@1) (=> (= (ControlFlow 0 255198) 255280) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon18_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Then_correct@@1  (=> (and (and $abort_flag@7@@5 (= $abort_code@8@@5 $abort_code@8@@5)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1@@1 $abort_code@8@@5) (= (ControlFlow 0 255320) 255126))) inline$$1_DiemAccount_restore_key_rotation_capability$0$L3_correct@@1)))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Then$1_correct@@1  (=> (= $abort_flag@7@@5 true) (=> (and (= $abort_code@8@@5 $EXEC_FAILURE_CODE) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@1 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@0@@1)) (and (=> (= (ControlFlow 0 255372) 255320) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Then_correct@@1) (=> (= (ControlFlow 0 255372) 255198) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@3@@1) inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1@@1)) (= (ControlFlow 0 255370) 255372)) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Then$1_correct@@1)))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@3@@1) inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1@@1) (=> (and (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@1@@1 ($Mutation_164778 ($Global inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1@@1) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@3@@1) inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1@@1))) (= $abort_flag@7@@5 $abort_flag@6@@6)) (and (= $abort_code@8@@5 $abort_code@7@@5) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@1 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@1@@1))) (and (=> (= (ControlFlow 0 255156) 255320) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Then_correct@@1) (=> (= (ControlFlow 0 255156) 255198) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon15_Then_correct@@1  (=> (and inline$$1_DiemAccount_exists_at$3$$t1@1@@1 (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1@@1 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@4))) (and (=> (= (ControlFlow 0 255134) 255370) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Then_correct@@1) (=> (= (ControlFlow 0 255134) 255156) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Else_correct@@1)))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon15_Else_correct@@1  (=> (and (and (not inline$$1_DiemAccount_exists_at$3$$t1@1@@1) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0@@1 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0@@1)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1@@1 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0@@1) (= (ControlFlow 0 255120) 255126))) inline$$1_DiemAccount_restore_key_rotation_capability$0$L3_correct@@1)))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon14_Else_correct@@1  (=> (and (not $abort_flag@6@@6) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0@@1) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0@@1 5)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0@@1 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0@@1) (= inline$$1_DiemAccount_exists_at$3$$t1@1@@1 inline$$1_DiemAccount_exists_at$3$$t1@1@@1))) (and (=> (= (ControlFlow 0 255104) 255134) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon15_Then_correct@@1) (=> (= (ControlFlow 0 255104) 255120) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon15_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon14_Then_correct@@1  (=> (and (and $abort_flag@6@@6 (= $abort_code@7@@5 $abort_code@7@@5)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1@@1 $abort_code@7@@5) (= (ControlFlow 0 255386) 255126))) inline$$1_DiemAccount_restore_key_rotation_capability$0$L3_correct@@1)))
(let ((inline$$1_DiemAccount_exists_at$3$anon0_correct@@1  (=> (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t4@1@@1 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t4@1@@1) (=> (and (= inline$$1_DiemAccount_exists_at$3$$t1@1@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@3@@1) inline$$1_DiemAccount_restore_key_rotation_capability$0$$t4@1@@1)) (= inline$$1_DiemAccount_exists_at$3$$t1@1@@1 inline$$1_DiemAccount_exists_at$3$$t1@1@@1)) (and (=> (= (ControlFlow 0 255062) 255386) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon14_Then_correct@@1) (=> (= (ControlFlow 0 255062) 255104) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon14_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon0_correct@@1  (=> (and (= (seq.len (|p#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t3@0@@1)) 0) (= (seq.len (|p#$Mutation_164778| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@0@@1)) 0)) (=> (and (and (= (seq.len (|p#$Mutation_164822| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@0@@1)) 0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@4)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t4@1@@1 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@4)) (= (ControlFlow 0 255068) 255062))) inline$$1_DiemAccount_exists_at$3$anon0_correct@@1))))
(let ((anon12_Else_correct@@0  (=> (and (not $abort_flag@6@@6) (= (ControlFlow 0 255390) 255068)) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon0_correct@@1)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Then_correct@@2  (=> (and (and (and inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@2 (= inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@2 ($Mutation_115609 (|l#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@2) (seq.++ (|p#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@2) (seq.unit 0)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@2))))) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2@@2 ($Mutation_115609 (|l#$Mutation_115609| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@2) (|p#$Mutation_115609| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@2) _$t3)) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@2 ($Mutation_164778 (|l#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@2) (|p#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@2) ($1_DiemAccount_DiemAccount (|v#$Mutation_115609| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2@@2) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@2)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@2)) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@2)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@2)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@2))))))) (and (and (= $1_DiemAccount_DiemAccount_$memory@2@@2 ($Memory_160799 (|Store__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@1@@4) (|a#$Global| (|l#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@2)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@1@@4) (|a#$Global| (|l#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@2)) (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@2)))) (= $abort_code@7@@5 $abort_code@6@@7)) (and (= $1_DiemAccount_DiemAccount_$memory@3@@1 $1_DiemAccount_DiemAccount_$memory@2@@2) (= $abort_flag@6@@6 $abort_flag@5@@7)))) (and (=> (= (ControlFlow 0 254367) 255780) anon12_Then_correct@@0) (=> (= (ControlFlow 0 254367) 255390) anon12_Else_correct@@0)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@2  (=> (= $abort_code@7@@5 inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@2) (=> (and (= $1_DiemAccount_DiemAccount_$memory@3@@1 $1_DiemAccount_DiemAccount_$memory@1@@4) (= $abort_flag@6@@6 true)) (and (=> (= (ControlFlow 0 254163) 255780) anon12_Then_correct@@0) (=> (= (ControlFlow 0 254163) 255390) anon12_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Else_correct@@2  (=> (and (and (not inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@2) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@2 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@2)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@2 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@2) (= (ControlFlow 0 254317) 254163))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@2)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Else_correct@@2  (=> (and (and (and (not $abort_flag@5@@7) (|$IsValid'u64'| 32)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@2 (= |inline$$1_Vector_length'u8'$0$l@1@@2| 32)) (|$IsValid'u64'| 8))) (and (and (|$IsValid'u64'| inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@2) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@2 7)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@2 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@2) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@2 inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@2)))) (and (=> (= (ControlFlow 0 254301) 254367) inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Then_correct@@2) (=> (= (ControlFlow 0 254301) 254317) inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Else_correct@@2)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Then_correct@@2  (=> (and (and $abort_flag@5@@7 (= $abort_code@6@@7 $abort_code@6@@7)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@2 $abort_code@6@@7) (= (ControlFlow 0 254381) 254163))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@2)))
(let ((|inline$$1_Vector_length'u8'$0$anon0_correct@@2|  (=> (= |inline$$1_Vector_length'u8'$0$l@1@@2| (seq.len _$t3)) (and (=> (= (ControlFlow 0 254243) 254381) inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Then_correct@@2) (=> (= (ControlFlow 0 254243) 254301) inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Else_correct@@2)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct@@2  (=> (and (and (not $abort_flag@5@@7) (= |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@2| (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@2))) (and (= |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@2| |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@2|) (= (ControlFlow 0 254249) 254243))) |inline$$1_Vector_length'u8'$0$anon0_correct@@2|)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct@@2  (=> (and (and $abort_flag@5@@7 (= $abort_code@6@@7 $abort_code@6@@7)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@2 $abort_code@6@@7) (= (ControlFlow 0 254395) 254163))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@2)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then$1_correct@@2  (=> (= $abort_flag@5@@7 true) (=> (and (= $abort_code@6@@7 $EXEC_FAILURE_CODE) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@2 inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0@@2)) (and (=> (= (ControlFlow 0 254447) 254395) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct@@2) (=> (= (ControlFlow 0 254447) 254249) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct@@2))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then_correct@@2  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@1@@4) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@2)) (= (ControlFlow 0 254445) 254447)) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then$1_correct@@2)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Else_correct@@2  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@1@@4) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@2) (=> (and (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1@@2 ($Mutation_164778 ($Global inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@2) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@1@@4) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@2))) (= $abort_flag@5@@7 $abort_flag@4@@7)) (and (= $abort_code@6@@7 $abort_code@5@@7) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@2 inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1@@2))) (and (=> (= (ControlFlow 0 254193) 254395) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct@@2) (=> (= (ControlFlow 0 254193) 254249) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct@@2))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Then_correct@@2  (=> (and inline$$1_DiemAccount_exists_at$2$$t1@1@@2 (= inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@2 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@4))) (and (=> (= (ControlFlow 0 254171) 254445) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then_correct@@2) (=> (= (ControlFlow 0 254171) 254193) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Else_correct@@2)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Else_correct@@2  (=> (and (and (not inline$$1_DiemAccount_exists_at$2$$t1@1@@2) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@2 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@2)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@2 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@2) (= (ControlFlow 0 254157) 254163))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@2)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Else_correct@@2  (=> (and (not $abort_flag@4@@7) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@2) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@2 5)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@2 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@2) (= inline$$1_DiemAccount_exists_at$2$$t1@1@@2 inline$$1_DiemAccount_exists_at$2$$t1@1@@2))) (and (=> (= (ControlFlow 0 254141) 254171) inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Then_correct@@2) (=> (= (ControlFlow 0 254141) 254157) inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Else_correct@@2))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Then_correct@@2  (=> (and (and $abort_flag@4@@7 (= $abort_code@5@@7 $abort_code@5@@7)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@2 $abort_code@5@@7) (= (ControlFlow 0 254461) 254163))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@2)))
(let ((inline$$1_DiemAccount_exists_at$2$anon0_correct@@2  (=> (= inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@2 inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@2) (=> (and (= inline$$1_DiemAccount_exists_at$2$$t1@1@@2 (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@1@@4) inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@2)) (= inline$$1_DiemAccount_exists_at$2$$t1@1@@2 inline$$1_DiemAccount_exists_at$2$$t1@1@@2)) (and (=> (= (ControlFlow 0 254099) 254461) inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Then_correct@@2) (=> (= (ControlFlow 0 254099) 254141) inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Else_correct@@2))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon0_correct@@2  (=> (= (seq.len (|p#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t6@0@@2)) 0) (=> (and (= (seq.len (|p#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0@@2)) 0) (= (seq.len (|p#$Mutation_115609| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@0@@2)) 0)) (=> (and (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@4) (= _$t3 _$t3)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@2 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@4)) (= (ControlFlow 0 254105) 254099))) inline$$1_DiemAccount_exists_at$2$anon0_correct@@2)))))
(let ((anon11_Else_correct@@0  (=> (not $abort_flag@4@@7) (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@4) (= (ControlFlow 0 254465) 254105)) inline$$1_DiemAccount_rotate_authentication_key$0$anon0_correct@@2))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Else_correct@@4  (=> (not inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@4) (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@4 ($Mutation_164822 (|l#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@4) (|p#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@4) |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1@@4|)) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@4))) (=> (and (and (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@4)) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@4))) 1)) (and (|$IsValid'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@4) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@4 (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@4) 0)))) (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@4))) 0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@4 ($Mutation_164778 (|l#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@4) (|p#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@4) ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@4)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@4)) (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@4) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@4)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@4)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@4)))))) (and (= $1_DiemAccount_DiemAccount_$memory@0@@4 ($Memory_160799 (|Store__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@4)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@4)) (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@4)))) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@4))) (and (and (= $abort_flag@4@@7 $abort_flag@3@@7) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@4)) (and (= $abort_code@5@@7 $abort_code@4@@7) (= $1_DiemAccount_DiemAccount_$memory@1@@4 $1_DiemAccount_DiemAccount_$memory@0@@4)))) (and (=> (= (ControlFlow 0 253303) 255794) anon11_Then_correct@@0) (=> (= (ControlFlow 0 253303) 254465) anon11_Else_correct@@0))))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@4  (=> (and (and (= $abort_flag@4@@7 true) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@0@@4)) (and (= $abort_code@5@@7 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@4) (= $1_DiemAccount_DiemAccount_$memory@1@@4 $1_DiemAccount_DiemAccount_$memory))) (and (=> (= (ControlFlow 0 252980) 255794) anon11_Then_correct@@0) (=> (= (ControlFlow 0 252980) 254465) anon11_Else_correct@@0)))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Then_correct@@4  (=> inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@4 (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@4))) 0) (= 7 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@4)) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@4)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@4) (= (ControlFlow 0 253329) 252980))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@4))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@4  (=> (and (not $abort_flag@3@@7) (= |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@4| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@4))) (=> (and (and (= |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@4| |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@4|) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@4 ($Mutation_164822 (|l#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@4) (seq.++ (|p#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@4) (seq.unit 2)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@4))))) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@4 (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@4)) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@4 (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@4))) 0)))) (and (=> (= (ControlFlow 0 253211) 253329) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Then_correct@@4) (=> (= (ControlFlow 0 253211) 253303) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Else_correct@@4))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@4  (=> (and (and $abort_flag@3@@7 (= $abort_code@4@@7 $abort_code@4@@7)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@4 $abort_code@4@@7) (= (ControlFlow 0 253343) 252980))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@4)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then$1_correct@@4  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@4) (=> (and (= $abort_code@4@@7 $EXEC_FAILURE_CODE) (= $abort_flag@3@@7 true)) (and (=> (= (ControlFlow 0 253395) 253343) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@4) (=> (= (ControlFlow 0 253395) 253211) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@4))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then_correct@@4  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4)) (= (ControlFlow 0 253393) 253395)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then$1_correct@@4)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Else_correct@@4  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4) (=> (and (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@4 ($Mutation_164778 ($Global inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4))) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@4)) (and (= $abort_code@4@@7 $abort_code@3@@7) (= $abort_flag@3@@7 $abort_flag@2@@7))) (and (=> (= (ControlFlow 0 253165) 253343) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@4) (=> (= (ControlFlow 0 253165) 253211) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@4))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Then_correct@@4  (=> inline$$1_DiemAccount_exists_at$1$$t1@1@@4 (and (=> (= (ControlFlow 0 253143) 253393) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then_correct@@4) (=> (= (ControlFlow 0 253143) 253165) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Else_correct@@4)))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Else_correct@@4  (=> (and (and (not inline$$1_DiemAccount_exists_at$1$$t1@1@@4) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@4)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@4) (= (ControlFlow 0 253139) 252980))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@4)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Else_correct@@4  (=> (and (not $abort_flag@2@@7) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@4) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@4 5)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@4) (= inline$$1_DiemAccount_exists_at$1$$t1@1@@4 inline$$1_DiemAccount_exists_at$1$$t1@1@@4))) (and (=> (= (ControlFlow 0 253123) 253143) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Then_correct@@4) (=> (= (ControlFlow 0 253123) 253139) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Else_correct@@4))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Then_correct@@4  (=> (and (and $abort_flag@2@@7 (= $abort_code@3@@7 $abort_code@3@@7)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@4 $abort_code@3@@7) (= (ControlFlow 0 253409) 252980))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@4)))
(let ((inline$$1_DiemAccount_exists_at$1$anon0_correct@@4  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4) (=> (and (= inline$$1_DiemAccount_exists_at$1$$t1@1@@4 (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4)) (= inline$$1_DiemAccount_exists_at$1$$t1@1@@4 inline$$1_DiemAccount_exists_at$1$$t1@1@@4)) (and (=> (= (ControlFlow 0 253081) 253409) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Then_correct@@4) (=> (= (ControlFlow 0 253081) 253123) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Else_correct@@4))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Then_correct@@4  (=> (and inline$$Not$0$dst@1@@8 (= (ControlFlow 0 253087) 253081)) inline$$1_DiemAccount_exists_at$1$anon0_correct@@4)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Else_correct@@4  (=> (and (and (not inline$$Not$0$dst@1@@8) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@4)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@4) (= (ControlFlow 0 252974) 252980))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@4)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else$1_correct@@4  (=> (|$IsValid'u64'| 9) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@4) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@4 1)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@4) (= inline$$Not$0$dst@1@@8 inline$$Not$0$dst@1@@8))) (and (=> (= (ControlFlow 0 252958) 253087) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Then_correct@@4) (=> (= (ControlFlow 0 252958) 252974) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Else_correct@@4))))))
(let ((inline$$Not$0$anon0_correct@@8  (=> (and (= inline$$Not$0$dst@1@@8  (not inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@4)) (= (ControlFlow 0 252918) 252958)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else$1_correct@@4)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@4  (=> (and (not $abort_flag@2@@7) (= (ControlFlow 0 252924) 252918)) inline$$Not$0$anon0_correct@@8)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@4  (=> (and (and $abort_flag@2@@7 (= $abort_code@3@@7 $abort_code@3@@7)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@4 $abort_code@3@@7) (= (ControlFlow 0 253423) 252980))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@4)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@4  (=> (not $abort_flag@1@@8) (=> (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@4 (|$key_rotation_capability#$1_DiemAccount_DiemAccount| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@4)) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@4 (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@4)) 0))) (=> (and (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@4 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@4) (= $abort_flag@2@@7 $abort_flag@1@@8)) (and (= $abort_code@3@@7 $abort_code@2@@8) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@4 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@4))) (and (=> (= (ControlFlow 0 252794) 253423) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@4) (=> (= (ControlFlow 0 252794) 252924) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@4)))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@4  (=> (= $abort_flag@2@@7 true) (=> (and (= $abort_code@3@@7 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@4) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@4 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@0@@4)) (and (=> (= (ControlFlow 0 252742) 253423) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@4) (=> (= (ControlFlow 0 252742) 252924) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@4))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@4  (=> (and (and $abort_flag@1@@8 (= $abort_code@2@@8 $abort_code@2@@8)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@4 $abort_code@2@@8) (= (ControlFlow 0 252808) 252742))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@4)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then$1_correct@@4  (=> (= $abort_code@2@@8 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1@@8 true) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@4 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@0@@4)) (and (=> (= (ControlFlow 0 252860) 252808) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@4) (=> (= (ControlFlow 0 252860) 252794) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@4))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then_correct@@4  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4)) (= (ControlFlow 0 252858) 252860)) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then$1_correct@@4)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Else_correct@@4  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4) (=> (and (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@4 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4)) (= $abort_code@2@@8 $abort_code@1@@8)) (and (= $abort_flag@1@@8 $abort_flag@0@@8) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@4 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@4))) (and (=> (= (ControlFlow 0 252760) 252808) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@4) (=> (= (ControlFlow 0 252760) 252794) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@4))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Then_correct@@4  (=> inline$$1_DiemAccount_exists_at$0$$t1@1@@7 (and (=> (= (ControlFlow 0 252746) 252858) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then_correct@@4) (=> (= (ControlFlow 0 252746) 252760) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Else_correct@@4)))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Else_correct@@4  (=> (and (and (not inline$$1_DiemAccount_exists_at$0$$t1@1@@7) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@4 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@4)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@4 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@4) (= (ControlFlow 0 252736) 252742))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@4)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Else_correct@@4  (=> (and (not $abort_flag@0@@8) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@4) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@4 5)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@4 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@4) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@7 inline$$1_DiemAccount_exists_at$0$$t1@1@@7))) (and (=> (= (ControlFlow 0 252720) 252746) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Then_correct@@4) (=> (= (ControlFlow 0 252720) 252736) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Else_correct@@4))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Then_correct@@4  (=> (and (and $abort_flag@0@@8 (= $abort_code@1@@8 $abort_code@1@@8)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@4 $abort_code@1@@8) (= (ControlFlow 0 252874) 252742))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@4)))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct@@7  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1@@7 (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4)) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@7 inline$$1_DiemAccount_exists_at$0$$t1@1@@7)) (and (=> (= (ControlFlow 0 252678) 252874) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Then_correct@@4) (=> (= (ControlFlow 0 252678) 252720) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Else_correct@@4))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon0_correct@@4  (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4) (= (ControlFlow 0 252684) 252678)) inline$$1_DiemAccount_exists_at$0$anon0_correct@@7)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon0_correct@@4  (=> (= (seq.len (|p#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t5@0@@4)) 0) (=> (and (and (and (= (seq.len (|p#$Mutation_164778| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@4)) 0) (= (seq.len (|p#$Mutation_164822| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@0@@4)) 0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t7@0@@4 (|$addr#$signer| _$t1@@3)) (= _$t1@@3 _$t1@@3))) (and (and (|$IsValid'address'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4 (|$addr#$signer| _$t1@@3))) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4) (= (ControlFlow 0 252880) 252684)))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon0_correct@@4))))
(let ((anon10_Else_correct@@1  (=> (not $abort_flag@0@@8) (=> (and (= $t9@@1 (|$addr#$signer| _$t1@@3)) (= (ControlFlow 0 253429) 252880)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon0_correct@@4))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct@@0  (=> (and (= $abort_flag@0@@8 true) (= $abort_code@1@@8 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1@@0)) (and (=> (= (ControlFlow 0 251527) 255808) anon10_Then_correct@@1) (=> (= (ControlFlow 0 251527) 253429) anon10_Else_correct@@1)))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Else_correct@@0  (=> (and (and (not inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1@@0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@0)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1@@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@0) (= (ControlFlow 0 251521) 251527))) inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct@@0)))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Then_correct@@0  (=> inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_129589| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@8))) (= 5 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0@@0)) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0@@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0@@0)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1@@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0@@0) (= (ControlFlow 0 251577) 251527))) inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct@@0))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Then_correct@@0  (=> inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1@@0 (=> (and (= $abort_flag@0@@8 false) (= $abort_code@1@@8 $abort_code@0@@8)) (and (=> (= (ControlFlow 0 251533) 255808) anon10_Then_correct@@1) (=> (= (ControlFlow 0 251533) 253429) anon10_Else_correct@@1))))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct@@0  (=> (|$IsValid'u64'| inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0@@0) (=> (and (and (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0@@0 ($1_SlidingNonce_spec_try_record_nonce _$t0@@8 _$t2@@0)) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0@@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0@@0)) (and (|$IsValid'u64'| 0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1@@0 (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0@@0 0)))) (and (and (|$IsValid'u64'| inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@0 7)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1@@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1@@0)))) (and (=> (= (ControlFlow 0 251505) 251533) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Then_correct@@0) (=> (= (ControlFlow 0 251505) 251521) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Else_correct@@0))))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Else_correct@@0  (=> (not |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1@@0|) (=> (and (= $1_SlidingNonce_SlidingNonce_$memory@1@@0 ($Memory_129589 (|Store__T@[Int]Bool_| (|domain#$Memory_129589| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@8) false) (|contents#$Memory_129589| $1_SlidingNonce_SlidingNonce_$memory))) (= (ControlFlow 0 251447) 251505)) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct@@0))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Then_correct@@0  (=> |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1@@0| (=> (and (= $1_SlidingNonce_SlidingNonce_$memory@0@@0 ($Memory_129589 (|Store__T@[Int]Bool_| (|domain#$Memory_129589| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@8) true) (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_129589| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@8) |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'$1_SlidingNonce_SlidingNonce'@1@@0|))) (= (ControlFlow 0 251547) 251505)) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct@@0))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Else_correct@@0  (=> (not inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0@@0) (and (=> (= (ControlFlow 0 251433) 251547) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Then_correct@@0) (=> (= (ControlFlow 0 251433) 251447) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Else_correct@@0)))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon0_correct@@0  (=> (= _$t0@@8 _$t0@@8) (=> (and (= _$t2@@0 _$t2@@0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_129589| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| _$t0@@8))))) (and (=> (= (ControlFlow 0 251427) 251577) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Then_correct@@0) (=> (= (ControlFlow 0 251427) 251433) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Else_correct@@0))))))
(let ((anon0$1_correct@@8  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126448| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_129589| $1_SlidingNonce_SlidingNonce_$memory) 173345816)) (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126448| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_129589| $1_SlidingNonce_SlidingNonce_$memory) 186537453)) (forall ((addr@@234 Int) ) (!  (=> (|$IsValid'address'| addr@@234) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@234) (or (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@234)))) 0) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@234)))) 0)) (= addr@@234 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@234))) 0)))))))
 :qid |AccountAdministrationScriptsseqArraybpl.18319:20|
 :skolemid |423|
))) (=> (and (and (and (forall ((addr@@235 Int) ) (!  (=> (|$IsValid'address'| addr@@235) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@235) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@235) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@235)))) 0)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@235)))) 0)) (= addr@@235 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@235))) 0)))))))
 :qid |AccountAdministrationScriptsseqArraybpl.18323:20|
 :skolemid |424|
)) (forall ((addr@@236 Int) ) (!  (=> (|$IsValid'address'| addr@@236) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@236) (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@236)))
 :qid |AccountAdministrationScriptsseqArraybpl.18327:20|
 :skolemid |425|
))) (and (forall ((addr@@237 Int) ) (!  (=> (|$IsValid'address'| addr@@237) (=> (and (= addr@@237 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@237)) (|Select__T@[Int]Bool_| (|domain#$Memory_161752| $1_DiemAccount_AccountOperationsCapability_$memory) addr@@237)))
 :qid |AccountAdministrationScriptsseqArraybpl.18331:20|
 :skolemid |426|
)) (forall ((addr@@238 Int) ) (!  (=> (|$IsValid'address'| addr@@238) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@238) (|Select__T@[Int]Bool_| (|domain#$Memory_159816| $1_AccountFreezing_FreezingBit_$memory) addr@@238)))
 :qid |AccountAdministrationScriptsseqArraybpl.18335:20|
 :skolemid |427|
)))) (and (and (forall ((addr@@239 Int) ) (!  (=> (|$IsValid'address'| addr@@239) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161887| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@239) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@239)))
 :qid |AccountAdministrationScriptsseqArraybpl.18339:22|
 :skolemid |428|
)) (forall ((addr@@240 Int) ) (!  (=> (|$IsValid'address'| addr@@240) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161978| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@240) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@240)))
 :qid |AccountAdministrationScriptsseqArraybpl.18339:218|
 :skolemid |429|
))) (forall ((addr@@241 Int) ) (!  (=> (|$IsValid'address'| addr@@241) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_162069| |$1_DiemAccount_Balance'#0'_$memory|) addr@@241) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@241)))
 :qid |AccountAdministrationScriptsseqArraybpl.18339:415|
 :skolemid |430|
)))) (=> (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@8)) (|$IsValid'address'| (|$addr#$signer| _$t1@@3))) (and (|$IsValid'u64'| _$t2@@0) (|$IsValid'vec'u8''| _$t3))) (and (and (forall (($a_0@@26 Int) ) (! (let (($rsc@@26 (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_129589| $1_SlidingNonce_SlidingNonce_$memory) $a_0@@26)))
(|$IsValid'$1_SlidingNonce_SlidingNonce'| $rsc@@26))
 :qid |AccountAdministrationScriptsseqArraybpl.18354:20|
 :skolemid |431|
 :pattern ( (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_129589| $1_SlidingNonce_SlidingNonce_$memory) $a_0@@26))
)) (forall (($a_0@@27 Int) ) (! (let (($rsc@@27 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $a_0@@27)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@27) (and (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@27))) 1) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@27))) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.18358:20|
 :skolemid |432|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $a_0@@27))
))) (and (= $t5@@4 (|$addr#$signer| _$t1@@3)) (= $t6@@3 (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $t5@@4))) 0))))) (and (and (and (= $t7@@0 (|$addr#$signer| _$t1@@3)) (let ((addr@@242 (|$addr#$signer| _$t1@@3)))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_126448| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@242)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_159816| $1_AccountFreezing_FreezingBit_$memory) addr@@242) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_159816| $1_AccountFreezing_FreezingBit_$memory) addr@@242))))))) (and (let ((addr@@243 (|$addr#$signer| _$t0@@8)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@243) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_126966| $1_Roles_RoleId_$memory) addr@@243)) 0))) (= _$t0@@8 _$t0@@8))) (and (and (= _$t1@@3 _$t1@@3) (= _$t2@@0 _$t2@@0)) (and (= _$t3 _$t3) (= (ControlFlow 0 251581) 251427))))) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon0_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@8  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@10 T@$1_Event_EventHandle) ) (! (let ((stream@@9 (|Select__T@[$1_Event_EventHandle]Multiset_89088_| (|streams#$EventStore| $es) handle@@10)))
 (and (= (|l#Multiset_89088| stream@@9) 0) (forall ((v@@56 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_89088| stream@@9) v@@56) 0)
 :qid |AccountAdministrationScriptsseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |AccountAdministrationScriptsseqArraybpl.3268:13|
 :skolemid |89|
))) (= (ControlFlow 0 250665) 251581)) anon0$1_correct@@8)))
(let ((anon0_correct@@8  (=> (= (ControlFlow 0 346488) 250665) inline$$InitEventStore$0$anon0_correct@@8)))
anon0_correct@@8)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@2@@8 () Bool)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$l@1@@0| () Int)
(declare-fun inline$$1_RecoveryAddress_rotate_authentication_key$0$$t25@1 () (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun _$t2@@1 () Int)
(declare-fun $abort_flag@5@@8 () Bool)
(declare-fun _$t1@@4 () Int)
(declare-fun _$t3@@0 () (Seq Int))
(declare-fun _$t0@@9 () T@$signer)
(declare-fun $t4@@5 () Int)
(declare-fun $1_DiemAccount_DiemAccount_$memory@3@@2 () T@$Memory_160799)
(declare-fun $abort_code@6@@8 () Int)
(declare-fun $abort_flag@4@@8 () Bool)
(declare-fun $1_DiemAccount_DiemAccount_$memory@1@@5 () T@$Memory_160799)
(declare-fun $abort_code@5@@8 () Int)
(declare-fun $1_DiemAccount_DiemAccount_$memory@2@@3 () T@$Memory_160799)
(declare-fun inline$$1_RecoveryAddress_rotate_authentication_key$0$$t17@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@3 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@3 () T@$Mutation_115609)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@3 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2@@3 () T@$Mutation_115609)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@3 () T@$Mutation_164778)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0@@5 () T@$Memory_160799)
(declare-fun $abort_code@4@@8 () Int)
(declare-fun $abort_flag@3@@8 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@3 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@3 () Int)
(declare-fun |inline$$1_Vector_length'u8'$0$l@1@@3| () Int)
(declare-fun |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@3| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0@@3 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@3 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1@@3 () T@$Mutation_164778)
(declare-fun $abort_flag@1@@9 () Bool)
(declare-fun $abort_code@2@@9 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$0$$t1@1@@8 () Bool)
(declare-fun |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$dst@2| () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@3 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@3 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t6@0@@3 () T@$Mutation_164778)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@0@@3 () T@$Mutation_115609)
(declare-fun inline$$1_RecoveryAddress_rotate_authentication_key$0$$t31@2 () Bool)
(declare-fun $abort_code@3@@8 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun inline$$1_RecoveryAddress_rotate_authentication_key$0$$t26@1 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1@@1 () Int)
(declare-fun |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$dst@0| () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$dst@1| () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun $abort_code@1@@9 () Int)
(declare-fun $abort_flag@0@@9 () Bool)
(declare-fun inline$$Lt$0$dst@1@@0 () Bool)
(declare-fun inline$$1_RecoveryAddress_rotate_authentication_key$0$$t35@0 () Int)
(declare-fun inline$$1_RecoveryAddress_rotate_authentication_key$0$$t29@1 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_RecoveryAddress_rotate_authentication_key$0$$t30@1 () Int)
(declare-fun inline$$1_RecoveryAddress_rotate_authentication_key$0$$t32@1 () Int)
(declare-fun inline$$1_RecoveryAddress_rotate_authentication_key$0$$t33@1 () Int)
(declare-fun inline$$1_RecoveryAddress_rotate_authentication_key$0$$t24@2 () T@$1_RecoveryAddress_RecoveryAddress)
(declare-fun inline$$1_RecoveryAddress_rotate_authentication_key$0$$t24@0 () T@$1_RecoveryAddress_RecoveryAddress)
(declare-fun inline$$1_RecoveryAddress_rotate_authentication_key$0$$t24@1 () T@$1_RecoveryAddress_RecoveryAddress)
(declare-fun $abort_code@0@@9 () Int)
(declare-fun inline$$1_RecoveryAddress_rotate_authentication_key$0$$t8@1 () Bool)
(declare-fun inline$$1_RecoveryAddress_rotate_authentication_key$0$$t23@0 () Int)
(declare-fun inline$$1_RecoveryAddress_rotate_authentication_key$0$$t19@1 () Bool)
(declare-fun inline$$1_RecoveryAddress_rotate_authentication_key$0$$t21@1 () Bool)
(declare-fun inline$$1_RecoveryAddress_rotate_authentication_key$0$$t18@0 () Int)
(declare-fun inline$$1_RecoveryAddress_rotate_authentication_key$0$$t14@1 () Bool)
(declare-fun inline$$1_RecoveryAddress_rotate_authentication_key$0$$t16@0 () Int)
(push 1)
(set-info :boogie-vc-id $1_AccountAdministrationScripts_rotate_authentication_key_with_recovery_address$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 349771) (let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$anon46_Else_correct  (=> (and (not $abort_flag@2@@8) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@2)) (and (=> (= (ControlFlow 0 258758) (- 0 351341)) (<= inline$$AddU64$0$dst@2 |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$l@1@@0|)) (=> (<= inline$$AddU64$0$dst@2 |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$l@1@@0|) (=> (= (ControlFlow 0 258758) (- 0 351348)) (let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$$range_0 ($Range 0 inline$$AddU64$0$dst@2)))
(forall ((inline$$1_RecoveryAddress_rotate_authentication_key$0$$i_1 Int) ) (!  (=> ($InRange inline$$1_RecoveryAddress_rotate_authentication_key$0$$range_0 inline$$1_RecoveryAddress_rotate_authentication_key$0$$i_1) (let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$j inline$$1_RecoveryAddress_rotate_authentication_key$0$$i_1))
 (not (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth inline$$1_RecoveryAddress_rotate_authentication_key$0$$t25@1 inline$$1_RecoveryAddress_rotate_authentication_key$0$j)) _$t2@@1))))
 :qid |unknown.0:0|
 :skolemid |226|
)))))))))
(let ((anon4_Else_correct@@4  (=> (not $abort_flag@5@@8) (and (=> (= (ControlFlow 0 260082) (- 0 352261)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@4))) (and (=> (= (ControlFlow 0 260082) (- 0 352272)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) _$t2@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) _$t2@@1))) (and (=> (= (ControlFlow 0 260082) (- 0 352283)) (not (not (= (seq.len _$t3@@0) 32)))) (=> (not (not (= (seq.len _$t3@@0) 32))) (and (=> (= (ControlFlow 0 260082) (- 0 352297)) (not (not (exists ((i@@58 Int) ) (!  (and (and (|$IsValid'u64'| i@@58) (and (<= 0 i@@58) (< i@@58 (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@4)))))) (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@4)) i@@58)) _$t2@@1))
 :qid |AccountAdministrationScriptsseqArraybpl.15277:13|
 :skolemid |221|
))))) (=> (not (not (exists ((i@@59 Int) ) (!  (and (and (|$IsValid'u64'| i@@59) (and (<= 0 i@@59) (< i@@59 (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@4)))))) (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@4)) i@@59)) _$t2@@1))
 :qid |AccountAdministrationScriptsseqArraybpl.15277:13|
 :skolemid |221|
)))) (and (=> (= (ControlFlow 0 260082) (- 0 352309)) (not (not (or (= (|$addr#$signer| _$t0@@9) _$t1@@4) (= (|$addr#$signer| _$t0@@9) _$t2@@1))))) (=> (not (not (or (= (|$addr#$signer| _$t0@@9) _$t1@@4) (= (|$addr#$signer| _$t0@@9) _$t2@@1)))) (and (=> (= (ControlFlow 0 260082) (- 0 352330)) (not (not (exists ((i@@60 Int) ) (!  (and (and (|$IsValid'u64'| i@@60) (and (<= 0 i@@60) (< i@@60 (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@4)))))) (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@4)) i@@60)) _$t2@@1))
 :qid |AccountAdministrationScriptsseqArraybpl.15277:13|
 :skolemid |221|
))))) (=> (not (not (exists ((i@@61 Int) ) (!  (and (and (|$IsValid'u64'| i@@61) (and (<= 0 i@@61) (< i@@61 (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@4)))))) (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@4)) i@@61)) _$t2@@1))
 :qid |AccountAdministrationScriptsseqArraybpl.15277:13|
 :skolemid |221|
)))) (and (=> (= (ControlFlow 0 260082) (- 0 352342)) (not (not (or (= $t4@@5 _$t1@@4) (= $t4@@5 _$t2@@1))))) (=> (not (not (or (= $t4@@5 _$t1@@4) (= $t4@@5 _$t2@@1)))) (=> (= (ControlFlow 0 260082) (- 0 352361)) (= (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory@3@@2) _$t2@@1)) _$t3@@0)))))))))))))))))))
(let ((anon4_Then_correct@@4  (=> (and $abort_flag@5@@8 (= $abort_code@6@@8 $abort_code@6@@8)) (and (=> (= (ControlFlow 0 260362) (- 0 352030)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@4)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) _$t2@@1))) (not (= (seq.len _$t3@@0) 32))) (not (exists ((i@@62 Int) ) (!  (and (and (|$IsValid'u64'| i@@62) (and (<= 0 i@@62) (< i@@62 (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@4)))))) (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@4)) i@@62)) _$t2@@1))
 :qid |AccountAdministrationScriptsseqArraybpl.15277:13|
 :skolemid |221|
)))) (not (or (= (|$addr#$signer| _$t0@@9) _$t1@@4) (= (|$addr#$signer| _$t0@@9) _$t2@@1)))) (not (exists ((i@@63 Int) ) (!  (and (and (|$IsValid'u64'| i@@63) (and (<= 0 i@@63) (< i@@63 (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@4)))))) (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@4)) i@@63)) _$t2@@1))
 :qid |AccountAdministrationScriptsseqArraybpl.15277:13|
 :skolemid |221|
)))) (not (or (= $t4@@5 _$t1@@4) (= $t4@@5 _$t2@@1))))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@4)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) _$t2@@1))) (not (= (seq.len _$t3@@0) 32))) (not (exists ((i@@64 Int) ) (!  (and (and (|$IsValid'u64'| i@@64) (and (<= 0 i@@64) (< i@@64 (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@4)))))) (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@4)) i@@64)) _$t2@@1))
 :qid |AccountAdministrationScriptsseqArraybpl.15277:13|
 :skolemid |221|
)))) (not (or (= (|$addr#$signer| _$t0@@9) _$t1@@4) (= (|$addr#$signer| _$t0@@9) _$t2@@1)))) (not (exists ((i@@65 Int) ) (!  (and (and (|$IsValid'u64'| i@@65) (and (<= 0 i@@65) (< i@@65 (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@4)))))) (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@4)) i@@65)) _$t2@@1))
 :qid |AccountAdministrationScriptsseqArraybpl.15277:13|
 :skolemid |221|
)))) (not (or (= $t4@@5 _$t1@@4) (= $t4@@5 _$t2@@1)))) (=> (= (ControlFlow 0 260362) (- 0 352107)) (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@4)) (= 5 $abort_code@6@@8)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) _$t2@@1)) (= 5 $abort_code@6@@8))) (and (not (= (seq.len _$t3@@0) 32)) (= 7 $abort_code@6@@8))) (and (not (exists ((i@@66 Int) ) (!  (and (and (|$IsValid'u64'| i@@66) (and (<= 0 i@@66) (< i@@66 (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@4)))))) (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@4)) i@@66)) _$t2@@1))
 :qid |AccountAdministrationScriptsseqArraybpl.15277:13|
 :skolemid |221|
))) (= 7 $abort_code@6@@8))) (and (not (or (= (|$addr#$signer| _$t0@@9) _$t1@@4) (= (|$addr#$signer| _$t0@@9) _$t2@@1))) (= 7 $abort_code@6@@8))) (and (not (exists ((i@@67 Int) ) (!  (and (and (|$IsValid'u64'| i@@67) (and (<= 0 i@@67) (< i@@67 (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@4)))))) (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@4)) i@@67)) _$t2@@1))
 :qid |AccountAdministrationScriptsseqArraybpl.15277:13|
 :skolemid |221|
))) (= 7 $abort_code@6@@8))) (and (not (or (= $t4@@5 _$t1@@4) (= $t4@@5 _$t2@@1))) (= 7 $abort_code@6@@8))) (= 5 $abort_code@6@@8)) (= 7 $abort_code@6@@8))))))))
(let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$anon45_Else_correct  (=> (and (and (not $abort_flag@4@@8) (= $1_DiemAccount_DiemAccount_$memory@3@@2 $1_DiemAccount_DiemAccount_$memory@1@@5)) (and (= $abort_flag@5@@8 $abort_flag@4@@8) (= $abort_code@6@@8 $abort_code@5@@8))) (and (=> (= (ControlFlow 0 259806) 260362) anon4_Then_correct@@4) (=> (= (ControlFlow 0 259806) 260082) anon4_Else_correct@@4)))))
(let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$L17_correct  (=> (= $1_DiemAccount_DiemAccount_$memory@3@@2 $1_DiemAccount_DiemAccount_$memory@2@@3) (=> (and (= $abort_flag@5@@8 true) (= $abort_code@6@@8 inline$$1_RecoveryAddress_rotate_authentication_key$0$$t17@1)) (and (=> (= (ControlFlow 0 257789) 260362) anon4_Then_correct@@4) (=> (= (ControlFlow 0 257789) 260082) anon4_Else_correct@@4))))))
(let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$anon45_Then_correct  (=> $abort_flag@4@@8 (=> (and (and (= $abort_code@5@@8 $abort_code@5@@8) (= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t17@1 $abort_code@5@@8)) (and (= $1_DiemAccount_DiemAccount_$memory@2@@3 $1_DiemAccount_DiemAccount_$memory@1@@5) (= (ControlFlow 0 259820) 257789))) inline$$1_RecoveryAddress_rotate_authentication_key$0$L17_correct))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Then_correct@@3  (=> (and (and (and inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@3 (= inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@3 ($Mutation_115609 (|l#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@3) (seq.++ (|p#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@3) (seq.unit 0)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@3))))) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2@@3 ($Mutation_115609 (|l#$Mutation_115609| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@3) (|p#$Mutation_115609| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@3) _$t3@@0)) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@3 ($Mutation_164778 (|l#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@3) (|p#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@3) ($1_DiemAccount_DiemAccount (|v#$Mutation_115609| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2@@3) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@3)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@3)) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@3)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@3)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@3))))))) (and (and (= $1_DiemAccount_DiemAccount_$memory@0@@5 ($Memory_160799 (|Store__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@3)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@3)) (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@3)))) (= $abort_code@5@@8 $abort_code@4@@8)) (and (= $abort_flag@4@@8 $abort_flag@3@@8) (= $1_DiemAccount_DiemAccount_$memory@1@@5 $1_DiemAccount_DiemAccount_$memory@0@@5)))) (and (=> (= (ControlFlow 0 259698) 259820) inline$$1_RecoveryAddress_rotate_authentication_key$0$anon45_Then_correct) (=> (= (ControlFlow 0 259698) 259806) inline$$1_RecoveryAddress_rotate_authentication_key$0$anon45_Else_correct)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@3  (=> (= $abort_code@5@@8 inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@3) (=> (and (= $abort_flag@4@@8 true) (= $1_DiemAccount_DiemAccount_$memory@1@@5 $1_DiemAccount_DiemAccount_$memory)) (and (=> (= (ControlFlow 0 259494) 259820) inline$$1_RecoveryAddress_rotate_authentication_key$0$anon45_Then_correct) (=> (= (ControlFlow 0 259494) 259806) inline$$1_RecoveryAddress_rotate_authentication_key$0$anon45_Else_correct))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Else_correct@@3  (=> (and (and (not inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@3) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@3 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@3)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@3 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@3) (= (ControlFlow 0 259648) 259494))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@3)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Else_correct@@3  (=> (and (and (and (not $abort_flag@3@@8) (|$IsValid'u64'| 32)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@3 (= |inline$$1_Vector_length'u8'$0$l@1@@3| 32)) (|$IsValid'u64'| 8))) (and (and (|$IsValid'u64'| inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@3) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@3 7)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@3 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@3) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@3 inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@3)))) (and (=> (= (ControlFlow 0 259632) 259698) inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Then_correct@@3) (=> (= (ControlFlow 0 259632) 259648) inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Else_correct@@3)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Then_correct@@3  (=> (and (and $abort_flag@3@@8 (= $abort_code@4@@8 $abort_code@4@@8)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@3 $abort_code@4@@8) (= (ControlFlow 0 259712) 259494))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@3)))
(let ((|inline$$1_Vector_length'u8'$0$anon0_correct@@3|  (=> (= |inline$$1_Vector_length'u8'$0$l@1@@3| (seq.len _$t3@@0)) (and (=> (= (ControlFlow 0 259574) 259712) inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Then_correct@@3) (=> (= (ControlFlow 0 259574) 259632) inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Else_correct@@3)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct@@3  (=> (and (and (not $abort_flag@3@@8) (= |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@3| (|v#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@3))) (and (= |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@3| |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@3|) (= (ControlFlow 0 259580) 259574))) |inline$$1_Vector_length'u8'$0$anon0_correct@@3|)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct@@3  (=> (and (and $abort_flag@3@@8 (= $abort_code@4@@8 $abort_code@4@@8)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@3 $abort_code@4@@8) (= (ControlFlow 0 259726) 259494))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@3)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then$1_correct@@3  (=> (= $abort_flag@3@@8 true) (=> (and (= $abort_code@4@@8 $EXEC_FAILURE_CODE) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@3 inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0@@3)) (and (=> (= (ControlFlow 0 259778) 259726) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct@@3) (=> (= (ControlFlow 0 259778) 259580) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct@@3))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then_correct@@3  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@3)) (= (ControlFlow 0 259776) 259778)) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then$1_correct@@3)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Else_correct@@3  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@3) (=> (and (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1@@3 ($Mutation_164778 ($Global inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@3) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@3))) (= $abort_flag@3@@8 $abort_flag@1@@9)) (and (= $abort_code@4@@8 $abort_code@2@@9) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@3 inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1@@3))) (and (=> (= (ControlFlow 0 259524) 259726) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct@@3) (=> (= (ControlFlow 0 259524) 259580) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct@@3))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Then_correct@@3  (=> (and inline$$1_DiemAccount_exists_at$0$$t1@1@@8 (= inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@3 (|$account_address#$1_DiemAccount_KeyRotationCapability| |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$dst@2|))) (and (=> (= (ControlFlow 0 259502) 259776) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then_correct@@3) (=> (= (ControlFlow 0 259502) 259524) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Else_correct@@3)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Else_correct@@3  (=> (and (and (not inline$$1_DiemAccount_exists_at$0$$t1@1@@8) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@3 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@3)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@3 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@3) (= (ControlFlow 0 259488) 259494))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@3)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Else_correct@@3  (=> (and (not $abort_flag@1@@9) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@3) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@3 5)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@3 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@3) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@8 inline$$1_DiemAccount_exists_at$0$$t1@1@@8))) (and (=> (= (ControlFlow 0 259472) 259502) inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Then_correct@@3) (=> (= (ControlFlow 0 259472) 259488) inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Else_correct@@3))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Then_correct@@3  (=> (and (and $abort_flag@1@@9 (= $abort_code@2@@9 $abort_code@2@@9)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@3 $abort_code@2@@9) (= (ControlFlow 0 259792) 259494))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@3)))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct@@8  (=> (= inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@3 inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@3) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1@@8 (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@3)) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@8 inline$$1_DiemAccount_exists_at$0$$t1@1@@8)) (and (=> (= (ControlFlow 0 259430) 259792) inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Then_correct@@3) (=> (= (ControlFlow 0 259430) 259472) inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Else_correct@@3))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon0_correct@@3  (=> (= (seq.len (|p#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t6@0@@3)) 0) (=> (and (= (seq.len (|p#$Mutation_164778| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0@@3)) 0) (= (seq.len (|p#$Mutation_115609| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@0@@3)) 0)) (=> (and (and (= |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$dst@2| |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$dst@2|) (= _$t3@@0 _$t3@@0)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@3 (|$account_address#$1_DiemAccount_KeyRotationCapability| |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$dst@2|)) (= (ControlFlow 0 259436) 259430))) inline$$1_DiemAccount_exists_at$0$anon0_correct@@8)))))
(let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$anon44_Then_correct  (=> (and inline$$1_RecoveryAddress_rotate_authentication_key$0$$t31@2 (= (ControlFlow 0 259796) 259436)) inline$$1_DiemAccount_rotate_authentication_key$0$anon0_correct@@3)))
(let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$anon46_Then_correct  (=> $abort_flag@2@@8 (=> (and (and (= $abort_code@3@@8 $abort_code@3@@8) (= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t17@1 $abort_code@3@@8)) (and (= $1_DiemAccount_DiemAccount_$memory@2@@3 $1_DiemAccount_DiemAccount_$memory) (= (ControlFlow 0 258772) 257789))) inline$$1_RecoveryAddress_rotate_authentication_key$0$L17_correct))))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@2@@8 true) (=> (and (= $abort_code@3@@8 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 258689) 258772) inline$$1_RecoveryAddress_rotate_authentication_key$0$anon46_Then_correct) (=> (= (ControlFlow 0 258689) 258758) inline$$1_RecoveryAddress_rotate_authentication_key$0$anon46_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ inline$$1_RecoveryAddress_rotate_authentication_key$0$$t26@1 1) $MAX_U64) (= (ControlFlow 0 258687) 258689)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ inline$$1_RecoveryAddress_rotate_authentication_key$0$$t26@1 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ inline$$1_RecoveryAddress_rotate_authentication_key$0$$t26@1 1)) (= $abort_flag@2@@8 $abort_flag@1@@9)) (and (= $abort_code@3@@8 $abort_code@2@@9) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 258635) 258772) inline$$1_RecoveryAddress_rotate_authentication_key$0$anon46_Then_correct) (=> (= (ControlFlow 0 258635) 258758) inline$$1_RecoveryAddress_rotate_authentication_key$0$anon46_Else_correct))))))
(let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$anon44_Else_correct  (=> (and (not inline$$1_RecoveryAddress_rotate_authentication_key$0$$t31@2) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 258695) 258687) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 258695) 258635) inline$$AddU64$0$anon3_Else_correct)))))
(let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$anon43_Else_correct  (=> (and (not $abort_flag@1@@9) (= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t31@2 (= inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1@@1 _$t2@@1))) (and (=> (= (ControlFlow 0 258528) 259796) inline$$1_RecoveryAddress_rotate_authentication_key$0$anon44_Then_correct) (=> (= (ControlFlow 0 258528) 258695) inline$$1_RecoveryAddress_rotate_authentication_key$0$anon44_Else_correct)))))
(let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$anon43_Then_correct  (=> $abort_flag@1@@9 (=> (and (and (= $abort_code@2@@9 $abort_code@2@@9) (= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t17@1 $abort_code@2@@9)) (and (= $1_DiemAccount_DiemAccount_$memory@2@@3 $1_DiemAccount_DiemAccount_$memory) (= (ControlFlow 0 259834) 257789))) inline$$1_RecoveryAddress_rotate_authentication_key$0$L17_correct))))
(let ((inline$$1_DiemAccount_key_rotation_capability_address$0$anon0_correct@@1  (=> (= |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$dst@2| |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$dst@2|) (=> (and (= inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1@@1 (|$account_address#$1_DiemAccount_KeyRotationCapability| |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$dst@2|)) (= inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1@@1 inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1@@1)) (and (=> (= (ControlFlow 0 258508) 259834) inline$$1_RecoveryAddress_rotate_authentication_key$0$anon43_Then_correct) (=> (= (ControlFlow 0 258508) 258528) inline$$1_RecoveryAddress_rotate_authentication_key$0$anon43_Else_correct))))))
(let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$anon42_Else_correct  (=> (not $abort_flag@1@@9) (=> (and (= |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$dst@2| |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$dst@2|) (= (ControlFlow 0 258514) 258508)) inline$$1_DiemAccount_key_rotation_capability_address$0$anon0_correct@@1))))
(let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$anon42_Then_correct  (=> $abort_flag@1@@9 (=> (and (and (= $abort_code@2@@9 $abort_code@2@@9) (= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t17@1 $abort_code@2@@9)) (and (= $1_DiemAccount_DiemAccount_$memory@2@@3 $1_DiemAccount_DiemAccount_$memory) (= (ControlFlow 0 259848) 257789))) inline$$1_RecoveryAddress_rotate_authentication_key$0$L17_correct))))
(let ((|inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$anon3_Then$1_correct|  (=> (= $abort_code@2@@9 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1@@9 true) (= |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$dst@2| |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$dst@0|)) (and (=> (= (ControlFlow 0 258393) 259848) inline$$1_RecoveryAddress_rotate_authentication_key$0$anon42_Then_correct) (=> (= (ControlFlow 0 258393) 258514) inline$$1_RecoveryAddress_rotate_authentication_key$0$anon42_Else_correct))))))
(let ((|inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$anon3_Then_correct|  (=> (and (not (and (>= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t26@1 0) (< inline$$1_RecoveryAddress_rotate_authentication_key$0$$t26@1 (seq.len inline$$1_RecoveryAddress_rotate_authentication_key$0$$t25@1)))) (= (ControlFlow 0 258391) 258393)) |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$anon3_Else_correct|  (=> (and (>= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t26@1 0) (< inline$$1_RecoveryAddress_rotate_authentication_key$0$$t26@1 (seq.len inline$$1_RecoveryAddress_rotate_authentication_key$0$$t25@1))) (=> (and (and (= |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$dst@1| (seq.nth inline$$1_RecoveryAddress_rotate_authentication_key$0$$t25@1 inline$$1_RecoveryAddress_rotate_authentication_key$0$$t26@1)) (= $abort_code@2@@9 $abort_code@1@@9)) (and (= $abort_flag@1@@9 $abort_flag@0@@9) (= |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$dst@2| |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$dst@1|))) (and (=> (= (ControlFlow 0 258341) 259848) inline$$1_RecoveryAddress_rotate_authentication_key$0$anon42_Then_correct) (=> (= (ControlFlow 0 258341) 258514) inline$$1_RecoveryAddress_rotate_authentication_key$0$anon42_Else_correct))))))
(let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$anon41_Then_correct  (=> inline$$Lt$0$dst@1@@0 (and (=> (= (ControlFlow 0 258399) 258391) |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 258399) 258341) |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$anon3_Else_correct|)))))
(let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$anon41_Else_correct  (=> (not inline$$Lt$0$dst@1@@0) (and (=> (= (ControlFlow 0 258254) (- 0 351001)) (= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t26@1 |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$l@1@@0|)) (=> (= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t26@1 |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$l@1@@0|) (and (=> (= (ControlFlow 0 258254) (- 0 351008)) (let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$$range_0@@0 ($Range 0 |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$l@1@@0|)))
(forall ((inline$$1_RecoveryAddress_rotate_authentication_key$0$$i_1@@0 Int) ) (!  (=> ($InRange inline$$1_RecoveryAddress_rotate_authentication_key$0$$range_0@@0 inline$$1_RecoveryAddress_rotate_authentication_key$0$$i_1@@0) (let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$j@@0 inline$$1_RecoveryAddress_rotate_authentication_key$0$$i_1@@0))
 (not (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth inline$$1_RecoveryAddress_rotate_authentication_key$0$$t25@1 inline$$1_RecoveryAddress_rotate_authentication_key$0$j@@0)) _$t2@@1))))
 :qid |unknown.0:0|
 :skolemid |225|
)))) (=> (let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$$range_0@@1 ($Range 0 |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$l@1@@0|)))
(forall ((inline$$1_RecoveryAddress_rotate_authentication_key$0$$i_1@@1 Int) ) (!  (=> ($InRange inline$$1_RecoveryAddress_rotate_authentication_key$0$$range_0@@1 inline$$1_RecoveryAddress_rotate_authentication_key$0$$i_1@@1) (let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$j@@1 inline$$1_RecoveryAddress_rotate_authentication_key$0$$i_1@@1))
 (not (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth inline$$1_RecoveryAddress_rotate_authentication_key$0$$t25@1 inline$$1_RecoveryAddress_rotate_authentication_key$0$j@@1)) _$t2@@1))))
 :qid |unknown.0:0|
 :skolemid |225|
))) (=> (|$IsValid'u64'| 4) (=> (and (|$IsValid'u64'| inline$$1_RecoveryAddress_rotate_authentication_key$0$$t35@0) (= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t35@0 7)) (=> (and (and (= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t35@0 inline$$1_RecoveryAddress_rotate_authentication_key$0$$t35@0) (= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t17@1 inline$$1_RecoveryAddress_rotate_authentication_key$0$$t35@0)) (and (= $1_DiemAccount_DiemAccount_$memory@2@@3 $1_DiemAccount_DiemAccount_$memory) (= (ControlFlow 0 258254) 257789))) inline$$1_RecoveryAddress_rotate_authentication_key$0$L17_correct))))))))))
(let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$anon40_Else$1_correct  (and (=> (= (ControlFlow 0 258173) 258399) inline$$1_RecoveryAddress_rotate_authentication_key$0$anon41_Then_correct) (=> (= (ControlFlow 0 258173) 258254) inline$$1_RecoveryAddress_rotate_authentication_key$0$anon41_Else_correct))))
(let ((inline$$Lt$0$anon0_correct@@0  (=> (and (= inline$$Lt$0$dst@1@@0 (< inline$$1_RecoveryAddress_rotate_authentication_key$0$$t26@1 |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$l@1@@0|)) (= (ControlFlow 0 258163) 258173)) inline$$1_RecoveryAddress_rotate_authentication_key$0$anon40_Else$1_correct)))
(let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$anon40_Else_correct  (=> (and (not $abort_flag@0@@9) (= |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$l@1@@0| |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$l@1@@0|)) (and (=> (= (ControlFlow 0 258169) (- 0 350839)) (<= 0 |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$l@1@@0|)) (=> (<= 0 |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$l@1@@0|) (and (=> (= (ControlFlow 0 258169) (- 0 350846)) (let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$$range_0@@2 ($Range 0 0)))
(forall ((inline$$1_RecoveryAddress_rotate_authentication_key$0$$i_1@@2 Int) ) (!  (=> ($InRange inline$$1_RecoveryAddress_rotate_authentication_key$0$$range_0@@2 inline$$1_RecoveryAddress_rotate_authentication_key$0$$i_1@@2) (let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$j@@2 inline$$1_RecoveryAddress_rotate_authentication_key$0$$i_1@@2))
 (not (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth inline$$1_RecoveryAddress_rotate_authentication_key$0$$t25@1 inline$$1_RecoveryAddress_rotate_authentication_key$0$j@@2)) _$t2@@1))))
 :qid |unknown.0:0|
 :skolemid |223|
)))) (=> (let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$$range_0@@3 ($Range 0 0)))
(forall ((inline$$1_RecoveryAddress_rotate_authentication_key$0$$i_1@@3 Int) ) (!  (=> ($InRange inline$$1_RecoveryAddress_rotate_authentication_key$0$$range_0@@3 inline$$1_RecoveryAddress_rotate_authentication_key$0$$i_1@@3) (let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$j@@3 inline$$1_RecoveryAddress_rotate_authentication_key$0$$i_1@@3))
 (not (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth inline$$1_RecoveryAddress_rotate_authentication_key$0$$t25@1 inline$$1_RecoveryAddress_rotate_authentication_key$0$j@@3)) _$t2@@1))))
 :qid |unknown.0:0|
 :skolemid |223|
))) (=> (|$IsValid'u64'| inline$$1_RecoveryAddress_rotate_authentication_key$0$$t26@1) (=> (and (and (and (|$IsValid'$1_DiemAccount_KeyRotationCapability'| inline$$1_RecoveryAddress_rotate_authentication_key$0$$t29@1) (|$IsValid'address'| inline$$1_RecoveryAddress_rotate_authentication_key$0$$t30@1)) (and (|$IsValid'u64'| inline$$1_RecoveryAddress_rotate_authentication_key$0$$t32@1) (|$IsValid'u64'| inline$$1_RecoveryAddress_rotate_authentication_key$0$$t33@1))) (and (and (not $abort_flag@0@@9) (<= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t26@1 |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$l@1@@0|)) (and (let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$$range_0@@4 ($Range 0 inline$$1_RecoveryAddress_rotate_authentication_key$0$$t26@1)))
(forall ((inline$$1_RecoveryAddress_rotate_authentication_key$0$$i_1@@4 Int) ) (!  (=> ($InRange inline$$1_RecoveryAddress_rotate_authentication_key$0$$range_0@@4 inline$$1_RecoveryAddress_rotate_authentication_key$0$$i_1@@4) (let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$j@@4 inline$$1_RecoveryAddress_rotate_authentication_key$0$$i_1@@4))
 (not (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth inline$$1_RecoveryAddress_rotate_authentication_key$0$$t25@1 inline$$1_RecoveryAddress_rotate_authentication_key$0$j@@4)) _$t2@@1))))
 :qid |unknown.0:0|
 :skolemid |224|
))) (= (ControlFlow 0 258169) 258163)))) inline$$Lt$0$anon0_correct@@0)))))))))
(let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$anon40_Then_correct  (=> $abort_flag@0@@9 (=> (and (and (= $abort_code@1@@9 $abort_code@1@@9) (= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t17@1 $abort_code@1@@9)) (and (= $1_DiemAccount_DiemAccount_$memory@2@@3 $1_DiemAccount_DiemAccount_$memory) (= (ControlFlow 0 259862) 257789))) inline$$1_RecoveryAddress_rotate_authentication_key$0$L17_correct))))
(let ((|inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct@@0|  (=> (= |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$l@1@@0| (seq.len inline$$1_RecoveryAddress_rotate_authentication_key$0$$t25@1)) (and (=> (= (ControlFlow 0 257973) 259862) inline$$1_RecoveryAddress_rotate_authentication_key$0$anon40_Then_correct) (=> (= (ControlFlow 0 257973) 258169) inline$$1_RecoveryAddress_rotate_authentication_key$0$anon40_Else_correct)))))
(let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$anon39_Else_correct  (=> (and (not $abort_flag@0@@9) (= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t25@1 (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| inline$$1_RecoveryAddress_rotate_authentication_key$0$$t24@2))) (=> (and (and (= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t25@1 inline$$1_RecoveryAddress_rotate_authentication_key$0$$t25@1) (|$IsValid'u64'| 0)) (and (= 0 0) (= (ControlFlow 0 257979) 257973))) |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct@@0|))))
(let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$anon39_Then_correct  (=> $abort_flag@0@@9 (=> (and (and (= $abort_code@1@@9 $abort_code@1@@9) (= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t17@1 $abort_code@1@@9)) (and (= $1_DiemAccount_DiemAccount_$memory@2@@3 $1_DiemAccount_DiemAccount_$memory) (= (ControlFlow 0 259876) 257789))) inline$$1_RecoveryAddress_rotate_authentication_key$0$L17_correct))))
(let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$anon38_Then$1_correct  (=> (= $abort_flag@0@@9 true) (=> (and (= $abort_code@1@@9 $EXEC_FAILURE_CODE) (= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t24@2 inline$$1_RecoveryAddress_rotate_authentication_key$0$$t24@0)) (and (=> (= (ControlFlow 0 259928) 259876) inline$$1_RecoveryAddress_rotate_authentication_key$0$anon39_Then_correct) (=> (= (ControlFlow 0 259928) 257979) inline$$1_RecoveryAddress_rotate_authentication_key$0$anon39_Else_correct))))))
(let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$anon38_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@4)) (= (ControlFlow 0 259926) 259928)) inline$$1_RecoveryAddress_rotate_authentication_key$0$anon38_Then$1_correct)))
(let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$anon38_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@4) (=> (and (and (= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t24@1 (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@4)) (= $abort_flag@0@@9 false)) (and (= $abort_code@1@@9 $abort_code@0@@9) (= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t24@2 inline$$1_RecoveryAddress_rotate_authentication_key$0$$t24@1))) (and (=> (= (ControlFlow 0 257909) 259876) inline$$1_RecoveryAddress_rotate_authentication_key$0$anon39_Then_correct) (=> (= (ControlFlow 0 257909) 257979) inline$$1_RecoveryAddress_rotate_authentication_key$0$anon39_Else_correct))))))
(let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$anon37_Then_correct  (=> inline$$1_RecoveryAddress_rotate_authentication_key$0$$t8@1 (and (=> (= (ControlFlow 0 257895) 259926) inline$$1_RecoveryAddress_rotate_authentication_key$0$anon38_Then_correct) (=> (= (ControlFlow 0 257895) 257909) inline$$1_RecoveryAddress_rotate_authentication_key$0$anon38_Else_correct)))))
(let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$anon37_Else_correct  (=> (not inline$$1_RecoveryAddress_rotate_authentication_key$0$$t8@1) (=> (and (and (= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t23@0 inline$$1_RecoveryAddress_rotate_authentication_key$0$$t23@0) (= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t17@1 inline$$1_RecoveryAddress_rotate_authentication_key$0$$t23@0)) (and (= $1_DiemAccount_DiemAccount_$memory@2@@3 $1_DiemAccount_DiemAccount_$memory) (= (ControlFlow 0 257891) 257789))) inline$$1_RecoveryAddress_rotate_authentication_key$0$L17_correct))))
(let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$L5_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| inline$$1_RecoveryAddress_rotate_authentication_key$0$$t23@0) (= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t23@0 7)) (and (= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t23@0 inline$$1_RecoveryAddress_rotate_authentication_key$0$$t23@0) (= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t8@1 inline$$1_RecoveryAddress_rotate_authentication_key$0$$t8@1))) (and (=> (= (ControlFlow 0 257875) 257895) inline$$1_RecoveryAddress_rotate_authentication_key$0$anon37_Then_correct) (=> (= (ControlFlow 0 257875) 257891) inline$$1_RecoveryAddress_rotate_authentication_key$0$anon37_Else_correct))))))
(let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$anon36_Else_correct  (=> (not inline$$1_RecoveryAddress_rotate_authentication_key$0$$t19@1) (=> (and (and (= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t21@1 (= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t18@0 _$t1@@4)) (= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t21@1 inline$$1_RecoveryAddress_rotate_authentication_key$0$$t21@1)) (and (= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t8@1 inline$$1_RecoveryAddress_rotate_authentication_key$0$$t21@1) (= (ControlFlow 0 257841) 257875))) inline$$1_RecoveryAddress_rotate_authentication_key$0$L5_correct))))
(let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$anon36_Then_correct  (=> (and (and inline$$1_RecoveryAddress_rotate_authentication_key$0$$t19@1 (= true true)) (and (= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t8@1 true) (= (ControlFlow 0 259946) 257875))) inline$$1_RecoveryAddress_rotate_authentication_key$0$L5_correct)))
(let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$anon35_Then_correct  (=> inline$$1_RecoveryAddress_rotate_authentication_key$0$$t14@1 (=> (and (and (|$IsValid'address'| inline$$1_RecoveryAddress_rotate_authentication_key$0$$t18@0) (= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t18@0 (|$addr#$signer| _$t0@@9))) (and (= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t18@0 inline$$1_RecoveryAddress_rotate_authentication_key$0$$t18@0) (= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t19@1 (= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t18@0 _$t2@@1)))) (and (=> (= (ControlFlow 0 257819) 259946) inline$$1_RecoveryAddress_rotate_authentication_key$0$anon36_Then_correct) (=> (= (ControlFlow 0 257819) 257841) inline$$1_RecoveryAddress_rotate_authentication_key$0$anon36_Else_correct))))))
(let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$anon35_Else_correct  (=> (not inline$$1_RecoveryAddress_rotate_authentication_key$0$$t14@1) (=> (and (and (= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t16@0 inline$$1_RecoveryAddress_rotate_authentication_key$0$$t16@0) (= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t17@1 inline$$1_RecoveryAddress_rotate_authentication_key$0$$t16@0)) (and (= $1_DiemAccount_DiemAccount_$memory@2@@3 $1_DiemAccount_DiemAccount_$memory) (= (ControlFlow 0 257783) 257789))) inline$$1_RecoveryAddress_rotate_authentication_key$0$L17_correct))))
(let ((inline$$1_RecoveryAddress_rotate_authentication_key$0$anon0_correct  (=> (and (= _$t0@@9 _$t0@@9) (= _$t1@@4 _$t1@@4)) (=> (and (and (and (= _$t2@@1 _$t2@@1) (= _$t3@@0 _$t3@@0)) (and (= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t14@1 (|Select__T@[Int]Bool_| (|domain#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@4)) (|$IsValid'u64'| 5))) (and (and (|$IsValid'u64'| inline$$1_RecoveryAddress_rotate_authentication_key$0$$t16@0) (= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t16@0 5)) (and (= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t16@0 inline$$1_RecoveryAddress_rotate_authentication_key$0$$t16@0) (= inline$$1_RecoveryAddress_rotate_authentication_key$0$$t14@1 inline$$1_RecoveryAddress_rotate_authentication_key$0$$t14@1)))) (and (=> (= (ControlFlow 0 257767) 257819) inline$$1_RecoveryAddress_rotate_authentication_key$0$anon35_Then_correct) (=> (= (ControlFlow 0 257767) 257783) inline$$1_RecoveryAddress_rotate_authentication_key$0$anon35_Else_correct))))))
(let ((anon0$1_correct@@9  (=> (forall ((addr@@244 Int) ) (!  (=> (|$IsValid'address'| addr@@244) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@244) (or (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@244)))) 0) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@244)))) 0)) (= addr@@244 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@244))) 0)))))))
 :qid |AccountAdministrationScriptsseqArraybpl.18541:20|
 :skolemid |433|
)) (=> (and (and (forall ((addr@@245 Int) ) (!  (=> (|$IsValid'address'| addr@@245) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@245) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@245) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@245)))) 0)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@245)))) 0)) (= addr@@245 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@245))) 0)))))))
 :qid |AccountAdministrationScriptsseqArraybpl.18545:20|
 :skolemid |434|
)) (forall ((addr@@246 Int) ) (!  (=> (|$IsValid'address'| addr@@246) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@246) (|Select__T@[Int]Bool_| (|domain#$Memory_126966| $1_Roles_RoleId_$memory) addr@@246)))
 :qid |AccountAdministrationScriptsseqArraybpl.18549:20|
 :skolemid |435|
))) (and (forall ((addr@@247 Int) ) (!  (=> (|$IsValid'address'| addr@@247) (=> (and (= addr@@247 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@247)) (|Select__T@[Int]Bool_| (|domain#$Memory_161752| $1_DiemAccount_AccountOperationsCapability_$memory) addr@@247)))
 :qid |AccountAdministrationScriptsseqArraybpl.18553:20|
 :skolemid |436|
)) (forall ((addr@@248 Int) ) (!  (=> (|$IsValid'address'| addr@@248) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@248) (|Select__T@[Int]Bool_| (|domain#$Memory_159816| $1_AccountFreezing_FreezingBit_$memory) addr@@248)))
 :qid |AccountAdministrationScriptsseqArraybpl.18557:20|
 :skolemid |437|
)))) (=> (and (and (and (and (and (forall ((addr@@249 Int) ) (!  (=> (|$IsValid'address'| addr@@249) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161887| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@249) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@249)))
 :qid |AccountAdministrationScriptsseqArraybpl.18561:22|
 :skolemid |438|
)) (forall ((addr@@250 Int) ) (!  (=> (|$IsValid'address'| addr@@250) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161978| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@250) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@250)))
 :qid |AccountAdministrationScriptsseqArraybpl.18561:218|
 :skolemid |439|
))) (forall ((addr@@251 Int) ) (!  (=> (|$IsValid'address'| addr@@251) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_162069| |$1_DiemAccount_Balance'#0'_$memory|) addr@@251) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@251)))
 :qid |AccountAdministrationScriptsseqArraybpl.18561:415|
 :skolemid |440|
))) (|$IsValid'address'| (|$addr#$signer| _$t0@@9))) (and (and (|$IsValid'address'| _$t1@@4) (|$IsValid'address'| _$t2@@1)) (and (|$IsValid'vec'u8''| _$t3@@0) (forall (($a_0@@28 Int) ) (! (let (($rsc@@28 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $a_0@@28)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@28) (and (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@28))) 1) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@28))) 1))))
 :qid |AccountAdministrationScriptsseqArraybpl.18576:20|
 :skolemid |441|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) $a_0@@28))
))))) (and (and (and (forall (($a_0@@29 Int) ) (! (let (($rsc@@29 (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) $a_0@@29)))
(|$IsValid'$1_RecoveryAddress_RecoveryAddress'| $rsc@@29))
 :qid |AccountAdministrationScriptsseqArraybpl.18580:20|
 :skolemid |442|
 :pattern ( (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_168935| $1_RecoveryAddress_RecoveryAddress_$memory) $a_0@@29))
)) (= $t4@@5 (|$addr#$signer| _$t0@@9))) (and (let ((addr@@252 (|$addr#$signer| _$t0@@9)))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_126448| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_160799| $1_DiemAccount_DiemAccount_$memory) addr@@252)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_159816| $1_AccountFreezing_FreezingBit_$memory) addr@@252) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_159816| $1_AccountFreezing_FreezingBit_$memory) addr@@252)))))) (= _$t0@@9 _$t0@@9))) (and (and (= _$t1@@4 _$t1@@4) (= _$t2@@1 _$t2@@1)) (and (= _$t3@@0 _$t3@@0) (= (ControlFlow 0 259950) 257767))))) inline$$1_RecoveryAddress_rotate_authentication_key$0$anon0_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct@@9  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@11 T@$1_Event_EventHandle) ) (! (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_89088_| (|streams#$EventStore| $es) handle@@11)))
 (and (= (|l#Multiset_89088| stream@@10) 0) (forall ((v@@57 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_89088| stream@@10) v@@57) 0)
 :qid |AccountAdministrationScriptsseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |AccountAdministrationScriptsseqArraybpl.3268:13|
 :skolemid |89|
))) (= (ControlFlow 0 256223) 259950)) anon0$1_correct@@9)))
(let ((anon0_correct@@9  (=> (= (ControlFlow 0 349771) 256223) inline$$InitEventStore$0$anon0_correct@@9)))
anon0_correct@@9)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
