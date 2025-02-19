// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module AutoEncoder_pool2 (
        ap_start,
        start_full_n,
        start_out,
        start_write,
        conv2_out18_dout,
        conv2_out18_empty_n,
        conv2_out18_read,
        pool2_out19_din,
        pool2_out19_full_n,
        pool2_out19_write,
        ap_clk,
        ap_rst,
        ap_done,
        ap_ready,
        ap_idle,
        ap_continue
);


input   ap_start;
input   start_full_n;
output   start_out;
output   start_write;
input  [31:0] conv2_out18_dout;
input   conv2_out18_empty_n;
output   conv2_out18_read;
output  [31:0] pool2_out19_din;
input   pool2_out19_full_n;
output   pool2_out19_write;
input   ap_clk;
input   ap_rst;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;

reg start_write;

reg    real_start;
reg    start_once_reg;
wire    internal_ap_ready;
wire    sp_pool_ap_fixed_32_6_5_3_0_1_U0_ap_start;
wire    sp_pool_ap_fixed_32_6_5_3_0_1_U0_ap_done;
wire    sp_pool_ap_fixed_32_6_5_3_0_1_U0_ap_continue;
wire    sp_pool_ap_fixed_32_6_5_3_0_1_U0_ap_idle;
wire    sp_pool_ap_fixed_32_6_5_3_0_1_U0_ap_ready;
wire    sp_pool_ap_fixed_32_6_5_3_0_1_U0_conv2_out18_read;
wire   [31:0] sp_pool_ap_fixed_32_6_5_3_0_1_U0_pool2_out19_din;
wire    sp_pool_ap_fixed_32_6_5_3_0_1_U0_pool2_out19_write;
wire    ap_sync_ready;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
end

AutoEncoder_sp_pool_ap_fixed_32_6_5_3_0_1 sp_pool_ap_fixed_32_6_5_3_0_1_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(sp_pool_ap_fixed_32_6_5_3_0_1_U0_ap_start),
    .ap_done(sp_pool_ap_fixed_32_6_5_3_0_1_U0_ap_done),
    .ap_continue(sp_pool_ap_fixed_32_6_5_3_0_1_U0_ap_continue),
    .ap_idle(sp_pool_ap_fixed_32_6_5_3_0_1_U0_ap_idle),
    .ap_ready(sp_pool_ap_fixed_32_6_5_3_0_1_U0_ap_ready),
    .conv2_out18_dout(conv2_out18_dout),
    .conv2_out18_num_data_valid(2'd0),
    .conv2_out18_fifo_cap(2'd0),
    .conv2_out18_empty_n(conv2_out18_empty_n),
    .conv2_out18_read(sp_pool_ap_fixed_32_6_5_3_0_1_U0_conv2_out18_read),
    .pool2_out19_din(sp_pool_ap_fixed_32_6_5_3_0_1_U0_pool2_out19_din),
    .pool2_out19_num_data_valid(2'd0),
    .pool2_out19_fifo_cap(2'd0),
    .pool2_out19_full_n(pool2_out19_full_n),
    .pool2_out19_write(sp_pool_ap_fixed_32_6_5_3_0_1_U0_pool2_out19_write)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((real_start == 1'b1) & (internal_ap_ready == 1'b0))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

assign ap_done = sp_pool_ap_fixed_32_6_5_3_0_1_U0_ap_done;

assign ap_idle = sp_pool_ap_fixed_32_6_5_3_0_1_U0_ap_idle;

assign ap_ready = sp_pool_ap_fixed_32_6_5_3_0_1_U0_ap_ready;

assign ap_sync_ready = sp_pool_ap_fixed_32_6_5_3_0_1_U0_ap_ready;

assign conv2_out18_read = sp_pool_ap_fixed_32_6_5_3_0_1_U0_conv2_out18_read;

assign internal_ap_ready = ap_sync_ready;

assign pool2_out19_din = sp_pool_ap_fixed_32_6_5_3_0_1_U0_pool2_out19_din;

assign pool2_out19_write = sp_pool_ap_fixed_32_6_5_3_0_1_U0_pool2_out19_write;

assign sp_pool_ap_fixed_32_6_5_3_0_1_U0_ap_continue = ap_continue;

assign sp_pool_ap_fixed_32_6_5_3_0_1_U0_ap_start = real_start;

assign start_out = real_start;

endmodule //AutoEncoder_pool2
