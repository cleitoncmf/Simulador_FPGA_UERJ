#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("EntradaA1_V", 18, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("EntradaA2_V", 18, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("EntradaB1_V", 9, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("EntradaB2_V", 9, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("SaidaA1_V", 18, hls_out, 4, "ap_vld", "out_data", 1),
	Port_Property("SaidaA1_V_ap_vld", 1, hls_out, 4, "ap_vld", "out_vld", 1),
	Port_Property("SaidaA2_V", 18, hls_out, 5, "ap_vld", "out_data", 1),
	Port_Property("SaidaA2_V_ap_vld", 1, hls_out, 5, "ap_vld", "out_vld", 1),
	Port_Property("SaidaB1_V", 9, hls_out, 6, "ap_vld", "out_data", 1),
	Port_Property("SaidaB1_V_ap_vld", 1, hls_out, 6, "ap_vld", "out_vld", 1),
};
const char* HLS_Design_Meta::dut_name = "CMFfixMult";
