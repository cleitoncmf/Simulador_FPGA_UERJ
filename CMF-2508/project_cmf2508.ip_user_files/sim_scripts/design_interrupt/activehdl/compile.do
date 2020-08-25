vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/sim_clk_gen_v1_0_2
vlib activehdl/xlconstant_v1_1_5

vmap xil_defaultlib activehdl/xil_defaultlib
vmap sim_clk_gen_v1_0_2 activehdl/sim_clk_gen_v1_0_2
vmap xlconstant_v1_1_5 activehdl/xlconstant_v1_1_5

vcom -work xil_defaultlib -93 \
"../../../bd/design_interrupt/ipshared/b2b0/CMFinterrupt/solution1/syn/vhdl/CMFinterrupt.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_interrupt/ipshared/b2b0/CMFinterrupt/solution1/impl/verilog/CMFinterrupt.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_interrupt/ip/design_interrupt_CMFinterrupt_0_0/sim/design_interrupt_CMFinterrupt_0_0.vhd" \

vlog -work sim_clk_gen_v1_0_2  -v2k5 \
"../../../../project_cmf2508.srcs/sources_1/bd/design_interrupt/ipshared/d987/hdl/sim_clk_gen_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_interrupt/ip/design_interrupt_sim_clk_gen_0_0/sim/design_interrupt_sim_clk_gen_0_0.v" \

vlog -work xlconstant_v1_1_5  -v2k5 \
"../../../../project_cmf2508.srcs/sources_1/bd/design_interrupt/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_interrupt/ip/design_interrupt_xlconstant_0_0/sim/design_interrupt_xlconstant_0_0.v" \
"../../../bd/design_interrupt/ip/design_interrupt_sim_clk_gen_0_1/sim/design_interrupt_sim_clk_gen_0_1.v" \
"../../../bd/design_interrupt/sim/design_interrupt.v" \

vlog -work xil_defaultlib \
"glbl.v"

