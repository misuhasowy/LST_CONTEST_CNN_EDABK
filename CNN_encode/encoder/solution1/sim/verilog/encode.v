// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="encode_encode,hls_ip_2022_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu7ev-ffvc1156-2-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=7.265250,HLS_SYN_LAT=14404,HLS_SYN_TPT=14404,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=195542,HLS_SYN_LUT=226023,HLS_VERSION=2022_1}" *)

module encode (
        full_in_AXI_TDATA,
        full_in_AXI_TKEEP,
        full_in_AXI_TSTRB,
        full_in_AXI_TUSER,
        full_in_AXI_TLAST,
        full_in_AXI_TID,
        full_in_AXI_TDEST,
        full_out_AXI_TDATA,
        full_out_AXI_TKEEP,
        full_out_AXI_TSTRB,
        full_out_AXI_TUSER,
        full_out_AXI_TLAST,
        full_out_AXI_TID,
        full_out_AXI_TDEST,
        ap_clk,
        ap_rst_n,
        full_in_AXI_TVALID,
        full_in_AXI_TREADY,
        ap_start,
        full_out_AXI_TVALID,
        full_out_AXI_TREADY,
        ap_done,
        ap_ready,
        ap_idle
);


input  [31:0] full_in_AXI_TDATA;
input  [3:0] full_in_AXI_TKEEP;
input  [3:0] full_in_AXI_TSTRB;
input  [1:0] full_in_AXI_TUSER;
input  [0:0] full_in_AXI_TLAST;
input  [4:0] full_in_AXI_TID;
input  [5:0] full_in_AXI_TDEST;
output  [31:0] full_out_AXI_TDATA;
output  [3:0] full_out_AXI_TKEEP;
output  [3:0] full_out_AXI_TSTRB;
output  [1:0] full_out_AXI_TUSER;
output  [0:0] full_out_AXI_TLAST;
output  [4:0] full_out_AXI_TID;
output  [5:0] full_out_AXI_TDEST;
input   ap_clk;
input   ap_rst_n;
input   full_in_AXI_TVALID;
output   full_in_AXI_TREADY;
input   ap_start;
output   full_out_AXI_TVALID;
input   full_out_AXI_TREADY;
output   ap_done;
output   ap_ready;
output   ap_idle;

 reg    ap_rst_n_inv;
