onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+design_Tcmffixed -L xil_defaultlib -L xlconstant_v1_1_5 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.design_Tcmffixed xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {design_Tcmffixed.udo}

run -all

endsim

quit -force
