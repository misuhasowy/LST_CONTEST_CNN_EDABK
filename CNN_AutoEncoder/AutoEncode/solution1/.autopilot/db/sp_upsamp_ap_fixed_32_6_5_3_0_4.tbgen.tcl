set moduleName sp_upsamp_ap_fixed_32_6_5_3_0_4
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {sp_upsamp<ap_fixed<32, 6, 5, 3, 0> >.4}
set C_modelType { void 0 }
set C_modelArgList {
	{ upsam_buf int 32 regular {array 224 { 2 2 } 1 1 }  }
	{ conv6_out26 int 32 regular {fifo 0 volatile }  }
	{ upsamp6_out27 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "upsam_buf", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "conv6_out26", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "upsamp6_out27", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ conv6_out26_dout sc_in sc_lv 32 signal 1 } 
	{ conv6_out26_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ conv6_out26_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ conv6_out26_empty_n sc_in sc_logic 1 signal 1 } 
	{ conv6_out26_read sc_out sc_logic 1 signal 1 } 
	{ upsamp6_out27_din sc_out sc_lv 32 signal 2 } 
	{ upsamp6_out27_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ upsamp6_out27_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ upsamp6_out27_full_n sc_in sc_logic 1 signal 2 } 
	{ upsamp6_out27_write sc_out sc_logic 1 signal 2 } 
	{ upsam_buf_address0 sc_out sc_lv 8 signal 0 } 
	{ upsam_buf_ce0 sc_out sc_logic 1 signal 0 } 
	{ upsam_buf_we0 sc_out sc_logic 1 signal 0 } 
	{ upsam_buf_d0 sc_out sc_lv 32 signal 0 } 
	{ upsam_buf_q0 sc_in sc_lv 32 signal 0 } 
	{ upsam_buf_address1 sc_out sc_lv 8 signal 0 } 
	{ upsam_buf_ce1 sc_out sc_logic 1 signal 0 } 
	{ upsam_buf_we1 sc_out sc_logic 1 signal 0 } 
	{ upsam_buf_d1 sc_out sc_lv 32 signal 0 } 
	{ upsam_buf_q1 sc_in sc_lv 32 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv6_out26_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv6_out26", "role": "dout" }} , 
 	{ "name": "conv6_out26_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "conv6_out26", "role": "num_data_valid" }} , 
 	{ "name": "conv6_out26_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "conv6_out26", "role": "fifo_cap" }} , 
 	{ "name": "conv6_out26_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv6_out26", "role": "empty_n" }} , 
 	{ "name": "conv6_out26_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv6_out26", "role": "read" }} , 
 	{ "name": "upsamp6_out27_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "upsamp6_out27", "role": "din" }} , 
 	{ "name": "upsamp6_out27_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "upsamp6_out27", "role": "num_data_valid" }} , 
 	{ "name": "upsamp6_out27_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "upsamp6_out27", "role": "fifo_cap" }} , 
 	{ "name": "upsamp6_out27_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "upsamp6_out27", "role": "full_n" }} , 
 	{ "name": "upsamp6_out27_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "upsamp6_out27", "role": "write" }} , 
 	{ "name": "upsam_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "upsam_buf", "role": "address0" }} , 
 	{ "name": "upsam_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "upsam_buf", "role": "ce0" }} , 
 	{ "name": "upsam_buf_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "upsam_buf", "role": "we0" }} , 
 	{ "name": "upsam_buf_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "upsam_buf", "role": "d0" }} , 
 	{ "name": "upsam_buf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "upsam_buf", "role": "q0" }} , 
 	{ "name": "upsam_buf_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "upsam_buf", "role": "address1" }} , 
 	{ "name": "upsam_buf_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "upsam_buf", "role": "ce1" }} , 
 	{ "name": "upsam_buf_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "upsam_buf", "role": "we1" }} , 
 	{ "name": "upsam_buf_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "upsam_buf", "role": "d1" }} , 
 	{ "name": "upsam_buf_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "upsam_buf", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "sp_upsamp_ap_fixed_32_6_5_3_0_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12547", "EstimateLatencyMax" : "12547",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "upsam_buf", "Type" : "Memory", "Direction" : "IO", "PIPODir" : "O"},
			{"Name" : "conv6_out26", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv6_out26_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "upsamp6_out27", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "upsamp6_out27_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "UHeight_UWidth", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sp_upsamp_ap_fixed_32_6_5_3_0_4 {
		upsam_buf {Type IO LastRead 16 FirstWrite 0}
		conv6_out26 {Type I LastRead 15 FirstWrite -1}
		upsamp6_out27 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "12547", "Max" : "12547"}
	, {"Name" : "Interval", "Min" : "12547", "Max" : "12547"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	upsam_buf { ap_memory {  { upsam_buf_address0 mem_address 1 8 }  { upsam_buf_ce0 mem_ce 1 1 }  { upsam_buf_we0 mem_we 1 1 }  { upsam_buf_d0 mem_din 1 32 }  { upsam_buf_q0 mem_dout 0 32 }  { upsam_buf_address1 MemPortADDR2 1 8 }  { upsam_buf_ce1 MemPortCE2 1 1 }  { upsam_buf_we1 MemPortWE2 1 1 }  { upsam_buf_d1 MemPortDIN2 1 32 }  { upsam_buf_q1 in_data 0 32 } } }
	conv6_out26 { ap_fifo {  { conv6_out26_dout fifo_port_we 0 32 }  { conv6_out26_num_data_valid fifo_status_num_data_valid 0 2 }  { conv6_out26_fifo_cap fifo_update 0 2 }  { conv6_out26_empty_n fifo_status 0 1 }  { conv6_out26_read fifo_data 1 1 } } }
	upsamp6_out27 { ap_fifo {  { upsamp6_out27_din fifo_port_we 1 32 }  { upsamp6_out27_num_data_valid fifo_status_num_data_valid 0 2 }  { upsamp6_out27_fifo_cap fifo_update 0 2 }  { upsamp6_out27_full_n fifo_status 0 1 }  { upsamp6_out27_write fifo_data 1 1 } } }
}
