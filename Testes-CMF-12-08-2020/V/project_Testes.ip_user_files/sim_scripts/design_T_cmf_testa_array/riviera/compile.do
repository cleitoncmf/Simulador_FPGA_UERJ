vlib work
vlib riviera

vlib riviera/sim_clk_gen_v1_0_2
vlib riviera/xil_defaultlib
vlib riviera/xlconstant_v1_1_5

vmap sim_clk_gen_v1_0_2 riviera/sim_clk_gen_v1_0_2
vmap xil_defaultlib riviera/xil_defaultlib
vmap xlconstant_v1_1_5 riviera/xlconstant_v1_1_5

vlog -work sim_clk_gen_v1_0_2  -v2k5 \
"../../../../project_Testes.srcs/sources_1/bd/design_T_cmf_testa_array/ipshared/d987/hdl/sim_clk_gen_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_T_cmf_testa_array/ip/design_T_cmf_testa_array_sim_clk_gen_0_0/sim/design_T_cmf_testa_array_sim_clk_gen_0_0.v" \
"../../../bd/design_T_cmf_testa_array/sim/design_T_cmf_testa_array.v" \

vlog -work xlconstant_v1_1_5  -v2k5 \
"../../../../project_Testes.srcs/sources_1/bd/design_T_cmf_testa_array/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_T_cmf_testa_array/ip/design_T_cmf_testa_array_xlconstant_0_0/sim/design_T_cmf_testa_array_xlconstant_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_T_cmf_testa_array/ipshared/181f/CMF_testa_array/solution1/syn/vhdl/CMF_testa_array.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_T_cmf_testa_array/ipshared/181f/CMF_testa_array/solution1/impl/verilog/CMF_testa_array.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_T_cmf_testa_array/ip/design_T_cmf_testa_array_CMF_testa_array_0_0/sim/design_T_cmf_testa_array_CMF_testa_array_0_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

