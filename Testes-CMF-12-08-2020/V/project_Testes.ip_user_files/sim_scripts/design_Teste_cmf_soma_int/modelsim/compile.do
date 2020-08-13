vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlconstant_v1_1_5
vlib modelsim_lib/msim/sim_clk_gen_v1_0_2

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_5 modelsim_lib/msim/xlconstant_v1_1_5
vmap sim_clk_gen_v1_0_2 modelsim_lib/msim/sim_clk_gen_v1_0_2

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_Teste_cmf_soma_int/ipshared/0af8/CMF_soma_int/solution1/syn/vhdl/CMF_soma_int.vhd" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/design_Teste_cmf_soma_int/ipshared/0af8/CMF_soma_int/solution1/impl/verilog/CMF_soma_int.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_Teste_cmf_soma_int/ip/design_Teste_cmf_soma_int_CMF_soma_int_0_0/sim/design_Teste_cmf_soma_int_CMF_soma_int_0_0.vhd" \

vlog -work xlconstant_v1_1_5 -64 -incr \
"../../../../project_Testes.srcs/sources_1/bd/design_Teste_cmf_soma_int/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/design_Teste_cmf_soma_int/ip/design_Teste_cmf_soma_int_xlconstant_0_0/sim/design_Teste_cmf_soma_int_xlconstant_0_0.v" \
"../../../bd/design_Teste_cmf_soma_int/ip/design_Teste_cmf_soma_int_xlconstant_0_1/sim/design_Teste_cmf_soma_int_xlconstant_0_1.v" \

vlog -work sim_clk_gen_v1_0_2 -64 -incr \
"../../../../project_Testes.srcs/sources_1/bd/design_Teste_cmf_soma_int/ipshared/d987/hdl/sim_clk_gen_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/design_Teste_cmf_soma_int/ip/design_Teste_cmf_soma_int_sim_clk_gen_0_0/sim/design_Teste_cmf_soma_int_sim_clk_gen_0_0.v" \
"../../../bd/design_Teste_cmf_soma_int/sim/design_Teste_cmf_soma_int.v" \

vlog -work xil_defaultlib \
"glbl.v"

