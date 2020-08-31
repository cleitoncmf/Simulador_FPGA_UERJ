-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity CMFinterrupt2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    sinc : IN STD_LOGIC_VECTOR (0 downto 0);
    Saida1 : OUT STD_LOGIC_VECTOR (15 downto 0);
    Saida1_ap_vld : OUT STD_LOGIC;
    Saida2 : OUT STD_LOGIC_VECTOR (15 downto 0);
    Saida2_ap_vld : OUT STD_LOGIC );
end;


architecture behav of CMFinterrupt2 is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "CMFinterrupt2,hls_ip_2018_3,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xa7a12tcsg325-1q,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.810000,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=18,HLS_SYN_LUT=46,HLS_VERSION=2018_3}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv16_1 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv16_5 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000101";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal aux_sinc : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal aux_saida2 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    signal tmp_1_fu_76_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_phi_mux_aux_saida2_loc_phi_fu_48_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_fu_59_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (tmp_fu_59_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                aux_saida2 <= tmp_1_fu_76_p2;
                aux_sinc <= sinc;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    Saida1 <= ap_const_lv16_5;

    Saida1_ap_vld_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            Saida1_ap_vld <= ap_const_logic_1;
        else 
            Saida1_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    Saida2 <= ap_phi_mux_aux_saida2_loc_phi_fu_48_p4;

    Saida2_ap_vld_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            Saida2_ap_vld <= ap_const_logic_1;
        else 
            Saida2_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_state1 <= ap_CS_fsm(0);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_aux_saida2_loc_phi_fu_48_p4_assign_proc : process(ap_CS_fsm_state1, aux_saida2, tmp_1_fu_76_p2, tmp_fu_59_p2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
            if ((tmp_fu_59_p2 = ap_const_lv1_0)) then 
                ap_phi_mux_aux_saida2_loc_phi_fu_48_p4 <= aux_saida2;
            elsif ((tmp_fu_59_p2 = ap_const_lv1_1)) then 
                ap_phi_mux_aux_saida2_loc_phi_fu_48_p4 <= tmp_1_fu_76_p2;
            else 
                ap_phi_mux_aux_saida2_loc_phi_fu_48_p4 <= "XXXXXXXXXXXXXXXX";
            end if;
        else 
            ap_phi_mux_aux_saida2_loc_phi_fu_48_p4 <= "XXXXXXXXXXXXXXXX";
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    tmp_1_fu_76_p2 <= std_logic_vector(unsigned(aux_saida2) + unsigned(ap_const_lv16_1));
    tmp_fu_59_p2 <= (sinc xor aux_sinc);
end behav;