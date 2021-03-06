vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/sim_clk_gen_v1_0_2
vlib questa_lib/msim/xlconstant_v1_1_5

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap sim_clk_gen_v1_0_2 questa_lib/msim/sim_clk_gen_v1_0_2
vmap xlconstant_v1_1_5 questa_lib/msim/xlconstant_v1_1_5

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_interrupt/ipshared/b2b0/CMFinterrupt/solution1/syn/vhdl/CMFinterrupt.vhd" \

vlog -work xil_defaultlib -64 \
"../../../bd/design_interrupt/ipshared/b2b0/CMFinterrupt/solution1/impl/verilog/CMFinterrupt.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_interrupt/ip/design_interrupt_CMFinterrupt_0_0/sim/design_interrupt_CMFinterrupt_0_0.vhd" \

vlog -work sim_clk_gen_v1_0_2 -64 \
"../../../../project_cmf2508.srcs/sources_1/bd/design_interrupt/ipshared/d987/hdl/sim_clk_gen_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 \
"../../../bd/design_interrupt/ip/design_interrupt_sim_clk_gen_0_0/sim/design_interrupt_sim_clk_gen_0_0.v" \

vlog -work xlconstant_v1_1_5 -64 \
"../../../../project_cmf2508.srcs/sources_1/bd/design_interrupt/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 \
"../../../bd/design_interrupt/ip/design_interrupt_xlconstant_0_0/sim/design_interrupt_xlconstant_0_0.v" \
"../../../bd/design_interrupt/ip/design_interrupt_sim_clk_gen_0_1/sim/design_interrupt_sim_clk_gen_0_1.v" \
"../../../bd/design_interrupt/sim/design_interrupt.v" \

vlog -work xil_defaultlib \
"glbl.v"