wire    castIn_U0_ap_start;
wire    castIn_U0_ap_done;
wire    castIn_U0_ap_continue;
wire    castIn_U0_ap_idle;
wire    castIn_U0_ap_ready;
wire   [31:0] castIn_U0_full_in_float15_din;
wire    castIn_U0_full_in_float15_write;
wire    castIn_U0_start_out;
wire    castIn_U0_start_write;
wire    castIn_U0_full_in_AXI_TREADY;
wire    conv1_U0_ap_start;
wire    conv1_U0_ap_done;
wire    conv1_U0_ap_continue;
wire    conv1_U0_ap_idle;
wire    conv1_U0_ap_ready;
wire    conv1_U0_full_in_float15_read;
wire   [31:0] conv1_U0_conv1_out17_din;
wire    conv1_U0_conv1_out17_write;
wire    conv1_U0_start_out;
wire    conv1_U0_start_write;
wire    pool1_U0_ap_start;
wire    pool1_U0_ap_done;
wire    pool1_U0_ap_continue;
wire    pool1_U0_ap_idle;
wire    pool1_U0_ap_ready;
wire    pool1_U0_start_out;
wire    pool1_U0_start_write;
wire    pool1_U0_conv1_out17_read;
wire   [31:0] pool1_U0_pool1_out18_din;
wire    pool1_U0_pool1_out18_write;
wire    conv2_U0_ap_start;
wire    conv2_U0_ap_done;
wire    conv2_U0_ap_continue;
wire    conv2_U0_ap_idle;
wire    conv2_U0_ap_ready;
wire    conv2_U0_pool1_out18_read;
wire   [31:0] conv2_U0_conv2_out19_din;
wire    conv2_U0_conv2_out19_write;
wire    conv2_U0_start_out;
wire    conv2_U0_start_write;
wire    pool2_U0_ap_start;
wire    pool2_U0_ap_done;
wire    pool2_U0_ap_continue;
wire    pool2_U0_ap_idle;
wire    pool2_U0_ap_ready;
wire    pool2_U0_start_out;
wire    pool2_U0_start_write;
wire    pool2_U0_conv2_out19_read;
wire   [31:0] pool2_U0_pool2_out20_din;
wire    pool2_U0_pool2_out20_write;
wire    conv3_U0_ap_start;
wire    conv3_U0_ap_done;
wire    conv3_U0_ap_continue;
wire    conv3_U0_ap_idle;
wire    conv3_U0_ap_ready;
wire    conv3_U0_pool2_out20_read;
wire   [31:0] conv3_U0_conv3_out21_din;
wire    conv3_U0_conv3_out21_write;
wire    conv3_U0_start_out;
wire    conv3_U0_start_write;
wire    pool3_U0_ap_start;
wire    pool3_U0_ap_done;
wire    pool3_U0_ap_continue;
wire    pool3_U0_ap_idle;
wire    pool3_U0_ap_ready;
wire    pool3_U0_start_out;
wire    pool3_U0_start_write;
wire    pool3_U0_conv3_out21_read;
wire   [31:0] pool3_U0_full_out_float16_din;
wire    pool3_U0_full_out_float16_write;
wire    castOut_U0_ap_start;
wire    castOut_U0_ap_done;
wire    castOut_U0_ap_continue;
wire    castOut_U0_ap_idle;
wire    castOut_U0_ap_ready;
wire    castOut_U0_full_out_float16_read;
wire   [31:0] castOut_U0_full_out_AXI_TDATA;
wire    castOut_U0_full_out_AXI_TVALID;
wire   [3:0] castOut_U0_full_out_AXI_TKEEP;
wire   [3:0] castOut_U0_full_out_AXI_TSTRB;
wire   [1:0] castOut_U0_full_out_AXI_TUSER;
wire   [0:0] castOut_U0_full_out_AXI_TLAST;
wire   [4:0] castOut_U0_full_out_AXI_TID;
wire   [5:0] castOut_U0_full_out_AXI_TDEST;
wire    full_in_float_full_n;
wire   [31:0] full_in_float_dout;
wire   [1:0] full_in_float_num_data_valid;
wire   [1:0] full_in_float_fifo_cap;
wire    full_in_float_empty_n;
wire    conv1_out_full_n;
wire   [31:0] conv1_out_dout;
wire   [1:0] conv1_out_num_data_valid;
wire   [1:0] conv1_out_fifo_cap;
wire    conv1_out_empty_n;
wire    pool1_out_full_n;
wire   [31:0] pool1_out_dout;
wire   [1:0] pool1_out_num_data_valid;
wire   [1:0] pool1_out_fifo_cap;
wire    pool1_out_empty_n;
wire    conv2_out_full_n;
wire   [31:0] conv2_out_dout;
wire   [1:0] conv2_out_num_data_valid;
wire   [1:0] conv2_out_fifo_cap;
wire    conv2_out_empty_n;
wire    pool2_out_full_n;
wire   [31:0] pool2_out_dout;
wire   [1:0] pool2_out_num_data_valid;
wire   [1:0] pool2_out_fifo_cap;
wire    pool2_out_empty_n;
wire    conv3_out_full_n;
wire   [31:0] conv3_out_dout;
wire   [1:0] conv3_out_num_data_valid;
wire   [1:0] conv3_out_fifo_cap;
wire    conv3_out_empty_n;
wire    full_out_float_full_n;
wire   [31:0] full_out_float_dout;
wire   [1:0] full_out_float_num_data_valid;
wire   [1:0] full_out_float_fifo_cap;
wire    full_out_float_empty_n;
wire   [0:0] start_for_conv1_U0_din;
wire    start_for_conv1_U0_full_n;
wire   [0:0] start_for_conv1_U0_dout;
wire    start_for_conv1_U0_empty_n;
wire   [0:0] start_for_pool1_U0_din;
wire    start_for_pool1_U0_full_n;
wire   [0:0] start_for_pool1_U0_dout;
wire    start_for_pool1_U0_empty_n;
wire   [0:0] start_for_conv2_U0_din;
wire    start_for_conv2_U0_full_n;
wire   [0:0] start_for_conv2_U0_dout;
wire    start_for_conv2_U0_empty_n;
wire   [0:0] start_for_pool2_U0_din;
wire    start_for_pool2_U0_full_n;
wire   [0:0] start_for_pool2_U0_dout;
wire    start_for_pool2_U0_empty_n;
wire   [0:0] start_for_conv3_U0_din;
wire    start_for_conv3_U0_full_n;
wire   [0:0] start_for_conv3_U0_dout;
wire    start_for_conv3_U0_empty_n;
wire   [0:0] start_for_pool3_U0_din;
wire    start_for_pool3_U0_full_n;
wire   [0:0] start_for_pool3_U0_dout;
wire    start_for_pool3_U0_empty_n;
wire   [0:0] start_for_castOut_U0_din;
wire    start_for_castOut_U0_full_n;
wire   [0:0] start_for_castOut_U0_dout;
wire    start_for_castOut_U0_empty_n;

