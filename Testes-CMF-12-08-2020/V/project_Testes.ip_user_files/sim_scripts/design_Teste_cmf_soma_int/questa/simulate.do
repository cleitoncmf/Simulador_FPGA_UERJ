onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib design_Teste_cmf_soma_int_opt

do {wave.do}

view wave
view structure
view signals

do {design_Teste_cmf_soma_int.udo}

run -all

quit -force
