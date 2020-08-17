//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Mon Aug 17 15:38:32 2020
//Host        : DESKTOP-5MP17PP running 64-bit major release  (build 9200)
//Command     : generate_target designteste2.bd
//Design      : designteste2
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "designteste2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=designteste2,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "designteste2.hwdef" *) 
module designteste2
   ();

  wire sim_clk_gen_0_clk;
  wire [0:0]xlconstant_0_dout;

  designteste2_CMFteste2_0_0 CMFteste2_0
       (.ap_clk(sim_clk_gen_0_clk),
        .ap_rst(1'b0),
        .ap_start(xlconstant_0_dout));
  designteste2_sim_clk_gen_0_0 sim_clk_gen_0
       (.clk(sim_clk_gen_0_clk));
  designteste2_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