encode_castIn castIn_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(castIn_U0_ap_start),
    .start_full_n(start_for_conv1_U0_full_n),
    .ap_done(castIn_U0_ap_done),
    .ap_continue(castIn_U0_ap_continue),
    .ap_idle(castIn_U0_ap_idle),
    .ap_ready(castIn_U0_ap_ready),
    .full_in_AXI_TVALID(full_in_AXI_TVALID),
    .full_in_float15_din(castIn_U0_full_in_float15_din),
    .full_in_float15_num_data_valid(full_in_float_num_data_valid),
    .full_in_float15_fifo_cap(full_in_float_fifo_cap),
    .full_in_float15_full_n(full_in_float_full_n),
    .full_in_float15_write(castIn_U0_full_in_float15_write),
    .start_out(castIn_U0_start_out),
    .start_write(castIn_U0_start_write),
    .full_in_AXI_TDATA(full_in_AXI_TDATA),
    .full_in_AXI_TREADY(castIn_U0_full_in_AXI_TREADY),
    .full_in_AXI_TKEEP(full_in_AXI_TKEEP),
    .full_in_AXI_TSTRB(full_in_AXI_TSTRB),
    .full_in_AXI_TUSER(full_in_AXI_TUSER),
    .full_in_AXI_TLAST(full_in_AXI_TLAST),
    .full_in_AXI_TID(full_in_AXI_TID),
    .full_in_AXI_TDEST(full_in_AXI_TDEST)
);

encode_conv1 conv1_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(conv1_U0_ap_start),
    .start_full_n(start_for_pool1_U0_full_n),
    .ap_done(conv1_U0_ap_done),
    .ap_continue(conv1_U0_ap_continue),
    .ap_idle(conv1_U0_ap_idle),
    .ap_ready(conv1_U0_ap_ready),
    .full_in_float15_dout(full_in_float_dout),
    .full_in_float15_num_data_valid(full_in_float_num_data_valid),
    .full_in_float15_fifo_cap(full_in_float_fifo_cap),
    .full_in_float15_empty_n(full_in_float_empty_n),
    .full_in_float15_read(conv1_U0_full_in_float15_read),
    .conv1_out17_din(conv1_U0_conv1_out17_din),
    .conv1_out17_num_data_valid(conv1_out_num_data_valid),
    .conv1_out17_fifo_cap(conv1_out_fifo_cap),
    .conv1_out17_full_n(conv1_out_full_n),
    .conv1_out17_write(conv1_U0_conv1_out17_write),
    .start_out(conv1_U0_start_out),
    .start_write(conv1_U0_start_write)
);

