set moduleName CMFRL1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {CMFRL1}
set C_modelType { void 0 }
set C_modelArgList {
	{ sinc_V int 1 regular  }
	{ i_RL float 32 regular {pointer 1}  }
	{ teste1 float 32 regular {pointer 1}  }
	{ teste2_V int 1 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sinc_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sinc.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "i_RL", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "i_RL","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "teste1", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "teste1","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "teste2_V", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "teste2.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sinc_V sc_in sc_lv 1 signal 0 } 
	{ i_RL sc_out sc_lv 32 signal 1 } 
	{ i_RL_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ teste1 sc_out sc_lv 32 signal 2 } 
	{ teste1_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ teste2_V sc_out sc_lv 1 signal 3 } 
	{ teste2_V_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sinc_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sinc_V", "role": "default" }} , 
 	{ "name": "i_RL", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "i_RL", "role": "default" }} , 
 	{ "name": "i_RL_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "i_RL", "role": "ap_vld" }} , 
 	{ "name": "teste1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "teste1", "role": "default" }} , 
 	{ "name": "teste1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "teste1", "role": "ap_vld" }} , 
 	{ "name": "teste2_V", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "teste2_V", "role": "default" }} , 
 	{ "name": "teste2_V_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "teste2_V", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "CMFRL1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sinc_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_RL", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "teste1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "teste2_V", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "aux_sinc_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "i_kp1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "i_k", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CMFRL1_fadd_32ns_bkb_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CMFRL1_fmul_32ns_cud_U2", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	CMFRL1 {
		sinc_V {Type I LastRead 0 FirstWrite -1}
		i_RL {Type O LastRead -1 FirstWrite 9}
		teste1 {Type O LastRead -1 FirstWrite 9}
		teste2_V {Type O LastRead -1 FirstWrite 9}
		aux_sinc_V {Type IO LastRead -1 FirstWrite -1}
		i_kp1 {Type IO LastRead -1 FirstWrite -1}
		i_k {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "9"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "10"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sinc_V { ap_none {  { sinc_V in_data 0 1 } } }
	i_RL { ap_vld {  { i_RL out_data 1 32 }  { i_RL_ap_vld out_vld 1 1 } } }
	teste1 { ap_vld {  { teste1 out_data 1 32 }  { teste1_ap_vld out_vld 1 1 } } }
	teste2_V { ap_vld {  { teste2_V out_data 1 1 }  { teste2_V_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
