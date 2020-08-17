vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/sim_clk_gen_v1_0_2
vlib questa_lib/msim/xlconstant_v1_1_5

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap sim_clk_gen_v1_0_2 questa_lib/msim/sim_clk_gen_v1_0_2
vmap xlconstant_v1_1_5 questa_lib/msim/xlconstant_v1_1_5

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_teste1/ipshared/fdc7/CMFteste1/solution1/syn/vhdl/CMFteste1.vhd" \

vlog -work xil_defaultlib -64 \
"../../../bd/design_teste1/ipshared/fdc7/CMFteste1/solution1/impl/verilog/CMFteste1.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_teste1/ip/design_teste1_CMFteste1_0_0/sim/design_teste1_CMFteste1_0_0.vhd" \

vlog -work sim_clk_gen_v1_0_2 -64 \
"../../../../project_1708.srcs/sources_1/bd/design_teste1/ipshared/d987/hdl/sim_clk_gen_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 \
"../../../bd/design_teste1/ip/design_teste1_sim_clk_gen_0_0/sim/design_teste1_sim_clk_gen_0_0.v" \

vlog -work xlconstant_v1_1_5 -64 \
"../../../../project_1708.srcs/sources_1/bd/design_teste1/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 \
"../../../bd/design_teste1/ip/design_teste1_xlconstant_0_0/sim/design_teste1_xlconstant_0_0.v" \
"../../../bd/design_teste1/ip/design_teste1_xlconstant_0_1/sim/design_teste1_xlconstant_0_1.v" \
"../../../bd/design_teste1/ip/design_teste1_xlconstant_1_0/sim/design_teste1_xlconstant_1_0.v" \
"../../../bd/design_teste1/sim/design_teste1.v" \

vlog -work xil_defaultlib \
"glbl.v"