encode_pool1 pool1_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(pool1_U0_ap_start),
    .start_full_n(start_for_conv2_U0_full_n),
    .ap_done(pool1_U0_ap_done),
    .ap_continue(pool1_U0_ap_continue),
    .ap_idle(pool1_U0_ap_idle),
    .ap_ready(pool1_U0_ap_ready),
    .start_out(pool1_U0_start_out),
    .start_write(pool1_U0_start_write),
    .conv1_out17_dout(conv1_out_dout),
    .conv1_out17_num_data_valid(conv1_out_num_data_valid),
    .conv1_out17_fifo_cap(conv1_out_fifo_cap),
    .conv1_out17_empty_n(conv1_out_empty_n),
    .conv1_out17_read(pool1_U0_conv1_out17_read),
    .pool1_out18_din(pool1_U0_pool1_out18_din),
    .pool1_out18_num_data_valid(pool1_out_num_data_valid),
    .pool1_out18_fifo_cap(pool1_out_fifo_cap),
    .pool1_out18_full_n(pool1_out_full_n),
    .pool1_out18_write(pool1_U0_pool1_out18_write)
);

encode_conv2 conv2_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(conv2_U0_ap_start),
    .start_full_n(start_for_pool2_U0_full_n),
    .ap_done(conv2_U0_ap_done),
    .ap_continue(conv2_U0_ap_continue),
    .ap_idle(conv2_U0_ap_idle),
    .ap_ready(conv2_U0_ap_ready),
    .pool1_out18_dout(pool1_out_dout),
    .pool1_out18_num_data_valid(pool1_out_num_data_valid),
    .pool1_out18_fifo_cap(pool1_out_fifo_cap),
    .pool1_out18_empty_n(pool1_out_empty_n),
    .pool1_out18_read(conv2_U0_pool1_out18_read),
    .conv2_out19_din(conv2_U0_conv2_out19_din),
    .conv2_out19_num_data_valid(conv2_out_num_data_valid),
    .conv2_out19_fifo_cap(conv2_out_fifo_cap),
    .conv2_out19_full_n(conv2_out_full_n),
    .conv2_out19_write(conv2_U0_conv2_out19_write),
    .start_out(conv2_U0_start_out),
    .start_write(conv2_U0_start_write)
);

encode_pool2 pool2_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(pool2_U0_ap_start),
    .start_full_n(start_for_conv3_U0_full_n),
    .ap_done(pool2_U0_ap_done),
    .ap_continue(pool2_U0_ap_continue),
    .ap_idle(pool2_U0_ap_idle),
    .ap_ready(pool2_U0_ap_ready),
    .start_out(pool2_U0_start_out),
    .start_write(pool2_U0_start_write),
    .conv2_out19_dout(conv2_out_dout),
    .conv2_out19_num_data_valid(conv2_out_num_data_valid),
    .conv2_out19_fifo_cap(conv2_out_fifo_cap),
    .conv2_out19_empty_n(conv2_out_empty_n),
    .conv2_out19_read(pool2_U0_conv2_out19_read),
    .pool2_out20_din(pool2_U0_pool2_out20_din),
    .pool2_out20_num_data_valid(pool2_out_num_data_valid),
    .pool2_out20_fifo_cap(pool2_out_fifo_cap),
    .pool2_out20_full_n(pool2_out_full_n),
    .pool2_out20_write(pool2_U0_pool2_out20_write)
);

