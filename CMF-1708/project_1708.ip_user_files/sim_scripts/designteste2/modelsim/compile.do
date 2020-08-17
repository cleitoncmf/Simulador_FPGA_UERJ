vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/sim_clk_gen_v1_0_2
vlib modelsim_lib/msim/xlconstant_v1_1_5

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap sim_clk_gen_v1_0_2 modelsim_lib/msim/sim_clk_gen_v1_0_2
vmap xlconstant_v1_1_5 modelsim_lib/msim/xlconstant_v1_1_5

vcom -work xil_defaultlib -64 -93 \
"../../../bd/designteste2/ipshared/45d1/CMFteste2/solution1/syn/vhdl/CMFteste2.vhd" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/designteste2/ipshared/45d1/CMFteste2/solution1/impl/verilog/CMFteste2.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/designteste2/ip/designteste2_CMFteste2_0_0/sim/designteste2_CMFteste2_0_0.vhd" \

vlog -work sim_clk_gen_v1_0_2 -64 -incr \
"../../../../project_1708.srcs/sources_1/bd/designteste2/ipshared/d987/hdl/sim_clk_gen_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/designteste2/ip/designteste2_sim_clk_gen_0_0/sim/designteste2_sim_clk_gen_0_0.v" \

vlog -work xlconstant_v1_1_5 -64 -incr \
"../../../../project_1708.srcs/sources_1/bd/designteste2/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/designteste2/ip/designteste2_xlconstant_0_0/sim/designteste2_xlconstant_0_0.v" \
"../../../bd/designteste2/sim/designteste2.v" \

vlog -work xil_defaultlib \
"glbl.v"

