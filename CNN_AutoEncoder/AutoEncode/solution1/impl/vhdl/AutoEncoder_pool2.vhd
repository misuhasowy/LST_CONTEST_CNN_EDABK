-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity AutoEncoder_pool2 is
port (
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC;
    conv2_out18_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    conv2_out18_empty_n : IN STD_LOGIC;
    conv2_out18_read : OUT STD_LOGIC;
    pool2_out19_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    pool2_out19_full_n : IN STD_LOGIC;
    pool2_out19_write : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC );
end;


architecture behav of AutoEncoder_pool2 is 
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal internal_ap_ready : STD_LOGIC;
    signal sp_pool_ap_fixed_32_6_5_3_0_1_U0_ap_start : STD_LOGIC;
    signal sp_pool_ap_fixed_32_6_5_3_0_1_U0_ap_done : STD_LOGIC;
    signal sp_pool_ap_fixed_32_6_5_3_0_1_U0_ap_continue : STD_LOGIC;
    signal sp_pool_ap_fixed_32_6_5_3_0_1_U0_ap_idle : STD_LOGIC;
    signal sp_pool_ap_fixed_32_6_5_3_0_1_U0_ap_ready : STD_LOGIC;
    signal sp_pool_ap_fixed_32_6_5_3_0_1_U0_conv2_out18_read : STD_LOGIC;
    signal sp_pool_ap_fixed_32_6_5_3_0_1_U0_pool2_out19_din : STD_LOGIC_VECTOR (31 downto 0);
    signal sp_pool_ap_fixed_32_6_5_3_0_1_U0_pool2_out19_write : STD_LOGIC;
    signal ap_sync_ready : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component AutoEncoder_sp_pool_ap_fixed_32_6_5_3_0_1 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        conv2_out18_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        conv2_out18_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        conv2_out18_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        conv2_out18_empty_n : IN STD_LOGIC;
        conv2_out18_read : OUT STD_LOGIC;
        pool2_out19_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        pool2_out19_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        pool2_out19_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        pool2_out19_full_n : IN STD_LOGIC;
        pool2_out19_write : OUT STD_LOGIC );
    end component;



begin
    sp_pool_ap_fixed_32_6_5_3_0_1_U0 : component AutoEncoder_sp_pool_ap_fixed_32_6_5_3_0_1
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => sp_pool_ap_fixed_32_6_5_3_0_1_U0_ap_start,
        ap_done => sp_pool_ap_fixed_32_6_5_3_0_1_U0_ap_done,
        ap_continue => sp_pool_ap_fixed_32_6_5_3_0_1_U0_ap_continue,
        ap_idle => sp_pool_ap_fixed_32_6_5_3_0_1_U0_ap_idle,
        ap_ready => sp_pool_ap_fixed_32_6_5_3_0_1_U0_ap_ready,
        conv2_out18_dout => conv2_out18_dout,
        conv2_out18_num_data_valid => ap_const_lv2_0,
        conv2_out18_fifo_cap => ap_const_lv2_0,
        conv2_out18_empty_n => conv2_out18_empty_n,
        conv2_out18_read => sp_pool_ap_fixed_32_6_5_3_0_1_U0_conv2_out18_read,
        pool2_out19_din => sp_pool_ap_fixed_32_6_5_3_0_1_U0_pool2_out19_din,
        pool2_out19_num_data_valid => ap_const_lv2_0,
        pool2_out19_fifo_cap => ap_const_lv2_0,
        pool2_out19_full_n => pool2_out19_full_n,
        pool2_out19_write => sp_pool_ap_fixed_32_6_5_3_0_1_U0_pool2_out19_write);





    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if (((real_start = ap_const_logic_1) and (internal_ap_ready = ap_const_logic_0))) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((internal_ap_ready = ap_const_logic_1)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    ap_done <= sp_pool_ap_fixed_32_6_5_3_0_1_U0_ap_done;
    ap_idle <= sp_pool_ap_fixed_32_6_5_3_0_1_U0_ap_idle;
    ap_ready <= sp_pool_ap_fixed_32_6_5_3_0_1_U0_ap_ready;
    ap_sync_ready <= sp_pool_ap_fixed_32_6_5_3_0_1_U0_ap_ready;
    conv2_out18_read <= sp_pool_ap_fixed_32_6_5_3_0_1_U0_conv2_out18_read;
    internal_ap_ready <= ap_sync_ready;
    pool2_out19_din <= sp_pool_ap_fixed_32_6_5_3_0_1_U0_pool2_out19_din;
    pool2_out19_write <= sp_pool_ap_fixed_32_6_5_3_0_1_U0_pool2_out19_write;

    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (start_full_n = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

    sp_pool_ap_fixed_32_6_5_3_0_1_U0_ap_continue <= ap_continue;
    sp_pool_ap_fixed_32_6_5_3_0_1_U0_ap_start <= real_start;
    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

end behav;
