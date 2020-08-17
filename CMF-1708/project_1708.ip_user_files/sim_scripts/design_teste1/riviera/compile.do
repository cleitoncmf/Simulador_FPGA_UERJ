vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/sim_clk_gen_v1_0_2
vlib riviera/xlconstant_v1_1_5

vmap xil_defaultlib riviera/xil_defaultlib
vmap sim_clk_gen_v1_0_2 riviera/sim_clk_gen_v1_0_2
vmap xlconstant_v1_1_5 riviera/xlconstant_v1_1_5

vcom -work xil_defaultlib -93 \
"../../../bd/design_teste1/ipshared/fdc7/CMFteste1/solution1/syn/vhdl/CMFteste1.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_teste1/ipshared/fdc7/CMFteste1/solution1/impl/verilog/CMFteste1.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_teste1/ip/design_teste1_CMFteste1_0_0/sim/design_teste1_CMFteste1_0_0.vhd" \

vlog -work sim_clk_gen_v1_0_2  -v2k5 \
"../../../../project_1708.srcs/sources_1/bd/design_teste1/ipshared/d987/hdl/sim_clk_gen_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_teste1/ip/design_teste1_sim_clk_gen_0_0/sim/design_teste1_sim_clk_gen_0_0.v" \

vlog -work xlconstant_v1_1_5  -v2k5 \
"../../../../project_1708.srcs/sources_1/bd/design_teste1/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_teste1/ip/design_teste1_xlconstant_0_0/sim/design_teste1_xlconstant_0_0.v" \
"../../../bd/design_teste1/ip/design_teste1_xlconstant_0_1/sim/design_teste1_xlconstant_0_1.v" \
"../../../bd/design_teste1/ip/design_teste1_xlconstant_1_0/sim/design_teste1_xlconstant_1_0.v" \
"../../../bd/design_teste1/sim/design_teste1.v" \

vlog -work xil_defaultlib \
"glbl.v"

