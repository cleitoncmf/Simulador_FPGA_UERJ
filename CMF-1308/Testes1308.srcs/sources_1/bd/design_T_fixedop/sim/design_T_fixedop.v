//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Thu Aug 13 17:57:53 2020
//Host        : DESKTOP-5MP17PP running 64-bit major release  (build 9200)
//Command     : generate_target design_T_fixedop.bd
//Design      : design_T_fixedop
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_T_fixedop,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_T_fixedop,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_T_fixedop.hwdef" *) 
module design_T_fixedop
   ();

  wire [17:0]xlconstant_0_dout;
  wire [17:0]xlconstant_1_dout;
  wire [0:0]xlconstant_2_dout;

  design_T_fixedop_CMFfixedop_0_1 CMFfixedop_0
       (.Entrada1_V(xlconstant_0_dout),
        .Entrada2_V(xlconstant_1_dout),
        .ap_start(xlconstant_2_dout));
  design_T_fixedop_sim_clk_gen_0_0 sim_clk_gen_0
       ();
  design_T_fixedop_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  design_T_fixedop_xlconstant_0_1 xlconstant_1
       (.dout(xlconstant_1_dout));
  design_T_fixedop_xlconstant_1_0 xlconstant_2
       (.dout(xlconstant_2_dout));
endmodule
