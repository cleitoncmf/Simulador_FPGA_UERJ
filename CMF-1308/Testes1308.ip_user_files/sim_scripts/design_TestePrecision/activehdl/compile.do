vlib work
vlib activehdl

vlib activehdl/sim_clk_gen_v1_0_2
vlib activehdl/xil_defaultlib

vmap sim_clk_gen_v1_0_2 activehdl/sim_clk_gen_v1_0_2
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work sim_clk_gen_v1_0_2  -v2k5 \
"../../../../Testes1308.srcs/sources_1/bd/design_TestePrecision/ipshared/d987/hdl/sim_clk_gen_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_TestePrecision/ip/design_TestePrecision_sim_clk_gen_0_0/sim/design_TestePrecision_sim_clk_gen_0_0.v" \
"../../../bd/design_TestePrecision/sim/design_TestePrecision.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_TestePrecision/ipshared/ce9f/CMFtesteprecision/solution1/syn/vhdl/CMFtestePrecision.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_TestePrecision/ipshared/ce9f/CMFtesteprecision/solution1/impl/verilog/CMFtestePrecision.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_TestePrecision/ip/design_TestePrecision_CMFtestePrecision_0_0/sim/design_TestePrecision_CMFtestePrecision_0_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

