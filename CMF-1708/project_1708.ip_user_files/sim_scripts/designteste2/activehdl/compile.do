vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/sim_clk_gen_v1_0_2
vlib activehdl/xlconstant_v1_1_5

vmap xil_defaultlib activehdl/xil_defaultlib
vmap sim_clk_gen_v1_0_2 activehdl/sim_clk_gen_v1_0_2
vmap xlconstant_v1_1_5 activehdl/xlconstant_v1_1_5

vcom -work xil_defaultlib -93 \
"../../../bd/designteste2/ipshared/45d1/CMFteste2/solution1/syn/vhdl/CMFteste2.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/designteste2/ipshared/45d1/CMFteste2/solution1/impl/verilog/CMFteste2.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/designteste2/ip/designteste2_CMFteste2_0_0/sim/designteste2_CMFteste2_0_0.vhd" \

vlog -work sim_clk_gen_v1_0_2  -v2k5 \
"../../../../project_1708.srcs/sources_1/bd/designteste2/ipshared/d987/hdl/sim_clk_gen_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/designteste2/ip/designteste2_sim_clk_gen_0_0/sim/designteste2_sim_clk_gen_0_0.v" \

vlog -work xlconstant_v1_1_5  -v2k5 \
"../../../../project_1708.srcs/sources_1/bd/designteste2/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/designteste2/ip/designteste2_xlconstant_0_0/sim/designteste2_xlconstant_0_0.v" \
"../../../bd/designteste2/sim/designteste2.v" \

vlog -work xil_defaultlib \
"glbl.v"