encode_conv3 conv3_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(conv3_U0_ap_start),
    .start_full_n(start_for_pool3_U0_full_n),
    .ap_done(conv3_U0_ap_done),
    .ap_continue(conv3_U0_ap_continue),
    .ap_idle(conv3_U0_ap_idle),
    .ap_ready(conv3_U0_ap_ready),
    .pool2_out20_dout(pool2_out_dout),
    .pool2_out20_num_data_valid(pool2_out_num_data_valid),
    .pool2_out20_fifo_cap(pool2_out_fifo_cap),
    .pool2_out20_empty_n(pool2_out_empty_n),
    .pool2_out20_read(conv3_U0_pool2_out20_read),
    .conv3_out21_din(conv3_U0_conv3_out21_din),
    .conv3_out21_num_data_valid(conv3_out_num_data_valid),
    .conv3_out21_fifo_cap(conv3_out_fifo_cap),
    .conv3_out21_full_n(conv3_out_full_n),
    .conv3_out21_write(conv3_U0_conv3_out21_write),
    .start_out(conv3_U0_start_out),
    .start_write(conv3_U0_start_write)
);

encode_pool3 pool3_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(pool3_U0_ap_start),
    .start_full_n(start_for_castOut_U0_full_n),
    .ap_done(pool3_U0_ap_done),
    .ap_continue(pool3_U0_ap_continue),
    .ap_idle(pool3_U0_ap_idle),
    .ap_ready(pool3_U0_ap_ready),
    .start_out(pool3_U0_start_out),
    .start_write(pool3_U0_start_write),
    .conv3_out21_dout(conv3_out_dout),
    .conv3_out21_num_data_valid(conv3_out_num_data_valid),
    .conv3_out21_fifo_cap(conv3_out_fifo_cap),
    .conv3_out21_empty_n(conv3_out_empty_n),
    .conv3_out21_read(pool3_U0_conv3_out21_read),
    .full_out_float16_din(pool3_U0_full_out_float16_din),
    .full_out_float16_num_data_valid(full_out_float_num_data_valid),
    .full_out_float16_fifo_cap(full_out_float_fifo_cap),
    .full_out_float16_full_n(full_out_float_full_n),
    .full_out_float16_write(pool3_U0_full_out_float16_write)
);

encode_castOut castOut_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(castOut_U0_ap_start),
    .ap_done(castOut_U0_ap_done),
    .ap_continue(castOut_U0_ap_continue),
    .ap_idle(castOut_U0_ap_idle),
    .ap_ready(castOut_U0_ap_ready),
    .full_out_float16_dout(full_out_float_dout),
    .full_out_float16_num_data_valid(full_out_float_num_data_valid),
    .full_out_float16_fifo_cap(full_out_float_fifo_cap),
    .full_out_float16_empty_n(full_out_float_empty_n),
    .full_out_float16_read(castOut_U0_full_out_float16_read),
    .full_out_AXI_TREADY(full_out_AXI_TREADY),
    .full_out_AXI_TDATA(castOut_U0_full_out_AXI_TDATA),
    .full_out_AXI_TVALID(castOut_U0_full_out_AXI_TVALID),
    .full_out_AXI_TKEEP(castOut_U0_full_out_AXI_TKEEP),
    .full_out_AXI_TSTRB(castOut_U0_full_out_AXI_TSTRB),
    .full_out_AXI_TUSER(castOut_U0_full_out_AXI_TUSER),
    .full_out_AXI_TLAST(castOut_U0_full_out_AXI_TLAST),
    .full_out_AXI_TID(castOut_U0_full_out_AXI_TID),
    .full_out_AXI_TDEST(castOut_U0_full_out_AXI_TDEST)
);

encode_fifo_w32_d2_S full_in_float_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(castIn_U0_full_in_float15_din),
    .if_full_n(full_in_float_full_n),
    .if_write(castIn_U0_full_in_float15_write),
    .if_dout(full_in_float_dout),
    .if_num_data_valid(full_in_float_num_data_valid),
    .if_fifo_cap(full_in_float_fifo_cap),
    .if_empty_n(full_in_float_empty_n),
    .if_read(conv1_U0_full_in_float15_read)
);

