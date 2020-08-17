//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Mon Aug 17 15:12:52 2020
//Host        : DESKTOP-5MP17PP running 64-bit major release  (build 9200)
//Command     : generate_target design_teste1.bd
//Design      : design_teste1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_teste1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_teste1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_teste1.hwdef" *) 
module design_teste1
   ();

  wire sim_clk_gen_0_clk;
  wire [0:0]xlconstant_0_dout;
  wire [31:0]xlconstant_1_dout;
  wire [31:0]xlconstant_2_dout;

  design_teste1_CMFteste1_0_0 CMFteste1_0
       (.Entrada1_V(xlconstant_2_dout),
        .Entrada2_V(xlconstant_1_dout),
        .ap_clk(sim_clk_gen_0_clk),
        .ap_rst(1'b0),
        .ap_start(xlconstant_0_dout));
  design_teste1_sim_clk_gen_0_0 sim_clk_gen_0
       (.clk(sim_clk_gen_0_clk));
  design_teste1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  design_teste1_xlconstant_0_1 xlconstant_1
       (.dout(xlconstant_1_dout));
  design_teste1_xlconstant_1_0 xlconstant_2
       (.dout(xlconstant_2_dout));
endmodule
