onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+design_T_fixedop -L sim_clk_gen_v1_0_2 -L xil_defaultlib -L xlconstant_v1_1_5 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.design_T_fixedop xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {design_T_fixedop.udo}

run -all

endsim

quit -force
