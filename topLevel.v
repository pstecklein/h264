module controller(
  input         clock,
  input         reset,
  input  [4:0]  io_computeSize,
  input  [63:0] io_initAddr1,
  input  [63:0] io_initAddr2,
  input  [31:0] io_mbBufferWidth,
  input  [31:0] io_stride,
  input  [31:0] io_numRows,
  input  [31:0] io_computeDataIn,
  input  [15:0] io_axiDataIn_0,
  input  [15:0] io_axiDataIn_1,
  input  [15:0] io_axiDataIn_2,
  input  [15:0] io_axiDataIn_3,
  output [63:0] io_axiAddr,
  output [15:0] io_axiDataOut_0,
  output [15:0] io_axiDataOut_1,
  output [15:0] io_axiDataOut_2,
  output [15:0] io_axiDataOut_3,
  output [15:0] io_vec1_0,
  output [15:0] io_vec1_1,
  output [15:0] io_vec1_2,
  output [15:0] io_vec1_3,
  output [15:0] io_vec2_0,
  output [15:0] io_vec2_1,
  output [15:0] io_vec2_2,
  output [15:0] io_vec2_3,
  output [31:0] io_accOut
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
`endif // RANDOMIZE_REG_INIT
  reg [1:0] shift; // @[motionEstimationCtrl.scala 37:26]
  reg [31:0] acc; // @[motionEstimationCtrl.scala 38:26]
  reg [31:0] row; // @[motionEstimationCtrl.scala 39:26]
  reg [15:0] vec1_reg_0; // @[motionEstimationCtrl.scala 40:26]
  reg [15:0] vec1_reg_1; // @[motionEstimationCtrl.scala 40:26]
  reg [15:0] vec1_reg_2; // @[motionEstimationCtrl.scala 40:26]
  reg [15:0] vec1_reg_3; // @[motionEstimationCtrl.scala 40:26]
  reg [15:0] vec2_reg_0; // @[motionEstimationCtrl.scala 41:26]
  reg [15:0] vec2_reg_1; // @[motionEstimationCtrl.scala 41:26]
  reg [15:0] vec2_reg_2; // @[motionEstimationCtrl.scala 41:26]
  reg [15:0] vec2_reg_3; // @[motionEstimationCtrl.scala 41:26]
  reg [2:0] state; // @[motionEstimationCtrl.scala 45:22]
  wire [63:0] _io_axiAddr_T = io_mbBufferWidth * row; // @[motionEstimationCtrl.scala 49:37]
  wire [63:0] _io_axiAddr_T_2 = _io_axiAddr_T + io_initAddr1; // @[motionEstimationCtrl.scala 49:44]
  wire [63:0] _GEN_51 = {{62'd0}, shift}; // @[motionEstimationCtrl.scala 49:59]
  wire [63:0] _io_axiAddr_T_4 = _io_axiAddr_T_2 + _GEN_51; // @[motionEstimationCtrl.scala 49:59]
  wire [63:0] _io_axiAddr_T_5 = io_stride * row; // @[motionEstimationCtrl.scala 53:30]
  wire [63:0] _io_axiAddr_T_7 = _io_axiAddr_T_5 + io_initAddr2; // @[motionEstimationCtrl.scala 53:37]
  wire [63:0] _io_axiAddr_T_9 = _io_axiAddr_T_7 + _GEN_51; // @[motionEstimationCtrl.scala 53:52]
  wire [31:0] _acc_T_1 = acc + io_computeDataIn; // @[motionEstimationCtrl.scala 61:23]
  wire [31:0] _T_15 = row + 32'h1; // @[motionEstimationCtrl.scala 68:17]
  wire [31:0] _GEN_0 = _T_15 < io_numRows ? _T_15 : row; // @[motionEstimationCtrl.scala 68:38 69:18 39:26]
  wire [2:0] _GEN_1 = _T_15 < io_numRows ? 3'h1 : 3'h5; // @[motionEstimationCtrl.scala 68:38 70:18 72:18]
  wire [1:0] _shift_T_1 = shift + 2'h1; // @[motionEstimationCtrl.scala 75:27]
  wire [63:0] _io_axiAddr_T_19 = _io_axiAddr_T_4 + 64'h1; // @[motionEstimationCtrl.scala 76:69]
  wire [63:0] _GEN_2 = io_computeSize == 5'h10 & shift >= 2'h3 | io_computeSize == 5'h8 & shift >= 2'h1 | io_computeSize
     == 5'h4 ? _io_axiAddr_T_2 : _io_axiAddr_T_19; // @[motionEstimationCtrl.scala 65:125 66:18 76:18]
  wire [1:0] _GEN_3 = io_computeSize == 5'h10 & shift >= 2'h3 | io_computeSize == 5'h8 & shift >= 2'h1 | io_computeSize
     == 5'h4 ? 2'h0 : _shift_T_1; // @[motionEstimationCtrl.scala 65:125 67:18 75:18]
  wire [31:0] _GEN_4 = io_computeSize == 5'h10 & shift >= 2'h3 | io_computeSize == 5'h8 & shift >= 2'h1 | io_computeSize
     == 5'h4 ? _GEN_0 : row; // @[motionEstimationCtrl.scala 65:125 39:26]
  wire [2:0] _GEN_5 = io_computeSize == 5'h10 & shift >= 2'h3 | io_computeSize == 5'h8 & shift >= 2'h1 | io_computeSize
     == 5'h4 ? _GEN_1 : 3'h1; // @[motionEstimationCtrl.scala 65:125 77:18]
  wire [31:0] _GEN_6 = state == 3'h4 ? _acc_T_1 : acc; // @[motionEstimationCtrl.scala 60:30 61:16 38:26]
  wire [63:0] _GEN_7 = state == 3'h4 ? _GEN_2 : 64'h0; // @[motionEstimationCtrl.scala 31:17 60:30]
  wire [1:0] _GEN_8 = state == 3'h4 ? _GEN_3 : shift; // @[motionEstimationCtrl.scala 37:26 60:30]
  wire [31:0] _GEN_9 = state == 3'h4 ? _GEN_4 : row; // @[motionEstimationCtrl.scala 39:26 60:30]
  wire [2:0] _GEN_10 = state == 3'h4 ? _GEN_5 : 3'h0; // @[motionEstimationCtrl.scala 60:30 81:18]
  wire [2:0] _GEN_11 = state == 3'h3 ? 3'h4 : _GEN_10; // @[motionEstimationCtrl.scala 58:33 59:16]
  wire [31:0] _GEN_12 = state == 3'h3 ? acc : _GEN_6; // @[motionEstimationCtrl.scala 38:26 58:33]
  wire [63:0] _GEN_13 = state == 3'h3 ? 64'h0 : _GEN_7; // @[motionEstimationCtrl.scala 31:17 58:33]
  wire [1:0] _GEN_14 = state == 3'h3 ? shift : _GEN_8; // @[motionEstimationCtrl.scala 37:26 58:33]
  wire [31:0] _GEN_15 = state == 3'h3 ? row : _GEN_9; // @[motionEstimationCtrl.scala 39:26 58:33]
  wire [63:0] _GEN_22 = state == 3'h2 ? 64'h0 : _GEN_13; // @[motionEstimationCtrl.scala 31:17 55:32]
  wire [63:0] _GEN_29 = state == 3'h1 ? _io_axiAddr_T_9 : _GEN_22; // @[motionEstimationCtrl.scala 51:32 53:16]
  assign io_axiAddr = state == 3'h0 ? _io_axiAddr_T_4 : _GEN_29; // @[motionEstimationCtrl.scala 48:24 49:16]
  assign io_axiDataOut_0 = vec1_reg_0; // @[motionEstimationCtrl.scala 87:18]
  assign io_axiDataOut_1 = vec1_reg_1; // @[motionEstimationCtrl.scala 87:18]
  assign io_axiDataOut_2 = vec1_reg_2; // @[motionEstimationCtrl.scala 87:18]
  assign io_axiDataOut_3 = vec1_reg_3; // @[motionEstimationCtrl.scala 87:18]
  assign io_vec1_0 = vec1_reg_0; // @[motionEstimationCtrl.scala 85:18]
  assign io_vec1_1 = vec1_reg_1; // @[motionEstimationCtrl.scala 85:18]
  assign io_vec1_2 = vec1_reg_2; // @[motionEstimationCtrl.scala 85:18]
  assign io_vec1_3 = vec1_reg_3; // @[motionEstimationCtrl.scala 85:18]
  assign io_vec2_0 = vec2_reg_0; // @[motionEstimationCtrl.scala 86:18]
  assign io_vec2_1 = vec2_reg_1; // @[motionEstimationCtrl.scala 86:18]
  assign io_vec2_2 = vec2_reg_2; // @[motionEstimationCtrl.scala 86:18]
  assign io_vec2_3 = vec2_reg_3; // @[motionEstimationCtrl.scala 86:18]
  assign io_accOut = acc; // @[motionEstimationCtrl.scala 84:18]
  always @(posedge clock) begin
    if (reset) begin // @[motionEstimationCtrl.scala 37:26]
      shift <= 2'h0; // @[motionEstimationCtrl.scala 37:26]
    end else if (!(state == 3'h0)) begin // @[motionEstimationCtrl.scala 48:24]
      if (!(state == 3'h1)) begin // @[motionEstimationCtrl.scala 51:32]
        if (!(state == 3'h2)) begin // @[motionEstimationCtrl.scala 55:32]
          shift <= _GEN_14;
        end
      end
    end
    if (reset) begin // @[motionEstimationCtrl.scala 38:26]
      acc <= 32'h0; // @[motionEstimationCtrl.scala 38:26]
    end else if (!(state == 3'h0)) begin // @[motionEstimationCtrl.scala 48:24]
      if (!(state == 3'h1)) begin // @[motionEstimationCtrl.scala 51:32]
        if (!(state == 3'h2)) begin // @[motionEstimationCtrl.scala 55:32]
          acc <= _GEN_12;
        end
      end
    end
    if (reset) begin // @[motionEstimationCtrl.scala 39:26]
      row <= 32'h0; // @[motionEstimationCtrl.scala 39:26]
    end else if (!(state == 3'h0)) begin // @[motionEstimationCtrl.scala 48:24]
      if (!(state == 3'h1)) begin // @[motionEstimationCtrl.scala 51:32]
        if (!(state == 3'h2)) begin // @[motionEstimationCtrl.scala 55:32]
          row <= _GEN_15;
        end
      end
    end
    if (reset) begin // @[motionEstimationCtrl.scala 40:26]
      vec1_reg_0 <= 16'h0; // @[motionEstimationCtrl.scala 40:26]
    end else if (!(state == 3'h0)) begin // @[motionEstimationCtrl.scala 48:24]
      if (state == 3'h1) begin // @[motionEstimationCtrl.scala 51:32]
        vec1_reg_0 <= io_axiDataIn_0; // @[motionEstimationCtrl.scala 52:16]
      end
    end
    if (reset) begin // @[motionEstimationCtrl.scala 40:26]
      vec1_reg_1 <= 16'h0; // @[motionEstimationCtrl.scala 40:26]
    end else if (!(state == 3'h0)) begin // @[motionEstimationCtrl.scala 48:24]
      if (state == 3'h1) begin // @[motionEstimationCtrl.scala 51:32]
        vec1_reg_1 <= io_axiDataIn_1; // @[motionEstimationCtrl.scala 52:16]
      end
    end
    if (reset) begin // @[motionEstimationCtrl.scala 40:26]
      vec1_reg_2 <= 16'h0; // @[motionEstimationCtrl.scala 40:26]
    end else if (!(state == 3'h0)) begin // @[motionEstimationCtrl.scala 48:24]
      if (state == 3'h1) begin // @[motionEstimationCtrl.scala 51:32]
        vec1_reg_2 <= io_axiDataIn_2; // @[motionEstimationCtrl.scala 52:16]
      end
    end
    if (reset) begin // @[motionEstimationCtrl.scala 40:26]
      vec1_reg_3 <= 16'h0; // @[motionEstimationCtrl.scala 40:26]
    end else if (!(state == 3'h0)) begin // @[motionEstimationCtrl.scala 48:24]
      if (state == 3'h1) begin // @[motionEstimationCtrl.scala 51:32]
        vec1_reg_3 <= io_axiDataIn_3; // @[motionEstimationCtrl.scala 52:16]
      end
    end
    if (reset) begin // @[motionEstimationCtrl.scala 41:26]
      vec2_reg_0 <= 16'h0; // @[motionEstimationCtrl.scala 41:26]
    end else if (!(state == 3'h0)) begin // @[motionEstimationCtrl.scala 48:24]
      if (!(state == 3'h1)) begin // @[motionEstimationCtrl.scala 51:32]
        if (state == 3'h2) begin // @[motionEstimationCtrl.scala 55:32]
          vec2_reg_0 <= io_axiDataIn_0; // @[motionEstimationCtrl.scala 56:16]
        end
      end
    end
    if (reset) begin // @[motionEstimationCtrl.scala 41:26]
      vec2_reg_1 <= 16'h0; // @[motionEstimationCtrl.scala 41:26]
    end else if (!(state == 3'h0)) begin // @[motionEstimationCtrl.scala 48:24]
      if (!(state == 3'h1)) begin // @[motionEstimationCtrl.scala 51:32]
        if (state == 3'h2) begin // @[motionEstimationCtrl.scala 55:32]
          vec2_reg_1 <= io_axiDataIn_1; // @[motionEstimationCtrl.scala 56:16]
        end
      end
    end
    if (reset) begin // @[motionEstimationCtrl.scala 41:26]
      vec2_reg_2 <= 16'h0; // @[motionEstimationCtrl.scala 41:26]
    end else if (!(state == 3'h0)) begin // @[motionEstimationCtrl.scala 48:24]
      if (!(state == 3'h1)) begin // @[motionEstimationCtrl.scala 51:32]
        if (state == 3'h2) begin // @[motionEstimationCtrl.scala 55:32]
          vec2_reg_2 <= io_axiDataIn_2; // @[motionEstimationCtrl.scala 56:16]
        end
      end
    end
    if (reset) begin // @[motionEstimationCtrl.scala 41:26]
      vec2_reg_3 <= 16'h0; // @[motionEstimationCtrl.scala 41:26]
    end else if (!(state == 3'h0)) begin // @[motionEstimationCtrl.scala 48:24]
      if (!(state == 3'h1)) begin // @[motionEstimationCtrl.scala 51:32]
        if (state == 3'h2) begin // @[motionEstimationCtrl.scala 55:32]
          vec2_reg_3 <= io_axiDataIn_3; // @[motionEstimationCtrl.scala 56:16]
        end
      end
    end
    if (reset) begin // @[motionEstimationCtrl.scala 45:22]
      state <= 3'h0; // @[motionEstimationCtrl.scala 45:22]
    end else if (state == 3'h0) begin // @[motionEstimationCtrl.scala 48:24]
      state <= 3'h1; // @[motionEstimationCtrl.scala 50:16]
    end else if (state == 3'h1) begin // @[motionEstimationCtrl.scala 51:32]
      state <= 3'h2; // @[motionEstimationCtrl.scala 54:16]
    end else if (state == 3'h2) begin // @[motionEstimationCtrl.scala 55:32]
      state <= 3'h3; // @[motionEstimationCtrl.scala 57:16]
    end else begin
      state <= _GEN_11;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  shift = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  acc = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  row = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  vec1_reg_0 = _RAND_3[15:0];
  _RAND_4 = {1{`RANDOM}};
  vec1_reg_1 = _RAND_4[15:0];
  _RAND_5 = {1{`RANDOM}};
  vec1_reg_2 = _RAND_5[15:0];
  _RAND_6 = {1{`RANDOM}};
  vec1_reg_3 = _RAND_6[15:0];
  _RAND_7 = {1{`RANDOM}};
  vec2_reg_0 = _RAND_7[15:0];
  _RAND_8 = {1{`RANDOM}};
  vec2_reg_1 = _RAND_8[15:0];
  _RAND_9 = {1{`RANDOM}};
  vec2_reg_2 = _RAND_9[15:0];
  _RAND_10 = {1{`RANDOM}};
  vec2_reg_3 = _RAND_10[15:0];
  _RAND_11 = {1{`RANDOM}};
  state = _RAND_11[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module getSad4x(
  input         clock,
  input         reset,
  input  [15:0] io_org_0,
  input  [15:0] io_org_1,
  input  [15:0] io_org_2,
  input  [15:0] io_org_3,
  input  [15:0] io_cur_0,
  input  [15:0] io_cur_1,
  input  [15:0] io_cur_2,
  input  [15:0] io_cur_3,
  output [31:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] uiSum; // @[getSad4x.scala 11:22]
  wire [15:0] _uiSum_T_2 = io_org_0 - io_cur_0; // @[getSad4x.scala 13:66]
  wire [15:0] _uiSum_T_4 = io_cur_0 - io_org_0; // @[getSad4x.scala 13:73]
  wire [15:0] _uiSum_T_5 = io_org_0 >= io_cur_0 ? _uiSum_T_2 : _uiSum_T_4; // @[getSad4x.scala 13:55]
  wire [15:0] _uiSum_T_8 = io_org_1 - io_cur_1; // @[getSad4x.scala 13:66]
  wire [15:0] _uiSum_T_10 = io_cur_1 - io_org_1; // @[getSad4x.scala 13:73]
  wire [15:0] _uiSum_T_11 = io_org_1 >= io_cur_1 ? _uiSum_T_8 : _uiSum_T_10; // @[getSad4x.scala 13:55]
  wire [15:0] _uiSum_T_14 = io_org_2 - io_cur_2; // @[getSad4x.scala 13:66]
  wire [15:0] _uiSum_T_16 = io_cur_2 - io_org_2; // @[getSad4x.scala 13:73]
  wire [15:0] _uiSum_T_17 = io_org_2 >= io_cur_2 ? _uiSum_T_14 : _uiSum_T_16; // @[getSad4x.scala 13:55]
  wire [15:0] _uiSum_T_20 = io_org_3 - io_cur_3; // @[getSad4x.scala 13:66]
  wire [15:0] _uiSum_T_22 = io_cur_3 - io_org_3; // @[getSad4x.scala 13:73]
  wire [15:0] _uiSum_T_23 = io_org_3 >= io_cur_3 ? _uiSum_T_20 : _uiSum_T_22; // @[getSad4x.scala 13:55]
  wire [15:0] _uiSum_T_25 = _uiSum_T_5 + _uiSum_T_11; // @[getSad4x.scala 13:89]
  wire [15:0] _uiSum_T_27 = _uiSum_T_25 + _uiSum_T_17; // @[getSad4x.scala 13:89]
  wire [15:0] _uiSum_T_29 = _uiSum_T_27 + _uiSum_T_23; // @[getSad4x.scala 13:89]
  assign io_out = uiSum; // @[getSad4x.scala 15:10]
  always @(posedge clock) begin
    if (reset) begin // @[getSad4x.scala 11:22]
      uiSum <= 32'h0; // @[getSad4x.scala 11:22]
    end else begin
      uiSum <= {{16'd0}, _uiSum_T_29}; // @[getSad4x.scala 13:9]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  uiSum = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module topLevel(
  input         clock,
  input         reset,
  input  [4:0]  io_size,
  input  [63:0] io_initAddr1,
  input  [63:0] io_initAddr2,
  input  [31:0] io_mbBufferWidth,
  input  [31:0] io_stride,
  input  [31:0] io_numRows,
  input  [15:0] io_axiRData_0,
  input  [15:0] io_axiRData_1,
  input  [15:0] io_axiRData_2,
  input  [15:0] io_axiRData_3,
  output [63:0] io_axiAddr,
  output        io_axiAWrFlag,
  output [15:0] io_axiWData_0,
  output [15:0] io_axiWData_1,
  output [15:0] io_axiWData_2,
  output [15:0] io_axiWData_3,
  output [31:0] io_topAccOut
);
  wire  controller_inst_clock; // @[mecTop.scala 26:31]
  wire  controller_inst_reset; // @[mecTop.scala 26:31]
  wire [4:0] controller_inst_io_computeSize; // @[mecTop.scala 26:31]
  wire [63:0] controller_inst_io_initAddr1; // @[mecTop.scala 26:31]
  wire [63:0] controller_inst_io_initAddr2; // @[mecTop.scala 26:31]
  wire [31:0] controller_inst_io_mbBufferWidth; // @[mecTop.scala 26:31]
  wire [31:0] controller_inst_io_stride; // @[mecTop.scala 26:31]
  wire [31:0] controller_inst_io_numRows; // @[mecTop.scala 26:31]
  wire [31:0] controller_inst_io_computeDataIn; // @[mecTop.scala 26:31]
  wire [15:0] controller_inst_io_axiDataIn_0; // @[mecTop.scala 26:31]
  wire [15:0] controller_inst_io_axiDataIn_1; // @[mecTop.scala 26:31]
  wire [15:0] controller_inst_io_axiDataIn_2; // @[mecTop.scala 26:31]
  wire [15:0] controller_inst_io_axiDataIn_3; // @[mecTop.scala 26:31]
  wire [63:0] controller_inst_io_axiAddr; // @[mecTop.scala 26:31]
  wire [15:0] controller_inst_io_axiDataOut_0; // @[mecTop.scala 26:31]
  wire [15:0] controller_inst_io_axiDataOut_1; // @[mecTop.scala 26:31]
  wire [15:0] controller_inst_io_axiDataOut_2; // @[mecTop.scala 26:31]
  wire [15:0] controller_inst_io_axiDataOut_3; // @[mecTop.scala 26:31]
  wire [15:0] controller_inst_io_vec1_0; // @[mecTop.scala 26:31]
  wire [15:0] controller_inst_io_vec1_1; // @[mecTop.scala 26:31]
  wire [15:0] controller_inst_io_vec1_2; // @[mecTop.scala 26:31]
  wire [15:0] controller_inst_io_vec1_3; // @[mecTop.scala 26:31]
  wire [15:0] controller_inst_io_vec2_0; // @[mecTop.scala 26:31]
  wire [15:0] controller_inst_io_vec2_1; // @[mecTop.scala 26:31]
  wire [15:0] controller_inst_io_vec2_2; // @[mecTop.scala 26:31]
  wire [15:0] controller_inst_io_vec2_3; // @[mecTop.scala 26:31]
  wire [31:0] controller_inst_io_accOut; // @[mecTop.scala 26:31]
  wire  getSad4x_inst_clock; // @[mecTop.scala 27:29]
  wire  getSad4x_inst_reset; // @[mecTop.scala 27:29]
  wire [15:0] getSad4x_inst_io_org_0; // @[mecTop.scala 27:29]
  wire [15:0] getSad4x_inst_io_org_1; // @[mecTop.scala 27:29]
  wire [15:0] getSad4x_inst_io_org_2; // @[mecTop.scala 27:29]
  wire [15:0] getSad4x_inst_io_org_3; // @[mecTop.scala 27:29]
  wire [15:0] getSad4x_inst_io_cur_0; // @[mecTop.scala 27:29]
  wire [15:0] getSad4x_inst_io_cur_1; // @[mecTop.scala 27:29]
  wire [15:0] getSad4x_inst_io_cur_2; // @[mecTop.scala 27:29]
  wire [15:0] getSad4x_inst_io_cur_3; // @[mecTop.scala 27:29]
  wire [31:0] getSad4x_inst_io_out; // @[mecTop.scala 27:29]
  controller controller_inst ( // @[mecTop.scala 26:31]
    .clock(controller_inst_clock),
    .reset(controller_inst_reset),
    .io_computeSize(controller_inst_io_computeSize),
    .io_initAddr1(controller_inst_io_initAddr1),
    .io_initAddr2(controller_inst_io_initAddr2),
    .io_mbBufferWidth(controller_inst_io_mbBufferWidth),
    .io_stride(controller_inst_io_stride),
    .io_numRows(controller_inst_io_numRows),
    .io_computeDataIn(controller_inst_io_computeDataIn),
    .io_axiDataIn_0(controller_inst_io_axiDataIn_0),
    .io_axiDataIn_1(controller_inst_io_axiDataIn_1),
    .io_axiDataIn_2(controller_inst_io_axiDataIn_2),
    .io_axiDataIn_3(controller_inst_io_axiDataIn_3),
    .io_axiAddr(controller_inst_io_axiAddr),
    .io_axiDataOut_0(controller_inst_io_axiDataOut_0),
    .io_axiDataOut_1(controller_inst_io_axiDataOut_1),
    .io_axiDataOut_2(controller_inst_io_axiDataOut_2),
    .io_axiDataOut_3(controller_inst_io_axiDataOut_3),
    .io_vec1_0(controller_inst_io_vec1_0),
    .io_vec1_1(controller_inst_io_vec1_1),
    .io_vec1_2(controller_inst_io_vec1_2),
    .io_vec1_3(controller_inst_io_vec1_3),
    .io_vec2_0(controller_inst_io_vec2_0),
    .io_vec2_1(controller_inst_io_vec2_1),
    .io_vec2_2(controller_inst_io_vec2_2),
    .io_vec2_3(controller_inst_io_vec2_3),
    .io_accOut(controller_inst_io_accOut)
  );
  getSad4x getSad4x_inst ( // @[mecTop.scala 27:29]
    .clock(getSad4x_inst_clock),
    .reset(getSad4x_inst_reset),
    .io_org_0(getSad4x_inst_io_org_0),
    .io_org_1(getSad4x_inst_io_org_1),
    .io_org_2(getSad4x_inst_io_org_2),
    .io_org_3(getSad4x_inst_io_org_3),
    .io_cur_0(getSad4x_inst_io_cur_0),
    .io_cur_1(getSad4x_inst_io_cur_1),
    .io_cur_2(getSad4x_inst_io_cur_2),
    .io_cur_3(getSad4x_inst_io_cur_3),
    .io_out(getSad4x_inst_io_out)
  );
  assign io_axiAddr = controller_inst_io_axiAddr; // @[mecTop.scala 35:17]
  assign io_axiAWrFlag = 1'h0; // @[mecTop.scala 36:17]
  assign io_axiWData_0 = controller_inst_io_axiDataOut_0; // @[mecTop.scala 38:17]
  assign io_axiWData_1 = controller_inst_io_axiDataOut_1; // @[mecTop.scala 38:17]
  assign io_axiWData_2 = controller_inst_io_axiDataOut_2; // @[mecTop.scala 38:17]
  assign io_axiWData_3 = controller_inst_io_axiDataOut_3; // @[mecTop.scala 38:17]
  assign io_topAccOut = controller_inst_io_accOut; // @[mecTop.scala 47:16]
  assign controller_inst_clock = clock;
  assign controller_inst_reset = reset;
  assign controller_inst_io_computeSize = io_size; // @[mecTop.scala 41:34]
  assign controller_inst_io_initAddr1 = io_initAddr1; // @[mecTop.scala 42:32]
  assign controller_inst_io_initAddr2 = io_initAddr2; // @[mecTop.scala 43:32]
  assign controller_inst_io_mbBufferWidth = io_mbBufferWidth; // @[mecTop.scala 44:36]
  assign controller_inst_io_stride = io_stride; // @[mecTop.scala 45:29]
  assign controller_inst_io_numRows = io_numRows; // @[mecTop.scala 46:30]
  assign controller_inst_io_computeDataIn = getSad4x_inst_io_out; // @[mecTop.scala 32:36]
  assign controller_inst_io_axiDataIn_0 = io_axiRData_0; // @[mecTop.scala 37:32]
  assign controller_inst_io_axiDataIn_1 = io_axiRData_1; // @[mecTop.scala 37:32]
  assign controller_inst_io_axiDataIn_2 = io_axiRData_2; // @[mecTop.scala 37:32]
  assign controller_inst_io_axiDataIn_3 = io_axiRData_3; // @[mecTop.scala 37:32]
  assign getSad4x_inst_clock = clock;
  assign getSad4x_inst_reset = reset;
  assign getSad4x_inst_io_org_0 = controller_inst_io_vec1_0; // @[mecTop.scala 30:24]
  assign getSad4x_inst_io_org_1 = controller_inst_io_vec1_1; // @[mecTop.scala 30:24]
  assign getSad4x_inst_io_org_2 = controller_inst_io_vec1_2; // @[mecTop.scala 30:24]
  assign getSad4x_inst_io_org_3 = controller_inst_io_vec1_3; // @[mecTop.scala 30:24]
  assign getSad4x_inst_io_cur_0 = controller_inst_io_vec2_0; // @[mecTop.scala 31:24]
  assign getSad4x_inst_io_cur_1 = controller_inst_io_vec2_1; // @[mecTop.scala 31:24]
  assign getSad4x_inst_io_cur_2 = controller_inst_io_vec2_2; // @[mecTop.scala 31:24]
  assign getSad4x_inst_io_cur_3 = controller_inst_io_vec2_3; // @[mecTop.scala 31:24]
endmodule
