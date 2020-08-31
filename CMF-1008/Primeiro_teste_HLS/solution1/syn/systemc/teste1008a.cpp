// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "teste1008a.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic teste1008a::ap_const_logic_1 = sc_dt::Log_1;
const sc_lv<32> teste1008a::ap_const_lv32_1 = "1";
const sc_logic teste1008a::ap_const_logic_0 = sc_dt::Log_0;
const bool teste1008a::ap_const_boolean_1 = true;

teste1008a::teste1008a(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );

    SC_METHOD(thread_ap_idle);

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_start );

    SC_METHOD(thread_ap_return);
    sensitive << ( ap_start );
    sensitive << ( entrada );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_virtual_clock.pos() );

    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "teste1008a_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, entrada, "(port)entrada");
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
#endif

    }
    mHdltvinHandle.open("teste1008a.hdltvin.dat");
    mHdltvoutHandle.open("teste1008a.hdltvout.dat");
}

teste1008a::~teste1008a() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
}

void teste1008a::thread_ap_done() {
    ap_done = ap_start.read();
}

void teste1008a::thread_ap_idle() {
    ap_idle = ap_const_logic_1;
}

void teste1008a::thread_ap_ready() {
    ap_ready = ap_start.read();
}

void teste1008a::thread_ap_return() {
    ap_return = (!entrada.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_biguint<32>(entrada.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void teste1008a::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"entrada\" :  \"" << entrada.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_return\" :  \"" << ap_return.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

