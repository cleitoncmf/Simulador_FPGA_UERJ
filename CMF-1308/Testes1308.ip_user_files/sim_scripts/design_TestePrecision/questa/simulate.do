onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib design_TestePrecision_opt

do {wave.do}

view wave
view structure
view signals

do {design_TestePrecision.udo}

run -all

quit -force
