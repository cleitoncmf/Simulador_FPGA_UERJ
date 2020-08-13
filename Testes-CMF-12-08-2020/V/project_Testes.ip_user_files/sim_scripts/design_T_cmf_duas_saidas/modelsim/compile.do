vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlconstant_v1_1_5

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_5 modelsim_lib/msim/xlconstant_v1_1_5

vlog -work xil_defaultlib -64 -incr \
"../../../bd/design_T_cmf_duas_saidas/ipshared/fa27/CMF_duas_saidas/solution1/impl/ip/hdl/verilog/CMF_duas_saidas.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_T_cmf_duas_saidas/ipshared/fa27/CMF_duas_saidas/solution1/impl/ip/hdl/vhdl/CMF_duas_saidas.vhd" \
"../../../bd/design_T_cmf_duas_saidas/ip/design_T_cmf_duas_saidas_CMF_duas_saidas_0_0/sim/design_T_cmf_duas_saidas_CMF_duas_saidas_0_0.vhd" \

vlog -work xlconstant_v1_1_5 -64 -incr \
"../../../../project_Testes.srcs/sources_1/bd/design_T_cmf_duas_saidas/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/design_T_cmf_duas_saidas/ip/design_T_cmf_duas_saidas_xlconstant_0_0/sim/design_T_cmf_duas_saidas_xlconstant_0_0.v" \
"../../../bd/design_T_cmf_duas_saidas/sim/design_T_cmf_duas_saidas.v" \

vlog -work xil_defaultlib \
"glbl.v"

