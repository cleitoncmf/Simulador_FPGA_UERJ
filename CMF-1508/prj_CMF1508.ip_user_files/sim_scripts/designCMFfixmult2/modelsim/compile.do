vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/sim_clk_gen_v1_0_2
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlconstant_v1_1_5

vmap sim_clk_gen_v1_0_2 modelsim_lib/msim/sim_clk_gen_v1_0_2
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_5 modelsim_lib/msim/xlconstant_v1_1_5

vlog -work sim_clk_gen_v1_0_2 -64 -incr \
"../../../../prj_CMF1508.srcs/sources_1/bd/designCMFfixmult2/ipshared/d987/hdl/sim_clk_gen_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/designCMFfixmult2/ip/designCMFfixmult2_sim_clk_gen_0_0/sim/designCMFfixmult2_sim_clk_gen_0_0.v" \

vlog -work xlconstant_v1_1_5 -64 -incr \
"../../../../prj_CMF1508.srcs/sources_1/bd/designCMFfixmult2/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/designCMFfixmult2/ip/designCMFfixmult2_xlconstant_0_0/sim/designCMFfixmult2_xlconstant_0_0.v" \
"../../../bd/designCMFfixmult2/ip/designCMFfixmult2_xlconstant_1_0/sim/designCMFfixmult2_xlconstant_1_0.v" \
"../../../bd/designCMFfixmult2/ip/designCMFfixmult2_xlconstant_1_1/sim/designCMFfixmult2_xlconstant_1_1.v" \
"../../../bd/designCMFfixmult2/sim/designCMFfixmult2.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/designCMFfixmult2/ipshared/0894/CMFfixmult2/solution1/syn/vhdl/CMFfixMult2_mul_mbkb.vhd" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/designCMFfixmult2/ipshared/0894/CMFfixmult2/solution1/impl/verilog/CMFfixMult2_mul_mbkb.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/designCMFfixmult2/ipshared/0894/CMFfixmult2/solution1/syn/vhdl/CMFfixMult2.vhd" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/designCMFfixmult2/ipshared/0894/CMFfixmult2/solution1/impl/verilog/CMFfixMult2.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/designCMFfixmult2/ip/designCMFfixmult2_CMFfixMult2_0_1/sim/designCMFfixmult2_CMFfixMult2_0_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

