############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project CMFfixmult2
set_top CMFfixMult2
add_files CMFfixmult2.cpp
add_files CMFfixmult2.h
open_solution "solution1"
set_part {xa7a12tcsg325-1q}
create_clock -period 10 -name default
#source "./CMFfixmult2/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
