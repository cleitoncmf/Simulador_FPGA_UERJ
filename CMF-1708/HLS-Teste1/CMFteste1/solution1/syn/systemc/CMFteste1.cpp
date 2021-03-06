// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "CMFteste1.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic CMFteste1::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic CMFteste1::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<2> CMFteste1::ap_ST_fsm_state1 = "1";
const sc_lv<2> CMFteste1::ap_ST_fsm_state2 = "10";
const sc_lv<32> CMFteste1::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> CMFteste1::ap_const_lv32_1 = "1";
const sc_lv<33> CMFteste1::ap_const_lv33_1851EB8 = "1100001010001111010111000";
const sc_lv<32> CMFteste1::ap_const_lv32_18 = "11000";
const sc_lv<32> CMFteste1::ap_const_lv32_37 = "110111";
const bool CMFteste1::ap_const_boolean_1 = true;

CMFteste1::CMFteste1(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_Saida1_V);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( r_V_fu_69_p2 );

    SC_METHOD(thread_Saida1_V_ap_vld);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_Saida2_V);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( r_V_1_fu_89_p2 );

    SC_METHOD(thread_Saida2_V_ap_vld);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_lhs_V_fu_52_p0);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( Entrada2_V );

    SC_METHOD(thread_lhs_V_fu_52_p1);
    sensitive << ( lhs_V_fu_52_p0 );

    SC_METHOD(thread_r_V_1_fu_89_p0);
    sensitive << ( ret_V_reg_111 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_r_V_1_fu_89_p1);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_cast_fu_66_p1 );

    SC_METHOD(thread_r_V_1_fu_89_p2);
    sensitive << ( r_V_1_fu_89_p0 );
    sensitive << ( r_V_1_fu_89_p1 );

    SC_METHOD(thread_r_V_fu_69_p0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_cast_fu_66_p1 );

    SC_METHOD(thread_r_V_fu_69_p1);
    sensitive << ( Entrada1_V );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_r_V_fu_69_p2);
    sensitive << ( r_V_fu_69_p0 );
    sensitive << ( r_V_fu_69_p1 );

    SC_METHOD(thread_ret_V_fu_56_p2);
    sensitive << ( lhs_V_fu_52_p1 );

    SC_METHOD(thread_tmp_cast_fu_66_p0);
    sensitive << ( Entrada2_V );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_tmp_cast_fu_66_p1);
    sensitive << ( tmp_cast_fu_66_p0 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "01";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "CMFteste1_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, Entrada1_V, "(port)Entrada1_V");
    sc_trace(mVcdFile, Entrada2_V, "(port)Entrada2_V");
    sc_trace(mVcdFile, Saida1_V, "(port)Saida1_V");
    sc_trace(mVcdFile, Saida1_V_ap_vld, "(port)Saida1_V_ap_vld");
    sc_trace(mVcdFile, Saida2_V, "(port)Saida2_V");
    sc_trace(mVcdFile, Saida2_V_ap_vld, "(port)Saida2_V_ap_vld");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, ret_V_fu_56_p2, "ret_V_fu_56_p2");
    sc_trace(mVcdFile, ret_V_reg_111, "ret_V_reg_111");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, lhs_V_fu_52_p0, "lhs_V_fu_52_p0");
    sc_trace(mVcdFile, lhs_V_fu_52_p1, "lhs_V_fu_52_p1");
    sc_trace(mVcdFile, tmp_cast_fu_66_p0, "tmp_cast_fu_66_p0");
    sc_trace(mVcdFile, r_V_fu_69_p0, "r_V_fu_69_p0");
    sc_trace(mVcdFile, tmp_cast_fu_66_p1, "tmp_cast_fu_66_p1");
    sc_trace(mVcdFile, r_V_fu_69_p1, "r_V_fu_69_p1");
    sc_trace(mVcdFile, r_V_fu_69_p2, "r_V_fu_69_p2");
    sc_trace(mVcdFile, r_V_1_fu_89_p0, "r_V_1_fu_89_p0");
    sc_trace(mVcdFile, r_V_1_fu_89_p1, "r_V_1_fu_89_p1");
    sc_trace(mVcdFile, r_V_1_fu_89_p2, "r_V_1_fu_89_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("CMFteste1.hdltvin.dat");
    mHdltvoutHandle.open("CMFteste1.hdltvout.dat");
}

