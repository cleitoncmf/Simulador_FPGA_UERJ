//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Wed Aug 12 15:11:38 2020
//Host        : DESKTOP-5MP17PP running 64-bit major release  (build 9200)
//Command     : generate_target design_Teste_cmf_soma_int.bd
//Design      : design_Teste_cmf_soma_int
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_Teste_cmf_soma_int,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_Teste_cmf_soma_int,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_Teste_cmf_soma_int.hwdef" *) 
module design_Teste_cmf_soma_int
   ();

  wire sim_clk_gen_0_clk;
  wire [31:0]xlconstant_0_dout;
  wire [31:0]xlconstant_1_dout;

  design_Teste_cmf_soma_int_CMF_soma_int_0_0 CMF_soma_int_0
       (.Entrada1(xlconstant_1_dout),
        .Entrada2(xlconstant_0_dout),
        .ap_start(sim_clk_gen_0_clk));
  design_Teste_cmf_soma_int_sim_clk_gen_0_0 sim_clk_gen_0
       (.clk(sim_clk_gen_0_clk));
  design_Teste_cmf_soma_int_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  design_Teste_cmf_soma_int_xlconstant_0_1 xlconstant_1
       (.dout(xlconstant_1_dout));
endmodule
