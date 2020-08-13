//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Wed Aug 12 16:23:02 2020
//Host        : DESKTOP-5MP17PP running 64-bit major release  (build 9200)
//Command     : generate_target design_T_cmf_testa_array.bd
//Design      : design_T_cmf_testa_array
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_T_cmf_testa_array,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_T_cmf_testa_array,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_T_cmf_testa_array.hwdef" *) 
module design_T_cmf_testa_array
   ();

  wire sim_clk_gen_0_clk;
  wire [0:0]xlconstant_0_dout;

  design_T_cmf_testa_array_CMF_testa_array_0_0 CMF_testa_array_0
       (.ap_clk(sim_clk_gen_0_clk),
        .ap_rst(xlconstant_0_dout),
        .ap_start(xlconstant_0_dout));
  design_T_cmf_testa_array_sim_clk_gen_0_0 sim_clk_gen_0
       (.clk(sim_clk_gen_0_clk));
  design_T_cmf_testa_array_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
