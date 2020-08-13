onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib design_T_fixedop_opt

do {wave.do}

view wave
view structure
view signals

do {design_T_fixedop.udo}

run -all

quit -force
