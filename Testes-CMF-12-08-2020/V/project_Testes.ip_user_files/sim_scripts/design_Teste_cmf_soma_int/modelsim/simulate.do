onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xlconstant_v1_1_5 -L sim_clk_gen_v1_0_2 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.design_Teste_cmf_soma_int xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {design_Teste_cmf_soma_int.udo}

run -all

quit -force
