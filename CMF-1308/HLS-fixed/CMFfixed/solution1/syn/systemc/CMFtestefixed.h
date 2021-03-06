// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _CMFtestefixed_HH_
#define _CMFtestefixed_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct CMFtestefixed : public sc_module {
    // Port declarations 7
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<18> > Entrada1_V;
    sc_in< sc_lv<18> > Entrada2_V;
    sc_out< sc_lv<18> > ap_return;
    // Port declarations for the virtual clock. 
    sc_in_clk ap_virtual_clock;


    // Module declarations
    CMFtestefixed(sc_module_name name);
    SC_HAS_PROCESS(CMFtestefixed);

    ~CMFtestefixed();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
