// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2026.1 (lin64) Build 6511674 Tue Jun 16 11:01:26 MDT 2026
// Date        : Tue Jul 21 21:09:37 2026
// Host        : amd-VirtualBox running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/amd/training/clk_resources/lab/SCU035/verilog/wave_gen.gen/sources_1/ip/char_fifo/char_fifo_sim_netlist.v
// Design      : char_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcsu35p-sbvb625-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "char_fifo,fifo_generator_v13_2_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_15,Vivado 2026.1" *) 
(* NotValidForBitStream *)
module char_fifo
   (srst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    wr_rst_busy,
    rd_rst_busy);
  input srst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_mode = "slave write_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 1000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_mode = "slave read_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 1000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* x_interface_mode = "slave FIFO_WRITE" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* x_interface_mode = "slave FIFO_READ" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire srst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [10:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [10:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "11" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "spartanuplus" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "1" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "6" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "4" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "2kx9" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "6" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "7" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "2047" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "2046" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "11" *) 
  (* C_RD_DEPTH = "2048" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "11" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "1" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "11" *) 
  (* C_WR_DEPTH = "2048" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "11" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  char_fifo_fifo_generator_v13_2_15 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[10:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[10:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(srst),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[10:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2026.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
dGu72XHm1SGA216zirXmRscTLLxxgDIFDG1CSj42adYdijKpZDYj+ILu+mshlOULAXrM6Gzh8sqR
gjkpzk2bTqBXI1oAKib61FH9j0h/c2Kk67bAnIohh6OhVjTdkvwLBltIS6uYCO+SVX+x/uca8x0J
hS271jg9N+9k3174JEE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jAgKubpee5TGRufSmwz5IdjfscFwjHc1yqlNg9LUyu5pHMpAQHQaMiQmkQjbj5fYZ5w4EdWylgqy
S3eglb573KQ/3EuMsXaSoYyZWrRaVw28x01p51Wu/eTaa1WdSHgP+yW/req9kXycB+UV1GAU5xdt
108WyFRDRm+c4TRFyYjhPe05qVBC7KYZ6CfomQYV4kev3Dk1ozrvXQFjJjLO9Z2jVTtpT6u7zYIg
PXli6RBthoO6IIpAZPN70vnTGgKEUaIykrsMwErjQiqQqXX0SjLimfTf8oVNXCYIMkkpPo44A8vb
xbUQE2IuuVT5OUOh2iJYNm9np3/RCXO44y1TWg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ofHJWAAWazm87fhFR2lyQWX4juOLKeKf8hjQHNAv5zwbbXR5g4D/wjJgDTFFbkeRy4XuOyS8Cpev
BFfyCoZybCYHLvUxNlHNlsvvU9Ux7dyWWSpM4N479ZnquC78QmbRrkLsx9oWSlf6Vdwauphn75+U
GIjP2sYPUOJWr3u3J4I=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Jsw64pxYqcqVAmPKqIusKkdRQB4PFvfnT0Euam7IyIPJxaaaeu9ieYblbNy+y2oJ07eQr4LN1EIu
evo6gymuqY/LQFZ9Nb1yy63anHFP1AEw0+0zjJv22W/RxcWecu/xxe53akubf8kmiCLLjcOEbvhr
WUPY/11WLHxq1gnwIp5yO4Xk2Q1vu8wH21rHC91wgHd0IsIOy7bzkDE0bpAI/4NU5SVOxDqxzLuA
KsAt5tHuDweZmpJ/rWTH2oRh2z7rXtQxcuMko4ci6I8glBCI7XAugBbCH2BB2zp6UWIfGI1rQ0vX
zETq+wfrAzdwZTdu5INoadPCTe6lslTS9UAkiQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
awF0UjMZcCSeDeqx7MRqHHTRr4vMwGmArBKeAVuvTLkLc97chMMEhaT5MZwPl0YnpWSzzmOAxmsv
CxzAjhssr1Y+4/PTt6QKEs9tBg8Za0PJuk6EhTTsq17Dl9znTn4YpZeqiwTqZAhmCiDSybWzoAtb
3xy/LiFqf56ZS0fLgU8rXGpM1J6fl3qCrR0nNMU524RVnMx17AIqO74WrcpwHtkNqiBWMBNAGSCt
sPBAlRHAaRn4xKXgRP8hiLg47GBEBgpljP46iiQLhsJu8SDRRW9E0u6G0xJWTgT++sW7EWtcWj4T
o1p7FJBZmE2TXA2tDydEDhuak3qEsUx9bo+E4g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2026.1-2030.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
O6g4Bct3AvdCEa0UcYgIOeIRMvgI7hOrs54EFTgH0vBQpYdL128QBUfbklS1zJAurm5FZvD6LFF1
bdla9ZI2NlvhgskosJM9NpVVArV/DbVEncgt9XJhTT3OqhZdRSZrQRcpywftfeQFXwVMkVwdq5NH
4ShbQTTHmWGAuSbkoUYHbQawmaGs799oLqORxYgpCkG4CHB8Hw1r/keC13gnVnk1GH4d4HQiqxjb
rqO+v6SAaJf8Fyr6Bop1rVRzROp+qDFcisFY9l1FUGn/aJIDM9QOpWhcDrG4aG1YDWfDVDEX+TTz
Egv4jzRuNPMVczkJqpL587RxQKzEBYhElPzp2A==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
V68jRgp2Idh8t2VkW45MCRphFQ4jl6V0WK7N7hXGZhaQFsp25eBN22YnMQHi/vKVgKzINwWdgrbw
TauibdyLbetzAsQFObTjoyqh77h2kCz2iv0ei2wyYTiiUwCB9NABDyUR+ztAv+B+jYyE/uZaSidM
n/zZBomwvV5Zd0hry9RDCuuZKqSl+zwT9NcA20nIzIcNX8IPpFvcXz5N3G6K9gZWbKhMty4t5tkb
GBYbL0QT0p0BNfTZXNQw1Gt4cBSz/qYNJ2Xu/YZ+V2jdOpiw7Pe0tUloRyD525dQkGM7uD4AAZ1b
83tc9Q2pUphUI37u8ekjug7Q9kOBAFz6rVkB8A==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
t9b4xEQcRDnFfZmWCQLVBO9PewphBWYN6oXD50CF2LVB4GR3tWt62L4X4xNQ6zNZSLMMtF/1Dh2w
W0jzUUEQCgZnr8kGvxNE+R52CG8D73dLyWEBezD68MtX/dd2ezB4nrfnFg4evJFJ/9F48pjyEA5o
eutM007fUI8YWnW7TIkzHPZ+9JtUvDd/2tTgIAgq6oOZGT5Cs4I1Uqb6oab8wRyxwdFK7oZVP4xV
gqt/GKZMUQAjWtA43uf3aYkOx9nhDEXiBItzPa4LAkZpGjc0gGyQyVShxg8zUzSWEJR8L1o6vMAX
rarDYDTIk5yY/eQmh1c6TA6ZqJ7UQXMXRTDTiG4h+s9gSb44wCGbqkOmCyA4gu7UDkCBNho4JM3t
0Zerk+UAsp5sh3thdVCr0AS6WQ54pj8UaXpk+1u9lqn4QRys33f5FjD7RC9cc3mEAyDHoyCaWGWl
/2yFk0+ulX3d0Xi32n8Qs1csusgVZIk/BKb159i8IWltRgQU/7GAAqC/

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
J/ylEIABu6C1a0vR6D5fz4s6QhyJCRQqJ3LfWb4Xkc5EUgf6DELxPobcA0U6M+Mkko3Sy4sKsU4f
yQIugHb+jIYdRO+T1fSw8guFqlHtlNiwUQdGSIw1rcuy/R07qTzZF3GumIKCyk+TrvEOcVqC9+fH
as71DAS12EFnukvZoNtoXSI5nZq5LVBPHf8wUzZxpI321LyJQLaFU4JJFGwcavsd++9tmra91sVN
BwDwv3mgQfT0TqE/TdCX9Zwy7zK/jW3EaOfoo5325gcSUR1jjSYwnWmM6Jy9vziqWHwvsjDhQJxl
aeqehWJ2yNrgq3TDVRpUY+M9W8QBiAjkbkTwQw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
G+y9CtLjIQklJRHMRkGTB36EEOykn/z2Rb9FX8IZujxNAMVZjI0+MC2HSZwAzMJiZ/ogIA+Axwli
VkLXpi0D85gmlZ9R4Uy4Qg2cJQqn3X8ZPVEGOrirWAFPV6I6DLgiuDyblEbGT+jAegiYgxOdmYzO
rda5v0cSXpnfMFyHbUQxbket+AHbf/bIePv+J96W35zJ2j98Mzc2hLPliTDmteSe1nP4cpQnxk2V
5/tAfDdod46lN2rH/hTPA7Fa/IZpncNG27QQHpYAt+spI8YH8R25wbEreqhuV+kam8wXF7r+vUlN
kqz9GkMcA10m1F457xYENfO6RxR/Eacf9s6IZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CZYvRQs1e7cle29/SJCfOGN0qoef3T91yEF+XdigtvC+8ndM7QsKiobbpPCboNixCdknEuxrAzJg
3RzWEAjWaGsM966jIWJ6g/DOod9MXgQov1slH5VvCGn6SQTEkJ7xBjAcuMaMFZ4QkFKWi16EHhSY
w+iKhH3jCMHq2+05eyvFVte/6liuwhLASVXCYyqpUZX/pGwIRDAjIMn7I9hPW6J8cvUKM1CjeFve
nsG9Jf1JsFmkLaJZA8EWwb+hO9gFGNUf8KY89/0kDAANM0sDW3D/jI7AdnZ2SOEyw8ZnLR7bvuxk
GnvM0uSdkOq6ub/Db/5ToWmsDfvbMVwx2qyjzw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 51328)
`pragma protect data_block
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
YXJVFb2r1a1d+UlPhezEM6pDsWFRupR4Imv4Qw==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