encode_fifo_w32_d2_S conv1_out_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(conv1_U0_conv1_out17_din),
    .if_full_n(conv1_out_full_n),
    .if_write(conv1_U0_conv1_out17_write),
    .if_dout(conv1_out_dout),
    .if_num_data_valid(conv1_out_num_data_valid),
    .if_fifo_cap(conv1_out_fifo_cap),
    .if_empty_n(conv1_out_empty_n),
    .if_read(pool1_U0_conv1_out17_read)
);

encode_fifo_w32_d2_S pool1_out_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(pool1_U0_pool1_out18_din),
    .if_full_n(pool1_out_full_n),
    .if_write(pool1_U0_pool1_out18_write),
    .if_dout(pool1_out_dout),
    .if_num_data_valid(pool1_out_num_data_valid),
    .if_fifo_cap(pool1_out_fifo_cap),
    .if_empty_n(pool1_out_empty_n),
    .if_read(conv2_U0_pool1_out18_read)
);

encode_fifo_w32_d2_S conv2_out_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(conv2_U0_conv2_out19_din),
    .if_full_n(conv2_out_full_n),
    .if_write(conv2_U0_conv2_out19_write),
    .if_dout(conv2_out_dout),
    .if_num_data_valid(conv2_out_num_data_valid),
    .if_fifo_cap(conv2_out_fifo_cap),
    .if_empty_n(conv2_out_empty_n),
    .if_read(pool2_U0_conv2_out19_read)
);

encode_fifo_w32_d2_S pool2_out_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(pool2_U0_pool2_out20_din),
    .if_full_n(pool2_out_full_n),
    .if_write(pool2_U0_pool2_out20_write),
    .if_dout(pool2_out_dout),
    .if_num_data_valid(pool2_out_num_data_valid),
    .if_fifo_cap(pool2_out_fifo_cap),
    .if_empty_n(pool2_out_empty_n),
    .if_read(conv3_U0_pool2_out20_read)
);

encode_fifo_w32_d2_S conv3_out_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(conv3_U0_conv3_out21_din),
    .if_full_n(conv3_out_full_n),
    .if_write(conv3_U0_conv3_out21_write),
    .if_dout(conv3_out_dout),
    .if_num_data_valid(conv3_out_num_data_valid),
    .if_fifo_cap(conv3_out_fifo_cap),
    .if_empty_n(conv3_out_empty_n),
    .if_read(pool3_U0_conv3_out21_read)
);

encode_fifo_w32_d2_S full_out_float_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(pool3_U0_full_out_float16_din),
    .if_full_n(full_out_float_full_n),
    .if_write(pool3_U0_full_out_float16_write),
    .if_dout(full_out_float_dout),
    .if_num_data_valid(full_out_float_num_data_valid),
    .if_fifo_cap(full_out_float_fifo_cap),
    .if_empty_n(full_out_float_empty_n),
    .if_read(castOut_U0_full_out_float16_read)
);

encode_start_for_conv1_U0 start_for_conv1_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_conv1_U0_din),
    .if_full_n(start_for_conv1_U0_full_n),
    .if_write(castIn_U0_start_write),
    .if_dout(start_for_conv1_U0_dout),
    .if_empty_n(start_for_conv1_U0_empty_n),
    .if_read(conv1_U0_ap_ready)
);

encode_start_for_pool1_U0 start_for_pool1_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_pool1_U0_din),
    .if_full_n(start_for_pool1_U0_full_n),
    .if_write(conv1_U0_start_write),
    .if_dout(start_for_pool1_U0_dout),
    .if_empty_n(start_for_pool1_U0_empty_n),
    .if_read(pool1_U0_ap_ready)
);

encode_start_for_conv2_U0 start_for_conv2_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_conv2_U0_din),
    .if_full_n(start_for_conv2_U0_full_n),
    .if_write(pool1_U0_start_write),
    .if_dout(start_for_conv2_U0_dout),
    .if_empty_n(start_for_conv2_U0_empty_n),
    .if_read(conv2_U0_ap_ready)
);

