onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib designCMFfixMult_opt

do {wave.do}

view wave
view structure
view signals

do {designCMFfixMult.udo}

run -all

quit -force
