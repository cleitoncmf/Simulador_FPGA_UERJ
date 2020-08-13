vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xlconstant_v1_1_5

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xlconstant_v1_1_5 activehdl/xlconstant_v1_1_5

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_T_cmf_duas_saidas/ipshared/fa27/CMF_duas_saidas/solution1/impl/ip/hdl/verilog/CMF_duas_saidas.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_T_cmf_duas_saidas/ipshared/fa27/CMF_duas_saidas/solution1/impl/ip/hdl/vhdl/CMF_duas_saidas.vhd" \
"../../../bd/design_T_cmf_duas_saidas/ip/design_T_cmf_duas_saidas_CMF_duas_saidas_0_0/sim/design_T_cmf_duas_saidas_CMF_duas_saidas_0_0.vhd" \

vlog -work xlconstant_v1_1_5  -v2k5 \
"../../../../project_Testes.srcs/sources_1/bd/design_T_cmf_duas_saidas/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_T_cmf_duas_saidas/ip/design_T_cmf_duas_saidas_xlconstant_0_0/sim/design_T_cmf_duas_saidas_xlconstant_0_0.v" \
"../../../bd/design_T_cmf_duas_saidas/sim/design_T_cmf_duas_saidas.v" \

vlog -work xil_defaultlib \
"glbl.v"

