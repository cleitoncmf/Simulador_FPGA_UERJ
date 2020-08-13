//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Thu Aug 13 10:25:18 2020
//Host        : DESKTOP-5MP17PP running 64-bit major release  (build 9200)
//Command     : generate_target design_TestePrecision.bd
//Design      : design_TestePrecision
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_TestePrecision,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_TestePrecision,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_TestePrecision.hwdef" *) 
module design_TestePrecision
   ();

  wire sim_clk_gen_0_clk;

  design_TestePrecision_CMFtestePrecision_0_0 CMFtestePrecision_0
       (.Entrada(sim_clk_gen_0_clk),
        .ap_start(1'b0));
  design_TestePrecision_sim_clk_gen_0_0 sim_clk_gen_0
       (.clk(sim_clk_gen_0_clk));
endmodule
