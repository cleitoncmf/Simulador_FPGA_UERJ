-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:user:CMFfixMult:1.0
-- IP Revision: 2

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY designCMFfixMult_CMFfixMult_0_0 IS
  PORT (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    EntradaA1_V : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    EntradaA2_V : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    EntradaB1_V : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    EntradaB2_V : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    SaidaA1_V : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    SaidaA1_V_ap_vld : OUT STD_LOGIC;
    SaidaA2_V : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    SaidaA2_V_ap_vld : OUT STD_LOGIC;
    SaidaB1_V : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
    SaidaB1_V_ap_vld : OUT STD_LOGIC
  );
END designCMFfixMult_CMFfixMult_0_0;

ARCHITECTURE designCMFfixMult_CMFfixMult_0_0_arch OF designCMFfixMult_CMFfixMult_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF designCMFfixMult_CMFfixMult_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT CMFfixMult IS
    PORT (
      ap_clk : IN STD_LOGIC;
      ap_rst : IN STD_LOGIC;
      ap_start : IN STD_LOGIC;
      ap_done : OUT STD_LOGIC;
      ap_idle : OUT STD_LOGIC;
      ap_ready : OUT STD_LOGIC;
      EntradaA1_V : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      EntradaA2_V : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      EntradaB1_V : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
      EntradaB2_V : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
      SaidaA1_V : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      SaidaA1_V_ap_vld : OUT STD_LOGIC;
      SaidaA2_V : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      SaidaA2_V_ap_vld : OUT STD_LOGIC;
      SaidaB1_V : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
      SaidaB1_V_ap_vld : OUT STD_LOGIC
    );
  END COMPONENT CMFfixMult;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF designCMFfixMult_CMFfixMult_0_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_rst: SIGNAL IS "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_clk: SIGNAL IS "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN designCMFfixMult_sim_clk_gen_0_0_clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
BEGIN
  U0 : CMFfixMult
    PORT MAP (
      ap_clk => ap_clk,
      ap_rst => ap_rst,
      ap_start => ap_start,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      EntradaA1_V => EntradaA1_V,
      EntradaA2_V => EntradaA2_V,
      EntradaB1_V => EntradaB1_V,
      EntradaB2_V => EntradaB2_V,
      SaidaA1_V => SaidaA1_V,
      SaidaA1_V_ap_vld => SaidaA1_V_ap_vld,
      SaidaA2_V => SaidaA2_V,
      SaidaA2_V_ap_vld => SaidaA2_V_ap_vld,
      SaidaB1_V => SaidaB1_V,
      SaidaB1_V_ap_vld => SaidaB1_V_ap_vld
    );
END designCMFfixMult_CMFfixMult_0_0_arch;
