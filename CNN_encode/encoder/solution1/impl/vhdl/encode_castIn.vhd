-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity encode_castIn is
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
end;


architecture behav of encode_castIn is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv10_310 : STD_LOGIC_VECTOR (9 downto 0) := "1100010000";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";

attribute shreg_extract : string;
    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal internal_ap_ready : STD_LOGIC;
    signal icmp_ln11_fu_91_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal full_in_AXI_TDATA_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal full_in_float15_blk_n : STD_LOGIC;
    signal tmp_data_V_reg_122 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal i_fu_54 : STD_LOGIC_VECTOR (9 downto 0);
    signal i_4_fu_97_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i_3 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal regslice_both_full_in_AXI_V_data_V_U_apdone_blk : STD_LOGIC;
    signal full_in_AXI_TDATA_int_regslice : STD_LOGIC_VECTOR (31 downto 0);
    signal full_in_AXI_TVALID_int_regslice : STD_LOGIC;
    signal full_in_AXI_TREADY_int_regslice : STD_LOGIC;
    signal regslice_both_full_in_AXI_V_data_V_U_ack_in : STD_LOGIC;
    signal regslice_both_full_in_AXI_V_keep_V_U_apdone_blk : STD_LOGIC;
    signal full_in_AXI_TKEEP_int_regslice : STD_LOGIC_VECTOR (3 downto 0);
    signal regslice_both_full_in_AXI_V_keep_V_U_vld_out : STD_LOGIC;
    signal regslice_both_full_in_AXI_V_keep_V_U_ack_in : STD_LOGIC;
    signal regslice_both_full_in_AXI_V_strb_V_U_apdone_blk : STD_LOGIC;
    signal full_in_AXI_TSTRB_int_regslice : STD_LOGIC_VECTOR (3 downto 0);
    signal regslice_both_full_in_AXI_V_strb_V_U_vld_out : STD_LOGIC;
    signal regslice_both_full_in_AXI_V_strb_V_U_ack_in : STD_LOGIC;
    signal regslice_both_full_in_AXI_V_user_V_U_apdone_blk : STD_LOGIC;
    signal full_in_AXI_TUSER_int_regslice : STD_LOGIC_VECTOR (1 downto 0);
    signal regslice_both_full_in_AXI_V_user_V_U_vld_out : STD_LOGIC;
    signal regslice_both_full_in_AXI_V_user_V_U_ack_in : STD_LOGIC;
    signal regslice_both_full_in_AXI_V_last_V_U_apdone_blk : STD_LOGIC;
    signal full_in_AXI_TLAST_int_regslice : STD_LOGIC_VECTOR (0 downto 0);
    signal regslice_both_full_in_AXI_V_last_V_U_vld_out : STD_LOGIC;
    signal regslice_both_full_in_AXI_V_last_V_U_ack_in : STD_LOGIC;
    signal regslice_both_full_in_AXI_V_id_V_U_apdone_blk : STD_LOGIC;
    signal full_in_AXI_TID_int_regslice : STD_LOGIC_VECTOR (4 downto 0);
    signal regslice_both_full_in_AXI_V_id_V_U_vld_out : STD_LOGIC;
    signal regslice_both_full_in_AXI_V_id_V_U_ack_in : STD_LOGIC;
    signal regslice_both_full_in_AXI_V_dest_V_U_apdone_blk : STD_LOGIC;
    signal full_in_AXI_TDEST_int_regslice : STD_LOGIC_VECTOR (5 downto 0);
    signal regslice_both_full_in_AXI_V_dest_V_U_vld_out : STD_LOGIC;
    signal regslice_both_full_in_AXI_V_dest_V_U_ack_in : STD_LOGIC;
    signal ap_condition_115 : BOOLEAN;
    signal ap_ce_reg : STD_LOGIC;

    component encode_flow_control_loop_pipe IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC;
        ap_continue : IN STD_LOGIC );
    end component;


    component encode_regslice_both IS
    generic (
        DataWidth : INTEGER );
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        data_in : IN STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_in : IN STD_LOGIC;
        ack_in : OUT STD_LOGIC;
        data_out : OUT STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_out : OUT STD_LOGIC;
        ack_out : IN STD_LOGIC;
        apdone_blk : OUT STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_U : component encode_flow_control_loop_pipe
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => real_start,
        ap_ready => internal_ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int,
        ap_continue => ap_continue);

    regslice_both_full_in_AXI_V_data_V_U : component encode_regslice_both
    generic map (
        DataWidth => 32)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => full_in_AXI_TDATA,
        vld_in => full_in_AXI_TVALID,
        ack_in => regslice_both_full_in_AXI_V_data_V_U_ack_in,
        data_out => full_in_AXI_TDATA_int_regslice,
        vld_out => full_in_AXI_TVALID_int_regslice,
        ack_out => full_in_AXI_TREADY_int_regslice,
        apdone_blk => regslice_both_full_in_AXI_V_data_V_U_apdone_blk);

    regslice_both_full_in_AXI_V_keep_V_U : component encode_regslice_both
    generic map (
        DataWidth => 4)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => full_in_AXI_TKEEP,
        vld_in => full_in_AXI_TVALID,
        ack_in => regslice_both_full_in_AXI_V_keep_V_U_ack_in,
        data_out => full_in_AXI_TKEEP_int_regslice,
        vld_out => regslice_both_full_in_AXI_V_keep_V_U_vld_out,
        ack_out => full_in_AXI_TREADY_int_regslice,
        apdone_blk => regslice_both_full_in_AXI_V_keep_V_U_apdone_blk);

    regslice_both_full_in_AXI_V_strb_V_U : component encode_regslice_both
    generic map (
        DataWidth => 4)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => full_in_AXI_TSTRB,
        vld_in => full_in_AXI_TVALID,
        ack_in => regslice_both_full_in_AXI_V_strb_V_U_ack_in,
        data_out => full_in_AXI_TSTRB_int_regslice,
        vld_out => regslice_both_full_in_AXI_V_strb_V_U_vld_out,
        ack_out => full_in_AXI_TREADY_int_regslice,
        apdone_blk => regslice_both_full_in_AXI_V_strb_V_U_apdone_blk);

    regslice_both_full_in_AXI_V_user_V_U : component encode_regslice_both
    generic map (
        DataWidth => 2)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => full_in_AXI_TUSER,
        vld_in => full_in_AXI_TVALID,
        ack_in => regslice_both_full_in_AXI_V_user_V_U_ack_in,
        data_out => full_in_AXI_TUSER_int_regslice,
        vld_out => regslice_both_full_in_AXI_V_user_V_U_vld_out,
        ack_out => full_in_AXI_TREADY_int_regslice,
        apdone_blk => regslice_both_full_in_AXI_V_user_V_U_apdone_blk);

    regslice_both_full_in_AXI_V_last_V_U : component encode_regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => full_in_AXI_TLAST,
        vld_in => full_in_AXI_TVALID,
        ack_in => regslice_both_full_in_AXI_V_last_V_U_ack_in,
        data_out => full_in_AXI_TLAST_int_regslice,
        vld_out => regslice_both_full_in_AXI_V_last_V_U_vld_out,
        ack_out => full_in_AXI_TREADY_int_regslice,
        apdone_blk => regslice_both_full_in_AXI_V_last_V_U_apdone_blk);

    regslice_both_full_in_AXI_V_id_V_U : component encode_regslice_both
    generic map (
        DataWidth => 5)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => full_in_AXI_TID,
        vld_in => full_in_AXI_TVALID,
        ack_in => regslice_both_full_in_AXI_V_id_V_U_ack_in,
        data_out => full_in_AXI_TID_int_regslice,
        vld_out => regslice_both_full_in_AXI_V_id_V_U_vld_out,
        ack_out => full_in_AXI_TREADY_int_regslice,
        apdone_blk => regslice_both_full_in_AXI_V_id_V_U_apdone_blk);

    regslice_both_full_in_AXI_V_dest_V_U : component encode_regslice_both
    generic map (
        DataWidth => 6)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => full_in_AXI_TDEST,
        vld_in => full_in_AXI_TVALID,
        ack_in => regslice_both_full_in_AXI_V_dest_V_U_ack_in,
        data_out => full_in_AXI_TDEST_int_regslice,
        vld_out => regslice_both_full_in_AXI_V_dest_V_U_vld_out,
        ack_out => full_in_AXI_TREADY_int_regslice,
        apdone_blk => regslice_both_full_in_AXI_V_dest_V_U_apdone_blk);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


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


    i_fu_54_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_115)) then
                if ((icmp_ln11_fu_91_p2 = ap_const_lv1_0)) then 
                    i_fu_54 <= i_4_fu_97_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_54 <= ap_const_lv10_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln11_fu_91_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                tmp_data_V_reg_122 <= full_in_AXI_TDATA_int_regslice;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_enable_reg_pp0_iter1, icmp_ln11_fu_91_p2, ap_done_reg, full_in_float15_full_n, ap_start_int, full_in_AXI_TVALID_int_regslice)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_done_reg = ap_const_logic_1) or ((full_in_float15_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((ap_start_int = ap_const_logic_1) and ((ap_done_reg = ap_const_logic_1) or ((icmp_ln11_fu_91_p2 = ap_const_lv1_0) and (full_in_AXI_TVALID_int_regslice = ap_const_logic_0)))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter1, icmp_ln11_fu_91_p2, ap_done_reg, full_in_float15_full_n, ap_start_int, full_in_AXI_TVALID_int_regslice)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_done_reg = ap_const_logic_1) or ((full_in_float15_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((ap_start_int = ap_const_logic_1) and ((ap_done_reg = ap_const_logic_1) or ((icmp_ln11_fu_91_p2 = ap_const_lv1_0) and (full_in_AXI_TVALID_int_regslice = ap_const_logic_0)))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter1, icmp_ln11_fu_91_p2, ap_done_reg, full_in_float15_full_n, ap_start_int, full_in_AXI_TVALID_int_regslice)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_done_reg = ap_const_logic_1) or ((full_in_float15_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((ap_start_int = ap_const_logic_1) and ((ap_done_reg = ap_const_logic_1) or ((icmp_ln11_fu_91_p2 = ap_const_lv1_0) and (full_in_AXI_TVALID_int_regslice = ap_const_logic_0)))));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(icmp_ln11_fu_91_p2, ap_done_reg, full_in_AXI_TVALID_int_regslice)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((ap_done_reg = ap_const_logic_1) or ((icmp_ln11_fu_91_p2 = ap_const_lv1_0) and (full_in_AXI_TVALID_int_regslice = ap_const_logic_0)));
    end process;


    ap_block_state2_pp0_stage0_iter1_assign_proc : process(full_in_float15_full_n)
    begin
                ap_block_state2_pp0_stage0_iter1 <= (full_in_float15_full_n = ap_const_logic_0);
    end process;


    ap_condition_115_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_start_int)
    begin
                ap_condition_115 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln11_fu_91_p2, ap_block_pp0_stage0_subdone, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (icmp_ln11_fu_91_p2 = ap_const_lv1_1) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_done_reg, ap_block_pp0_stage0_subdone, ap_loop_exit_ready)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_start_int = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;
    ap_ready <= internal_ap_ready;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_3_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, i_fu_54, ap_loop_init, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_i_3 <= ap_const_lv10_0;
        else 
            ap_sig_allocacmp_i_3 <= i_fu_54;
        end if; 
    end process;


    full_in_AXI_TDATA_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln11_fu_91_p2, ap_done_reg, ap_block_pp0_stage0, ap_start_int, full_in_AXI_TVALID_int_regslice)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_done_reg = ap_const_logic_0) and (icmp_ln11_fu_91_p2 = ap_const_lv1_0) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            full_in_AXI_TDATA_blk_n <= full_in_AXI_TVALID_int_regslice;
        else 
            full_in_AXI_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    full_in_AXI_TREADY <= regslice_both_full_in_AXI_V_data_V_U_ack_in;

    full_in_AXI_TREADY_int_regslice_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln11_fu_91_p2, ap_block_pp0_stage0_11001, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln11_fu_91_p2 = ap_const_lv1_0) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            full_in_AXI_TREADY_int_regslice <= ap_const_logic_1;
        else 
            full_in_AXI_TREADY_int_regslice <= ap_const_logic_0;
        end if; 
    end process;


    full_in_float15_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, full_in_float15_full_n, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            full_in_float15_blk_n <= full_in_float15_full_n;
        else 
            full_in_float15_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    full_in_float15_din <= tmp_data_V_reg_122;

    full_in_float15_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            full_in_float15_write <= ap_const_logic_1;
        else 
            full_in_float15_write <= ap_const_logic_0;
        end if; 
    end process;

    i_4_fu_97_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_3) + unsigned(ap_const_lv10_1));
    icmp_ln11_fu_91_p2 <= "1" when (ap_sig_allocacmp_i_3 = ap_const_lv10_310) else "0";

    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_full_n = ap_const_logic_0) and (start_once_reg = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((real_start = ap_const_logic_1) and (start_once_reg = ap_const_logic_0))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

end behav;
