//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Mon Aug 17 14:39:10 2020
//Host        : DESKTOP-5MP17PP running 64-bit major release  (build 9200)
//Command     : generate_target designCMFfixmult2.bd
//Design      : designCMFfixmult2
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "designCMFfixmult2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=designCMFfixmult2,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "designCMFfixmult2.hwdef" *) 
module designCMFfixmult2
   ();

  wire [0:0]xlconstant_0_dout;
  wire [17:0]xlconstant_1_dout;
  wire [17:0]xlconstant_2_dout;

  designCMFfixmult2_CMFfixMult2_0_1 CMFfixMult2_0
       (.EntradaA1_V(xlconstant_1_dout),
        .EntradaA2_V(xlconstant_2_dout),
        .ap_start(xlconstant_0_dout));
  designCMFfixmult2_sim_clk_gen_0_0 sim_clk_gen_0
       ();
  designCMFfixmult2_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  designCMFfixmult2_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
  designCMFfixmult2_xlconstant_1_1 xlconstant_2
       (.dout(xlconstant_2_dout));
endmodule
