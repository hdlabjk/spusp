// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2026.1 (lin64) Build 6511674 Tue Jun 16 11:01:26 MDT 2026
// Date        : Tue Jul 21 21:09:36 2026
// Host        : amd-VirtualBox running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ char_fifo_sim_netlist.v
// Design      : char_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcsu35p-sbvb625-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "char_fifo,fifo_generator_v13_2_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_15,Vivado 2026.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_15 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 51424)
`pragma protect data_block
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
k9g+sds2Jys8IQ==
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
