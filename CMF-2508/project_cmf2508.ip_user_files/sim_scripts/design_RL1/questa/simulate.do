onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib design_RL1_opt

do {wave.do}

view wave
view structure
view signals

do {design_RL1.udo}

run -all

quit -force
