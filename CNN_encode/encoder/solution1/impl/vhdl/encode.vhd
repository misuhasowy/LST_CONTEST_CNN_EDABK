-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity encode is
port (
    full_in_AXI_TDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    full_in_AXI_TKEEP : IN STD_LOGIC_VECTOR (3 downto 0);
    full_in_AXI_TSTRB : IN STD_LOGIC_VECTOR (3 downto 0);
    full_in_AXI_TUSER : IN STD_LOGIC_VECTOR (1 downto 0);
    full_in_AXI_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    full_in_AXI_TID : IN STD_LOGIC_VECTOR (4 downto 0);
    full_in_AXI_TDEST : IN STD_LOGIC_VECTOR (5 downto 0);
    full_out_AXI_TDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    full_out_AXI_TKEEP : OUT STD_LOGIC_VECTOR (3 downto 0);
    full_out_AXI_TSTRB : OUT STD_LOGIC_VECTOR (3 downto 0);
    full_out_AXI_TUSER : OUT STD_LOGIC_VECTOR (1 downto 0);
    full_out_AXI_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
    full_out_AXI_TID : OUT STD_LOGIC_VECTOR (4 downto 0);
    full_out_AXI_TDEST : OUT STD_LOGIC_VECTOR (5 downto 0);
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    full_in_AXI_TVALID : IN STD_LOGIC;
    full_in_AXI_TREADY : OUT STD_LOGIC;
    ap_start : IN STD_LOGIC;
    full_out_AXI_TVALID : OUT STD_LOGIC;
    full_out_AXI_TREADY : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC );
end;


