vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/sim_clk_gen_v1_0_2
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xlconstant_v1_1_5

vmap sim_clk_gen_v1_0_2 questa_lib/msim/sim_clk_gen_v1_0_2
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_5 questa_lib/msim/xlconstant_v1_1_5

vlog -work sim_clk_gen_v1_0_2 -64 \
"../../../../project_cmf2508.srcs/sources_1/bd/design_RL1/ipshared/d987/hdl/sim_clk_gen_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 \
"../../../bd/design_RL1/ip/design_RL1_sim_clk_gen_0_0/sim/design_RL1_sim_clk_gen_0_0.v" \
"../../../bd/design_RL1/ip/design_RL1_sim_clk_gen_0_1/sim/design_RL1_sim_clk_gen_0_1.v" \

vlog -work xlconstant_v1_1_5 -64 \
"../../../../project_cmf2508.srcs/sources_1/bd/design_RL1/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 \
"../../../bd/design_RL1/ip/design_RL1_xlconstant_0_0/sim/design_RL1_xlconstant_0_0.v" \
"../../../bd/design_RL1/sim/design_RL1.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_RL1/ipshared/ffb4/CMFRL1/solution1/syn/vhdl/CMFRL1_fmul_32ns_cud.vhd" \

vlog -work xil_defaultlib -64 \
"../../../bd/design_RL1/ipshared/ffb4/CMFRL1/solution1/impl/verilog/CMFRL1_fmul_32ns_cud.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_RL1/ipshared/ffb4/CMFRL1/solution1/syn/vhdl/CMFRL1_fadd_32ns_bkb.vhd" \

vlog -work xil_defaultlib -64 \
"../../../bd/design_RL1/ipshared/ffb4/CMFRL1/solution1/impl/verilog/CMFRL1_fadd_32ns_bkb.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_RL1/ipshared/ffb4/CMFRL1/solution1/syn/vhdl/CMFRL1.vhd" \

vlog -work xil_defaultlib -64 \
"../../../bd/design_RL1/ipshared/ffb4/CMFRL1/solution1/impl/verilog/CMFRL1.v" \
"../../../bd/design_RL1/ipshared/ffb4/CMFRL1/solution1/syn/verilog/CMFRL1_fadd_32ns_bkb.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_RL1/ipshared/ffb4/CMFRL1/solution1/impl/vhdl/CMFRL1_fadd_32ns_bkb.vhd" \
"../../../bd/design_RL1/ip/design_RL1_CMFRL1_0_1/sim/design_RL1_CMFRL1_0_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