CMFteste1::~CMFteste1() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
}

void CMFteste1::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        ret_V_reg_111 = ret_V_fu_56_p2.read();
    }
}

void CMFteste1::thread_Saida1_V() {
    Saida1_V = r_V_fu_69_p2.read().range(55, 24);
}

void CMFteste1::thread_Saida1_V_ap_vld() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        Saida1_V_ap_vld = ap_const_logic_1;
    } else {
        Saida1_V_ap_vld = ap_const_logic_0;
    }
}

void CMFteste1::thread_Saida2_V() {
    Saida2_V = r_V_1_fu_89_p2.read().range(55, 24);
}

void CMFteste1::thread_Saida2_V_ap_vld() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        Saida2_V_ap_vld = ap_const_logic_1;
    } else {
        Saida2_V_ap_vld = ap_const_logic_0;
    }
}

void CMFteste1::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void CMFteste1::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void CMFteste1::thread_ap_done() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void CMFteste1::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void CMFteste1::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void CMFteste1::thread_lhs_V_fu_52_p0() {
    lhs_V_fu_52_p0 = Entrada2_V.read();
}

void CMFteste1::thread_lhs_V_fu_52_p1() {
    lhs_V_fu_52_p1 = esl_sext<33,32>(lhs_V_fu_52_p0.read());
}

void CMFteste1::thread_r_V_1_fu_89_p0() {
    r_V_1_fu_89_p0 = ret_V_reg_111.read();
}

void CMFteste1::thread_r_V_1_fu_89_p1() {
    r_V_1_fu_89_p1 =  (sc_lv<32>) (tmp_cast_fu_66_p1.read());
}

void CMFteste1::thread_r_V_1_fu_89_p2() {
    r_V_1_fu_89_p2 = (!r_V_1_fu_89_p0.read().is_01() || !r_V_1_fu_89_p1.read().is_01())? sc_lv<56>(): sc_bigint<33>(r_V_1_fu_89_p0.read()) * sc_bigint<32>(r_V_1_fu_89_p1.read());
}

void CMFteste1::thread_r_V_fu_69_p0() {
    r_V_fu_69_p0 =  (sc_lv<32>) (tmp_cast_fu_66_p1.read());
}

void CMFteste1::thread_r_V_fu_69_p1() {
    r_V_fu_69_p1 = Entrada1_V.read();
}

void CMFteste1::thread_r_V_fu_69_p2() {
    r_V_fu_69_p2 = (!r_V_fu_69_p0.read().is_01() || !r_V_fu_69_p1.read().is_01())? sc_lv<56>(): sc_bigint<32>(r_V_fu_69_p0.read()) * sc_bigint<32>(r_V_fu_69_p1.read());
}

void CMFteste1::thread_ret_V_fu_56_p2() {
    ret_V_fu_56_p2 = (!lhs_V_fu_52_p1.read().is_01() || !ap_const_lv33_1851EB8.is_01())? sc_lv<33>(): (sc_bigint<33>(lhs_V_fu_52_p1.read()) + sc_biguint<33>(ap_const_lv33_1851EB8));
}

void CMFteste1::thread_tmp_cast_fu_66_p0() {
    tmp_cast_fu_66_p0 = Entrada2_V.read();
}

void CMFteste1::thread_tmp_cast_fu_66_p1() {
    tmp_cast_fu_66_p1 = esl_sext<56,32>(tmp_cast_fu_66_p0.read());
}

void CMFteste1::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm = "XX";
            break;
    }
}

void CMFteste1::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"Entrada1_V\" :  \"" << Entrada1_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"Entrada2_V\" :  \"" << Entrada2_V.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"Saida1_V\" :  \"" << Saida1_V.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"Saida1_V_ap_vld\" :  \"" << Saida1_V_ap_vld.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"Saida2_V\" :  \"" << Saida2_V.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"Saida2_V_ap_vld\" :  \"" << Saida2_V_ap_vld.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

