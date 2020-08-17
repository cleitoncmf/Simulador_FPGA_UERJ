onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+designteste2 -L xil_defaultlib -L sim_clk_gen_v1_0_2 -L xlconstant_v1_1_5 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.designteste2 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {designteste2.udo}

run -all

endsim

quit -force
