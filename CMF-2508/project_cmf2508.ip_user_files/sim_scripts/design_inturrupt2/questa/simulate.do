onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib design_inturrupt2_opt

do {wave.do}

view wave
view structure
view signals

do {design_inturrupt2.udo}

run -all

quit -force
