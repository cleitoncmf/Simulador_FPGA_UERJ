//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sat Aug 15 13:11:41 2020
//Host        : DESKTOP-5MP17PP running 64-bit major release  (build 9200)
//Command     : generate_target designCMFfixMult.bd
//Design      : designCMFfixMult
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "designCMFfixMult,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=designCMFfixMult,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "designCMFfixMult.hwdef" *) 
module designCMFfixMult
   ();

  wire sim_clk_gen_0_clk;
  wire [0:0]xlconstant_0_dout;
  wire [17:0]xlconstant_1_dout;
  wire [17:0]xlconstant_2_dout;
  wire [8:0]xlconstant_3_dout;
  wire [8:0]xlconstant_4_dout;

  designCMFfixMult_CMFfixMult_0_0 CMFfixMult_0
       (.EntradaA1_V(xlconstant_1_dout),
        .EntradaA2_V(xlconstant_2_dout),
        .EntradaB1_V(xlconstant_3_dout),
        .EntradaB2_V(xlconstant_4_dout),
        .ap_clk(sim_clk_gen_0_clk),
        .ap_rst(1'b0),
        .ap_start(xlconstant_0_dout));
  designCMFfixMult_sim_clk_gen_0_0 sim_clk_gen_0
       (.clk(sim_clk_gen_0_clk));
  designCMFfixMult_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  designCMFfixMult_xlconstant_0_1 xlconstant_1
       (.dout(xlconstant_1_dout));
  designCMFfixMult_xlconstant_0_2 xlconstant_2
       (.dout(xlconstant_2_dout));
  designCMFfixMult_xlconstant_0_3 xlconstant_3
       (.dout(xlconstant_3_dout));
  designCMFfixMult_xlconstant_0_4 xlconstant_4
       (.dout(xlconstant_4_dout));
endmodule