architecture behav of encode is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "encode_encode,hls_ip_2022_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu7ev-ffvc1156-2-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=7.265250,HLS_SYN_LAT=14404,HLS_SYN_TPT=14404,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=195542,HLS_SYN_LUT=226023,HLS_VERSION=2022_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';

    signal ap_rst_n_inv : STD_LOGIC;
    signal castIn_U0_ap_start : STD_LOGIC;
    signal castIn_U0_ap_done : STD_LOGIC;
    signal castIn_U0_ap_continue : STD_LOGIC;
    signal castIn_U0_ap_idle : STD_LOGIC;
    signal castIn_U0_ap_ready : STD_LOGIC;
    signal castIn_U0_full_in_float15_din : STD_LOGIC_VECTOR (31 downto 0);
    signal castIn_U0_full_in_float15_write : STD_LOGIC;
    signal castIn_U0_start_out : STD_LOGIC;
    signal castIn_U0_start_write : STD_LOGIC;
    signal castIn_U0_full_in_AXI_TREADY : STD_LOGIC;
    signal conv1_U0_ap_start : STD_LOGIC;
    signal conv1_U0_ap_done : STD_LOGIC;
    signal conv1_U0_ap_continue : STD_LOGIC;
    signal conv1_U0_ap_idle : STD_LOGIC;
    signal conv1_U0_ap_ready : STD_LOGIC;
    signal conv1_U0_full_in_float15_read : STD_LOGIC;
    signal conv1_U0_conv1_out17_din : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1_U0_conv1_out17_write : STD_LOGIC;
    signal conv1_U0_start_out : STD_LOGIC;
    signal conv1_U0_start_write : STD_LOGIC;
    signal pool1_U0_ap_start : STD_LOGIC;
    signal pool1_U0_ap_done : STD_LOGIC;
    signal pool1_U0_ap_continue : STD_LOGIC;
    signal pool1_U0_ap_idle : STD_LOGIC;
    signal pool1_U0_ap_ready : STD_LOGIC;
    signal pool1_U0_start_out : STD_LOGIC;
    signal pool1_U0_start_write : STD_LOGIC;
    signal pool1_U0_conv1_out17_read : STD_LOGIC;
    signal pool1_U0_pool1_out18_din : STD_LOGIC_VECTOR (31 downto 0);
    signal pool1_U0_pool1_out18_write : STD_LOGIC;
    signal conv2_U0_ap_start : STD_LOGIC;
    signal conv2_U0_ap_done : STD_LOGIC;
    signal conv2_U0_ap_continue : STD_LOGIC;
    signal conv2_U0_ap_idle : STD_LOGIC;
    signal conv2_U0_ap_ready : STD_LOGIC;
    signal conv2_U0_pool1_out18_read : STD_LOGIC;
    signal conv2_U0_conv2_out19_din : STD_LOGIC_VECTOR (31 downto 0);
    signal conv2_U0_conv2_out19_write : STD_LOGIC;
    signal conv2_U0_start_out : STD_LOGIC;
    signal conv2_U0_start_write : STD_LOGIC;
    signal pool2_U0_ap_start : STD_LOGIC;
    signal pool2_U0_ap_done : STD_LOGIC;
    signal pool2_U0_ap_continue : STD_LOGIC;
    signal pool2_U0_ap_idle : STD_LOGIC;
    signal pool2_U0_ap_ready : STD_LOGIC;
    signal pool2_U0_start_out : STD_LOGIC;
    signal pool2_U0_start_write : STD_LOGIC;
    signal pool2_U0_conv2_out19_read : STD_LOGIC;
    signal pool2_U0_pool2_out20_din : STD_LOGIC_VECTOR (31 downto 0);
    signal pool2_U0_pool2_out20_write : STD_LOGIC;
    signal conv3_U0_ap_start : STD_LOGIC;
    signal conv3_U0_ap_done : STD_LOGIC;
    signal conv3_U0_ap_continue : STD_LOGIC;
    signal conv3_U0_ap_idle : STD_LOGIC;
    signal conv3_U0_ap_ready : STD_LOGIC;
    signal conv3_U0_pool2_out20_read : STD_LOGIC;
    signal conv3_U0_conv3_out21_din : STD_LOGIC_VECTOR (31 downto 0);
    signal conv3_U0_conv3_out21_write : STD_LOGIC;
    signal conv3_U0_start_out : STD_LOGIC;
    signal conv3_U0_start_write : STD_LOGIC;
    signal pool3_U0_ap_start : STD_LOGIC;
    signal pool3_U0_ap_done : STD_LOGIC;
    signal pool3_U0_ap_continue : STD_LOGIC;
    signal pool3_U0_ap_idle : STD_LOGIC;
    signal pool3_U0_ap_ready : STD_LOGIC;
    signal pool3_U0_start_out : STD_LOGIC;
    signal pool3_U0_start_write : STD_LOGIC;
    signal pool3_U0_conv3_out21_read : STD_LOGIC;
    signal pool3_U0_full_out_float16_din : STD_LOGIC_VECTOR (31 downto 0);
    signal pool3_U0_full_out_float16_write : STD_LOGIC;
    signal castOut_U0_ap_start : STD_LOGIC;
    signal castOut_U0_ap_done : STD_LOGIC;
    signal castOut_U0_ap_continue : STD_LOGIC;
    signal castOut_U0_ap_idle : STD_LOGIC;
    signal castOut_U0_ap_ready : STD_LOGIC;
    signal castOut_U0_full_out_float16_read : STD_LOGIC;
    signal castOut_U0_full_out_AXI_TDATA : STD_LOGIC_VECTOR (31 downto 0);
    signal castOut_U0_full_out_AXI_TVALID : STD_LOGIC;
    signal castOut_U0_full_out_AXI_TKEEP : STD_LOGIC_VECTOR (3 downto 0);
    signal castOut_U0_full_out_AXI_TSTRB : STD_LOGIC_VECTOR (3 downto 0);
    signal castOut_U0_full_out_AXI_TUSER : STD_LOGIC_VECTOR (1 downto 0);
    signal castOut_U0_full_out_AXI_TLAST : STD_LOGIC_VECTOR (0 downto 0);
    signal castOut_U0_full_out_AXI_TID : STD_LOGIC_VECTOR (4 downto 0);
    signal castOut_U0_full_out_AXI_TDEST : STD_LOGIC_VECTOR (5 downto 0);
    signal full_in_float_full_n : STD_LOGIC;
    signal full_in_float_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal full_in_float_num_data_valid : STD_LOGIC_VECTOR (1 downto 0);
    signal full_in_float_fifo_cap : STD_LOGIC_VECTOR (1 downto 0);
    signal full_in_float_empty_n : STD_LOGIC;
    signal conv1_out_full_n : STD_LOGIC;
    signal conv1_out_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal conv1_out_num_data_valid : STD_LOGIC_VECTOR (1 downto 0);
    signal conv1_out_fifo_cap : STD_LOGIC_VECTOR (1 downto 0);
    signal conv1_out_empty_n : STD_LOGIC;
    signal pool1_out_full_n : STD_LOGIC;
    signal pool1_out_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal pool1_out_num_data_valid : STD_LOGIC_VECTOR (1 downto 0);
    signal pool1_out_fifo_cap : STD_LOGIC_VECTOR (1 downto 0);
    signal pool1_out_empty_n : STD_LOGIC;
    signal conv2_out_full_n : STD_LOGIC;
    signal conv2_out_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal conv2_out_num_data_valid : STD_LOGIC_VECTOR (1 downto 0);
    signal conv2_out_fifo_cap : STD_LOGIC_VECTOR (1 downto 0);
    signal conv2_out_empty_n : STD_LOGIC;
    signal pool2_out_full_n : STD_LOGIC;
    signal pool2_out_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal pool2_out_num_data_valid : STD_LOGIC_VECTOR (1 downto 0);
    signal pool2_out_fifo_cap : STD_LOGIC_VECTOR (1 downto 0);
    signal pool2_out_empty_n : STD_LOGIC;
    signal conv3_out_full_n : STD_LOGIC;
    signal conv3_out_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal conv3_out_num_data_valid : STD_LOGIC_VECTOR (1 downto 0);
    signal conv3_out_fifo_cap : STD_LOGIC_VECTOR (1 downto 0);
    signal conv3_out_empty_n : STD_LOGIC;
    signal full_out_float_full_n : STD_LOGIC;
    signal full_out_float_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal full_out_float_num_data_valid : STD_LOGIC_VECTOR (1 downto 0);
    signal full_out_float_fifo_cap : STD_LOGIC_VECTOR (1 downto 0);
    signal full_out_float_empty_n : STD_LOGIC;
    signal start_for_conv1_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_conv1_U0_full_n : STD_LOGIC;
    signal start_for_conv1_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_conv1_U0_empty_n : STD_LOGIC;
    signal start_for_pool1_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_pool1_U0_full_n : STD_LOGIC;
    signal start_for_pool1_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_pool1_U0_empty_n : STD_LOGIC;
    signal start_for_conv2_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_conv2_U0_full_n : STD_LOGIC;
    signal start_for_conv2_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_conv2_U0_empty_n : STD_LOGIC;
    signal start_for_pool2_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_pool2_U0_full_n : STD_LOGIC;
    signal start_for_pool2_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_pool2_U0_empty_n : STD_LOGIC;
    signal start_for_conv3_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_conv3_U0_full_n : STD_LOGIC;
    signal start_for_conv3_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_conv3_U0_empty_n : STD_LOGIC;
    signal start_for_pool3_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_pool3_U0_full_n : STD_LOGIC;
    signal start_for_pool3_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_pool3_U0_empty_n : STD_LOGIC;
    signal start_for_castOut_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_castOut_U0_full_n : STD_LOGIC;
    signal start_for_castOut_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_castOut_U0_empty_n : STD_LOGIC;

    component encode_castIn IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        full_in_AXI_TVALID : IN STD_LOGIC;
        full_in_float15_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        full_in_float15_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        full_in_float15_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        full_in_float15_full_n : IN STD_LOGIC;
        full_in_float15_write : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        full_in_AXI_TDATA : IN STD_LOGIC_VECTOR (31 downto 0);
        full_in_AXI_TREADY : OUT STD_LOGIC;
        full_in_AXI_TKEEP : IN STD_LOGIC_VECTOR (3 downto 0);
        full_in_AXI_TSTRB : IN STD_LOGIC_VECTOR (3 downto 0);
        full_in_AXI_TUSER : IN STD_LOGIC_VECTOR (1 downto 0);
        full_in_AXI_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
        full_in_AXI_TID : IN STD_LOGIC_VECTOR (4 downto 0);
        full_in_AXI_TDEST : IN STD_LOGIC_VECTOR (5 downto 0) );
    end component;


    component encode_conv1 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        full_in_float15_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        full_in_float15_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        full_in_float15_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        full_in_float15_empty_n : IN STD_LOGIC;
        full_in_float15_read : OUT STD_LOGIC;
        conv1_out17_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        conv1_out17_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        conv1_out17_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        conv1_out17_full_n : IN STD_LOGIC;
        conv1_out17_write : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC );
    end component;


    component encode_pool1 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        conv1_out17_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        conv1_out17_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        conv1_out17_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        conv1_out17_empty_n : IN STD_LOGIC;
        conv1_out17_read : OUT STD_LOGIC;
        pool1_out18_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        pool1_out18_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        pool1_out18_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        pool1_out18_full_n : IN STD_LOGIC;
        pool1_out18_write : OUT STD_LOGIC );
    end component;


    component encode_conv2 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        pool1_out18_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        pool1_out18_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        pool1_out18_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        pool1_out18_empty_n : IN STD_LOGIC;
        pool1_out18_read : OUT STD_LOGIC;
        conv2_out19_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        conv2_out19_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        conv2_out19_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        conv2_out19_full_n : IN STD_LOGIC;
        conv2_out19_write : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC );
    end component;


    component encode_pool2 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        conv2_out19_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        conv2_out19_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        conv2_out19_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        conv2_out19_empty_n : IN STD_LOGIC;
        conv2_out19_read : OUT STD_LOGIC;
        pool2_out20_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        pool2_out20_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        pool2_out20_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        pool2_out20_full_n : IN STD_LOGIC;
        pool2_out20_write : OUT STD_LOGIC );
    end component;


    component encode_conv3 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        pool2_out20_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        pool2_out20_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        pool2_out20_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        pool2_out20_empty_n : IN STD_LOGIC;
        pool2_out20_read : OUT STD_LOGIC;
        conv3_out21_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        conv3_out21_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        conv3_out21_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        conv3_out21_full_n : IN STD_LOGIC;
        conv3_out21_write : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC );
    end component;


    component encode_pool3 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        conv3_out21_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        conv3_out21_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        conv3_out21_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        conv3_out21_empty_n : IN STD_LOGIC;
        conv3_out21_read : OUT STD_LOGIC;
        full_out_float16_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        full_out_float16_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        full_out_float16_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        full_out_float16_full_n : IN STD_LOGIC;
        full_out_float16_write : OUT STD_LOGIC );
    end component;


    component encode_castOut IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        full_out_float16_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        full_out_float16_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        full_out_float16_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        full_out_float16_empty_n : IN STD_LOGIC;
        full_out_float16_read : OUT STD_LOGIC;
        full_out_AXI_TREADY : IN STD_LOGIC;
        full_out_AXI_TDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
        full_out_AXI_TVALID : OUT STD_LOGIC;
        full_out_AXI_TKEEP : OUT STD_LOGIC_VECTOR (3 downto 0);
        full_out_AXI_TSTRB : OUT STD_LOGIC_VECTOR (3 downto 0);
        full_out_AXI_TUSER : OUT STD_LOGIC_VECTOR (1 downto 0);
        full_out_AXI_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
        full_out_AXI_TID : OUT STD_LOGIC_VECTOR (4 downto 0);
        full_out_AXI_TDEST : OUT STD_LOGIC_VECTOR (5 downto 0) );
    end component;


    component encode_fifo_w32_d2_S IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (31 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (31 downto 0);
        if_num_data_valid : OUT STD_LOGIC_VECTOR (1 downto 0);
        if_fifo_cap : OUT STD_LOGIC_VECTOR (1 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component encode_start_for_conv1_U0 IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component encode_start_for_pool1_U0 IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component encode_start_for_conv2_U0 IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component encode_start_for_pool2_U0 IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component encode_start_for_conv3_U0 IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component encode_start_for_pool3_U0 IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component encode_start_for_castOut_U0 IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;



begin
    castIn_U0 : component encode_castIn
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => castIn_U0_ap_start,
        start_full_n => start_for_conv1_U0_full_n,
        ap_done => castIn_U0_ap_done,
        ap_continue => castIn_U0_ap_continue,
        ap_idle => castIn_U0_ap_idle,
        ap_ready => castIn_U0_ap_ready,
        full_in_AXI_TVALID => full_in_AXI_TVALID,
        full_in_float15_din => castIn_U0_full_in_float15_din,
        full_in_float15_num_data_valid => full_in_float_num_data_valid,
        full_in_float15_fifo_cap => full_in_float_fifo_cap,
        full_in_float15_full_n => full_in_float_full_n,
        full_in_float15_write => castIn_U0_full_in_float15_write,
        start_out => castIn_U0_start_out,
        start_write => castIn_U0_start_write,
        full_in_AXI_TDATA => full_in_AXI_TDATA,
        full_in_AXI_TREADY => castIn_U0_full_in_AXI_TREADY,
        full_in_AXI_TKEEP => full_in_AXI_TKEEP,
        full_in_AXI_TSTRB => full_in_AXI_TSTRB,
        full_in_AXI_TUSER => full_in_AXI_TUSER,
        full_in_AXI_TLAST => full_in_AXI_TLAST,
        full_in_AXI_TID => full_in_AXI_TID,
        full_in_AXI_TDEST => full_in_AXI_TDEST);

    conv1_U0 : component encode_conv1
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => conv1_U0_ap_start,
        start_full_n => start_for_pool1_U0_full_n,
        ap_done => conv1_U0_ap_done,
        ap_continue => conv1_U0_ap_continue,
        ap_idle => conv1_U0_ap_idle,
        ap_ready => conv1_U0_ap_ready,
        full_in_float15_dout => full_in_float_dout,
        full_in_float15_num_data_valid => full_in_float_num_data_valid,
        full_in_float15_fifo_cap => full_in_float_fifo_cap,
        full_in_float15_empty_n => full_in_float_empty_n,
        full_in_float15_read => conv1_U0_full_in_float15_read,
        conv1_out17_din => conv1_U0_conv1_out17_din,
        conv1_out17_num_data_valid => conv1_out_num_data_valid,
        conv1_out17_fifo_cap => conv1_out_fifo_cap,
        conv1_out17_full_n => conv1_out_full_n,
        conv1_out17_write => conv1_U0_conv1_out17_write,
        start_out => conv1_U0_start_out,
        start_write => conv1_U0_start_write);

    pool1_U0 : component encode_pool1
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => pool1_U0_ap_start,
        start_full_n => start_for_conv2_U0_full_n,
        ap_done => pool1_U0_ap_done,
        ap_continue => pool1_U0_ap_continue,
        ap_idle => pool1_U0_ap_idle,
        ap_ready => pool1_U0_ap_ready,
        start_out => pool1_U0_start_out,
        start_write => pool1_U0_start_write,
        conv1_out17_dout => conv1_out_dout,
        conv1_out17_num_data_valid => conv1_out_num_data_valid,
        conv1_out17_fifo_cap => conv1_out_fifo_cap,
        conv1_out17_empty_n => conv1_out_empty_n,
        conv1_out17_read => pool1_U0_conv1_out17_read,
        pool1_out18_din => pool1_U0_pool1_out18_din,
        pool1_out18_num_data_valid => pool1_out_num_data_valid,
        pool1_out18_fifo_cap => pool1_out_fifo_cap,
        pool1_out18_full_n => pool1_out_full_n,
        pool1_out18_write => pool1_U0_pool1_out18_write);

    conv2_U0 : component encode_conv2
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => conv2_U0_ap_start,
        start_full_n => start_for_pool2_U0_full_n,
        ap_done => conv2_U0_ap_done,
        ap_continue => conv2_U0_ap_continue,
        ap_idle => conv2_U0_ap_idle,
        ap_ready => conv2_U0_ap_ready,
        pool1_out18_dout => pool1_out_dout,
        pool1_out18_num_data_valid => pool1_out_num_data_valid,
        pool1_out18_fifo_cap => pool1_out_fifo_cap,
        pool1_out18_empty_n => pool1_out_empty_n,
        pool1_out18_read => conv2_U0_pool1_out18_read,
        conv2_out19_din => conv2_U0_conv2_out19_din,
        conv2_out19_num_data_valid => conv2_out_num_data_valid,
        conv2_out19_fifo_cap => conv2_out_fifo_cap,
        conv2_out19_full_n => conv2_out_full_n,
        conv2_out19_write => conv2_U0_conv2_out19_write,
        start_out => conv2_U0_start_out,
        start_write => conv2_U0_start_write);

    pool2_U0 : component encode_pool2
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => pool2_U0_ap_start,
        start_full_n => start_for_conv3_U0_full_n,
        ap_done => pool2_U0_ap_done,
        ap_continue => pool2_U0_ap_continue,
        ap_idle => pool2_U0_ap_idle,
        ap_ready => pool2_U0_ap_ready,
        start_out => pool2_U0_start_out,
        start_write => pool2_U0_start_write,
        conv2_out19_dout => conv2_out_dout,
        conv2_out19_num_data_valid => conv2_out_num_data_valid,
        conv2_out19_fifo_cap => conv2_out_fifo_cap,
        conv2_out19_empty_n => conv2_out_empty_n,
        conv2_out19_read => pool2_U0_conv2_out19_read,
        pool2_out20_din => pool2_U0_pool2_out20_din,
        pool2_out20_num_data_valid => pool2_out_num_data_valid,
        pool2_out20_fifo_cap => pool2_out_fifo_cap,
        pool2_out20_full_n => pool2_out_full_n,
        pool2_out20_write => pool2_U0_pool2_out20_write);

    conv3_U0 : component encode_conv3
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => conv3_U0_ap_start,
        start_full_n => start_for_pool3_U0_full_n,
        ap_done => conv3_U0_ap_done,
        ap_continue => conv3_U0_ap_continue,
        ap_idle => conv3_U0_ap_idle,
        ap_ready => conv3_U0_ap_ready,
        pool2_out20_dout => pool2_out_dout,
        pool2_out20_num_data_valid => pool2_out_num_data_valid,
        pool2_out20_fifo_cap => pool2_out_fifo_cap,
        pool2_out20_empty_n => pool2_out_empty_n,
        pool2_out20_read => conv3_U0_pool2_out20_read,
        conv3_out21_din => conv3_U0_conv3_out21_din,
        conv3_out21_num_data_valid => conv3_out_num_data_valid,
        conv3_out21_fifo_cap => conv3_out_fifo_cap,
        conv3_out21_full_n => conv3_out_full_n,
        conv3_out21_write => conv3_U0_conv3_out21_write,
        start_out => conv3_U0_start_out,
        start_write => conv3_U0_start_write);

    pool3_U0 : component encode_pool3
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => pool3_U0_ap_start,
        start_full_n => start_for_castOut_U0_full_n,
        ap_done => pool3_U0_ap_done,
        ap_continue => pool3_U0_ap_continue,
        ap_idle => pool3_U0_ap_idle,
        ap_ready => pool3_U0_ap_ready,
        start_out => pool3_U0_start_out,
        start_write => pool3_U0_start_write,
        conv3_out21_dout => conv3_out_dout,
        conv3_out21_num_data_valid => conv3_out_num_data_valid,
        conv3_out21_fifo_cap => conv3_out_fifo_cap,
        conv3_out21_empty_n => conv3_out_empty_n,
        conv3_out21_read => pool3_U0_conv3_out21_read,
        full_out_float16_din => pool3_U0_full_out_float16_din,
        full_out_float16_num_data_valid => full_out_float_num_data_valid,
        full_out_float16_fifo_cap => full_out_float_fifo_cap,
        full_out_float16_full_n => full_out_float_full_n,
        full_out_float16_write => pool3_U0_full_out_float16_write);

    castOut_U0 : component encode_castOut
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => castOut_U0_ap_start,
        ap_done => castOut_U0_ap_done,
        ap_continue => castOut_U0_ap_continue,
        ap_idle => castOut_U0_ap_idle,
        ap_ready => castOut_U0_ap_ready,
        full_out_float16_dout => full_out_float_dout,
        full_out_float16_num_data_valid => full_out_float_num_data_valid,
        full_out_float16_fifo_cap => full_out_float_fifo_cap,
        full_out_float16_empty_n => full_out_float_empty_n,
        full_out_float16_read => castOut_U0_full_out_float16_read,
        full_out_AXI_TREADY => full_out_AXI_TREADY,
        full_out_AXI_TDATA => castOut_U0_full_out_AXI_TDATA,
        full_out_AXI_TVALID => castOut_U0_full_out_AXI_TVALID,
        full_out_AXI_TKEEP => castOut_U0_full_out_AXI_TKEEP,
        full_out_AXI_TSTRB => castOut_U0_full_out_AXI_TSTRB,
        full_out_AXI_TUSER => castOut_U0_full_out_AXI_TUSER,
        full_out_AXI_TLAST => castOut_U0_full_out_AXI_TLAST,
        full_out_AXI_TID => castOut_U0_full_out_AXI_TID,
        full_out_AXI_TDEST => castOut_U0_full_out_AXI_TDEST);

    full_in_float_U : component encode_fifo_w32_d2_S
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => castIn_U0_full_in_float15_din,
        if_full_n => full_in_float_full_n,
        if_write => castIn_U0_full_in_float15_write,
        if_dout => full_in_float_dout,
        if_num_data_valid => full_in_float_num_data_valid,
        if_fifo_cap => full_in_float_fifo_cap,
        if_empty_n => full_in_float_empty_n,
        if_read => conv1_U0_full_in_float15_read);

    conv1_out_U : component encode_fifo_w32_d2_S
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => conv1_U0_conv1_out17_din,
        if_full_n => conv1_out_full_n,
        if_write => conv1_U0_conv1_out17_write,
        if_dout => conv1_out_dout,
        if_num_data_valid => conv1_out_num_data_valid,
        if_fifo_cap => conv1_out_fifo_cap,
        if_empty_n => conv1_out_empty_n,
        if_read => pool1_U0_conv1_out17_read);

    pool1_out_U : component encode_fifo_w32_d2_S
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => pool1_U0_pool1_out18_din,
        if_full_n => pool1_out_full_n,
        if_write => pool1_U0_pool1_out18_write,
        if_dout => pool1_out_dout,
        if_num_data_valid => pool1_out_num_data_valid,
        if_fifo_cap => pool1_out_fifo_cap,
        if_empty_n => pool1_out_empty_n,
        if_read => conv2_U0_pool1_out18_read);

    conv2_out_U : component encode_fifo_w32_d2_S
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => conv2_U0_conv2_out19_din,
        if_full_n => conv2_out_full_n,
        if_write => conv2_U0_conv2_out19_write,
        if_dout => conv2_out_dout,
        if_num_data_valid => conv2_out_num_data_valid,
        if_fifo_cap => conv2_out_fifo_cap,
        if_empty_n => conv2_out_empty_n,
        if_read => pool2_U0_conv2_out19_read);

    pool2_out_U : component encode_fifo_w32_d2_S
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => pool2_U0_pool2_out20_din,
        if_full_n => pool2_out_full_n,
        if_write => pool2_U0_pool2_out20_write,
        if_dout => pool2_out_dout,
        if_num_data_valid => pool2_out_num_data_valid,
        if_fifo_cap => pool2_out_fifo_cap,
        if_empty_n => pool2_out_empty_n,
        if_read => conv3_U0_pool2_out20_read);

    conv3_out_U : component encode_fifo_w32_d2_S
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => conv3_U0_conv3_out21_din,
        if_full_n => conv3_out_full_n,
        if_write => conv3_U0_conv3_out21_write,
        if_dout => conv3_out_dout,
        if_num_data_valid => conv3_out_num_data_valid,
        if_fifo_cap => conv3_out_fifo_cap,
        if_empty_n => conv3_out_empty_n,
        if_read => pool3_U0_conv3_out21_read);

    full_out_float_U : component encode_fifo_w32_d2_S
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => pool3_U0_full_out_float16_din,
        if_full_n => full_out_float_full_n,
        if_write => pool3_U0_full_out_float16_write,
        if_dout => full_out_float_dout,
        if_num_data_valid => full_out_float_num_data_valid,
        if_fifo_cap => full_out_float_fifo_cap,
        if_empty_n => full_out_float_empty_n,
        if_read => castOut_U0_full_out_float16_read);

    start_for_conv1_U0_U : component encode_start_for_conv1_U0
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_conv1_U0_din,
        if_full_n => start_for_conv1_U0_full_n,
        if_write => castIn_U0_start_write,
        if_dout => start_for_conv1_U0_dout,
        if_empty_n => start_for_conv1_U0_empty_n,
        if_read => conv1_U0_ap_ready);

    start_for_pool1_U0_U : component encode_start_for_pool1_U0
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_pool1_U0_din,
        if_full_n => start_for_pool1_U0_full_n,
        if_write => conv1_U0_start_write,
        if_dout => start_for_pool1_U0_dout,
        if_empty_n => start_for_pool1_U0_empty_n,
        if_read => pool1_U0_ap_ready);

    start_for_conv2_U0_U : component encode_start_for_conv2_U0
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_conv2_U0_din,
        if_full_n => start_for_conv2_U0_full_n,
        if_write => pool1_U0_start_write,
        if_dout => start_for_conv2_U0_dout,
        if_empty_n => start_for_conv2_U0_empty_n,
        if_read => conv2_U0_ap_ready);

    start_for_pool2_U0_U : component encode_start_for_pool2_U0
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_pool2_U0_din,
        if_full_n => start_for_pool2_U0_full_n,
        if_write => conv2_U0_start_write,
        if_dout => start_for_pool2_U0_dout,
        if_empty_n => start_for_pool2_U0_empty_n,
        if_read => pool2_U0_ap_ready);

    start_for_conv3_U0_U : component encode_start_for_conv3_U0
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_conv3_U0_din,
        if_full_n => start_for_conv3_U0_full_n,
        if_write => pool2_U0_start_write,
        if_dout => start_for_conv3_U0_dout,
        if_empty_n => start_for_conv3_U0_empty_n,
        if_read => conv3_U0_ap_ready);

    start_for_pool3_U0_U : component encode_start_for_pool3_U0
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_pool3_U0_din,
        if_full_n => start_for_pool3_U0_full_n,
        if_write => conv3_U0_start_write,
        if_dout => start_for_pool3_U0_dout,
        if_empty_n => start_for_pool3_U0_empty_n,
        if_read => pool3_U0_ap_ready);

    start_for_castOut_U0_U : component encode_start_for_castOut_U0
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_castOut_U0_din,
        if_full_n => start_for_castOut_U0_full_n,
        if_write => pool3_U0_start_write,
        if_dout => start_for_castOut_U0_dout,
        if_empty_n => start_for_castOut_U0_empty_n,
        if_read => castOut_U0_ap_ready);




    ap_done <= castOut_U0_ap_done;
    ap_idle <= (pool3_U0_ap_idle and pool2_U0_ap_idle and pool1_U0_ap_idle and conv3_U0_ap_idle and conv2_U0_ap_idle and conv1_U0_ap_idle and castOut_U0_ap_idle and castIn_U0_ap_idle);
    ap_ready <= castIn_U0_ap_ready;

    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    castIn_U0_ap_continue <= ap_const_logic_1;
    castIn_U0_ap_start <= ap_start;
    castOut_U0_ap_continue <= ap_const_logic_1;
    castOut_U0_ap_start <= start_for_castOut_U0_empty_n;
    conv1_U0_ap_continue <= ap_const_logic_1;
    conv1_U0_ap_start <= start_for_conv1_U0_empty_n;
    conv2_U0_ap_continue <= ap_const_logic_1;
    conv2_U0_ap_start <= start_for_conv2_U0_empty_n;
    conv3_U0_ap_continue <= ap_const_logic_1;
    conv3_U0_ap_start <= start_for_conv3_U0_empty_n;
    full_in_AXI_TREADY <= castIn_U0_full_in_AXI_TREADY;
    full_out_AXI_TDATA <= castOut_U0_full_out_AXI_TDATA;
    full_out_AXI_TDEST <= castOut_U0_full_out_AXI_TDEST;
    full_out_AXI_TID <= castOut_U0_full_out_AXI_TID;
    full_out_AXI_TKEEP <= castOut_U0_full_out_AXI_TKEEP;
    full_out_AXI_TLAST <= castOut_U0_full_out_AXI_TLAST;
    full_out_AXI_TSTRB <= castOut_U0_full_out_AXI_TSTRB;
    full_out_AXI_TUSER <= castOut_U0_full_out_AXI_TUSER;
    full_out_AXI_TVALID <= castOut_U0_full_out_AXI_TVALID;
    pool1_U0_ap_continue <= ap_const_logic_1;
    pool1_U0_ap_start <= start_for_pool1_U0_empty_n;
    pool2_U0_ap_continue <= ap_const_logic_1;
    pool2_U0_ap_start <= start_for_pool2_U0_empty_n;
    pool3_U0_ap_continue <= ap_const_logic_1;
    pool3_U0_ap_start <= start_for_pool3_U0_empty_n;
    start_for_castOut_U0_din <= (0=>ap_const_logic_1, others=>'-');
    start_for_conv1_U0_din <= (0=>ap_const_logic_1, others=>'-');
    start_for_conv2_U0_din <= (0=>ap_const_logic_1, others=>'-');
    start_for_conv3_U0_din <= (0=>ap_const_logic_1, others=>'-');
    start_for_pool1_U0_din <= (0=>ap_const_logic_1, others=>'-');
    start_for_pool2_U0_din <= (0=>ap_const_logic_1, others=>'-');
    start_for_pool3_U0_din <= (0=>ap_const_logic_1, others=>'-');
end behav;