encode_start_for_pool2_U0 start_for_pool2_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_pool2_U0_din),
    .if_full_n(start_for_pool2_U0_full_n),
    .if_write(conv2_U0_start_write),
    .if_dout(start_for_pool2_U0_dout),
    .if_empty_n(start_for_pool2_U0_empty_n),
    .if_read(pool2_U0_ap_ready)
);

encode_start_for_conv3_U0 start_for_conv3_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_conv3_U0_din),
    .if_full_n(start_for_conv3_U0_full_n),
    .if_write(pool2_U0_start_write),
    .if_dout(start_for_conv3_U0_dout),
    .if_empty_n(start_for_conv3_U0_empty_n),
    .if_read(conv3_U0_ap_ready)
);

encode_start_for_pool3_U0 start_for_pool3_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_pool3_U0_din),
    .if_full_n(start_for_pool3_U0_full_n),
    .if_write(conv3_U0_start_write),
    .if_dout(start_for_pool3_U0_dout),
    .if_empty_n(start_for_pool3_U0_empty_n),
    .if_read(pool3_U0_ap_ready)
);

encode_start_for_castOut_U0 start_for_castOut_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_castOut_U0_din),
    .if_full_n(start_for_castOut_U0_full_n),
    .if_write(pool3_U0_start_write),
    .if_dout(start_for_castOut_U0_dout),
    .if_empty_n(start_for_castOut_U0_empty_n),
    .if_read(castOut_U0_ap_ready)
);

assign ap_done = castOut_U0_ap_done;

assign ap_idle = (pool3_U0_ap_idle & pool2_U0_ap_idle & pool1_U0_ap_idle & conv3_U0_ap_idle & conv2_U0_ap_idle & conv1_U0_ap_idle & castOut_U0_ap_idle & castIn_U0_ap_idle);

assign ap_ready = castIn_U0_ap_ready;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign castIn_U0_ap_continue = 1'b1;

assign castIn_U0_ap_start = ap_start;

assign castOut_U0_ap_continue = 1'b1;

assign castOut_U0_ap_start = start_for_castOut_U0_empty_n;

assign conv1_U0_ap_continue = 1'b1;

assign conv1_U0_ap_start = start_for_conv1_U0_empty_n;

assign conv2_U0_ap_continue = 1'b1;

assign conv2_U0_ap_start = start_for_conv2_U0_empty_n;

assign conv3_U0_ap_continue = 1'b1;

assign conv3_U0_ap_start = start_for_conv3_U0_empty_n;

assign full_in_AXI_TREADY = castIn_U0_full_in_AXI_TREADY;

assign full_out_AXI_TDATA = castOut_U0_full_out_AXI_TDATA;

assign full_out_AXI_TDEST = castOut_U0_full_out_AXI_TDEST;

assign full_out_AXI_TID = castOut_U0_full_out_AXI_TID;

assign full_out_AXI_TKEEP = castOut_U0_full_out_AXI_TKEEP;

assign full_out_AXI_TLAST = castOut_U0_full_out_AXI_TLAST;

assign full_out_AXI_TSTRB = castOut_U0_full_out_AXI_TSTRB;

assign full_out_AXI_TUSER = castOut_U0_full_out_AXI_TUSER;

assign full_out_AXI_TVALID = castOut_U0_full_out_AXI_TVALID;

assign pool1_U0_ap_continue = 1'b1;

assign pool1_U0_ap_start = start_for_pool1_U0_empty_n;

assign pool2_U0_ap_continue = 1'b1;

assign pool2_U0_ap_start = start_for_pool2_U0_empty_n;

assign pool3_U0_ap_continue = 1'b1;

assign pool3_U0_ap_start = start_for_pool3_U0_empty_n;

assign start_for_castOut_U0_din = 1'b1;

assign start_for_conv1_U0_din = 1'b1;

assign start_for_conv2_U0_din = 1'b1;

assign start_for_conv3_U0_din = 1'b1;

assign start_for_pool1_U0_din = 1'b1;

assign start_for_pool2_U0_din = 1'b1;

assign start_for_pool3_U0_din = 1'b1;

endmodule //encode
