set moduleName CMFfixMult2
set isTaskLevelControl 1
set isCombinational 1
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {CMFfixMult2}
set C_modelType { void 0 }
set C_modelArgList {
	{ EntradaA1_V int 18 regular  }
	{ EntradaA2_V int 18 regular  }
	{ SaidaA1_V int 18 regular {pointer 1}  }
	{ SaidaA2_V int 18 regular {pointer 1}  }
	{ SaidaB1_V int 9 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "EntradaA1_V", "interface" : "wire", "bitwidth" : 18, "direction" : "READONLY", "bitSlice":[{"low":0,"up":17,"cElement": [{"cName": "EntradaA1.V","cData": "int18","bit_use": { "low": 0,"up": 17},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "EntradaA2_V", "interface" : "wire", "bitwidth" : 18, "direction" : "READONLY", "bitSlice":[{"low":0,"up":17,"cElement": [{"cName": "EntradaA2.V","cData": "int18","bit_use": { "low": 0,"up": 17},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "SaidaA1_V", "interface" : "wire", "bitwidth" : 18, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":17,"cElement": [{"cName": "SaidaA1.V","cData": "int18","bit_use": { "low": 0,"up": 17},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "SaidaA2_V", "interface" : "wire", "bitwidth" : 18, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":17,"cElement": [{"cName": "SaidaA2.V","cData": "int18","bit_use": { "low": 0,"up": 17},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "SaidaB1_V", "interface" : "wire", "bitwidth" : 9, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":8,"cElement": [{"cName": "SaidaB1.V","cData": "int9","bit_use": { "low": 0,"up": 8},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ EntradaA1_V sc_in sc_lv 18 signal 0 } 
	{ EntradaA2_V sc_in sc_lv 18 signal 1 } 
	{ SaidaA1_V sc_out sc_lv 18 signal 2 } 
	{ SaidaA1_V_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ SaidaA2_V sc_out sc_lv 18 signal 3 } 
	{ SaidaA2_V_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ SaidaB1_V sc_out sc_lv 9 signal 4 } 
	{ SaidaB1_V_ap_vld sc_out sc_logic 1 outvld 4 } 
}
set NewPortList {[ 
	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "EntradaA1_V", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "EntradaA1_V", "role": "default" }} , 
 	{ "name": "EntradaA2_V", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "EntradaA2_V", "role": "default" }} , 
 	{ "name": "SaidaA1_V", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "SaidaA1_V", "role": "default" }} , 
 	{ "name": "SaidaA1_V_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "SaidaA1_V", "role": "ap_vld" }} , 
 	{ "name": "SaidaA2_V", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "SaidaA2_V", "role": "default" }} , 
 	{ "name": "SaidaA2_V_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "SaidaA2_V", "role": "ap_vld" }} , 
 	{ "name": "SaidaB1_V", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "SaidaB1_V", "role": "default" }} , 
 	{ "name": "SaidaB1_V_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "SaidaB1_V", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "CMFfixMult2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "EntradaA1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "EntradaA2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SaidaA1_V", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "SaidaA2_V", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "SaidaB1_V", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CMFfixMult2_mul_mbkb_U1", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	CMFfixMult2 {
		EntradaA1_V {Type I LastRead 0 FirstWrite -1}
		EntradaA2_V {Type I LastRead 0 FirstWrite -1}
		SaidaA1_V {Type O LastRead -1 FirstWrite 0}
		SaidaA2_V {Type O LastRead -1 FirstWrite 0}
		SaidaB1_V {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	EntradaA1_V { ap_none {  { EntradaA1_V in_data 0 18 } } }
	EntradaA2_V { ap_none {  { EntradaA2_V in_data 0 18 } } }
	SaidaA1_V { ap_vld {  { SaidaA1_V out_data 1 18 }  { SaidaA1_V_ap_vld out_vld 1 1 } } }
	SaidaA2_V { ap_vld {  { SaidaA2_V out_data 1 18 }  { SaidaA2_V_ap_vld out_vld 1 1 } } }
	SaidaB1_V { ap_vld {  { SaidaB1_V out_data 1 9 }  { SaidaB1_V_ap_vld out_vld 1 1 } } }
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
