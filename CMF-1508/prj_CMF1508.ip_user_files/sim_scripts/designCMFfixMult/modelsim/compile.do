vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/sim_clk_gen_v1_0_2
vlib modelsim_lib/msim/xlconstant_v1_1_5

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap sim_clk_gen_v1_0_2 modelsim_lib/msim/sim_clk_gen_v1_0_2
vmap xlconstant_v1_1_5 modelsim_lib/msim/xlconstant_v1_1_5

vcom -work xil_defaultlib -64 -93 \
"../../../bd/designCMFfixMult/ipshared/38bf/CMF-fixMult/solution1/syn/vhdl/CMFfixMult_mul_mubkb.vhd" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/designCMFfixMult/ipshared/38bf/CMF-fixMult/solution1/impl/verilog/CMFfixMult_mul_mubkb.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/designCMFfixMult/ipshared/38bf/CMF-fixMult/solution1/syn/vhdl/CMFfixMult.vhd" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/designCMFfixMult/ipshared/38bf/CMF-fixMult/solution1/impl/verilog/CMFfixMult.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/designCMFfixMult/ip/designCMFfixMult_CMFfixMult_0_0/sim/designCMFfixMult_CMFfixMult_0_0.vhd" \

vlog -work sim_clk_gen_v1_0_2 -64 -incr \
"../../../../prj_CMF1508.srcs/sources_1/bd/designCMFfixMult/ipshared/d987/hdl/sim_clk_gen_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/designCMFfixMult/ip/designCMFfixMult_sim_clk_gen_0_0/sim/designCMFfixMult_sim_clk_gen_0_0.v" \

vlog -work xlconstant_v1_1_5 -64 -incr \
"../../../../prj_CMF1508.srcs/sources_1/bd/designCMFfixMult/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/designCMFfixMult/ip/designCMFfixMult_xlconstant_0_0/sim/designCMFfixMult_xlconstant_0_0.v" \
"../../../bd/designCMFfixMult/ip/designCMFfixMult_xlconstant_0_1/sim/designCMFfixMult_xlconstant_0_1.v" \
"../../../bd/designCMFfixMult/ip/designCMFfixMult_xlconstant_0_2/sim/designCMFfixMult_xlconstant_0_2.v" \
"../../../bd/designCMFfixMult/ip/designCMFfixMult_xlconstant_0_3/sim/designCMFfixMult_xlconstant_0_3.v" \
"../../../bd/designCMFfixMult/ip/designCMFfixMult_xlconstant_0_4/sim/designCMFfixMult_xlconstant_0_4.v" \
"../../../bd/designCMFfixMult/sim/designCMFfixMult.v" \

vlog -work xil_defaultlib \
"glbl.v"

