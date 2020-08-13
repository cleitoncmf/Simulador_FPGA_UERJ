onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib design_T_cmf_testa_array_opt

do {wave.do}

view wave
view structure
view signals

do {design_T_cmf_testa_array.udo}

run -all

quit -force
