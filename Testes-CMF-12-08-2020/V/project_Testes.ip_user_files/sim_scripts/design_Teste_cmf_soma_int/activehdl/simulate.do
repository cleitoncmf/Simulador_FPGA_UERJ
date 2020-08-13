onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+design_Teste_cmf_soma_int -L xil_defaultlib -L xlconstant_v1_1_5 -L sim_clk_gen_v1_0_2 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.design_Teste_cmf_soma_int xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {design_Teste_cmf_soma_int.udo}

run -all

endsim

quit -force
