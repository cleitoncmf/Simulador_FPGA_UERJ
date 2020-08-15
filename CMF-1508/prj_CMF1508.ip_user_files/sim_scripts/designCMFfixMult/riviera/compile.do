vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/sim_clk_gen_v1_0_2
vlib riviera/xlconstant_v1_1_5

vmap xil_defaultlib riviera/xil_defaultlib
vmap sim_clk_gen_v1_0_2 riviera/sim_clk_gen_v1_0_2
vmap xlconstant_v1_1_5 riviera/xlconstant_v1_1_5

vcom -work xil_defaultlib -93 \
"../../../bd/designCMFfixMult/ipshared/38bf/CMF-fixMult/solution1/syn/vhdl/CMFfixMult_mul_mubkb.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/designCMFfixMult/ipshared/38bf/CMF-fixMult/solution1/impl/verilog/CMFfixMult_mul_mubkb.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/designCMFfixMult/ipshared/38bf/CMF-fixMult/solution1/syn/vhdl/CMFfixMult.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/designCMFfixMult/ipshared/38bf/CMF-fixMult/solution1/impl/verilog/CMFfixMult.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/designCMFfixMult/ip/designCMFfixMult_CMFfixMult_0_0/sim/designCMFfixMult_CMFfixMult_0_0.vhd" \

vlog -work sim_clk_gen_v1_0_2  -v2k5 \
"../../../../prj_CMF1508.srcs/sources_1/bd/designCMFfixMult/ipshared/d987/hdl/sim_clk_gen_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/designCMFfixMult/ip/designCMFfixMult_sim_clk_gen_0_0/sim/designCMFfixMult_sim_clk_gen_0_0.v" \

vlog -work xlconstant_v1_1_5  -v2k5 \
"../../../../prj_CMF1508.srcs/sources_1/bd/designCMFfixMult/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/designCMFfixMult/ip/designCMFfixMult_xlconstant_0_0/sim/designCMFfixMult_xlconstant_0_0.v" \
"../../../bd/designCMFfixMult/ip/designCMFfixMult_xlconstant_0_1/sim/designCMFfixMult_xlconstant_0_1.v" \
"../../../bd/designCMFfixMult/ip/designCMFfixMult_xlconstant_0_2/sim/designCMFfixMult_xlconstant_0_2.v" \
"../../../bd/designCMFfixMult/ip/designCMFfixMult_xlconstant_0_3/sim/designCMFfixMult_xlconstant_0_3.v" \
"../../../bd/designCMFfixMult/ip/designCMFfixMult_xlconstant_0_4/sim/designCMFfixMult_xlconstant_0_4.v" \
"../../../bd/designCMFfixMult/sim/designCMFfixMult.v" \

vlog -work xil_defaultlib \
"glbl.v"

