module controller(
  input         clock,
  input         reset,
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
`endif // RANDOMIZE_REG_INIT
  reg [31:0] acc; // @[motionEstimationCtrl.scala 36:20]
  reg [15:0] vec1_reg_0; // @[motionEstimationCtrl.scala 38:25]
  reg [15:0] vec1_reg_1; // @[motionEstimationCtrl.scala 38:25]
  reg [15:0] vec1_reg_2; // @[motionEstimationCtrl.scala 38:25]
  reg [15:0] vec1_reg_3; // @[motionEstimationCtrl.scala 38:25]
  reg [15:0] vec2_reg_0; // @[motionEstimationCtrl.scala 39:25]
  reg [15:0] vec2_reg_1; // @[motionEstimationCtrl.scala 39:25]
  reg [15:0] vec2_reg_2; // @[motionEstimationCtrl.scala 39:25]
  reg [15:0] vec2_reg_3; // @[motionEstimationCtrl.scala 39:25]
  reg [2:0] state; // @[motionEstimationCtrl.scala 44:22]
  wire [63:0] _io_axiAddr_T = io_mbBufferWidth * 32'h0; // @[motionEstimationCtrl.scala 48:37]
  wire [63:0] _io_axiAddr_T_2 = _io_axiAddr_T + io_initAddr1; // @[motionEstimationCtrl.scala 48:44]
  wire [63:0] _io_axiAddr_T_3 = io_stride * 32'h0; // @[motionEstimationCtrl.scala 52:30]
  wire [63:0] _io_axiAddr_T_5 = _io_axiAddr_T_3 + io_initAddr2; // @[motionEstimationCtrl.scala 52:37]
  wire [31:0] _acc_T_1 = acc + io_computeDataIn; // @[motionEstimationCtrl.scala 60:16]
  wire [2:0] _GEN_0 = 32'h0 < io_numRows ? 3'h1 : 3'h5; // @[motionEstimationCtrl.scala 62:28 63:13 65:13]
  wire [31:0] _GEN_1 = state == 3'h4 ? _acc_T_1 : acc; // @[motionEstimationCtrl.scala 36:20 59:30 60:9]
  wire [63:0] _GEN_2 = state == 3'h4 ? _io_axiAddr_T_2 : 64'h0; // @[motionEstimationCtrl.scala 59:30 61:16 30:17]
  wire [2:0] _GEN_3 = state == 3'h4 ? _GEN_0 : state; // @[motionEstimationCtrl.scala 44:22 59:30]
  wire [2:0] _GEN_4 = state == 3'h3 ? 3'h4 : _GEN_3; // @[motionEstimationCtrl.scala 57:33 58:11]
  wire [31:0] _GEN_5 = state == 3'h3 ? acc : _GEN_1; // @[motionEstimationCtrl.scala 36:20 57:33]
  wire [63:0] _GEN_6 = state == 3'h3 ? 64'h0 : _GEN_2; // @[motionEstimationCtrl.scala 30:17 57:33]
  wire [63:0] _GEN_13 = state == 3'h2 ? 64'h0 : _GEN_6; // @[motionEstimationCtrl.scala 30:17 54:32]
  wire [63:0] _GEN_18 = state == 3'h1 ? _io_axiAddr_T_5 : _GEN_13; // @[motionEstimationCtrl.scala 50:32 52:16]
  assign io_axiAddr = state == 3'h0 ? _io_axiAddr_T_2 : _GEN_18; // @[motionEstimationCtrl.scala 47:24 48:16]
  assign io_axiDataOut_0 = vec1_reg_0; // @[motionEstimationCtrl.scala 72:17]
  assign io_axiDataOut_1 = vec1_reg_1; // @[motionEstimationCtrl.scala 72:17]
  assign io_axiDataOut_2 = vec1_reg_2; // @[motionEstimationCtrl.scala 72:17]
  assign io_axiDataOut_3 = vec1_reg_3; // @[motionEstimationCtrl.scala 72:17]
  assign io_vec1_0 = vec1_reg_0; // @[motionEstimationCtrl.scala 70:11]
  assign io_vec1_1 = vec1_reg_1; // @[motionEstimationCtrl.scala 70:11]
  assign io_vec1_2 = vec1_reg_2; // @[motionEstimationCtrl.scala 70:11]
  assign io_vec1_3 = vec1_reg_3; // @[motionEstimationCtrl.scala 70:11]
  assign io_vec2_0 = vec2_reg_0; // @[motionEstimationCtrl.scala 71:11]
  assign io_vec2_1 = vec2_reg_1; // @[motionEstimationCtrl.scala 71:11]
  assign io_vec2_2 = vec2_reg_2; // @[motionEstimationCtrl.scala 71:11]
  assign io_vec2_3 = vec2_reg_3; // @[motionEstimationCtrl.scala 71:11]
  assign io_accOut = acc; // @[motionEstimationCtrl.scala 68:13]
  always @(posedge clock) begin
    if (reset) begin // @[motionEstimationCtrl.scala 36:20]
      acc <= 32'h0; // @[motionEstimationCtrl.scala 36:20]
    end else if (!(state == 3'h0)) begin // @[motionEstimationCtrl.scala 47:24]
      if (!(state == 3'h1)) begin // @[motionEstimationCtrl.scala 50:32]
        if (!(state == 3'h2)) begin // @[motionEstimationCtrl.scala 54:32]
          acc <= _GEN_5;
        end
      end
    end
    if (reset) begin // @[motionEstimationCtrl.scala 38:25]
      vec1_reg_0 <= 16'h0; // @[motionEstimationCtrl.scala 38:25]
    end else if (!(state == 3'h0)) begin // @[motionEstimationCtrl.scala 47:24]
      if (state == 3'h1) begin // @[motionEstimationCtrl.scala 50:32]
        vec1_reg_0 <= io_axiDataIn_0; // @[motionEstimationCtrl.scala 51:14]
      end
    end
    if (reset) begin // @[motionEstimationCtrl.scala 38:25]
      vec1_reg_1 <= 16'h0; // @[motionEstimationCtrl.scala 38:25]
    end else if (!(state == 3'h0)) begin // @[motionEstimationCtrl.scala 47:24]
      if (state == 3'h1) begin // @[motionEstimationCtrl.scala 50:32]
        vec1_reg_1 <= io_axiDataIn_1; // @[motionEstimationCtrl.scala 51:14]
      end
    end
    if (reset) begin // @[motionEstimationCtrl.scala 38:25]
      vec1_reg_2 <= 16'h0; // @[motionEstimationCtrl.scala 38:25]
    end else if (!(state == 3'h0)) begin // @[motionEstimationCtrl.scala 47:24]
      if (state == 3'h1) begin // @[motionEstimationCtrl.scala 50:32]
        vec1_reg_2 <= io_axiDataIn_2; // @[motionEstimationCtrl.scala 51:14]
      end
    end
    if (reset) begin // @[motionEstimationCtrl.scala 38:25]
      vec1_reg_3 <= 16'h0; // @[motionEstimationCtrl.scala 38:25]
    end else if (!(state == 3'h0)) begin // @[motionEstimationCtrl.scala 47:24]
      if (state == 3'h1) begin // @[motionEstimationCtrl.scala 50:32]
        vec1_reg_3 <= io_axiDataIn_3; // @[motionEstimationCtrl.scala 51:14]
      end
    end
    if (reset) begin // @[motionEstimationCtrl.scala 39:25]
      vec2_reg_0 <= 16'h0; // @[motionEstimationCtrl.scala 39:25]
    end else if (!(state == 3'h0)) begin // @[motionEstimationCtrl.scala 47:24]
      if (!(state == 3'h1)) begin // @[motionEstimationCtrl.scala 50:32]
        if (state == 3'h2) begin // @[motionEstimationCtrl.scala 54:32]
          vec2_reg_0 <= io_axiDataIn_0; // @[motionEstimationCtrl.scala 55:14]
        end
      end
    end
    if (reset) begin // @[motionEstimationCtrl.scala 39:25]
      vec2_reg_1 <= 16'h0; // @[motionEstimationCtrl.scala 39:25]
    end else if (!(state == 3'h0)) begin // @[motionEstimationCtrl.scala 47:24]
      if (!(state == 3'h1)) begin // @[motionEstimationCtrl.scala 50:32]
        if (state == 3'h2) begin // @[motionEstimationCtrl.scala 54:32]
          vec2_reg_1 <= io_axiDataIn_1; // @[motionEstimationCtrl.scala 55:14]
        end
      end
    end
    if (reset) begin // @[motionEstimationCtrl.scala 39:25]
      vec2_reg_2 <= 16'h0; // @[motionEstimationCtrl.scala 39:25]
    end else if (!(state == 3'h0)) begin // @[motionEstimationCtrl.scala 47:24]
      if (!(state == 3'h1)) begin // @[motionEstimationCtrl.scala 50:32]
        if (state == 3'h2) begin // @[motionEstimationCtrl.scala 54:32]
          vec2_reg_2 <= io_axiDataIn_2; // @[motionEstimationCtrl.scala 55:14]
        end
      end
    end
    if (reset) begin // @[motionEstimationCtrl.scala 39:25]
      vec2_reg_3 <= 16'h0; // @[motionEstimationCtrl.scala 39:25]
    end else if (!(state == 3'h0)) begin // @[motionEstimationCtrl.scala 47:24]
      if (!(state == 3'h1)) begin // @[motionEstimationCtrl.scala 50:32]
        if (state == 3'h2) begin // @[motionEstimationCtrl.scala 54:32]
          vec2_reg_3 <= io_axiDataIn_3; // @[motionEstimationCtrl.scala 55:14]
        end
      end
    end
    if (reset) begin // @[motionEstimationCtrl.scala 44:22]
      state <= 3'h0; // @[motionEstimationCtrl.scala 44:22]
    end else if (state == 3'h0) begin // @[motionEstimationCtrl.scala 47:24]
      state <= 3'h1; // @[motionEstimationCtrl.scala 49:11]
    end else if (state == 3'h1) begin // @[motionEstimationCtrl.scala 50:32]
      state <= 3'h2; // @[motionEstimationCtrl.scala 53:11]
    end else if (state == 3'h2) begin // @[motionEstimationCtrl.scala 54:32]
      state <= 3'h3; // @[motionEstimationCtrl.scala 56:11]
    end else begin
      state <= _GEN_4;
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
  acc = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  vec1_reg_0 = _RAND_1[15:0];
  _RAND_2 = {1{`RANDOM}};
  vec1_reg_1 = _RAND_2[15:0];
  _RAND_3 = {1{`RANDOM}};
  vec1_reg_2 = _RAND_3[15:0];
  _RAND_4 = {1{`RANDOM}};
  vec1_reg_3 = _RAND_4[15:0];
  _RAND_5 = {1{`RANDOM}};
  vec2_reg_0 = _RAND_5[15:0];
  _RAND_6 = {1{`RANDOM}};
  vec2_reg_1 = _RAND_6[15:0];
  _RAND_7 = {1{`RANDOM}};
  vec2_reg_2 = _RAND_7[15:0];
  _RAND_8 = {1{`RANDOM}};
  vec2_reg_3 = _RAND_8[15:0];
  _RAND_9 = {1{`RANDOM}};
  state = _RAND_9[2:0];
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
  wire  controller_inst_clock; // @[mecTop.scala 25:31]
  wire  controller_inst_reset; // @[mecTop.scala 25:31]
  wire [63:0] controller_inst_io_initAddr1; // @[mecTop.scala 25:31]
  wire [63:0] controller_inst_io_initAddr2; // @[mecTop.scala 25:31]
  wire [31:0] controller_inst_io_mbBufferWidth; // @[mecTop.scala 25:31]
  wire [31:0] controller_inst_io_stride; // @[mecTop.scala 25:31]
  wire [31:0] controller_inst_io_numRows; // @[mecTop.scala 25:31]
  wire [31:0] controller_inst_io_computeDataIn; // @[mecTop.scala 25:31]
  wire [15:0] controller_inst_io_axiDataIn_0; // @[mecTop.scala 25:31]
  wire [15:0] controller_inst_io_axiDataIn_1; // @[mecTop.scala 25:31]
  wire [15:0] controller_inst_io_axiDataIn_2; // @[mecTop.scala 25:31]
  wire [15:0] controller_inst_io_axiDataIn_3; // @[mecTop.scala 25:31]
  wire [63:0] controller_inst_io_axiAddr; // @[mecTop.scala 25:31]
  wire [15:0] controller_inst_io_axiDataOut_0; // @[mecTop.scala 25:31]
  wire [15:0] controller_inst_io_axiDataOut_1; // @[mecTop.scala 25:31]
  wire [15:0] controller_inst_io_axiDataOut_2; // @[mecTop.scala 25:31]
  wire [15:0] controller_inst_io_axiDataOut_3; // @[mecTop.scala 25:31]
  wire [15:0] controller_inst_io_vec1_0; // @[mecTop.scala 25:31]
  wire [15:0] controller_inst_io_vec1_1; // @[mecTop.scala 25:31]
  wire [15:0] controller_inst_io_vec1_2; // @[mecTop.scala 25:31]
  wire [15:0] controller_inst_io_vec1_3; // @[mecTop.scala 25:31]
  wire [15:0] controller_inst_io_vec2_0; // @[mecTop.scala 25:31]
  wire [15:0] controller_inst_io_vec2_1; // @[mecTop.scala 25:31]
  wire [15:0] controller_inst_io_vec2_2; // @[mecTop.scala 25:31]
  wire [15:0] controller_inst_io_vec2_3; // @[mecTop.scala 25:31]
  wire [31:0] controller_inst_io_accOut; // @[mecTop.scala 25:31]
  wire  getSad4x_inst_clock; // @[mecTop.scala 26:29]
  wire  getSad4x_inst_reset; // @[mecTop.scala 26:29]
  wire [15:0] getSad4x_inst_io_org_0; // @[mecTop.scala 26:29]
  wire [15:0] getSad4x_inst_io_org_1; // @[mecTop.scala 26:29]
  wire [15:0] getSad4x_inst_io_org_2; // @[mecTop.scala 26:29]
  wire [15:0] getSad4x_inst_io_org_3; // @[mecTop.scala 26:29]
  wire [15:0] getSad4x_inst_io_cur_0; // @[mecTop.scala 26:29]
  wire [15:0] getSad4x_inst_io_cur_1; // @[mecTop.scala 26:29]
  wire [15:0] getSad4x_inst_io_cur_2; // @[mecTop.scala 26:29]
  wire [15:0] getSad4x_inst_io_cur_3; // @[mecTop.scala 26:29]
  wire [31:0] getSad4x_inst_io_out; // @[mecTop.scala 26:29]
  controller controller_inst ( // @[mecTop.scala 25:31]
    .clock(controller_inst_clock),
    .reset(controller_inst_reset),
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
  getSad4x getSad4x_inst ( // @[mecTop.scala 26:29]
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
  assign io_axiAddr = controller_inst_io_axiAddr; // @[mecTop.scala 34:17]
  assign io_axiAWrFlag = 1'h0; // @[mecTop.scala 35:17]
  assign io_axiWData_0 = controller_inst_io_axiDataOut_0; // @[mecTop.scala 37:17]
  assign io_axiWData_1 = controller_inst_io_axiDataOut_1; // @[mecTop.scala 37:17]
  assign io_axiWData_2 = controller_inst_io_axiDataOut_2; // @[mecTop.scala 37:17]
  assign io_axiWData_3 = controller_inst_io_axiDataOut_3; // @[mecTop.scala 37:17]
  assign io_topAccOut = controller_inst_io_accOut; // @[mecTop.scala 45:16]
  assign controller_inst_clock = clock;
  assign controller_inst_reset = reset;
  assign controller_inst_io_initAddr1 = io_initAddr1; // @[mecTop.scala 40:32]
  assign controller_inst_io_initAddr2 = io_initAddr2; // @[mecTop.scala 41:32]
  assign controller_inst_io_mbBufferWidth = io_mbBufferWidth; // @[mecTop.scala 42:36]
  assign controller_inst_io_stride = io_stride; // @[mecTop.scala 43:29]
  assign controller_inst_io_numRows = io_numRows; // @[mecTop.scala 44:30]
  assign controller_inst_io_computeDataIn = getSad4x_inst_io_out; // @[mecTop.scala 31:36]
  assign controller_inst_io_axiDataIn_0 = io_axiRData_0; // @[mecTop.scala 36:32]
  assign controller_inst_io_axiDataIn_1 = io_axiRData_1; // @[mecTop.scala 36:32]
  assign controller_inst_io_axiDataIn_2 = io_axiRData_2; // @[mecTop.scala 36:32]
  assign controller_inst_io_axiDataIn_3 = io_axiRData_3; // @[mecTop.scala 36:32]
  assign getSad4x_inst_clock = clock;
  assign getSad4x_inst_reset = reset;
  assign getSad4x_inst_io_org_0 = controller_inst_io_vec1_0; // @[mecTop.scala 29:24]
  assign getSad4x_inst_io_org_1 = controller_inst_io_vec1_1; // @[mecTop.scala 29:24]
  assign getSad4x_inst_io_org_2 = controller_inst_io_vec1_2; // @[mecTop.scala 29:24]
  assign getSad4x_inst_io_org_3 = controller_inst_io_vec1_3; // @[mecTop.scala 29:24]
  assign getSad4x_inst_io_cur_0 = controller_inst_io_vec2_0; // @[mecTop.scala 30:24]
  assign getSad4x_inst_io_cur_1 = controller_inst_io_vec2_1; // @[mecTop.scala 30:24]
  assign getSad4x_inst_io_cur_2 = controller_inst_io_vec2_2; // @[mecTop.scala 30:24]
  assign getSad4x_inst_io_cur_3 = controller_inst_io_vec2_3; // @[mecTop.scala 30:24]
endmodule
