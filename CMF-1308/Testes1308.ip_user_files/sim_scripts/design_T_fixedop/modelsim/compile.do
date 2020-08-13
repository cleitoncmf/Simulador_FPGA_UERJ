vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/sim_clk_gen_v1_0_2
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlconstant_v1_1_5

vmap sim_clk_gen_v1_0_2 modelsim_lib/msim/sim_clk_gen_v1_0_2
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_5 modelsim_lib/msim/xlconstant_v1_1_5

vlog -work sim_clk_gen_v1_0_2 -64 -incr \
"../../../../Testes1308.srcs/sources_1/bd/design_T_fixedop/ipshared/d987/hdl/sim_clk_gen_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/design_T_fixedop/ip/design_T_fixedop_sim_clk_gen_0_0/sim/design_T_fixedop_sim_clk_gen_0_0.v" \

vlog -work xlconstant_v1_1_5 -64 -incr \
"../../../../Testes1308.srcs/sources_1/bd/design_T_fixedop/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/design_T_fixedop/ip/design_T_fixedop_xlconstant_0_0/sim/design_T_fixedop_xlconstant_0_0.v" \
"../../../bd/design_T_fixedop/ip/design_T_fixedop_xlconstant_0_1/sim/design_T_fixedop_xlconstant_0_1.v" \
"../../../bd/design_T_fixedop/sim/design_T_fixedop.v" \
"../../../bd/design_T_fixedop/ip/design_T_fixedop_xlconstant_1_0/sim/design_T_fixedop_xlconstant_1_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_T_fixedop/ipshared/bb4f/CMFfixedop/solution1/syn/vhdl/CMFfixedop_mul_mubkb.vhd" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/design_T_fixedop/ipshared/bb4f/CMFfixedop/solution1/impl/verilog/CMFfixedop_mul_mubkb.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_T_fixedop/ipshared/bb4f/CMFfixedop/solution1/syn/vhdl/CMFfixedop.vhd" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/design_T_fixedop/ipshared/bb4f/CMFfixedop/solution1/impl/verilog/CMFfixedop.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_T_fixedop/ip/design_T_fixedop_CMFfixedop_0_1/sim/design_T_fixedop_CMFfixedop_0_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

