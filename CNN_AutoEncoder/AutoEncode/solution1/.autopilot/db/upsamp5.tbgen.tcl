set moduleName upsamp5
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {upsamp5}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv5_out24 int 32 regular {fifo 0 volatile }  }
	{ upsamp5_out25 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv5_out24", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "upsamp5_out25", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ conv5_out24_dout sc_in sc_lv 32 signal 0 } 
	{ conv5_out24_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv5_out24_read sc_out sc_logic 1 signal 0 } 
	{ upsamp5_out25_din sc_out sc_lv 32 signal 1 } 
	{ upsamp5_out25_full_n sc_in sc_logic 1 signal 1 } 
	{ upsamp5_out25_write sc_out sc_logic 1 signal 1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "conv5_out24_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv5_out24", "role": "dout" }} , 
 	{ "name": "conv5_out24_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv5_out24", "role": "empty_n" }} , 
 	{ "name": "conv5_out24_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv5_out24", "role": "read" }} , 
 	{ "name": "upsamp5_out25_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "upsamp5_out25", "role": "din" }} , 
 	{ "name": "upsamp5_out25_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "upsamp5_out25", "role": "full_n" }} , 
 	{ "name": "upsamp5_out25_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "upsamp5_out25", "role": "write" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "upsamp5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2051", "EstimateLatencyMax" : "2051",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "sp_upsamp_ap_fixed_32_6_5_3_0_3_U0"}],
		"OutputProcess" : [
			{"ID" : "2", "Name" : "sp_upsamp_ap_fixed_32_6_5_3_0_3_U0"}],
		"Port" : [
			{"Name" : "conv5_out24", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "sp_upsamp_ap_fixed_32_6_5_3_0_3_U0", "Port" : "conv5_out24"}]},
			{"Name" : "upsamp5_out25", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "sp_upsamp_ap_fixed_32_6_5_3_0_3_U0", "Port" : "upsamp5_out25"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.upsam_buf5_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sp_upsamp_ap_fixed_32_6_5_3_0_3_U0", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "sp_upsamp_ap_fixed_32_6_5_3_0_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2051", "EstimateLatencyMax" : "2051",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "upsam_buf", "Type" : "Memory", "Direction" : "IO", "PIPODir" : "O"},
			{"Name" : "conv5_out24", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv5_out24_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "upsamp5_out25", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "upsamp5_out25_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "UHeight_UWidth", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sp_upsamp_ap_fixed_32_6_5_3_0_3_U0.flow_control_loop_pipe_U", "Parent" : "2"}]}


set ArgLastReadFirstWriteLatency {
	upsamp5 {
		conv5_out24 {Type I LastRead 7 FirstWrite -1}
		upsamp5_out25 {Type O LastRead -1 FirstWrite 2}}
	sp_upsamp_ap_fixed_32_6_5_3_0_3 {
		upsam_buf {Type IO LastRead 8 FirstWrite 0}
		conv5_out24 {Type I LastRead 7 FirstWrite -1}
		upsamp5_out25 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2051", "Max" : "2051"}
	, {"Name" : "Interval", "Min" : "2052", "Max" : "2052"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv5_out24 { ap_fifo {  { conv5_out24_dout fifo_port_we 0 32 }  { conv5_out24_empty_n fifo_status 0 1 }  { conv5_out24_read fifo_data 1 1 } } }
	upsamp5_out25 { ap_fifo {  { upsamp5_out25_din fifo_port_we 1 32 }  { upsamp5_out25_full_n fifo_status 0 1 }  { upsamp5_out25_write fifo_data 1 1 } } }
}
