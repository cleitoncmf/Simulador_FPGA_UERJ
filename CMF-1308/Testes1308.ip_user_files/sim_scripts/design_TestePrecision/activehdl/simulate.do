onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+design_TestePrecision -L sim_clk_gen_v1_0_2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.design_TestePrecision xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {design_TestePrecision.udo}

run -all

endsim

quit -force
