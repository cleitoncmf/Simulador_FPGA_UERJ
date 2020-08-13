vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xlconstant_v1_1_5

vmap xil_defaultlib riviera/xil_defaultlib
vmap xlconstant_v1_1_5 riviera/xlconstant_v1_1_5

vcom -work xil_defaultlib -93 \
"../../../bd/design_Tcmffixed/ipshared/e3e1/CMFfixed/solution1/syn/vhdl/CMFtestefixed.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_Tcmffixed/ipshared/e3e1/CMFfixed/solution1/impl/verilog/CMFtestefixed.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_Tcmffixed/ip/design_Tcmffixed_CMFtestefixed_0_0/sim/design_Tcmffixed_CMFtestefixed_0_0.vhd" \

vlog -work xlconstant_v1_1_5  -v2k5 \
"../../../../Testes1308.srcs/sources_1/bd/design_Tcmffixed/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_Tcmffixed/ip/design_Tcmffixed_xlconstant_0_0/sim/design_Tcmffixed_xlconstant_0_0.v" \
"../../../bd/design_Tcmffixed/ip/design_Tcmffixed_xlconstant_0_1/sim/design_Tcmffixed_xlconstant_0_1.v" \
"../../../bd/design_Tcmffixed/sim/design_Tcmffixed.v" \

vlog -work xil_defaultlib \
"glbl.v"

