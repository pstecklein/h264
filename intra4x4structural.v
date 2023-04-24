module predictor(
  input  [7:0] io_neighbors_0,
  input  [7:0] io_neighbors_1,
  input  [7:0] io_neighbors_2,
  input  [7:0] io_neighbors_3,
  input  [7:0] io_neighbors_4,
  input  [7:0] io_neighbors_5,
  input  [7:0] io_neighbors_6,
  input  [7:0] io_neighbors_7,
  input  [7:0] io_neighbors_8,
  input  [7:0] io_neighbors_9,
  input  [7:0] io_neighbors_10,
  input  [7:0] io_neighbors_11,
  input  [7:0] io_neighbors_12,
  input        io_valid_IL,
  input        io_valid_EH,
  input        io_valid_AD,
  input        io_valid_M,
  input        io_capture_pixel,
  output       io_valid_0,
  output       io_valid_1,
  output       io_valid_2,
  output       io_valid_3,
  output       io_valid_4,
  output       io_valid_5,
  output       io_valid_6,
  output       io_valid_7,
  output       io_valid_8,
  output [7:0] io_predicted_pix0_0,
  output [7:0] io_predicted_pix0_1,
  output [7:0] io_predicted_pix0_2,
  output [7:0] io_predicted_pix0_3,
  output [7:0] io_predicted_pix0_4,
  output [7:0] io_predicted_pix0_5,
  output [7:0] io_predicted_pix0_6,
  output [7:0] io_predicted_pix0_7,
  output [7:0] io_predicted_pix0_8,
  output [7:0] io_predicted_pix0_9,
  output [7:0] io_predicted_pix0_10,
  output [7:0] io_predicted_pix0_11,
  output [7:0] io_predicted_pix0_12,
  output [7:0] io_predicted_pix0_13,
  output [7:0] io_predicted_pix0_14,
  output [7:0] io_predicted_pix0_15,
  output [7:0] io_predicted_pix1_0,
  output [7:0] io_predicted_pix1_1,
  output [7:0] io_predicted_pix1_2,
  output [7:0] io_predicted_pix1_3,
  output [7:0] io_predicted_pix1_4,
  output [7:0] io_predicted_pix1_5,
  output [7:0] io_predicted_pix1_6,
  output [7:0] io_predicted_pix1_7,
  output [7:0] io_predicted_pix1_8,
  output [7:0] io_predicted_pix1_9,
  output [7:0] io_predicted_pix1_10,
  output [7:0] io_predicted_pix1_11,
  output [7:0] io_predicted_pix1_12,
  output [7:0] io_predicted_pix1_13,
  output [7:0] io_predicted_pix1_14,
  output [7:0] io_predicted_pix1_15,
  output [7:0] io_predicted_pix2_0,
  output [7:0] io_predicted_pix2_1,
  output [7:0] io_predicted_pix2_2,
  output [7:0] io_predicted_pix2_3,
  output [7:0] io_predicted_pix2_4,
  output [7:0] io_predicted_pix2_5,
  output [7:0] io_predicted_pix2_6,
  output [7:0] io_predicted_pix2_7,
  output [7:0] io_predicted_pix2_8,
  output [7:0] io_predicted_pix2_9,
  output [7:0] io_predicted_pix2_10,
  output [7:0] io_predicted_pix2_11,
  output [7:0] io_predicted_pix2_12,
  output [7:0] io_predicted_pix2_13,
  output [7:0] io_predicted_pix2_14,
  output [7:0] io_predicted_pix2_15,
  output [7:0] io_predicted_pix3_0,
  output [7:0] io_predicted_pix3_1,
  output [7:0] io_predicted_pix3_2,
  output [7:0] io_predicted_pix3_3,
  output [7:0] io_predicted_pix3_4,
  output [7:0] io_predicted_pix3_5,
  output [7:0] io_predicted_pix3_6,
  output [7:0] io_predicted_pix3_7,
  output [7:0] io_predicted_pix3_8,
  output [7:0] io_predicted_pix3_9,
  output [7:0] io_predicted_pix3_10,
  output [7:0] io_predicted_pix3_11,
  output [7:0] io_predicted_pix3_12,
  output [7:0] io_predicted_pix3_13,
  output [7:0] io_predicted_pix3_14,
  output [7:0] io_predicted_pix3_15,
  output [7:0] io_predicted_pix4_0,
  output [7:0] io_predicted_pix4_1,
  output [7:0] io_predicted_pix4_2,
  output [7:0] io_predicted_pix4_3,
  output [7:0] io_predicted_pix4_4,
  output [7:0] io_predicted_pix4_5,
  output [7:0] io_predicted_pix4_6,
  output [7:0] io_predicted_pix4_7,
  output [7:0] io_predicted_pix4_8,
  output [7:0] io_predicted_pix4_9,
  output [7:0] io_predicted_pix4_10,
  output [7:0] io_predicted_pix4_11,
  output [7:0] io_predicted_pix4_12,
  output [7:0] io_predicted_pix4_13,
  output [7:0] io_predicted_pix4_14,
  output [7:0] io_predicted_pix4_15,
  output [7:0] io_predicted_pix5_0,
  output [7:0] io_predicted_pix5_1,
  output [7:0] io_predicted_pix5_2,
  output [7:0] io_predicted_pix5_3,
  output [7:0] io_predicted_pix5_4,
  output [7:0] io_predicted_pix5_5,
  output [7:0] io_predicted_pix5_6,
  output [7:0] io_predicted_pix5_7,
  output [7:0] io_predicted_pix5_8,
  output [7:0] io_predicted_pix5_9,
  output [7:0] io_predicted_pix5_10,
  output [7:0] io_predicted_pix5_11,
  output [7:0] io_predicted_pix5_12,
  output [7:0] io_predicted_pix5_13,
  output [7:0] io_predicted_pix5_14,
  output [7:0] io_predicted_pix5_15,
  output [7:0] io_predicted_pix6_0,
  output [7:0] io_predicted_pix6_1,
  output [7:0] io_predicted_pix6_2,
  output [7:0] io_predicted_pix6_3,
  output [7:0] io_predicted_pix6_4,
  output [7:0] io_predicted_pix6_5,
  output [7:0] io_predicted_pix6_6,
  output [7:0] io_predicted_pix6_7,
  output [7:0] io_predicted_pix6_8,
  output [7:0] io_predicted_pix6_9,
  output [7:0] io_predicted_pix6_10,
  output [7:0] io_predicted_pix6_11,
  output [7:0] io_predicted_pix6_12,
  output [7:0] io_predicted_pix6_13,
  output [7:0] io_predicted_pix6_14,
  output [7:0] io_predicted_pix6_15,
  output [7:0] io_predicted_pix7_0,
  output [7:0] io_predicted_pix7_1,
  output [7:0] io_predicted_pix7_2,
  output [7:0] io_predicted_pix7_3,
  output [7:0] io_predicted_pix7_4,
  output [7:0] io_predicted_pix7_5,
  output [7:0] io_predicted_pix7_6,
  output [7:0] io_predicted_pix7_7,
  output [7:0] io_predicted_pix7_8,
  output [7:0] io_predicted_pix7_9,
  output [7:0] io_predicted_pix7_10,
  output [7:0] io_predicted_pix7_11,
  output [7:0] io_predicted_pix7_12,
  output [7:0] io_predicted_pix7_13,
  output [7:0] io_predicted_pix7_14,
  output [7:0] io_predicted_pix7_15,
  output [7:0] io_predicted_pix8_0,
  output [7:0] io_predicted_pix8_1,
  output [7:0] io_predicted_pix8_2,
  output [7:0] io_predicted_pix8_3,
  output [7:0] io_predicted_pix8_4,
  output [7:0] io_predicted_pix8_5,
  output [7:0] io_predicted_pix8_6,
  output [7:0] io_predicted_pix8_7,
  output [7:0] io_predicted_pix8_8,
  output [7:0] io_predicted_pix8_9,
  output [7:0] io_predicted_pix8_10,
  output [7:0] io_predicted_pix8_11,
  output [7:0] io_predicted_pix8_12,
  output [7:0] io_predicted_pix8_13,
  output [7:0] io_predicted_pix8_14,
  output [7:0] io_predicted_pix8_15
);
  wire [7:0] _eq0_T_1 = io_neighbors_0 + io_neighbors_1; // @[predictor.scala 28:31]
  wire [7:0] eq0 = _eq0_T_1 + 8'h1; // @[predictor.scala 28:49]
  wire [7:0] _eq1_T_1 = io_neighbors_1 + io_neighbors_2; // @[predictor.scala 29:31]
  wire [7:0] eq1 = _eq1_T_1 + 8'h1; // @[predictor.scala 29:49]
  wire [7:0] _eq2_T_1 = io_neighbors_2 + io_neighbors_3; // @[predictor.scala 30:31]
  wire [7:0] eq2 = _eq2_T_1 + 8'h1; // @[predictor.scala 30:49]
  wire [7:0] _eq3_T_1 = io_neighbors_3 + io_neighbors_4; // @[predictor.scala 31:31]
  wire [7:0] eq3 = _eq3_T_1 + 8'h1; // @[predictor.scala 31:49]
  wire [7:0] _eq4_T_1 = io_neighbors_4 + io_neighbors_5; // @[predictor.scala 32:31]
  wire [7:0] eq4 = _eq4_T_1 + 8'h1; // @[predictor.scala 32:49]
  wire [7:0] _eq5_T_1 = io_neighbors_5 + io_neighbors_6; // @[predictor.scala 33:31]
  wire [7:0] eq5 = _eq5_T_1 + 8'h1; // @[predictor.scala 33:49]
  wire [7:0] _eq6_T_1 = io_neighbors_6 + io_neighbors_7; // @[predictor.scala 34:31]
  wire [7:0] eq6 = _eq6_T_1 + 8'h1; // @[predictor.scala 34:49]
  wire [7:0] _eq7_T_1 = io_neighbors_8 + io_neighbors_9; // @[predictor.scala 35:31]
  wire [7:0] eq7 = _eq7_T_1 + 8'h1; // @[predictor.scala 35:49]
  wire [7:0] _eq8_T_1 = io_neighbors_9 + io_neighbors_10; // @[predictor.scala 36:31]
  wire [7:0] eq8 = _eq8_T_1 + 8'h1; // @[predictor.scala 36:50]
  wire [7:0] _eq9_T_1 = io_neighbors_10 + io_neighbors_11; // @[predictor.scala 37:32]
  wire [7:0] eq9 = _eq9_T_1 + 8'h1; // @[predictor.scala 37:51]
  wire [7:0] _eq10_T_1 = io_neighbors_12 + io_neighbors_0; // @[predictor.scala 38:33]
  wire [7:0] eq10 = _eq10_T_1 + 8'h1; // @[predictor.scala 38:51]
  wire [7:0] _eq11_T_1 = io_neighbors_12 + io_neighbors_8; // @[predictor.scala 39:33]
  wire [7:0] eq11 = _eq11_T_1 + 8'h1; // @[predictor.scala 39:51]
  wire [9:0] _eq12_T = io_neighbors_7 * 2'h2; // @[predictor.scala 40:33]
  wire [9:0] eq12 = _eq12_T + 10'h1; // @[predictor.scala 40:40]
  wire [9:0] _eq13_T = io_neighbors_11 * 2'h2; // @[predictor.scala 41:34]
  wire [9:0] eq13 = _eq13_T + 10'h1; // @[predictor.scala 41:41]
  wire [7:0] eq14 = eq0 + eq10; // @[predictor.scala 43:20]
  wire [7:0] eq15 = eq0 + eq1; // @[predictor.scala 44:20]
  wire [7:0] eq16 = eq1 + eq2; // @[predictor.scala 45:20]
  wire [7:0] eq17 = eq2 + eq3; // @[predictor.scala 46:20]
  wire [7:0] eq18 = eq3 + eq4; // @[predictor.scala 47:20]
  wire [7:0] eq19 = eq4 + eq5; // @[predictor.scala 48:20]
  wire [7:0] eq20 = eq5 + eq6; // @[predictor.scala 49:20]
  wire [7:0] eq21 = eq7 + eq11; // @[predictor.scala 50:20]
  wire [7:0] eq22 = eq7 + eq8; // @[predictor.scala 51:20]
  wire [7:0] eq23 = eq8 + eq9; // @[predictor.scala 52:20]
  wire [7:0] eq24 = eq10 + eq11; // @[predictor.scala 53:21]
  wire [9:0] _GEN_134 = {{2'd0}, eq6}; // @[predictor.scala 54:20]
  wire [9:0] eq25 = _GEN_134 + eq12; // @[predictor.scala 54:20]
  wire [9:0] _GEN_135 = {{2'd0}, eq9}; // @[predictor.scala 55:20]
  wire [9:0] eq26 = _GEN_135 + eq13; // @[predictor.scala 55:20]
  wire [7:0] eq27 = eq0 + eq2; // @[predictor.scala 56:20]
  wire [7:0] eq28 = eq7 + eq9; // @[predictor.scala 57:20]
  wire [7:0] eq29 = eq27 + eq28; // @[predictor.scala 58:21]
  wire [7:0] _GEN_0 = io_valid_AD ? io_neighbors_0 : 8'h0; // @[predictor.scala 60:23 61:28 81:30]
  wire [7:0] _GEN_1 = io_valid_AD ? io_neighbors_1 : 8'h0; // @[predictor.scala 60:23 62:28 81:30]
  wire [7:0] _GEN_2 = io_valid_AD ? io_neighbors_2 : 8'h0; // @[predictor.scala 60:23 63:28 81:30]
  wire [7:0] _GEN_3 = io_valid_AD ? io_neighbors_3 : 8'h0; // @[predictor.scala 60:23 64:28 81:30]
  wire [7:0] _GEN_5 = io_valid_IL ? io_neighbors_8 : 8'h0; // @[predictor.scala 85:23 86:28 106:30]
  wire [7:0] _GEN_6 = io_valid_IL ? io_neighbors_9 : 8'h0; // @[predictor.scala 85:23 90:28 106:30]
  wire [7:0] _GEN_7 = io_valid_IL ? io_neighbors_10 : 8'h0; // @[predictor.scala 85:23 94:28 106:30]
  wire [7:0] _GEN_8 = io_valid_IL ? io_neighbors_11 : 8'h0; // @[predictor.scala 85:23 98:29 106:30]
  wire  _T = io_valid_AD & io_valid_IL; // @[predictor.scala 110:22]
  wire [7:0] _GEN_10 = io_valid_AD & io_valid_IL ? eq29 : 8'h0; // @[predictor.scala 110:38 112:30 118:30]
  wire  _T_1 = io_valid_AD & io_valid_EH; // @[predictor.scala 122:22]
  wire [7:0] _GEN_12 = io_valid_AD & io_valid_EH ? eq15 : 8'h0; // @[predictor.scala 122:38 123:28 143:30]
  wire [7:0] _GEN_13 = io_valid_AD & io_valid_EH ? eq16 : 8'h0; // @[predictor.scala 122:38 124:28 143:30]
  wire [7:0] _GEN_14 = io_valid_AD & io_valid_EH ? eq17 : 8'h0; // @[predictor.scala 122:38 125:28 143:30]
  wire [7:0] _GEN_15 = io_valid_AD & io_valid_EH ? eq18 : 8'h0; // @[predictor.scala 122:38 126:28 143:30]
  wire [7:0] _GEN_16 = io_valid_AD & io_valid_EH ? eq19 : 8'h0; // @[predictor.scala 122:38 130:28 143:30]
  wire [7:0] _GEN_17 = io_valid_AD & io_valid_EH ? eq20 : 8'h0; // @[predictor.scala 122:38 134:29 143:30]
  wire [9:0] _GEN_18 = io_valid_AD & io_valid_EH ? eq25 : 10'h0; // @[predictor.scala 122:38 138:29 143:30]
  wire  _T_3 = _T & io_valid_M; // @[predictor.scala 147:37]
  wire [7:0] _GEN_20 = _T & io_valid_M ? eq24 : 8'h0; // @[predictor.scala 147:52 148:28 168:30]
  wire [7:0] _GEN_21 = _T & io_valid_M ? eq14 : 8'h0; // @[predictor.scala 147:52 149:28 168:30]
  wire [7:0] _GEN_22 = _T & io_valid_M ? eq15 : 8'h0; // @[predictor.scala 147:52 150:28 168:30]
  wire [7:0] _GEN_23 = _T & io_valid_M ? eq16 : 8'h0; // @[predictor.scala 147:52 151:28 168:30]
  wire [7:0] _GEN_24 = _T & io_valid_M ? eq21 : 8'h0; // @[predictor.scala 147:52 152:28 168:30]
  wire [7:0] _GEN_25 = _T & io_valid_M ? eq22 : 8'h0; // @[predictor.scala 147:52 156:28 168:30]
  wire [7:0] _GEN_26 = _T & io_valid_M ? eq23 : 8'h0; // @[predictor.scala 147:52 160:29 168:30]
  wire [7:0] _GEN_28 = _T_3 ? eq10 : 8'h0; // @[predictor.scala 172:52 173:28 193:30]
  wire [7:0] _GEN_29 = _T_3 ? eq0 : 8'h0; // @[predictor.scala 172:52 174:28 193:30]
  wire [7:0] _GEN_30 = _T_3 ? eq1 : 8'h0; // @[predictor.scala 172:52 175:28 193:30]
  wire [7:0] _GEN_31 = _T_3 ? eq2 : 8'h0; // @[predictor.scala 172:52 176:28 193:30]
  wire [7:0] _GEN_39 = _T_3 ? eq11 : 8'h0; // @[predictor.scala 197:52 198:28 218:30]
  wire [7:0] _GEN_43 = _T_3 ? eq7 : 8'h0; // @[predictor.scala 197:52 202:28 218:30]
  wire [7:0] _GEN_45 = _T_3 ? eq8 : 8'h0; // @[predictor.scala 197:52 206:28 218:30]
  wire [7:0] _GEN_47 = _T_3 ? eq9 : 8'h0; // @[predictor.scala 197:52 210:29 218:30]
  wire [7:0] _GEN_50 = _T_1 ? eq0 : 8'h0; // @[predictor.scala 222:38 223:28 243:30]
  wire [7:0] _GEN_51 = _T_1 ? eq1 : 8'h0; // @[predictor.scala 222:38 224:28 243:30]
  wire [7:0] _GEN_52 = _T_1 ? eq2 : 8'h0; // @[predictor.scala 222:38 225:28 243:30]
  wire [7:0] _GEN_53 = _T_1 ? eq3 : 8'h0; // @[predictor.scala 222:38 226:28 243:30]
  wire [7:0] _GEN_58 = _T_1 ? eq4 : 8'h0; // @[predictor.scala 222:38 234:29 243:30]
  wire [7:0] _GEN_61 = io_valid_IL ? eq7 : 8'h0; // @[predictor.scala 247:23 248:28 268:30]
  wire [7:0] _GEN_62 = io_valid_IL ? eq22 : 8'h0; // @[predictor.scala 247:23 249:28 268:30]
  wire [7:0] _GEN_63 = io_valid_IL ? eq8 : 8'h0; // @[predictor.scala 247:23 250:28 268:30]
  wire [7:0] _GEN_64 = io_valid_IL ? eq23 : 8'h0; // @[predictor.scala 247:23 251:28 268:30]
  wire [7:0] _GEN_65 = io_valid_IL ? eq9 : 8'h0; // @[predictor.scala 247:23 254:28 268:30]
  wire [9:0] _GEN_66 = io_valid_IL ? eq26 : 10'h0; // @[predictor.scala 247:23 255:28 268:30]
  wire [9:0] _GEN_85 = io_capture_pixel ? _GEN_18 : 10'h0; // @[predictor.scala 27:26 285:28]
  wire [9:0] _GEN_133 = io_capture_pixel ? _GEN_66 : 10'h0; // @[predictor.scala 27:26 300:28]
  assign io_valid_0 = io_capture_pixel & io_valid_AD; // @[predictor.scala 27:26 273:19]
  assign io_valid_1 = io_capture_pixel & io_valid_IL; // @[predictor.scala 27:26 273:19]
  assign io_valid_2 = io_capture_pixel & _T; // @[predictor.scala 27:26 273:19]
  assign io_valid_3 = io_capture_pixel & _T_1; // @[predictor.scala 27:26 273:19]
  assign io_valid_4 = io_capture_pixel & _T_3; // @[predictor.scala 27:26 273:19]
  assign io_valid_5 = io_capture_pixel & _T_3; // @[predictor.scala 27:26 273:19]
  assign io_valid_6 = io_capture_pixel & _T_3; // @[predictor.scala 27:26 273:19]
  assign io_valid_7 = io_capture_pixel & _T_1; // @[predictor.scala 27:26 273:19]
  assign io_valid_8 = io_capture_pixel & io_valid_IL; // @[predictor.scala 27:26 273:19]
  assign io_predicted_pix0_0 = io_capture_pixel ? _GEN_0 : 8'h0; // @[predictor.scala 27:26 276:28]
  assign io_predicted_pix0_1 = io_capture_pixel ? _GEN_1 : 8'h0; // @[predictor.scala 27:26 276:28]
  assign io_predicted_pix0_2 = io_capture_pixel ? _GEN_2 : 8'h0; // @[predictor.scala 27:26 276:28]
  assign io_predicted_pix0_3 = io_capture_pixel ? _GEN_3 : 8'h0; // @[predictor.scala 27:26 276:28]
  assign io_predicted_pix0_4 = io_capture_pixel ? _GEN_0 : 8'h0; // @[predictor.scala 27:26 276:28]
  assign io_predicted_pix0_5 = io_capture_pixel ? _GEN_1 : 8'h0; // @[predictor.scala 27:26 276:28]
  assign io_predicted_pix0_6 = io_capture_pixel ? _GEN_2 : 8'h0; // @[predictor.scala 27:26 276:28]
  assign io_predicted_pix0_7 = io_capture_pixel ? _GEN_3 : 8'h0; // @[predictor.scala 27:26 276:28]
  assign io_predicted_pix0_8 = io_capture_pixel ? _GEN_0 : 8'h0; // @[predictor.scala 27:26 276:28]
  assign io_predicted_pix0_9 = io_capture_pixel ? _GEN_1 : 8'h0; // @[predictor.scala 27:26 276:28]
  assign io_predicted_pix0_10 = io_capture_pixel ? _GEN_2 : 8'h0; // @[predictor.scala 27:26 276:28]
  assign io_predicted_pix0_11 = io_capture_pixel ? _GEN_3 : 8'h0; // @[predictor.scala 27:26 276:28]
  assign io_predicted_pix0_12 = io_capture_pixel ? _GEN_0 : 8'h0; // @[predictor.scala 27:26 276:28]
  assign io_predicted_pix0_13 = io_capture_pixel ? _GEN_1 : 8'h0; // @[predictor.scala 27:26 276:28]
  assign io_predicted_pix0_14 = io_capture_pixel ? _GEN_2 : 8'h0; // @[predictor.scala 27:26 276:28]
  assign io_predicted_pix0_15 = io_capture_pixel ? _GEN_3 : 8'h0; // @[predictor.scala 27:26 276:28]
  assign io_predicted_pix1_0 = io_capture_pixel ? _GEN_5 : 8'h0; // @[predictor.scala 27:26 279:28]
  assign io_predicted_pix1_1 = io_capture_pixel ? _GEN_5 : 8'h0; // @[predictor.scala 27:26 279:28]
  assign io_predicted_pix1_2 = io_capture_pixel ? _GEN_5 : 8'h0; // @[predictor.scala 27:26 279:28]
  assign io_predicted_pix1_3 = io_capture_pixel ? _GEN_5 : 8'h0; // @[predictor.scala 27:26 279:28]
  assign io_predicted_pix1_4 = io_capture_pixel ? _GEN_6 : 8'h0; // @[predictor.scala 27:26 279:28]
  assign io_predicted_pix1_5 = io_capture_pixel ? _GEN_6 : 8'h0; // @[predictor.scala 27:26 279:28]
  assign io_predicted_pix1_6 = io_capture_pixel ? _GEN_6 : 8'h0; // @[predictor.scala 27:26 279:28]
  assign io_predicted_pix1_7 = io_capture_pixel ? _GEN_6 : 8'h0; // @[predictor.scala 27:26 279:28]
  assign io_predicted_pix1_8 = io_capture_pixel ? _GEN_7 : 8'h0; // @[predictor.scala 27:26 279:28]
  assign io_predicted_pix1_9 = io_capture_pixel ? _GEN_7 : 8'h0; // @[predictor.scala 27:26 279:28]
  assign io_predicted_pix1_10 = io_capture_pixel ? _GEN_7 : 8'h0; // @[predictor.scala 27:26 279:28]
  assign io_predicted_pix1_11 = io_capture_pixel ? _GEN_7 : 8'h0; // @[predictor.scala 27:26 279:28]
  assign io_predicted_pix1_12 = io_capture_pixel ? _GEN_8 : 8'h0; // @[predictor.scala 27:26 279:28]
  assign io_predicted_pix1_13 = io_capture_pixel ? _GEN_8 : 8'h0; // @[predictor.scala 27:26 279:28]
  assign io_predicted_pix1_14 = io_capture_pixel ? _GEN_8 : 8'h0; // @[predictor.scala 27:26 279:28]
  assign io_predicted_pix1_15 = io_capture_pixel ? _GEN_8 : 8'h0; // @[predictor.scala 27:26 279:28]
  assign io_predicted_pix2_0 = io_capture_pixel ? _GEN_10 : 8'h0; // @[predictor.scala 27:26 282:28]
  assign io_predicted_pix2_1 = io_capture_pixel ? _GEN_10 : 8'h0; // @[predictor.scala 27:26 282:28]
  assign io_predicted_pix2_2 = io_capture_pixel ? _GEN_10 : 8'h0; // @[predictor.scala 27:26 282:28]
  assign io_predicted_pix2_3 = io_capture_pixel ? _GEN_10 : 8'h0; // @[predictor.scala 27:26 282:28]
  assign io_predicted_pix2_4 = io_capture_pixel ? _GEN_10 : 8'h0; // @[predictor.scala 27:26 282:28]
  assign io_predicted_pix2_5 = io_capture_pixel ? _GEN_10 : 8'h0; // @[predictor.scala 27:26 282:28]
  assign io_predicted_pix2_6 = io_capture_pixel ? _GEN_10 : 8'h0; // @[predictor.scala 27:26 282:28]
  assign io_predicted_pix2_7 = io_capture_pixel ? _GEN_10 : 8'h0; // @[predictor.scala 27:26 282:28]
  assign io_predicted_pix2_8 = io_capture_pixel ? _GEN_10 : 8'h0; // @[predictor.scala 27:26 282:28]
  assign io_predicted_pix2_9 = io_capture_pixel ? _GEN_10 : 8'h0; // @[predictor.scala 27:26 282:28]
  assign io_predicted_pix2_10 = io_capture_pixel ? _GEN_10 : 8'h0; // @[predictor.scala 27:26 282:28]
  assign io_predicted_pix2_11 = io_capture_pixel ? _GEN_10 : 8'h0; // @[predictor.scala 27:26 282:28]
  assign io_predicted_pix2_12 = io_capture_pixel ? _GEN_10 : 8'h0; // @[predictor.scala 27:26 282:28]
  assign io_predicted_pix2_13 = io_capture_pixel ? _GEN_10 : 8'h0; // @[predictor.scala 27:26 282:28]
  assign io_predicted_pix2_14 = io_capture_pixel ? _GEN_10 : 8'h0; // @[predictor.scala 27:26 282:28]
  assign io_predicted_pix2_15 = io_capture_pixel ? _GEN_10 : 8'h0; // @[predictor.scala 27:26 282:28]
  assign io_predicted_pix3_0 = io_capture_pixel ? _GEN_12 : 8'h0; // @[predictor.scala 27:26 285:28]
  assign io_predicted_pix3_1 = io_capture_pixel ? _GEN_13 : 8'h0; // @[predictor.scala 27:26 285:28]
  assign io_predicted_pix3_2 = io_capture_pixel ? _GEN_14 : 8'h0; // @[predictor.scala 27:26 285:28]
  assign io_predicted_pix3_3 = io_capture_pixel ? _GEN_15 : 8'h0; // @[predictor.scala 27:26 285:28]
  assign io_predicted_pix3_4 = io_capture_pixel ? _GEN_13 : 8'h0; // @[predictor.scala 27:26 285:28]
  assign io_predicted_pix3_5 = io_capture_pixel ? _GEN_14 : 8'h0; // @[predictor.scala 27:26 285:28]
  assign io_predicted_pix3_6 = io_capture_pixel ? _GEN_15 : 8'h0; // @[predictor.scala 27:26 285:28]
  assign io_predicted_pix3_7 = io_capture_pixel ? _GEN_16 : 8'h0; // @[predictor.scala 27:26 285:28]
  assign io_predicted_pix3_8 = io_capture_pixel ? _GEN_14 : 8'h0; // @[predictor.scala 27:26 285:28]
  assign io_predicted_pix3_9 = io_capture_pixel ? _GEN_15 : 8'h0; // @[predictor.scala 27:26 285:28]
  assign io_predicted_pix3_10 = io_capture_pixel ? _GEN_16 : 8'h0; // @[predictor.scala 27:26 285:28]
  assign io_predicted_pix3_11 = io_capture_pixel ? _GEN_17 : 8'h0; // @[predictor.scala 27:26 285:28]
  assign io_predicted_pix3_12 = io_capture_pixel ? _GEN_15 : 8'h0; // @[predictor.scala 27:26 285:28]
  assign io_predicted_pix3_13 = io_capture_pixel ? _GEN_16 : 8'h0; // @[predictor.scala 27:26 285:28]
  assign io_predicted_pix3_14 = io_capture_pixel ? _GEN_17 : 8'h0; // @[predictor.scala 27:26 285:28]
  assign io_predicted_pix3_15 = _GEN_85[7:0];
  assign io_predicted_pix4_0 = io_capture_pixel ? _GEN_20 : 8'h0; // @[predictor.scala 27:26 288:28]
  assign io_predicted_pix4_1 = io_capture_pixel ? _GEN_21 : 8'h0; // @[predictor.scala 27:26 288:28]
  assign io_predicted_pix4_2 = io_capture_pixel ? _GEN_22 : 8'h0; // @[predictor.scala 27:26 288:28]
  assign io_predicted_pix4_3 = io_capture_pixel ? _GEN_23 : 8'h0; // @[predictor.scala 27:26 288:28]
  assign io_predicted_pix4_4 = io_capture_pixel ? _GEN_24 : 8'h0; // @[predictor.scala 27:26 288:28]
  assign io_predicted_pix4_5 = io_capture_pixel ? _GEN_20 : 8'h0; // @[predictor.scala 27:26 288:28]
  assign io_predicted_pix4_6 = io_capture_pixel ? _GEN_21 : 8'h0; // @[predictor.scala 27:26 288:28]
  assign io_predicted_pix4_7 = io_capture_pixel ? _GEN_22 : 8'h0; // @[predictor.scala 27:26 288:28]
  assign io_predicted_pix4_8 = io_capture_pixel ? _GEN_25 : 8'h0; // @[predictor.scala 27:26 288:28]
  assign io_predicted_pix4_9 = io_capture_pixel ? _GEN_24 : 8'h0; // @[predictor.scala 27:26 288:28]
  assign io_predicted_pix4_10 = io_capture_pixel ? _GEN_20 : 8'h0; // @[predictor.scala 27:26 288:28]
  assign io_predicted_pix4_11 = io_capture_pixel ? _GEN_21 : 8'h0; // @[predictor.scala 27:26 288:28]
  assign io_predicted_pix4_12 = io_capture_pixel ? _GEN_26 : 8'h0; // @[predictor.scala 27:26 288:28]
  assign io_predicted_pix4_13 = io_capture_pixel ? _GEN_25 : 8'h0; // @[predictor.scala 27:26 288:28]
  assign io_predicted_pix4_14 = io_capture_pixel ? _GEN_24 : 8'h0; // @[predictor.scala 27:26 288:28]
  assign io_predicted_pix4_15 = io_capture_pixel ? _GEN_20 : 8'h0; // @[predictor.scala 27:26 288:28]
  assign io_predicted_pix5_0 = io_capture_pixel ? _GEN_28 : 8'h0; // @[predictor.scala 27:26 291:28]
  assign io_predicted_pix5_1 = io_capture_pixel ? _GEN_29 : 8'h0; // @[predictor.scala 27:26 291:28]
  assign io_predicted_pix5_2 = io_capture_pixel ? _GEN_30 : 8'h0; // @[predictor.scala 27:26 291:28]
  assign io_predicted_pix5_3 = io_capture_pixel ? _GEN_31 : 8'h0; // @[predictor.scala 27:26 291:28]
  assign io_predicted_pix5_4 = io_capture_pixel ? _GEN_20 : 8'h0; // @[predictor.scala 27:26 291:28]
  assign io_predicted_pix5_5 = io_capture_pixel ? _GEN_21 : 8'h0; // @[predictor.scala 27:26 291:28]
  assign io_predicted_pix5_6 = io_capture_pixel ? _GEN_22 : 8'h0; // @[predictor.scala 27:26 291:28]
  assign io_predicted_pix5_7 = io_capture_pixel ? _GEN_23 : 8'h0; // @[predictor.scala 27:26 291:28]
  assign io_predicted_pix5_8 = io_capture_pixel ? _GEN_24 : 8'h0; // @[predictor.scala 27:26 291:28]
  assign io_predicted_pix5_9 = io_capture_pixel ? _GEN_28 : 8'h0; // @[predictor.scala 27:26 291:28]
  assign io_predicted_pix5_10 = io_capture_pixel ? _GEN_29 : 8'h0; // @[predictor.scala 27:26 291:28]
  assign io_predicted_pix5_11 = io_capture_pixel ? _GEN_30 : 8'h0; // @[predictor.scala 27:26 291:28]
  assign io_predicted_pix5_12 = io_capture_pixel ? _GEN_25 : 8'h0; // @[predictor.scala 27:26 291:28]
  assign io_predicted_pix5_13 = io_capture_pixel ? _GEN_20 : 8'h0; // @[predictor.scala 27:26 291:28]
  assign io_predicted_pix5_14 = io_capture_pixel ? _GEN_21 : 8'h0; // @[predictor.scala 27:26 291:28]
  assign io_predicted_pix5_15 = io_capture_pixel ? _GEN_22 : 8'h0; // @[predictor.scala 27:26 291:28]
  assign io_predicted_pix6_0 = io_capture_pixel ? _GEN_39 : 8'h0; // @[predictor.scala 27:26 294:28]
  assign io_predicted_pix6_1 = io_capture_pixel ? _GEN_20 : 8'h0; // @[predictor.scala 27:26 294:28]
  assign io_predicted_pix6_2 = io_capture_pixel ? _GEN_21 : 8'h0; // @[predictor.scala 27:26 294:28]
  assign io_predicted_pix6_3 = io_capture_pixel ? _GEN_23 : 8'h0; // @[predictor.scala 27:26 294:28]
  assign io_predicted_pix6_4 = io_capture_pixel ? _GEN_43 : 8'h0; // @[predictor.scala 27:26 294:28]
  assign io_predicted_pix6_5 = io_capture_pixel ? _GEN_24 : 8'h0; // @[predictor.scala 27:26 294:28]
  assign io_predicted_pix6_6 = io_capture_pixel ? _GEN_39 : 8'h0; // @[predictor.scala 27:26 294:28]
  assign io_predicted_pix6_7 = io_capture_pixel ? _GEN_20 : 8'h0; // @[predictor.scala 27:26 294:28]
  assign io_predicted_pix6_8 = io_capture_pixel ? _GEN_45 : 8'h0; // @[predictor.scala 27:26 294:28]
  assign io_predicted_pix6_9 = io_capture_pixel ? _GEN_25 : 8'h0; // @[predictor.scala 27:26 294:28]
  assign io_predicted_pix6_10 = io_capture_pixel ? _GEN_43 : 8'h0; // @[predictor.scala 27:26 294:28]
  assign io_predicted_pix6_11 = io_capture_pixel ? _GEN_24 : 8'h0; // @[predictor.scala 27:26 294:28]
  assign io_predicted_pix6_12 = io_capture_pixel ? _GEN_47 : 8'h0; // @[predictor.scala 27:26 294:28]
  assign io_predicted_pix6_13 = io_capture_pixel ? _GEN_26 : 8'h0; // @[predictor.scala 27:26 294:28]
  assign io_predicted_pix6_14 = io_capture_pixel ? _GEN_45 : 8'h0; // @[predictor.scala 27:26 294:28]
  assign io_predicted_pix6_15 = io_capture_pixel ? _GEN_25 : 8'h0; // @[predictor.scala 27:26 294:28]
  assign io_predicted_pix7_0 = io_capture_pixel ? _GEN_50 : 8'h0; // @[predictor.scala 27:26 297:28]
  assign io_predicted_pix7_1 = io_capture_pixel ? _GEN_51 : 8'h0; // @[predictor.scala 27:26 297:28]
  assign io_predicted_pix7_2 = io_capture_pixel ? _GEN_52 : 8'h0; // @[predictor.scala 27:26 297:28]
  assign io_predicted_pix7_3 = io_capture_pixel ? _GEN_53 : 8'h0; // @[predictor.scala 27:26 297:28]
  assign io_predicted_pix7_4 = io_capture_pixel ? _GEN_12 : 8'h0; // @[predictor.scala 27:26 297:28]
  assign io_predicted_pix7_5 = io_capture_pixel ? _GEN_13 : 8'h0; // @[predictor.scala 27:26 297:28]
  assign io_predicted_pix7_6 = io_capture_pixel ? _GEN_14 : 8'h0; // @[predictor.scala 27:26 297:28]
  assign io_predicted_pix7_7 = io_capture_pixel ? _GEN_15 : 8'h0; // @[predictor.scala 27:26 297:28]
  assign io_predicted_pix7_8 = io_capture_pixel ? _GEN_51 : 8'h0; // @[predictor.scala 27:26 297:28]
  assign io_predicted_pix7_9 = io_capture_pixel ? _GEN_52 : 8'h0; // @[predictor.scala 27:26 297:28]
  assign io_predicted_pix7_10 = io_capture_pixel ? _GEN_53 : 8'h0; // @[predictor.scala 27:26 297:28]
  assign io_predicted_pix7_11 = io_capture_pixel ? _GEN_58 : 8'h0; // @[predictor.scala 27:26 297:28]
  assign io_predicted_pix7_12 = io_capture_pixel ? _GEN_13 : 8'h0; // @[predictor.scala 27:26 297:28]
  assign io_predicted_pix7_13 = io_capture_pixel ? _GEN_14 : 8'h0; // @[predictor.scala 27:26 297:28]
  assign io_predicted_pix7_14 = io_capture_pixel ? _GEN_15 : 8'h0; // @[predictor.scala 27:26 297:28]
  assign io_predicted_pix7_15 = io_capture_pixel ? _GEN_16 : 8'h0; // @[predictor.scala 27:26 297:28]
  assign io_predicted_pix8_0 = io_capture_pixel ? _GEN_61 : 8'h0; // @[predictor.scala 27:26 300:28]
  assign io_predicted_pix8_1 = io_capture_pixel ? _GEN_62 : 8'h0; // @[predictor.scala 27:26 300:28]
  assign io_predicted_pix8_2 = io_capture_pixel ? _GEN_63 : 8'h0; // @[predictor.scala 27:26 300:28]
  assign io_predicted_pix8_3 = io_capture_pixel ? _GEN_64 : 8'h0; // @[predictor.scala 27:26 300:28]
  assign io_predicted_pix8_4 = io_capture_pixel ? _GEN_63 : 8'h0; // @[predictor.scala 27:26 300:28]
  assign io_predicted_pix8_5 = io_capture_pixel ? _GEN_64 : 8'h0; // @[predictor.scala 27:26 300:28]
  assign io_predicted_pix8_6 = io_capture_pixel ? _GEN_65 : 8'h0; // @[predictor.scala 27:26 300:28]
  assign io_predicted_pix8_7 = _GEN_133[7:0];
  assign io_predicted_pix8_8 = io_capture_pixel ? _GEN_65 : 8'h0; // @[predictor.scala 27:26 300:28]
  assign io_predicted_pix8_9 = _GEN_133[7:0];
  assign io_predicted_pix8_10 = io_capture_pixel ? _GEN_8 : 8'h0; // @[predictor.scala 27:26 279:28]
  assign io_predicted_pix8_11 = io_capture_pixel ? _GEN_8 : 8'h0; // @[predictor.scala 27:26 279:28]
  assign io_predicted_pix8_12 = io_capture_pixel ? _GEN_8 : 8'h0; // @[predictor.scala 27:26 279:28]
  assign io_predicted_pix8_13 = io_capture_pixel ? _GEN_8 : 8'h0; // @[predictor.scala 27:26 279:28]
  assign io_predicted_pix8_14 = io_capture_pixel ? _GEN_8 : 8'h0; // @[predictor.scala 27:26 279:28]
  assign io_predicted_pix8_15 = io_capture_pixel ? _GEN_8 : 8'h0; // @[predictor.scala 27:26 279:28]
endmodule
module sad4x(
  input         io_valid_0,
  input         io_valid_1,
  input         io_valid_2,
  input         io_valid_3,
  input         io_valid_4,
  input         io_valid_5,
  input         io_valid_6,
  input         io_valid_7,
  input         io_valid_8,
  input  [7:0]  io_src_pix_0,
  input  [7:0]  io_src_pix_1,
  input  [7:0]  io_src_pix_2,
  input  [7:0]  io_src_pix_3,
  input  [7:0]  io_src_pix_4,
  input  [7:0]  io_src_pix_5,
  input  [7:0]  io_src_pix_6,
  input  [7:0]  io_src_pix_7,
  input  [7:0]  io_src_pix_8,
  input  [7:0]  io_src_pix_9,
  input  [7:0]  io_src_pix_10,
  input  [7:0]  io_src_pix_11,
  input  [7:0]  io_src_pix_12,
  input  [7:0]  io_src_pix_13,
  input  [7:0]  io_src_pix_14,
  input  [7:0]  io_src_pix_15,
  input  [7:0]  io_pred0_0,
  input  [7:0]  io_pred0_1,
  input  [7:0]  io_pred0_2,
  input  [7:0]  io_pred0_3,
  input  [7:0]  io_pred0_4,
  input  [7:0]  io_pred0_5,
  input  [7:0]  io_pred0_6,
  input  [7:0]  io_pred0_7,
  input  [7:0]  io_pred0_8,
  input  [7:0]  io_pred0_9,
  input  [7:0]  io_pred0_10,
  input  [7:0]  io_pred0_11,
  input  [7:0]  io_pred0_12,
  input  [7:0]  io_pred0_13,
  input  [7:0]  io_pred0_14,
  input  [7:0]  io_pred0_15,
  input  [7:0]  io_pred1_0,
  input  [7:0]  io_pred1_1,
  input  [7:0]  io_pred1_2,
  input  [7:0]  io_pred1_3,
  input  [7:0]  io_pred1_4,
  input  [7:0]  io_pred1_5,
  input  [7:0]  io_pred1_6,
  input  [7:0]  io_pred1_7,
  input  [7:0]  io_pred1_8,
  input  [7:0]  io_pred1_9,
  input  [7:0]  io_pred1_10,
  input  [7:0]  io_pred1_11,
  input  [7:0]  io_pred1_12,
  input  [7:0]  io_pred1_13,
  input  [7:0]  io_pred1_14,
  input  [7:0]  io_pred1_15,
  input  [7:0]  io_pred2_0,
  input  [7:0]  io_pred2_1,
  input  [7:0]  io_pred2_2,
  input  [7:0]  io_pred2_3,
  input  [7:0]  io_pred2_4,
  input  [7:0]  io_pred2_5,
  input  [7:0]  io_pred2_6,
  input  [7:0]  io_pred2_7,
  input  [7:0]  io_pred2_8,
  input  [7:0]  io_pred2_9,
  input  [7:0]  io_pred2_10,
  input  [7:0]  io_pred2_11,
  input  [7:0]  io_pred2_12,
  input  [7:0]  io_pred2_13,
  input  [7:0]  io_pred2_14,
  input  [7:0]  io_pred2_15,
  input  [7:0]  io_pred3_0,
  input  [7:0]  io_pred3_1,
  input  [7:0]  io_pred3_2,
  input  [7:0]  io_pred3_3,
  input  [7:0]  io_pred3_4,
  input  [7:0]  io_pred3_5,
  input  [7:0]  io_pred3_6,
  input  [7:0]  io_pred3_7,
  input  [7:0]  io_pred3_8,
  input  [7:0]  io_pred3_9,
  input  [7:0]  io_pred3_10,
  input  [7:0]  io_pred3_11,
  input  [7:0]  io_pred3_12,
  input  [7:0]  io_pred3_13,
  input  [7:0]  io_pred3_14,
  input  [7:0]  io_pred3_15,
  input  [7:0]  io_pred4_0,
  input  [7:0]  io_pred4_1,
  input  [7:0]  io_pred4_2,
  input  [7:0]  io_pred4_3,
  input  [7:0]  io_pred4_4,
  input  [7:0]  io_pred4_5,
  input  [7:0]  io_pred4_6,
  input  [7:0]  io_pred4_7,
  input  [7:0]  io_pred4_8,
  input  [7:0]  io_pred4_9,
  input  [7:0]  io_pred4_10,
  input  [7:0]  io_pred4_11,
  input  [7:0]  io_pred4_12,
  input  [7:0]  io_pred4_13,
  input  [7:0]  io_pred4_14,
  input  [7:0]  io_pred4_15,
  input  [7:0]  io_pred5_0,
  input  [7:0]  io_pred5_1,
  input  [7:0]  io_pred5_2,
  input  [7:0]  io_pred5_3,
  input  [7:0]  io_pred5_4,
  input  [7:0]  io_pred5_5,
  input  [7:0]  io_pred5_6,
  input  [7:0]  io_pred5_7,
  input  [7:0]  io_pred5_8,
  input  [7:0]  io_pred5_9,
  input  [7:0]  io_pred5_10,
  input  [7:0]  io_pred5_11,
  input  [7:0]  io_pred5_12,
  input  [7:0]  io_pred5_13,
  input  [7:0]  io_pred5_14,
  input  [7:0]  io_pred5_15,
  input  [7:0]  io_pred6_0,
  input  [7:0]  io_pred6_1,
  input  [7:0]  io_pred6_2,
  input  [7:0]  io_pred6_3,
  input  [7:0]  io_pred6_4,
  input  [7:0]  io_pred6_5,
  input  [7:0]  io_pred6_6,
  input  [7:0]  io_pred6_7,
  input  [7:0]  io_pred6_8,
  input  [7:0]  io_pred6_9,
  input  [7:0]  io_pred6_10,
  input  [7:0]  io_pred6_11,
  input  [7:0]  io_pred6_12,
  input  [7:0]  io_pred6_13,
  input  [7:0]  io_pred6_14,
  input  [7:0]  io_pred6_15,
  input  [7:0]  io_pred7_0,
  input  [7:0]  io_pred7_1,
  input  [7:0]  io_pred7_2,
  input  [7:0]  io_pred7_3,
  input  [7:0]  io_pred7_4,
  input  [7:0]  io_pred7_5,
  input  [7:0]  io_pred7_6,
  input  [7:0]  io_pred7_7,
  input  [7:0]  io_pred7_8,
  input  [7:0]  io_pred7_9,
  input  [7:0]  io_pred7_10,
  input  [7:0]  io_pred7_11,
  input  [7:0]  io_pred7_12,
  input  [7:0]  io_pred7_13,
  input  [7:0]  io_pred7_14,
  input  [7:0]  io_pred7_15,
  input  [7:0]  io_pred8_0,
  input  [7:0]  io_pred8_1,
  input  [7:0]  io_pred8_2,
  input  [7:0]  io_pred8_3,
  input  [7:0]  io_pred8_4,
  input  [7:0]  io_pred8_5,
  input  [7:0]  io_pred8_6,
  input  [7:0]  io_pred8_7,
  input  [7:0]  io_pred8_8,
  input  [7:0]  io_pred8_9,
  input  [7:0]  io_pred8_10,
  input  [7:0]  io_pred8_11,
  input  [7:0]  io_pred8_12,
  input  [7:0]  io_pred8_13,
  input  [7:0]  io_pred8_14,
  input  [7:0]  io_pred8_15,
  output [11:0] io_sad_seq_0,
  output [11:0] io_sad_seq_1,
  output [11:0] io_sad_seq_2,
  output [11:0] io_sad_seq_3,
  output [11:0] io_sad_seq_4,
  output [11:0] io_sad_seq_5,
  output [11:0] io_sad_seq_6,
  output [11:0] io_sad_seq_7,
  output [11:0] io_sad_seq_8,
  output [8:0]  io_diff0_0,
  output [8:0]  io_diff0_1,
  output [8:0]  io_diff0_2,
  output [8:0]  io_diff0_3,
  output [8:0]  io_diff0_4,
  output [8:0]  io_diff0_5,
  output [8:0]  io_diff0_6,
  output [8:0]  io_diff0_7,
  output [8:0]  io_diff0_8,
  output [8:0]  io_diff0_9,
  output [8:0]  io_diff0_10,
  output [8:0]  io_diff0_11,
  output [8:0]  io_diff0_12,
  output [8:0]  io_diff0_13,
  output [8:0]  io_diff0_14,
  output [8:0]  io_diff0_15,
  output [8:0]  io_diff1_0,
  output [8:0]  io_diff1_1,
  output [8:0]  io_diff1_2,
  output [8:0]  io_diff1_3,
  output [8:0]  io_diff1_4,
  output [8:0]  io_diff1_5,
  output [8:0]  io_diff1_6,
  output [8:0]  io_diff1_7,
  output [8:0]  io_diff1_8,
  output [8:0]  io_diff1_9,
  output [8:0]  io_diff1_10,
  output [8:0]  io_diff1_11,
  output [8:0]  io_diff1_12,
  output [8:0]  io_diff1_13,
  output [8:0]  io_diff1_14,
  output [8:0]  io_diff1_15,
  output [8:0]  io_diff2_0,
  output [8:0]  io_diff2_1,
  output [8:0]  io_diff2_2,
  output [8:0]  io_diff2_3,
  output [8:0]  io_diff2_4,
  output [8:0]  io_diff2_5,
  output [8:0]  io_diff2_6,
  output [8:0]  io_diff2_7,
  output [8:0]  io_diff2_8,
  output [8:0]  io_diff2_9,
  output [8:0]  io_diff2_10,
  output [8:0]  io_diff2_11,
  output [8:0]  io_diff2_12,
  output [8:0]  io_diff2_13,
  output [8:0]  io_diff2_14,
  output [8:0]  io_diff2_15,
  output [8:0]  io_diff3_0,
  output [8:0]  io_diff3_1,
  output [8:0]  io_diff3_2,
  output [8:0]  io_diff3_3,
  output [8:0]  io_diff3_4,
  output [8:0]  io_diff3_5,
  output [8:0]  io_diff3_6,
  output [8:0]  io_diff3_7,
  output [8:0]  io_diff3_8,
  output [8:0]  io_diff3_9,
  output [8:0]  io_diff3_10,
  output [8:0]  io_diff3_11,
  output [8:0]  io_diff3_12,
  output [8:0]  io_diff3_13,
  output [8:0]  io_diff3_14,
  output [8:0]  io_diff3_15,
  output [8:0]  io_diff4_0,
  output [8:0]  io_diff4_1,
  output [8:0]  io_diff4_2,
  output [8:0]  io_diff4_3,
  output [8:0]  io_diff4_4,
  output [8:0]  io_diff4_5,
  output [8:0]  io_diff4_6,
  output [8:0]  io_diff4_7,
  output [8:0]  io_diff4_8,
  output [8:0]  io_diff4_9,
  output [8:0]  io_diff4_10,
  output [8:0]  io_diff4_11,
  output [8:0]  io_diff4_12,
  output [8:0]  io_diff4_13,
  output [8:0]  io_diff4_14,
  output [8:0]  io_diff4_15,
  output [8:0]  io_diff5_0,
  output [8:0]  io_diff5_1,
  output [8:0]  io_diff5_2,
  output [8:0]  io_diff5_3,
  output [8:0]  io_diff5_4,
  output [8:0]  io_diff5_5,
  output [8:0]  io_diff5_6,
  output [8:0]  io_diff5_7,
  output [8:0]  io_diff5_8,
  output [8:0]  io_diff5_9,
  output [8:0]  io_diff5_10,
  output [8:0]  io_diff5_11,
  output [8:0]  io_diff5_12,
  output [8:0]  io_diff5_13,
  output [8:0]  io_diff5_14,
  output [8:0]  io_diff5_15,
  output [8:0]  io_diff6_0,
  output [8:0]  io_diff6_1,
  output [8:0]  io_diff6_2,
  output [8:0]  io_diff6_3,
  output [8:0]  io_diff6_4,
  output [8:0]  io_diff6_5,
  output [8:0]  io_diff6_6,
  output [8:0]  io_diff6_7,
  output [8:0]  io_diff6_8,
  output [8:0]  io_diff6_9,
  output [8:0]  io_diff6_10,
  output [8:0]  io_diff6_11,
  output [8:0]  io_diff6_12,
  output [8:0]  io_diff6_13,
  output [8:0]  io_diff6_14,
  output [8:0]  io_diff6_15,
  output [8:0]  io_diff7_0,
  output [8:0]  io_diff7_1,
  output [8:0]  io_diff7_2,
  output [8:0]  io_diff7_3,
  output [8:0]  io_diff7_4,
  output [8:0]  io_diff7_5,
  output [8:0]  io_diff7_6,
  output [8:0]  io_diff7_7,
  output [8:0]  io_diff7_8,
  output [8:0]  io_diff7_9,
  output [8:0]  io_diff7_10,
  output [8:0]  io_diff7_11,
  output [8:0]  io_diff7_12,
  output [8:0]  io_diff7_13,
  output [8:0]  io_diff7_14,
  output [8:0]  io_diff7_15,
  output [8:0]  io_diff8_0,
  output [8:0]  io_diff8_1,
  output [8:0]  io_diff8_2,
  output [8:0]  io_diff8_3,
  output [8:0]  io_diff8_4,
  output [8:0]  io_diff8_5,
  output [8:0]  io_diff8_6,
  output [8:0]  io_diff8_7,
  output [8:0]  io_diff8_8,
  output [8:0]  io_diff8_9,
  output [8:0]  io_diff8_10,
  output [8:0]  io_diff8_11,
  output [8:0]  io_diff8_12,
  output [8:0]  io_diff8_13,
  output [8:0]  io_diff8_14,
  output [8:0]  io_diff8_15
);
  wire [7:0] _io_sad_seq_0_T_2 = io_src_pix_0 - io_pred0_0; // @[sad4x.scala 32:82]
  wire [7:0] _io_sad_seq_0_T_4 = io_pred0_0 - io_src_pix_0; // @[sad4x.scala 32:89]
  wire [7:0] _io_sad_seq_0_T_5 = io_src_pix_0 >= io_pred0_0 ? _io_sad_seq_0_T_2 : _io_sad_seq_0_T_4; // @[sad4x.scala 32:71]
  wire [7:0] _io_sad_seq_0_T_8 = io_src_pix_1 - io_pred0_1; // @[sad4x.scala 32:82]
  wire [7:0] _io_sad_seq_0_T_10 = io_pred0_1 - io_src_pix_1; // @[sad4x.scala 32:89]
  wire [7:0] _io_sad_seq_0_T_11 = io_src_pix_1 >= io_pred0_1 ? _io_sad_seq_0_T_8 : _io_sad_seq_0_T_10; // @[sad4x.scala 32:71]
  wire [7:0] _io_sad_seq_0_T_14 = io_src_pix_2 - io_pred0_2; // @[sad4x.scala 32:82]
  wire [7:0] _io_sad_seq_0_T_16 = io_pred0_2 - io_src_pix_2; // @[sad4x.scala 32:89]
  wire [7:0] _io_sad_seq_0_T_17 = io_src_pix_2 >= io_pred0_2 ? _io_sad_seq_0_T_14 : _io_sad_seq_0_T_16; // @[sad4x.scala 32:71]
  wire [7:0] _io_sad_seq_0_T_20 = io_src_pix_3 - io_pred0_3; // @[sad4x.scala 32:82]
  wire [7:0] _io_sad_seq_0_T_22 = io_pred0_3 - io_src_pix_3; // @[sad4x.scala 32:89]
  wire [7:0] _io_sad_seq_0_T_23 = io_src_pix_3 >= io_pred0_3 ? _io_sad_seq_0_T_20 : _io_sad_seq_0_T_22; // @[sad4x.scala 32:71]
  wire [7:0] _io_sad_seq_0_T_26 = io_src_pix_4 - io_pred0_4; // @[sad4x.scala 32:82]
  wire [7:0] _io_sad_seq_0_T_28 = io_pred0_4 - io_src_pix_4; // @[sad4x.scala 32:89]
  wire [7:0] _io_sad_seq_0_T_29 = io_src_pix_4 >= io_pred0_4 ? _io_sad_seq_0_T_26 : _io_sad_seq_0_T_28; // @[sad4x.scala 32:71]
  wire [7:0] _io_sad_seq_0_T_32 = io_src_pix_5 - io_pred0_5; // @[sad4x.scala 32:82]
  wire [7:0] _io_sad_seq_0_T_34 = io_pred0_5 - io_src_pix_5; // @[sad4x.scala 32:89]
  wire [7:0] _io_sad_seq_0_T_35 = io_src_pix_5 >= io_pred0_5 ? _io_sad_seq_0_T_32 : _io_sad_seq_0_T_34; // @[sad4x.scala 32:71]
  wire [7:0] _io_sad_seq_0_T_38 = io_src_pix_6 - io_pred0_6; // @[sad4x.scala 32:82]
  wire [7:0] _io_sad_seq_0_T_40 = io_pred0_6 - io_src_pix_6; // @[sad4x.scala 32:89]
  wire [7:0] _io_sad_seq_0_T_41 = io_src_pix_6 >= io_pred0_6 ? _io_sad_seq_0_T_38 : _io_sad_seq_0_T_40; // @[sad4x.scala 32:71]
  wire [7:0] _io_sad_seq_0_T_44 = io_src_pix_7 - io_pred0_7; // @[sad4x.scala 32:82]
  wire [7:0] _io_sad_seq_0_T_46 = io_pred0_7 - io_src_pix_7; // @[sad4x.scala 32:89]
  wire [7:0] _io_sad_seq_0_T_47 = io_src_pix_7 >= io_pred0_7 ? _io_sad_seq_0_T_44 : _io_sad_seq_0_T_46; // @[sad4x.scala 32:71]
  wire [7:0] _io_sad_seq_0_T_50 = io_src_pix_8 - io_pred0_8; // @[sad4x.scala 32:82]
  wire [7:0] _io_sad_seq_0_T_52 = io_pred0_8 - io_src_pix_8; // @[sad4x.scala 32:89]
  wire [7:0] _io_sad_seq_0_T_53 = io_src_pix_8 >= io_pred0_8 ? _io_sad_seq_0_T_50 : _io_sad_seq_0_T_52; // @[sad4x.scala 32:71]
  wire [7:0] _io_sad_seq_0_T_56 = io_src_pix_9 - io_pred0_9; // @[sad4x.scala 32:82]
  wire [7:0] _io_sad_seq_0_T_58 = io_pred0_9 - io_src_pix_9; // @[sad4x.scala 32:89]
  wire [7:0] _io_sad_seq_0_T_59 = io_src_pix_9 >= io_pred0_9 ? _io_sad_seq_0_T_56 : _io_sad_seq_0_T_58; // @[sad4x.scala 32:71]
  wire [7:0] _io_sad_seq_0_T_62 = io_src_pix_10 - io_pred0_10; // @[sad4x.scala 32:82]
  wire [7:0] _io_sad_seq_0_T_64 = io_pred0_10 - io_src_pix_10; // @[sad4x.scala 32:89]
  wire [7:0] _io_sad_seq_0_T_65 = io_src_pix_10 >= io_pred0_10 ? _io_sad_seq_0_T_62 : _io_sad_seq_0_T_64; // @[sad4x.scala 32:71]
  wire [7:0] _io_sad_seq_0_T_68 = io_src_pix_11 - io_pred0_11; // @[sad4x.scala 32:82]
  wire [7:0] _io_sad_seq_0_T_70 = io_pred0_11 - io_src_pix_11; // @[sad4x.scala 32:89]
  wire [7:0] _io_sad_seq_0_T_71 = io_src_pix_11 >= io_pred0_11 ? _io_sad_seq_0_T_68 : _io_sad_seq_0_T_70; // @[sad4x.scala 32:71]
  wire [7:0] _io_sad_seq_0_T_74 = io_src_pix_12 - io_pred0_12; // @[sad4x.scala 32:82]
  wire [7:0] _io_sad_seq_0_T_76 = io_pred0_12 - io_src_pix_12; // @[sad4x.scala 32:89]
  wire [7:0] _io_sad_seq_0_T_77 = io_src_pix_12 >= io_pred0_12 ? _io_sad_seq_0_T_74 : _io_sad_seq_0_T_76; // @[sad4x.scala 32:71]
  wire [7:0] _io_sad_seq_0_T_80 = io_src_pix_13 - io_pred0_13; // @[sad4x.scala 32:82]
  wire [7:0] _io_sad_seq_0_T_82 = io_pred0_13 - io_src_pix_13; // @[sad4x.scala 32:89]
  wire [7:0] _io_sad_seq_0_T_83 = io_src_pix_13 >= io_pred0_13 ? _io_sad_seq_0_T_80 : _io_sad_seq_0_T_82; // @[sad4x.scala 32:71]
  wire [7:0] _io_sad_seq_0_T_86 = io_src_pix_14 - io_pred0_14; // @[sad4x.scala 32:82]
  wire [7:0] _io_sad_seq_0_T_88 = io_pred0_14 - io_src_pix_14; // @[sad4x.scala 32:89]
  wire [7:0] _io_sad_seq_0_T_89 = io_src_pix_14 >= io_pred0_14 ? _io_sad_seq_0_T_86 : _io_sad_seq_0_T_88; // @[sad4x.scala 32:71]
  wire [7:0] _io_sad_seq_0_T_92 = io_src_pix_15 - io_pred0_15; // @[sad4x.scala 32:82]
  wire [7:0] _io_sad_seq_0_T_94 = io_pred0_15 - io_src_pix_15; // @[sad4x.scala 32:89]
  wire [7:0] _io_sad_seq_0_T_95 = io_src_pix_15 >= io_pred0_15 ? _io_sad_seq_0_T_92 : _io_sad_seq_0_T_94; // @[sad4x.scala 32:71]
  wire [7:0] _io_sad_seq_0_T_97 = _io_sad_seq_0_T_5 + _io_sad_seq_0_T_11; // @[sad4x.scala 32:105]
  wire [7:0] _io_sad_seq_0_T_99 = _io_sad_seq_0_T_97 + _io_sad_seq_0_T_17; // @[sad4x.scala 32:105]
  wire [7:0] _io_sad_seq_0_T_101 = _io_sad_seq_0_T_99 + _io_sad_seq_0_T_23; // @[sad4x.scala 32:105]
  wire [7:0] _io_sad_seq_0_T_103 = _io_sad_seq_0_T_101 + _io_sad_seq_0_T_29; // @[sad4x.scala 32:105]
  wire [7:0] _io_sad_seq_0_T_105 = _io_sad_seq_0_T_103 + _io_sad_seq_0_T_35; // @[sad4x.scala 32:105]
  wire [7:0] _io_sad_seq_0_T_107 = _io_sad_seq_0_T_105 + _io_sad_seq_0_T_41; // @[sad4x.scala 32:105]
  wire [7:0] _io_sad_seq_0_T_109 = _io_sad_seq_0_T_107 + _io_sad_seq_0_T_47; // @[sad4x.scala 32:105]
  wire [7:0] _io_sad_seq_0_T_111 = _io_sad_seq_0_T_109 + _io_sad_seq_0_T_53; // @[sad4x.scala 32:105]
  wire [7:0] _io_sad_seq_0_T_113 = _io_sad_seq_0_T_111 + _io_sad_seq_0_T_59; // @[sad4x.scala 32:105]
  wire [7:0] _io_sad_seq_0_T_115 = _io_sad_seq_0_T_113 + _io_sad_seq_0_T_65; // @[sad4x.scala 32:105]
  wire [7:0] _io_sad_seq_0_T_117 = _io_sad_seq_0_T_115 + _io_sad_seq_0_T_71; // @[sad4x.scala 32:105]
  wire [7:0] _io_sad_seq_0_T_119 = _io_sad_seq_0_T_117 + _io_sad_seq_0_T_77; // @[sad4x.scala 32:105]
  wire [7:0] _io_sad_seq_0_T_121 = _io_sad_seq_0_T_119 + _io_sad_seq_0_T_83; // @[sad4x.scala 32:105]
  wire [7:0] _io_sad_seq_0_T_123 = _io_sad_seq_0_T_121 + _io_sad_seq_0_T_89; // @[sad4x.scala 32:105]
  wire [7:0] _io_sad_seq_0_T_125 = _io_sad_seq_0_T_123 + _io_sad_seq_0_T_95; // @[sad4x.scala 32:105]
  wire [7:0] _T_4 = $signed(io_src_pix_0) - $signed(io_pred0_0); // @[sad4x.scala 33:75]
  wire [7:0] _T_9 = $signed(io_src_pix_1) - $signed(io_pred0_1); // @[sad4x.scala 33:75]
  wire [7:0] _T_14 = $signed(io_src_pix_2) - $signed(io_pred0_2); // @[sad4x.scala 33:75]
  wire [7:0] _T_19 = $signed(io_src_pix_3) - $signed(io_pred0_3); // @[sad4x.scala 33:75]
  wire [7:0] _T_24 = $signed(io_src_pix_4) - $signed(io_pred0_4); // @[sad4x.scala 33:75]
  wire [7:0] _T_29 = $signed(io_src_pix_5) - $signed(io_pred0_5); // @[sad4x.scala 33:75]
  wire [7:0] _T_34 = $signed(io_src_pix_6) - $signed(io_pred0_6); // @[sad4x.scala 33:75]
  wire [7:0] _T_39 = $signed(io_src_pix_7) - $signed(io_pred0_7); // @[sad4x.scala 33:75]
  wire [7:0] _T_44 = $signed(io_src_pix_8) - $signed(io_pred0_8); // @[sad4x.scala 33:75]
  wire [7:0] _T_49 = $signed(io_src_pix_9) - $signed(io_pred0_9); // @[sad4x.scala 33:75]
  wire [7:0] _T_54 = $signed(io_src_pix_10) - $signed(io_pred0_10); // @[sad4x.scala 33:75]
  wire [7:0] _T_59 = $signed(io_src_pix_11) - $signed(io_pred0_11); // @[sad4x.scala 33:75]
  wire [7:0] _T_64 = $signed(io_src_pix_12) - $signed(io_pred0_12); // @[sad4x.scala 33:75]
  wire [7:0] _T_69 = $signed(io_src_pix_13) - $signed(io_pred0_13); // @[sad4x.scala 33:75]
  wire [7:0] _T_74 = $signed(io_src_pix_14) - $signed(io_pred0_14); // @[sad4x.scala 33:75]
  wire [7:0] _T_79 = $signed(io_src_pix_15) - $signed(io_pred0_15); // @[sad4x.scala 33:75]
  wire [7:0] _GEN_1 = io_valid_0 ? $signed(_T_4) : $signed(8'sh0); // @[sad4x.scala 31:21 33:14 37:19]
  wire [7:0] _GEN_2 = io_valid_0 ? $signed(_T_9) : $signed(8'sh0); // @[sad4x.scala 31:21 33:14 37:19]
  wire [7:0] _GEN_3 = io_valid_0 ? $signed(_T_14) : $signed(8'sh0); // @[sad4x.scala 31:21 33:14 37:19]
  wire [7:0] _GEN_4 = io_valid_0 ? $signed(_T_19) : $signed(8'sh0); // @[sad4x.scala 31:21 33:14 37:19]
  wire [7:0] _GEN_5 = io_valid_0 ? $signed(_T_24) : $signed(8'sh0); // @[sad4x.scala 31:21 33:14 37:19]
  wire [7:0] _GEN_6 = io_valid_0 ? $signed(_T_29) : $signed(8'sh0); // @[sad4x.scala 31:21 33:14 37:19]
  wire [7:0] _GEN_7 = io_valid_0 ? $signed(_T_34) : $signed(8'sh0); // @[sad4x.scala 31:21 33:14 37:19]
  wire [7:0] _GEN_8 = io_valid_0 ? $signed(_T_39) : $signed(8'sh0); // @[sad4x.scala 31:21 33:14 37:19]
  wire [7:0] _GEN_9 = io_valid_0 ? $signed(_T_44) : $signed(8'sh0); // @[sad4x.scala 31:21 33:14 37:19]
  wire [7:0] _GEN_10 = io_valid_0 ? $signed(_T_49) : $signed(8'sh0); // @[sad4x.scala 31:21 33:14 37:19]
  wire [7:0] _GEN_11 = io_valid_0 ? $signed(_T_54) : $signed(8'sh0); // @[sad4x.scala 31:21 33:14 37:19]
  wire [7:0] _GEN_12 = io_valid_0 ? $signed(_T_59) : $signed(8'sh0); // @[sad4x.scala 31:21 33:14 37:19]
  wire [7:0] _GEN_13 = io_valid_0 ? $signed(_T_64) : $signed(8'sh0); // @[sad4x.scala 31:21 33:14 37:19]
  wire [7:0] _GEN_14 = io_valid_0 ? $signed(_T_69) : $signed(8'sh0); // @[sad4x.scala 31:21 33:14 37:19]
  wire [7:0] _GEN_15 = io_valid_0 ? $signed(_T_74) : $signed(8'sh0); // @[sad4x.scala 31:21 33:14 37:19]
  wire [7:0] _GEN_16 = io_valid_0 ? $signed(_T_79) : $signed(8'sh0); // @[sad4x.scala 31:21 33:14 37:19]
  wire [7:0] _io_sad_seq_1_T_2 = io_src_pix_0 - io_pred1_0; // @[sad4x.scala 42:82]
  wire [7:0] _io_sad_seq_1_T_4 = io_pred1_0 - io_src_pix_0; // @[sad4x.scala 42:89]
  wire [7:0] _io_sad_seq_1_T_5 = io_src_pix_0 >= io_pred1_0 ? _io_sad_seq_1_T_2 : _io_sad_seq_1_T_4; // @[sad4x.scala 42:71]
  wire [7:0] _io_sad_seq_1_T_8 = io_src_pix_1 - io_pred1_1; // @[sad4x.scala 42:82]
  wire [7:0] _io_sad_seq_1_T_10 = io_pred1_1 - io_src_pix_1; // @[sad4x.scala 42:89]
  wire [7:0] _io_sad_seq_1_T_11 = io_src_pix_1 >= io_pred1_1 ? _io_sad_seq_1_T_8 : _io_sad_seq_1_T_10; // @[sad4x.scala 42:71]
  wire [7:0] _io_sad_seq_1_T_14 = io_src_pix_2 - io_pred1_2; // @[sad4x.scala 42:82]
  wire [7:0] _io_sad_seq_1_T_16 = io_pred1_2 - io_src_pix_2; // @[sad4x.scala 42:89]
  wire [7:0] _io_sad_seq_1_T_17 = io_src_pix_2 >= io_pred1_2 ? _io_sad_seq_1_T_14 : _io_sad_seq_1_T_16; // @[sad4x.scala 42:71]
  wire [7:0] _io_sad_seq_1_T_20 = io_src_pix_3 - io_pred1_3; // @[sad4x.scala 42:82]
  wire [7:0] _io_sad_seq_1_T_22 = io_pred1_3 - io_src_pix_3; // @[sad4x.scala 42:89]
  wire [7:0] _io_sad_seq_1_T_23 = io_src_pix_3 >= io_pred1_3 ? _io_sad_seq_1_T_20 : _io_sad_seq_1_T_22; // @[sad4x.scala 42:71]
  wire [7:0] _io_sad_seq_1_T_26 = io_src_pix_4 - io_pred1_4; // @[sad4x.scala 42:82]
  wire [7:0] _io_sad_seq_1_T_28 = io_pred1_4 - io_src_pix_4; // @[sad4x.scala 42:89]
  wire [7:0] _io_sad_seq_1_T_29 = io_src_pix_4 >= io_pred1_4 ? _io_sad_seq_1_T_26 : _io_sad_seq_1_T_28; // @[sad4x.scala 42:71]
  wire [7:0] _io_sad_seq_1_T_32 = io_src_pix_5 - io_pred1_5; // @[sad4x.scala 42:82]
  wire [7:0] _io_sad_seq_1_T_34 = io_pred1_5 - io_src_pix_5; // @[sad4x.scala 42:89]
  wire [7:0] _io_sad_seq_1_T_35 = io_src_pix_5 >= io_pred1_5 ? _io_sad_seq_1_T_32 : _io_sad_seq_1_T_34; // @[sad4x.scala 42:71]
  wire [7:0] _io_sad_seq_1_T_38 = io_src_pix_6 - io_pred1_6; // @[sad4x.scala 42:82]
  wire [7:0] _io_sad_seq_1_T_40 = io_pred1_6 - io_src_pix_6; // @[sad4x.scala 42:89]
  wire [7:0] _io_sad_seq_1_T_41 = io_src_pix_6 >= io_pred1_6 ? _io_sad_seq_1_T_38 : _io_sad_seq_1_T_40; // @[sad4x.scala 42:71]
  wire [7:0] _io_sad_seq_1_T_44 = io_src_pix_7 - io_pred1_7; // @[sad4x.scala 42:82]
  wire [7:0] _io_sad_seq_1_T_46 = io_pred1_7 - io_src_pix_7; // @[sad4x.scala 42:89]
  wire [7:0] _io_sad_seq_1_T_47 = io_src_pix_7 >= io_pred1_7 ? _io_sad_seq_1_T_44 : _io_sad_seq_1_T_46; // @[sad4x.scala 42:71]
  wire [7:0] _io_sad_seq_1_T_50 = io_src_pix_8 - io_pred1_8; // @[sad4x.scala 42:82]
  wire [7:0] _io_sad_seq_1_T_52 = io_pred1_8 - io_src_pix_8; // @[sad4x.scala 42:89]
  wire [7:0] _io_sad_seq_1_T_53 = io_src_pix_8 >= io_pred1_8 ? _io_sad_seq_1_T_50 : _io_sad_seq_1_T_52; // @[sad4x.scala 42:71]
  wire [7:0] _io_sad_seq_1_T_56 = io_src_pix_9 - io_pred1_9; // @[sad4x.scala 42:82]
  wire [7:0] _io_sad_seq_1_T_58 = io_pred1_9 - io_src_pix_9; // @[sad4x.scala 42:89]
  wire [7:0] _io_sad_seq_1_T_59 = io_src_pix_9 >= io_pred1_9 ? _io_sad_seq_1_T_56 : _io_sad_seq_1_T_58; // @[sad4x.scala 42:71]
  wire [7:0] _io_sad_seq_1_T_62 = io_src_pix_10 - io_pred1_10; // @[sad4x.scala 42:82]
  wire [7:0] _io_sad_seq_1_T_64 = io_pred1_10 - io_src_pix_10; // @[sad4x.scala 42:89]
  wire [7:0] _io_sad_seq_1_T_65 = io_src_pix_10 >= io_pred1_10 ? _io_sad_seq_1_T_62 : _io_sad_seq_1_T_64; // @[sad4x.scala 42:71]
  wire [7:0] _io_sad_seq_1_T_68 = io_src_pix_11 - io_pred1_11; // @[sad4x.scala 42:82]
  wire [7:0] _io_sad_seq_1_T_70 = io_pred1_11 - io_src_pix_11; // @[sad4x.scala 42:89]
  wire [7:0] _io_sad_seq_1_T_71 = io_src_pix_11 >= io_pred1_11 ? _io_sad_seq_1_T_68 : _io_sad_seq_1_T_70; // @[sad4x.scala 42:71]
  wire [7:0] _io_sad_seq_1_T_74 = io_src_pix_12 - io_pred1_12; // @[sad4x.scala 42:82]
  wire [7:0] _io_sad_seq_1_T_76 = io_pred1_12 - io_src_pix_12; // @[sad4x.scala 42:89]
  wire [7:0] _io_sad_seq_1_T_77 = io_src_pix_12 >= io_pred1_12 ? _io_sad_seq_1_T_74 : _io_sad_seq_1_T_76; // @[sad4x.scala 42:71]
  wire [7:0] _io_sad_seq_1_T_80 = io_src_pix_13 - io_pred1_13; // @[sad4x.scala 42:82]
  wire [7:0] _io_sad_seq_1_T_82 = io_pred1_13 - io_src_pix_13; // @[sad4x.scala 42:89]
  wire [7:0] _io_sad_seq_1_T_83 = io_src_pix_13 >= io_pred1_13 ? _io_sad_seq_1_T_80 : _io_sad_seq_1_T_82; // @[sad4x.scala 42:71]
  wire [7:0] _io_sad_seq_1_T_86 = io_src_pix_14 - io_pred1_14; // @[sad4x.scala 42:82]
  wire [7:0] _io_sad_seq_1_T_88 = io_pred1_14 - io_src_pix_14; // @[sad4x.scala 42:89]
  wire [7:0] _io_sad_seq_1_T_89 = io_src_pix_14 >= io_pred1_14 ? _io_sad_seq_1_T_86 : _io_sad_seq_1_T_88; // @[sad4x.scala 42:71]
  wire [7:0] _io_sad_seq_1_T_92 = io_src_pix_15 - io_pred1_15; // @[sad4x.scala 42:82]
  wire [7:0] _io_sad_seq_1_T_94 = io_pred1_15 - io_src_pix_15; // @[sad4x.scala 42:89]
  wire [7:0] _io_sad_seq_1_T_95 = io_src_pix_15 >= io_pred1_15 ? _io_sad_seq_1_T_92 : _io_sad_seq_1_T_94; // @[sad4x.scala 42:71]
  wire [7:0] _io_sad_seq_1_T_97 = _io_sad_seq_1_T_5 + _io_sad_seq_1_T_11; // @[sad4x.scala 42:105]
  wire [7:0] _io_sad_seq_1_T_99 = _io_sad_seq_1_T_97 + _io_sad_seq_1_T_17; // @[sad4x.scala 42:105]
  wire [7:0] _io_sad_seq_1_T_101 = _io_sad_seq_1_T_99 + _io_sad_seq_1_T_23; // @[sad4x.scala 42:105]
  wire [7:0] _io_sad_seq_1_T_103 = _io_sad_seq_1_T_101 + _io_sad_seq_1_T_29; // @[sad4x.scala 42:105]
  wire [7:0] _io_sad_seq_1_T_105 = _io_sad_seq_1_T_103 + _io_sad_seq_1_T_35; // @[sad4x.scala 42:105]
  wire [7:0] _io_sad_seq_1_T_107 = _io_sad_seq_1_T_105 + _io_sad_seq_1_T_41; // @[sad4x.scala 42:105]
  wire [7:0] _io_sad_seq_1_T_109 = _io_sad_seq_1_T_107 + _io_sad_seq_1_T_47; // @[sad4x.scala 42:105]
  wire [7:0] _io_sad_seq_1_T_111 = _io_sad_seq_1_T_109 + _io_sad_seq_1_T_53; // @[sad4x.scala 42:105]
  wire [7:0] _io_sad_seq_1_T_113 = _io_sad_seq_1_T_111 + _io_sad_seq_1_T_59; // @[sad4x.scala 42:105]
  wire [7:0] _io_sad_seq_1_T_115 = _io_sad_seq_1_T_113 + _io_sad_seq_1_T_65; // @[sad4x.scala 42:105]
  wire [7:0] _io_sad_seq_1_T_117 = _io_sad_seq_1_T_115 + _io_sad_seq_1_T_71; // @[sad4x.scala 42:105]
  wire [7:0] _io_sad_seq_1_T_119 = _io_sad_seq_1_T_117 + _io_sad_seq_1_T_77; // @[sad4x.scala 42:105]
  wire [7:0] _io_sad_seq_1_T_121 = _io_sad_seq_1_T_119 + _io_sad_seq_1_T_83; // @[sad4x.scala 42:105]
  wire [7:0] _io_sad_seq_1_T_123 = _io_sad_seq_1_T_121 + _io_sad_seq_1_T_89; // @[sad4x.scala 42:105]
  wire [7:0] _io_sad_seq_1_T_125 = _io_sad_seq_1_T_123 + _io_sad_seq_1_T_95; // @[sad4x.scala 42:105]
  wire [7:0] _T_84 = $signed(io_src_pix_0) - $signed(io_pred1_0); // @[sad4x.scala 43:75]
  wire [7:0] _T_89 = $signed(io_src_pix_1) - $signed(io_pred1_1); // @[sad4x.scala 43:75]
  wire [7:0] _T_94 = $signed(io_src_pix_2) - $signed(io_pred1_2); // @[sad4x.scala 43:75]
  wire [7:0] _T_99 = $signed(io_src_pix_3) - $signed(io_pred1_3); // @[sad4x.scala 43:75]
  wire [7:0] _T_104 = $signed(io_src_pix_4) - $signed(io_pred1_4); // @[sad4x.scala 43:75]
  wire [7:0] _T_109 = $signed(io_src_pix_5) - $signed(io_pred1_5); // @[sad4x.scala 43:75]
  wire [7:0] _T_114 = $signed(io_src_pix_6) - $signed(io_pred1_6); // @[sad4x.scala 43:75]
  wire [7:0] _T_119 = $signed(io_src_pix_7) - $signed(io_pred1_7); // @[sad4x.scala 43:75]
  wire [7:0] _T_124 = $signed(io_src_pix_8) - $signed(io_pred1_8); // @[sad4x.scala 43:75]
  wire [7:0] _T_129 = $signed(io_src_pix_9) - $signed(io_pred1_9); // @[sad4x.scala 43:75]
  wire [7:0] _T_134 = $signed(io_src_pix_10) - $signed(io_pred1_10); // @[sad4x.scala 43:75]
  wire [7:0] _T_139 = $signed(io_src_pix_11) - $signed(io_pred1_11); // @[sad4x.scala 43:75]
  wire [7:0] _T_144 = $signed(io_src_pix_12) - $signed(io_pred1_12); // @[sad4x.scala 43:75]
  wire [7:0] _T_149 = $signed(io_src_pix_13) - $signed(io_pred1_13); // @[sad4x.scala 43:75]
  wire [7:0] _T_154 = $signed(io_src_pix_14) - $signed(io_pred1_14); // @[sad4x.scala 43:75]
  wire [7:0] _T_159 = $signed(io_src_pix_15) - $signed(io_pred1_15); // @[sad4x.scala 43:75]
  wire [7:0] _GEN_18 = io_valid_1 ? $signed(_T_84) : $signed(8'sh0); // @[sad4x.scala 41:21 43:14 47:19]
  wire [7:0] _GEN_19 = io_valid_1 ? $signed(_T_89) : $signed(8'sh0); // @[sad4x.scala 41:21 43:14 47:19]
  wire [7:0] _GEN_20 = io_valid_1 ? $signed(_T_94) : $signed(8'sh0); // @[sad4x.scala 41:21 43:14 47:19]
  wire [7:0] _GEN_21 = io_valid_1 ? $signed(_T_99) : $signed(8'sh0); // @[sad4x.scala 41:21 43:14 47:19]
  wire [7:0] _GEN_22 = io_valid_1 ? $signed(_T_104) : $signed(8'sh0); // @[sad4x.scala 41:21 43:14 47:19]
  wire [7:0] _GEN_23 = io_valid_1 ? $signed(_T_109) : $signed(8'sh0); // @[sad4x.scala 41:21 43:14 47:19]
  wire [7:0] _GEN_24 = io_valid_1 ? $signed(_T_114) : $signed(8'sh0); // @[sad4x.scala 41:21 43:14 47:19]
  wire [7:0] _GEN_25 = io_valid_1 ? $signed(_T_119) : $signed(8'sh0); // @[sad4x.scala 41:21 43:14 47:19]
  wire [7:0] _GEN_26 = io_valid_1 ? $signed(_T_124) : $signed(8'sh0); // @[sad4x.scala 41:21 43:14 47:19]
  wire [7:0] _GEN_27 = io_valid_1 ? $signed(_T_129) : $signed(8'sh0); // @[sad4x.scala 41:21 43:14 47:19]
  wire [7:0] _GEN_28 = io_valid_1 ? $signed(_T_134) : $signed(8'sh0); // @[sad4x.scala 41:21 43:14 47:19]
  wire [7:0] _GEN_29 = io_valid_1 ? $signed(_T_139) : $signed(8'sh0); // @[sad4x.scala 41:21 43:14 47:19]
  wire [7:0] _GEN_30 = io_valid_1 ? $signed(_T_144) : $signed(8'sh0); // @[sad4x.scala 41:21 43:14 47:19]
  wire [7:0] _GEN_31 = io_valid_1 ? $signed(_T_149) : $signed(8'sh0); // @[sad4x.scala 41:21 43:14 47:19]
  wire [7:0] _GEN_32 = io_valid_1 ? $signed(_T_154) : $signed(8'sh0); // @[sad4x.scala 41:21 43:14 47:19]
  wire [7:0] _GEN_33 = io_valid_1 ? $signed(_T_159) : $signed(8'sh0); // @[sad4x.scala 41:21 43:14 47:19]
  wire [7:0] _io_sad_seq_2_T_2 = io_src_pix_0 - io_pred2_0; // @[sad4x.scala 52:82]
  wire [7:0] _io_sad_seq_2_T_4 = io_pred2_0 - io_src_pix_0; // @[sad4x.scala 52:89]
  wire [7:0] _io_sad_seq_2_T_5 = io_src_pix_0 >= io_pred2_0 ? _io_sad_seq_2_T_2 : _io_sad_seq_2_T_4; // @[sad4x.scala 52:71]
  wire [7:0] _io_sad_seq_2_T_8 = io_src_pix_1 - io_pred2_1; // @[sad4x.scala 52:82]
  wire [7:0] _io_sad_seq_2_T_10 = io_pred2_1 - io_src_pix_1; // @[sad4x.scala 52:89]
  wire [7:0] _io_sad_seq_2_T_11 = io_src_pix_1 >= io_pred2_1 ? _io_sad_seq_2_T_8 : _io_sad_seq_2_T_10; // @[sad4x.scala 52:71]
  wire [7:0] _io_sad_seq_2_T_14 = io_src_pix_2 - io_pred2_2; // @[sad4x.scala 52:82]
  wire [7:0] _io_sad_seq_2_T_16 = io_pred2_2 - io_src_pix_2; // @[sad4x.scala 52:89]
  wire [7:0] _io_sad_seq_2_T_17 = io_src_pix_2 >= io_pred2_2 ? _io_sad_seq_2_T_14 : _io_sad_seq_2_T_16; // @[sad4x.scala 52:71]
  wire [7:0] _io_sad_seq_2_T_20 = io_src_pix_3 - io_pred2_3; // @[sad4x.scala 52:82]
  wire [7:0] _io_sad_seq_2_T_22 = io_pred2_3 - io_src_pix_3; // @[sad4x.scala 52:89]
  wire [7:0] _io_sad_seq_2_T_23 = io_src_pix_3 >= io_pred2_3 ? _io_sad_seq_2_T_20 : _io_sad_seq_2_T_22; // @[sad4x.scala 52:71]
  wire [7:0] _io_sad_seq_2_T_26 = io_src_pix_4 - io_pred2_4; // @[sad4x.scala 52:82]
  wire [7:0] _io_sad_seq_2_T_28 = io_pred2_4 - io_src_pix_4; // @[sad4x.scala 52:89]
  wire [7:0] _io_sad_seq_2_T_29 = io_src_pix_4 >= io_pred2_4 ? _io_sad_seq_2_T_26 : _io_sad_seq_2_T_28; // @[sad4x.scala 52:71]
  wire [7:0] _io_sad_seq_2_T_32 = io_src_pix_5 - io_pred2_5; // @[sad4x.scala 52:82]
  wire [7:0] _io_sad_seq_2_T_34 = io_pred2_5 - io_src_pix_5; // @[sad4x.scala 52:89]
  wire [7:0] _io_sad_seq_2_T_35 = io_src_pix_5 >= io_pred2_5 ? _io_sad_seq_2_T_32 : _io_sad_seq_2_T_34; // @[sad4x.scala 52:71]
  wire [7:0] _io_sad_seq_2_T_38 = io_src_pix_6 - io_pred2_6; // @[sad4x.scala 52:82]
  wire [7:0] _io_sad_seq_2_T_40 = io_pred2_6 - io_src_pix_6; // @[sad4x.scala 52:89]
  wire [7:0] _io_sad_seq_2_T_41 = io_src_pix_6 >= io_pred2_6 ? _io_sad_seq_2_T_38 : _io_sad_seq_2_T_40; // @[sad4x.scala 52:71]
  wire [7:0] _io_sad_seq_2_T_44 = io_src_pix_7 - io_pred2_7; // @[sad4x.scala 52:82]
  wire [7:0] _io_sad_seq_2_T_46 = io_pred2_7 - io_src_pix_7; // @[sad4x.scala 52:89]
  wire [7:0] _io_sad_seq_2_T_47 = io_src_pix_7 >= io_pred2_7 ? _io_sad_seq_2_T_44 : _io_sad_seq_2_T_46; // @[sad4x.scala 52:71]
  wire [7:0] _io_sad_seq_2_T_50 = io_src_pix_8 - io_pred2_8; // @[sad4x.scala 52:82]
  wire [7:0] _io_sad_seq_2_T_52 = io_pred2_8 - io_src_pix_8; // @[sad4x.scala 52:89]
  wire [7:0] _io_sad_seq_2_T_53 = io_src_pix_8 >= io_pred2_8 ? _io_sad_seq_2_T_50 : _io_sad_seq_2_T_52; // @[sad4x.scala 52:71]
  wire [7:0] _io_sad_seq_2_T_56 = io_src_pix_9 - io_pred2_9; // @[sad4x.scala 52:82]
  wire [7:0] _io_sad_seq_2_T_58 = io_pred2_9 - io_src_pix_9; // @[sad4x.scala 52:89]
  wire [7:0] _io_sad_seq_2_T_59 = io_src_pix_9 >= io_pred2_9 ? _io_sad_seq_2_T_56 : _io_sad_seq_2_T_58; // @[sad4x.scala 52:71]
  wire [7:0] _io_sad_seq_2_T_62 = io_src_pix_10 - io_pred2_10; // @[sad4x.scala 52:82]
  wire [7:0] _io_sad_seq_2_T_64 = io_pred2_10 - io_src_pix_10; // @[sad4x.scala 52:89]
  wire [7:0] _io_sad_seq_2_T_65 = io_src_pix_10 >= io_pred2_10 ? _io_sad_seq_2_T_62 : _io_sad_seq_2_T_64; // @[sad4x.scala 52:71]
  wire [7:0] _io_sad_seq_2_T_68 = io_src_pix_11 - io_pred2_11; // @[sad4x.scala 52:82]
  wire [7:0] _io_sad_seq_2_T_70 = io_pred2_11 - io_src_pix_11; // @[sad4x.scala 52:89]
  wire [7:0] _io_sad_seq_2_T_71 = io_src_pix_11 >= io_pred2_11 ? _io_sad_seq_2_T_68 : _io_sad_seq_2_T_70; // @[sad4x.scala 52:71]
  wire [7:0] _io_sad_seq_2_T_74 = io_src_pix_12 - io_pred2_12; // @[sad4x.scala 52:82]
  wire [7:0] _io_sad_seq_2_T_76 = io_pred2_12 - io_src_pix_12; // @[sad4x.scala 52:89]
  wire [7:0] _io_sad_seq_2_T_77 = io_src_pix_12 >= io_pred2_12 ? _io_sad_seq_2_T_74 : _io_sad_seq_2_T_76; // @[sad4x.scala 52:71]
  wire [7:0] _io_sad_seq_2_T_80 = io_src_pix_13 - io_pred2_13; // @[sad4x.scala 52:82]
  wire [7:0] _io_sad_seq_2_T_82 = io_pred2_13 - io_src_pix_13; // @[sad4x.scala 52:89]
  wire [7:0] _io_sad_seq_2_T_83 = io_src_pix_13 >= io_pred2_13 ? _io_sad_seq_2_T_80 : _io_sad_seq_2_T_82; // @[sad4x.scala 52:71]
  wire [7:0] _io_sad_seq_2_T_86 = io_src_pix_14 - io_pred2_14; // @[sad4x.scala 52:82]
  wire [7:0] _io_sad_seq_2_T_88 = io_pred2_14 - io_src_pix_14; // @[sad4x.scala 52:89]
  wire [7:0] _io_sad_seq_2_T_89 = io_src_pix_14 >= io_pred2_14 ? _io_sad_seq_2_T_86 : _io_sad_seq_2_T_88; // @[sad4x.scala 52:71]
  wire [7:0] _io_sad_seq_2_T_92 = io_src_pix_15 - io_pred2_15; // @[sad4x.scala 52:82]
  wire [7:0] _io_sad_seq_2_T_94 = io_pred2_15 - io_src_pix_15; // @[sad4x.scala 52:89]
  wire [7:0] _io_sad_seq_2_T_95 = io_src_pix_15 >= io_pred2_15 ? _io_sad_seq_2_T_92 : _io_sad_seq_2_T_94; // @[sad4x.scala 52:71]
  wire [7:0] _io_sad_seq_2_T_97 = _io_sad_seq_2_T_5 + _io_sad_seq_2_T_11; // @[sad4x.scala 52:105]
  wire [7:0] _io_sad_seq_2_T_99 = _io_sad_seq_2_T_97 + _io_sad_seq_2_T_17; // @[sad4x.scala 52:105]
  wire [7:0] _io_sad_seq_2_T_101 = _io_sad_seq_2_T_99 + _io_sad_seq_2_T_23; // @[sad4x.scala 52:105]
  wire [7:0] _io_sad_seq_2_T_103 = _io_sad_seq_2_T_101 + _io_sad_seq_2_T_29; // @[sad4x.scala 52:105]
  wire [7:0] _io_sad_seq_2_T_105 = _io_sad_seq_2_T_103 + _io_sad_seq_2_T_35; // @[sad4x.scala 52:105]
  wire [7:0] _io_sad_seq_2_T_107 = _io_sad_seq_2_T_105 + _io_sad_seq_2_T_41; // @[sad4x.scala 52:105]
  wire [7:0] _io_sad_seq_2_T_109 = _io_sad_seq_2_T_107 + _io_sad_seq_2_T_47; // @[sad4x.scala 52:105]
  wire [7:0] _io_sad_seq_2_T_111 = _io_sad_seq_2_T_109 + _io_sad_seq_2_T_53; // @[sad4x.scala 52:105]
  wire [7:0] _io_sad_seq_2_T_113 = _io_sad_seq_2_T_111 + _io_sad_seq_2_T_59; // @[sad4x.scala 52:105]
  wire [7:0] _io_sad_seq_2_T_115 = _io_sad_seq_2_T_113 + _io_sad_seq_2_T_65; // @[sad4x.scala 52:105]
  wire [7:0] _io_sad_seq_2_T_117 = _io_sad_seq_2_T_115 + _io_sad_seq_2_T_71; // @[sad4x.scala 52:105]
  wire [7:0] _io_sad_seq_2_T_119 = _io_sad_seq_2_T_117 + _io_sad_seq_2_T_77; // @[sad4x.scala 52:105]
  wire [7:0] _io_sad_seq_2_T_121 = _io_sad_seq_2_T_119 + _io_sad_seq_2_T_83; // @[sad4x.scala 52:105]
  wire [7:0] _io_sad_seq_2_T_123 = _io_sad_seq_2_T_121 + _io_sad_seq_2_T_89; // @[sad4x.scala 52:105]
  wire [7:0] _io_sad_seq_2_T_125 = _io_sad_seq_2_T_123 + _io_sad_seq_2_T_95; // @[sad4x.scala 52:105]
  wire [7:0] _T_164 = $signed(io_src_pix_0) - $signed(io_pred2_0); // @[sad4x.scala 53:75]
  wire [7:0] _T_169 = $signed(io_src_pix_1) - $signed(io_pred2_1); // @[sad4x.scala 53:75]
  wire [7:0] _T_174 = $signed(io_src_pix_2) - $signed(io_pred2_2); // @[sad4x.scala 53:75]
  wire [7:0] _T_179 = $signed(io_src_pix_3) - $signed(io_pred2_3); // @[sad4x.scala 53:75]
  wire [7:0] _T_184 = $signed(io_src_pix_4) - $signed(io_pred2_4); // @[sad4x.scala 53:75]
  wire [7:0] _T_189 = $signed(io_src_pix_5) - $signed(io_pred2_5); // @[sad4x.scala 53:75]
  wire [7:0] _T_194 = $signed(io_src_pix_6) - $signed(io_pred2_6); // @[sad4x.scala 53:75]
  wire [7:0] _T_199 = $signed(io_src_pix_7) - $signed(io_pred2_7); // @[sad4x.scala 53:75]
  wire [7:0] _T_204 = $signed(io_src_pix_8) - $signed(io_pred2_8); // @[sad4x.scala 53:75]
  wire [7:0] _T_209 = $signed(io_src_pix_9) - $signed(io_pred2_9); // @[sad4x.scala 53:75]
  wire [7:0] _T_214 = $signed(io_src_pix_10) - $signed(io_pred2_10); // @[sad4x.scala 53:75]
  wire [7:0] _T_219 = $signed(io_src_pix_11) - $signed(io_pred2_11); // @[sad4x.scala 53:75]
  wire [7:0] _T_224 = $signed(io_src_pix_12) - $signed(io_pred2_12); // @[sad4x.scala 53:75]
  wire [7:0] _T_229 = $signed(io_src_pix_13) - $signed(io_pred2_13); // @[sad4x.scala 53:75]
  wire [7:0] _T_234 = $signed(io_src_pix_14) - $signed(io_pred2_14); // @[sad4x.scala 53:75]
  wire [7:0] _T_239 = $signed(io_src_pix_15) - $signed(io_pred2_15); // @[sad4x.scala 53:75]
  wire [7:0] _GEN_35 = io_valid_2 ? $signed(_T_164) : $signed(8'sh0); // @[sad4x.scala 51:21 53:14 57:19]
  wire [7:0] _GEN_36 = io_valid_2 ? $signed(_T_169) : $signed(8'sh0); // @[sad4x.scala 51:21 53:14 57:19]
  wire [7:0] _GEN_37 = io_valid_2 ? $signed(_T_174) : $signed(8'sh0); // @[sad4x.scala 51:21 53:14 57:19]
  wire [7:0] _GEN_38 = io_valid_2 ? $signed(_T_179) : $signed(8'sh0); // @[sad4x.scala 51:21 53:14 57:19]
  wire [7:0] _GEN_39 = io_valid_2 ? $signed(_T_184) : $signed(8'sh0); // @[sad4x.scala 51:21 53:14 57:19]
  wire [7:0] _GEN_40 = io_valid_2 ? $signed(_T_189) : $signed(8'sh0); // @[sad4x.scala 51:21 53:14 57:19]
  wire [7:0] _GEN_41 = io_valid_2 ? $signed(_T_194) : $signed(8'sh0); // @[sad4x.scala 51:21 53:14 57:19]
  wire [7:0] _GEN_42 = io_valid_2 ? $signed(_T_199) : $signed(8'sh0); // @[sad4x.scala 51:21 53:14 57:19]
  wire [7:0] _GEN_43 = io_valid_2 ? $signed(_T_204) : $signed(8'sh0); // @[sad4x.scala 51:21 53:14 57:19]
  wire [7:0] _GEN_44 = io_valid_2 ? $signed(_T_209) : $signed(8'sh0); // @[sad4x.scala 51:21 53:14 57:19]
  wire [7:0] _GEN_45 = io_valid_2 ? $signed(_T_214) : $signed(8'sh0); // @[sad4x.scala 51:21 53:14 57:19]
  wire [7:0] _GEN_46 = io_valid_2 ? $signed(_T_219) : $signed(8'sh0); // @[sad4x.scala 51:21 53:14 57:19]
  wire [7:0] _GEN_47 = io_valid_2 ? $signed(_T_224) : $signed(8'sh0); // @[sad4x.scala 51:21 53:14 57:19]
  wire [7:0] _GEN_48 = io_valid_2 ? $signed(_T_229) : $signed(8'sh0); // @[sad4x.scala 51:21 53:14 57:19]
  wire [7:0] _GEN_49 = io_valid_2 ? $signed(_T_234) : $signed(8'sh0); // @[sad4x.scala 51:21 53:14 57:19]
  wire [7:0] _GEN_50 = io_valid_2 ? $signed(_T_239) : $signed(8'sh0); // @[sad4x.scala 51:21 53:14 57:19]
  wire [7:0] _io_sad_seq_3_T_2 = io_src_pix_0 - io_pred3_0; // @[sad4x.scala 62:82]
  wire [7:0] _io_sad_seq_3_T_4 = io_pred3_0 - io_src_pix_0; // @[sad4x.scala 62:89]
  wire [7:0] _io_sad_seq_3_T_5 = io_src_pix_0 >= io_pred3_0 ? _io_sad_seq_3_T_2 : _io_sad_seq_3_T_4; // @[sad4x.scala 62:71]
  wire [7:0] _io_sad_seq_3_T_8 = io_src_pix_1 - io_pred3_1; // @[sad4x.scala 62:82]
  wire [7:0] _io_sad_seq_3_T_10 = io_pred3_1 - io_src_pix_1; // @[sad4x.scala 62:89]
  wire [7:0] _io_sad_seq_3_T_11 = io_src_pix_1 >= io_pred3_1 ? _io_sad_seq_3_T_8 : _io_sad_seq_3_T_10; // @[sad4x.scala 62:71]
  wire [7:0] _io_sad_seq_3_T_14 = io_src_pix_2 - io_pred3_2; // @[sad4x.scala 62:82]
  wire [7:0] _io_sad_seq_3_T_16 = io_pred3_2 - io_src_pix_2; // @[sad4x.scala 62:89]
  wire [7:0] _io_sad_seq_3_T_17 = io_src_pix_2 >= io_pred3_2 ? _io_sad_seq_3_T_14 : _io_sad_seq_3_T_16; // @[sad4x.scala 62:71]
  wire [7:0] _io_sad_seq_3_T_20 = io_src_pix_3 - io_pred3_3; // @[sad4x.scala 62:82]
  wire [7:0] _io_sad_seq_3_T_22 = io_pred3_3 - io_src_pix_3; // @[sad4x.scala 62:89]
  wire [7:0] _io_sad_seq_3_T_23 = io_src_pix_3 >= io_pred3_3 ? _io_sad_seq_3_T_20 : _io_sad_seq_3_T_22; // @[sad4x.scala 62:71]
  wire [7:0] _io_sad_seq_3_T_26 = io_src_pix_4 - io_pred3_4; // @[sad4x.scala 62:82]
  wire [7:0] _io_sad_seq_3_T_28 = io_pred3_4 - io_src_pix_4; // @[sad4x.scala 62:89]
  wire [7:0] _io_sad_seq_3_T_29 = io_src_pix_4 >= io_pred3_4 ? _io_sad_seq_3_T_26 : _io_sad_seq_3_T_28; // @[sad4x.scala 62:71]
  wire [7:0] _io_sad_seq_3_T_32 = io_src_pix_5 - io_pred3_5; // @[sad4x.scala 62:82]
  wire [7:0] _io_sad_seq_3_T_34 = io_pred3_5 - io_src_pix_5; // @[sad4x.scala 62:89]
  wire [7:0] _io_sad_seq_3_T_35 = io_src_pix_5 >= io_pred3_5 ? _io_sad_seq_3_T_32 : _io_sad_seq_3_T_34; // @[sad4x.scala 62:71]
  wire [7:0] _io_sad_seq_3_T_38 = io_src_pix_6 - io_pred3_6; // @[sad4x.scala 62:82]
  wire [7:0] _io_sad_seq_3_T_40 = io_pred3_6 - io_src_pix_6; // @[sad4x.scala 62:89]
  wire [7:0] _io_sad_seq_3_T_41 = io_src_pix_6 >= io_pred3_6 ? _io_sad_seq_3_T_38 : _io_sad_seq_3_T_40; // @[sad4x.scala 62:71]
  wire [7:0] _io_sad_seq_3_T_44 = io_src_pix_7 - io_pred3_7; // @[sad4x.scala 62:82]
  wire [7:0] _io_sad_seq_3_T_46 = io_pred3_7 - io_src_pix_7; // @[sad4x.scala 62:89]
  wire [7:0] _io_sad_seq_3_T_47 = io_src_pix_7 >= io_pred3_7 ? _io_sad_seq_3_T_44 : _io_sad_seq_3_T_46; // @[sad4x.scala 62:71]
  wire [7:0] _io_sad_seq_3_T_50 = io_src_pix_8 - io_pred3_8; // @[sad4x.scala 62:82]
  wire [7:0] _io_sad_seq_3_T_52 = io_pred3_8 - io_src_pix_8; // @[sad4x.scala 62:89]
  wire [7:0] _io_sad_seq_3_T_53 = io_src_pix_8 >= io_pred3_8 ? _io_sad_seq_3_T_50 : _io_sad_seq_3_T_52; // @[sad4x.scala 62:71]
  wire [7:0] _io_sad_seq_3_T_56 = io_src_pix_9 - io_pred3_9; // @[sad4x.scala 62:82]
  wire [7:0] _io_sad_seq_3_T_58 = io_pred3_9 - io_src_pix_9; // @[sad4x.scala 62:89]
  wire [7:0] _io_sad_seq_3_T_59 = io_src_pix_9 >= io_pred3_9 ? _io_sad_seq_3_T_56 : _io_sad_seq_3_T_58; // @[sad4x.scala 62:71]
  wire [7:0] _io_sad_seq_3_T_62 = io_src_pix_10 - io_pred3_10; // @[sad4x.scala 62:82]
  wire [7:0] _io_sad_seq_3_T_64 = io_pred3_10 - io_src_pix_10; // @[sad4x.scala 62:89]
  wire [7:0] _io_sad_seq_3_T_65 = io_src_pix_10 >= io_pred3_10 ? _io_sad_seq_3_T_62 : _io_sad_seq_3_T_64; // @[sad4x.scala 62:71]
  wire [7:0] _io_sad_seq_3_T_68 = io_src_pix_11 - io_pred3_11; // @[sad4x.scala 62:82]
  wire [7:0] _io_sad_seq_3_T_70 = io_pred3_11 - io_src_pix_11; // @[sad4x.scala 62:89]
  wire [7:0] _io_sad_seq_3_T_71 = io_src_pix_11 >= io_pred3_11 ? _io_sad_seq_3_T_68 : _io_sad_seq_3_T_70; // @[sad4x.scala 62:71]
  wire [7:0] _io_sad_seq_3_T_74 = io_src_pix_12 - io_pred3_12; // @[sad4x.scala 62:82]
  wire [7:0] _io_sad_seq_3_T_76 = io_pred3_12 - io_src_pix_12; // @[sad4x.scala 62:89]
  wire [7:0] _io_sad_seq_3_T_77 = io_src_pix_12 >= io_pred3_12 ? _io_sad_seq_3_T_74 : _io_sad_seq_3_T_76; // @[sad4x.scala 62:71]
  wire [7:0] _io_sad_seq_3_T_80 = io_src_pix_13 - io_pred3_13; // @[sad4x.scala 62:82]
  wire [7:0] _io_sad_seq_3_T_82 = io_pred3_13 - io_src_pix_13; // @[sad4x.scala 62:89]
  wire [7:0] _io_sad_seq_3_T_83 = io_src_pix_13 >= io_pred3_13 ? _io_sad_seq_3_T_80 : _io_sad_seq_3_T_82; // @[sad4x.scala 62:71]
  wire [7:0] _io_sad_seq_3_T_86 = io_src_pix_14 - io_pred3_14; // @[sad4x.scala 62:82]
  wire [7:0] _io_sad_seq_3_T_88 = io_pred3_14 - io_src_pix_14; // @[sad4x.scala 62:89]
  wire [7:0] _io_sad_seq_3_T_89 = io_src_pix_14 >= io_pred3_14 ? _io_sad_seq_3_T_86 : _io_sad_seq_3_T_88; // @[sad4x.scala 62:71]
  wire [7:0] _io_sad_seq_3_T_92 = io_src_pix_15 - io_pred3_15; // @[sad4x.scala 62:82]
  wire [7:0] _io_sad_seq_3_T_94 = io_pred3_15 - io_src_pix_15; // @[sad4x.scala 62:89]
  wire [7:0] _io_sad_seq_3_T_95 = io_src_pix_15 >= io_pred3_15 ? _io_sad_seq_3_T_92 : _io_sad_seq_3_T_94; // @[sad4x.scala 62:71]
  wire [7:0] _io_sad_seq_3_T_97 = _io_sad_seq_3_T_5 + _io_sad_seq_3_T_11; // @[sad4x.scala 62:105]
  wire [7:0] _io_sad_seq_3_T_99 = _io_sad_seq_3_T_97 + _io_sad_seq_3_T_17; // @[sad4x.scala 62:105]
  wire [7:0] _io_sad_seq_3_T_101 = _io_sad_seq_3_T_99 + _io_sad_seq_3_T_23; // @[sad4x.scala 62:105]
  wire [7:0] _io_sad_seq_3_T_103 = _io_sad_seq_3_T_101 + _io_sad_seq_3_T_29; // @[sad4x.scala 62:105]
  wire [7:0] _io_sad_seq_3_T_105 = _io_sad_seq_3_T_103 + _io_sad_seq_3_T_35; // @[sad4x.scala 62:105]
  wire [7:0] _io_sad_seq_3_T_107 = _io_sad_seq_3_T_105 + _io_sad_seq_3_T_41; // @[sad4x.scala 62:105]
  wire [7:0] _io_sad_seq_3_T_109 = _io_sad_seq_3_T_107 + _io_sad_seq_3_T_47; // @[sad4x.scala 62:105]
  wire [7:0] _io_sad_seq_3_T_111 = _io_sad_seq_3_T_109 + _io_sad_seq_3_T_53; // @[sad4x.scala 62:105]
  wire [7:0] _io_sad_seq_3_T_113 = _io_sad_seq_3_T_111 + _io_sad_seq_3_T_59; // @[sad4x.scala 62:105]
  wire [7:0] _io_sad_seq_3_T_115 = _io_sad_seq_3_T_113 + _io_sad_seq_3_T_65; // @[sad4x.scala 62:105]
  wire [7:0] _io_sad_seq_3_T_117 = _io_sad_seq_3_T_115 + _io_sad_seq_3_T_71; // @[sad4x.scala 62:105]
  wire [7:0] _io_sad_seq_3_T_119 = _io_sad_seq_3_T_117 + _io_sad_seq_3_T_77; // @[sad4x.scala 62:105]
  wire [7:0] _io_sad_seq_3_T_121 = _io_sad_seq_3_T_119 + _io_sad_seq_3_T_83; // @[sad4x.scala 62:105]
  wire [7:0] _io_sad_seq_3_T_123 = _io_sad_seq_3_T_121 + _io_sad_seq_3_T_89; // @[sad4x.scala 62:105]
  wire [7:0] _io_sad_seq_3_T_125 = _io_sad_seq_3_T_123 + _io_sad_seq_3_T_95; // @[sad4x.scala 62:105]
  wire [7:0] _T_244 = $signed(io_src_pix_0) - $signed(io_pred3_0); // @[sad4x.scala 63:75]
  wire [7:0] _T_249 = $signed(io_src_pix_1) - $signed(io_pred3_1); // @[sad4x.scala 63:75]
  wire [7:0] _T_254 = $signed(io_src_pix_2) - $signed(io_pred3_2); // @[sad4x.scala 63:75]
  wire [7:0] _T_259 = $signed(io_src_pix_3) - $signed(io_pred3_3); // @[sad4x.scala 63:75]
  wire [7:0] _T_264 = $signed(io_src_pix_4) - $signed(io_pred3_4); // @[sad4x.scala 63:75]
  wire [7:0] _T_269 = $signed(io_src_pix_5) - $signed(io_pred3_5); // @[sad4x.scala 63:75]
  wire [7:0] _T_274 = $signed(io_src_pix_6) - $signed(io_pred3_6); // @[sad4x.scala 63:75]
  wire [7:0] _T_279 = $signed(io_src_pix_7) - $signed(io_pred3_7); // @[sad4x.scala 63:75]
  wire [7:0] _T_284 = $signed(io_src_pix_8) - $signed(io_pred3_8); // @[sad4x.scala 63:75]
  wire [7:0] _T_289 = $signed(io_src_pix_9) - $signed(io_pred3_9); // @[sad4x.scala 63:75]
  wire [7:0] _T_294 = $signed(io_src_pix_10) - $signed(io_pred3_10); // @[sad4x.scala 63:75]
  wire [7:0] _T_299 = $signed(io_src_pix_11) - $signed(io_pred3_11); // @[sad4x.scala 63:75]
  wire [7:0] _T_304 = $signed(io_src_pix_12) - $signed(io_pred3_12); // @[sad4x.scala 63:75]
  wire [7:0] _T_309 = $signed(io_src_pix_13) - $signed(io_pred3_13); // @[sad4x.scala 63:75]
  wire [7:0] _T_314 = $signed(io_src_pix_14) - $signed(io_pred3_14); // @[sad4x.scala 63:75]
  wire [7:0] _T_319 = $signed(io_src_pix_15) - $signed(io_pred3_15); // @[sad4x.scala 63:75]
  wire [7:0] _GEN_52 = io_valid_3 ? $signed(_T_244) : $signed(8'sh0); // @[sad4x.scala 61:21 63:14 67:19]
  wire [7:0] _GEN_53 = io_valid_3 ? $signed(_T_249) : $signed(8'sh0); // @[sad4x.scala 61:21 63:14 67:19]
  wire [7:0] _GEN_54 = io_valid_3 ? $signed(_T_254) : $signed(8'sh0); // @[sad4x.scala 61:21 63:14 67:19]
  wire [7:0] _GEN_55 = io_valid_3 ? $signed(_T_259) : $signed(8'sh0); // @[sad4x.scala 61:21 63:14 67:19]
  wire [7:0] _GEN_56 = io_valid_3 ? $signed(_T_264) : $signed(8'sh0); // @[sad4x.scala 61:21 63:14 67:19]
  wire [7:0] _GEN_57 = io_valid_3 ? $signed(_T_269) : $signed(8'sh0); // @[sad4x.scala 61:21 63:14 67:19]
  wire [7:0] _GEN_58 = io_valid_3 ? $signed(_T_274) : $signed(8'sh0); // @[sad4x.scala 61:21 63:14 67:19]
  wire [7:0] _GEN_59 = io_valid_3 ? $signed(_T_279) : $signed(8'sh0); // @[sad4x.scala 61:21 63:14 67:19]
  wire [7:0] _GEN_60 = io_valid_3 ? $signed(_T_284) : $signed(8'sh0); // @[sad4x.scala 61:21 63:14 67:19]
  wire [7:0] _GEN_61 = io_valid_3 ? $signed(_T_289) : $signed(8'sh0); // @[sad4x.scala 61:21 63:14 67:19]
  wire [7:0] _GEN_62 = io_valid_3 ? $signed(_T_294) : $signed(8'sh0); // @[sad4x.scala 61:21 63:14 67:19]
  wire [7:0] _GEN_63 = io_valid_3 ? $signed(_T_299) : $signed(8'sh0); // @[sad4x.scala 61:21 63:14 67:19]
  wire [7:0] _GEN_64 = io_valid_3 ? $signed(_T_304) : $signed(8'sh0); // @[sad4x.scala 61:21 63:14 67:19]
  wire [7:0] _GEN_65 = io_valid_3 ? $signed(_T_309) : $signed(8'sh0); // @[sad4x.scala 61:21 63:14 67:19]
  wire [7:0] _GEN_66 = io_valid_3 ? $signed(_T_314) : $signed(8'sh0); // @[sad4x.scala 61:21 63:14 67:19]
  wire [7:0] _GEN_67 = io_valid_3 ? $signed(_T_319) : $signed(8'sh0); // @[sad4x.scala 61:21 63:14 67:19]
  wire [7:0] _io_sad_seq_4_T_2 = io_src_pix_0 - io_pred4_0; // @[sad4x.scala 72:82]
  wire [7:0] _io_sad_seq_4_T_4 = io_pred4_0 - io_src_pix_0; // @[sad4x.scala 72:89]
  wire [7:0] _io_sad_seq_4_T_5 = io_src_pix_0 >= io_pred4_0 ? _io_sad_seq_4_T_2 : _io_sad_seq_4_T_4; // @[sad4x.scala 72:71]
  wire [7:0] _io_sad_seq_4_T_8 = io_src_pix_1 - io_pred4_1; // @[sad4x.scala 72:82]
  wire [7:0] _io_sad_seq_4_T_10 = io_pred4_1 - io_src_pix_1; // @[sad4x.scala 72:89]
  wire [7:0] _io_sad_seq_4_T_11 = io_src_pix_1 >= io_pred4_1 ? _io_sad_seq_4_T_8 : _io_sad_seq_4_T_10; // @[sad4x.scala 72:71]
  wire [7:0] _io_sad_seq_4_T_14 = io_src_pix_2 - io_pred4_2; // @[sad4x.scala 72:82]
  wire [7:0] _io_sad_seq_4_T_16 = io_pred4_2 - io_src_pix_2; // @[sad4x.scala 72:89]
  wire [7:0] _io_sad_seq_4_T_17 = io_src_pix_2 >= io_pred4_2 ? _io_sad_seq_4_T_14 : _io_sad_seq_4_T_16; // @[sad4x.scala 72:71]
  wire [7:0] _io_sad_seq_4_T_20 = io_src_pix_3 - io_pred4_3; // @[sad4x.scala 72:82]
  wire [7:0] _io_sad_seq_4_T_22 = io_pred4_3 - io_src_pix_3; // @[sad4x.scala 72:89]
  wire [7:0] _io_sad_seq_4_T_23 = io_src_pix_3 >= io_pred4_3 ? _io_sad_seq_4_T_20 : _io_sad_seq_4_T_22; // @[sad4x.scala 72:71]
  wire [7:0] _io_sad_seq_4_T_26 = io_src_pix_4 - io_pred4_4; // @[sad4x.scala 72:82]
  wire [7:0] _io_sad_seq_4_T_28 = io_pred4_4 - io_src_pix_4; // @[sad4x.scala 72:89]
  wire [7:0] _io_sad_seq_4_T_29 = io_src_pix_4 >= io_pred4_4 ? _io_sad_seq_4_T_26 : _io_sad_seq_4_T_28; // @[sad4x.scala 72:71]
  wire [7:0] _io_sad_seq_4_T_32 = io_src_pix_5 - io_pred4_5; // @[sad4x.scala 72:82]
  wire [7:0] _io_sad_seq_4_T_34 = io_pred4_5 - io_src_pix_5; // @[sad4x.scala 72:89]
  wire [7:0] _io_sad_seq_4_T_35 = io_src_pix_5 >= io_pred4_5 ? _io_sad_seq_4_T_32 : _io_sad_seq_4_T_34; // @[sad4x.scala 72:71]
  wire [7:0] _io_sad_seq_4_T_38 = io_src_pix_6 - io_pred4_6; // @[sad4x.scala 72:82]
  wire [7:0] _io_sad_seq_4_T_40 = io_pred4_6 - io_src_pix_6; // @[sad4x.scala 72:89]
  wire [7:0] _io_sad_seq_4_T_41 = io_src_pix_6 >= io_pred4_6 ? _io_sad_seq_4_T_38 : _io_sad_seq_4_T_40; // @[sad4x.scala 72:71]
  wire [7:0] _io_sad_seq_4_T_44 = io_src_pix_7 - io_pred4_7; // @[sad4x.scala 72:82]
  wire [7:0] _io_sad_seq_4_T_46 = io_pred4_7 - io_src_pix_7; // @[sad4x.scala 72:89]
  wire [7:0] _io_sad_seq_4_T_47 = io_src_pix_7 >= io_pred4_7 ? _io_sad_seq_4_T_44 : _io_sad_seq_4_T_46; // @[sad4x.scala 72:71]
  wire [7:0] _io_sad_seq_4_T_50 = io_src_pix_8 - io_pred4_8; // @[sad4x.scala 72:82]
  wire [7:0] _io_sad_seq_4_T_52 = io_pred4_8 - io_src_pix_8; // @[sad4x.scala 72:89]
  wire [7:0] _io_sad_seq_4_T_53 = io_src_pix_8 >= io_pred4_8 ? _io_sad_seq_4_T_50 : _io_sad_seq_4_T_52; // @[sad4x.scala 72:71]
  wire [7:0] _io_sad_seq_4_T_56 = io_src_pix_9 - io_pred4_9; // @[sad4x.scala 72:82]
  wire [7:0] _io_sad_seq_4_T_58 = io_pred4_9 - io_src_pix_9; // @[sad4x.scala 72:89]
  wire [7:0] _io_sad_seq_4_T_59 = io_src_pix_9 >= io_pred4_9 ? _io_sad_seq_4_T_56 : _io_sad_seq_4_T_58; // @[sad4x.scala 72:71]
  wire [7:0] _io_sad_seq_4_T_62 = io_src_pix_10 - io_pred4_10; // @[sad4x.scala 72:82]
  wire [7:0] _io_sad_seq_4_T_64 = io_pred4_10 - io_src_pix_10; // @[sad4x.scala 72:89]
  wire [7:0] _io_sad_seq_4_T_65 = io_src_pix_10 >= io_pred4_10 ? _io_sad_seq_4_T_62 : _io_sad_seq_4_T_64; // @[sad4x.scala 72:71]
  wire [7:0] _io_sad_seq_4_T_68 = io_src_pix_11 - io_pred4_11; // @[sad4x.scala 72:82]
  wire [7:0] _io_sad_seq_4_T_70 = io_pred4_11 - io_src_pix_11; // @[sad4x.scala 72:89]
  wire [7:0] _io_sad_seq_4_T_71 = io_src_pix_11 >= io_pred4_11 ? _io_sad_seq_4_T_68 : _io_sad_seq_4_T_70; // @[sad4x.scala 72:71]
  wire [7:0] _io_sad_seq_4_T_74 = io_src_pix_12 - io_pred4_12; // @[sad4x.scala 72:82]
  wire [7:0] _io_sad_seq_4_T_76 = io_pred4_12 - io_src_pix_12; // @[sad4x.scala 72:89]
  wire [7:0] _io_sad_seq_4_T_77 = io_src_pix_12 >= io_pred4_12 ? _io_sad_seq_4_T_74 : _io_sad_seq_4_T_76; // @[sad4x.scala 72:71]
  wire [7:0] _io_sad_seq_4_T_80 = io_src_pix_13 - io_pred4_13; // @[sad4x.scala 72:82]
  wire [7:0] _io_sad_seq_4_T_82 = io_pred4_13 - io_src_pix_13; // @[sad4x.scala 72:89]
  wire [7:0] _io_sad_seq_4_T_83 = io_src_pix_13 >= io_pred4_13 ? _io_sad_seq_4_T_80 : _io_sad_seq_4_T_82; // @[sad4x.scala 72:71]
  wire [7:0] _io_sad_seq_4_T_86 = io_src_pix_14 - io_pred4_14; // @[sad4x.scala 72:82]
  wire [7:0] _io_sad_seq_4_T_88 = io_pred4_14 - io_src_pix_14; // @[sad4x.scala 72:89]
  wire [7:0] _io_sad_seq_4_T_89 = io_src_pix_14 >= io_pred4_14 ? _io_sad_seq_4_T_86 : _io_sad_seq_4_T_88; // @[sad4x.scala 72:71]
  wire [7:0] _io_sad_seq_4_T_92 = io_src_pix_15 - io_pred4_15; // @[sad4x.scala 72:82]
  wire [7:0] _io_sad_seq_4_T_94 = io_pred4_15 - io_src_pix_15; // @[sad4x.scala 72:89]
  wire [7:0] _io_sad_seq_4_T_95 = io_src_pix_15 >= io_pred4_15 ? _io_sad_seq_4_T_92 : _io_sad_seq_4_T_94; // @[sad4x.scala 72:71]
  wire [7:0] _io_sad_seq_4_T_97 = _io_sad_seq_4_T_5 + _io_sad_seq_4_T_11; // @[sad4x.scala 72:105]
  wire [7:0] _io_sad_seq_4_T_99 = _io_sad_seq_4_T_97 + _io_sad_seq_4_T_17; // @[sad4x.scala 72:105]
  wire [7:0] _io_sad_seq_4_T_101 = _io_sad_seq_4_T_99 + _io_sad_seq_4_T_23; // @[sad4x.scala 72:105]
  wire [7:0] _io_sad_seq_4_T_103 = _io_sad_seq_4_T_101 + _io_sad_seq_4_T_29; // @[sad4x.scala 72:105]
  wire [7:0] _io_sad_seq_4_T_105 = _io_sad_seq_4_T_103 + _io_sad_seq_4_T_35; // @[sad4x.scala 72:105]
  wire [7:0] _io_sad_seq_4_T_107 = _io_sad_seq_4_T_105 + _io_sad_seq_4_T_41; // @[sad4x.scala 72:105]
  wire [7:0] _io_sad_seq_4_T_109 = _io_sad_seq_4_T_107 + _io_sad_seq_4_T_47; // @[sad4x.scala 72:105]
  wire [7:0] _io_sad_seq_4_T_111 = _io_sad_seq_4_T_109 + _io_sad_seq_4_T_53; // @[sad4x.scala 72:105]
  wire [7:0] _io_sad_seq_4_T_113 = _io_sad_seq_4_T_111 + _io_sad_seq_4_T_59; // @[sad4x.scala 72:105]
  wire [7:0] _io_sad_seq_4_T_115 = _io_sad_seq_4_T_113 + _io_sad_seq_4_T_65; // @[sad4x.scala 72:105]
  wire [7:0] _io_sad_seq_4_T_117 = _io_sad_seq_4_T_115 + _io_sad_seq_4_T_71; // @[sad4x.scala 72:105]
  wire [7:0] _io_sad_seq_4_T_119 = _io_sad_seq_4_T_117 + _io_sad_seq_4_T_77; // @[sad4x.scala 72:105]
  wire [7:0] _io_sad_seq_4_T_121 = _io_sad_seq_4_T_119 + _io_sad_seq_4_T_83; // @[sad4x.scala 72:105]
  wire [7:0] _io_sad_seq_4_T_123 = _io_sad_seq_4_T_121 + _io_sad_seq_4_T_89; // @[sad4x.scala 72:105]
  wire [7:0] _io_sad_seq_4_T_125 = _io_sad_seq_4_T_123 + _io_sad_seq_4_T_95; // @[sad4x.scala 72:105]
  wire [7:0] _T_324 = $signed(io_src_pix_0) - $signed(io_pred4_0); // @[sad4x.scala 73:75]
  wire [7:0] _T_329 = $signed(io_src_pix_1) - $signed(io_pred4_1); // @[sad4x.scala 73:75]
  wire [7:0] _T_334 = $signed(io_src_pix_2) - $signed(io_pred4_2); // @[sad4x.scala 73:75]
  wire [7:0] _T_339 = $signed(io_src_pix_3) - $signed(io_pred4_3); // @[sad4x.scala 73:75]
  wire [7:0] _T_344 = $signed(io_src_pix_4) - $signed(io_pred4_4); // @[sad4x.scala 73:75]
  wire [7:0] _T_349 = $signed(io_src_pix_5) - $signed(io_pred4_5); // @[sad4x.scala 73:75]
  wire [7:0] _T_354 = $signed(io_src_pix_6) - $signed(io_pred4_6); // @[sad4x.scala 73:75]
  wire [7:0] _T_359 = $signed(io_src_pix_7) - $signed(io_pred4_7); // @[sad4x.scala 73:75]
  wire [7:0] _T_364 = $signed(io_src_pix_8) - $signed(io_pred4_8); // @[sad4x.scala 73:75]
  wire [7:0] _T_369 = $signed(io_src_pix_9) - $signed(io_pred4_9); // @[sad4x.scala 73:75]
  wire [7:0] _T_374 = $signed(io_src_pix_10) - $signed(io_pred4_10); // @[sad4x.scala 73:75]
  wire [7:0] _T_379 = $signed(io_src_pix_11) - $signed(io_pred4_11); // @[sad4x.scala 73:75]
  wire [7:0] _T_384 = $signed(io_src_pix_12) - $signed(io_pred4_12); // @[sad4x.scala 73:75]
  wire [7:0] _T_389 = $signed(io_src_pix_13) - $signed(io_pred4_13); // @[sad4x.scala 73:75]
  wire [7:0] _T_394 = $signed(io_src_pix_14) - $signed(io_pred4_14); // @[sad4x.scala 73:75]
  wire [7:0] _T_399 = $signed(io_src_pix_15) - $signed(io_pred4_15); // @[sad4x.scala 73:75]
  wire [7:0] _GEN_69 = io_valid_4 ? $signed(_T_324) : $signed(8'sh0); // @[sad4x.scala 71:21 73:14 77:19]
  wire [7:0] _GEN_70 = io_valid_4 ? $signed(_T_329) : $signed(8'sh0); // @[sad4x.scala 71:21 73:14 77:19]
  wire [7:0] _GEN_71 = io_valid_4 ? $signed(_T_334) : $signed(8'sh0); // @[sad4x.scala 71:21 73:14 77:19]
  wire [7:0] _GEN_72 = io_valid_4 ? $signed(_T_339) : $signed(8'sh0); // @[sad4x.scala 71:21 73:14 77:19]
  wire [7:0] _GEN_73 = io_valid_4 ? $signed(_T_344) : $signed(8'sh0); // @[sad4x.scala 71:21 73:14 77:19]
  wire [7:0] _GEN_74 = io_valid_4 ? $signed(_T_349) : $signed(8'sh0); // @[sad4x.scala 71:21 73:14 77:19]
  wire [7:0] _GEN_75 = io_valid_4 ? $signed(_T_354) : $signed(8'sh0); // @[sad4x.scala 71:21 73:14 77:19]
  wire [7:0] _GEN_76 = io_valid_4 ? $signed(_T_359) : $signed(8'sh0); // @[sad4x.scala 71:21 73:14 77:19]
  wire [7:0] _GEN_77 = io_valid_4 ? $signed(_T_364) : $signed(8'sh0); // @[sad4x.scala 71:21 73:14 77:19]
  wire [7:0] _GEN_78 = io_valid_4 ? $signed(_T_369) : $signed(8'sh0); // @[sad4x.scala 71:21 73:14 77:19]
  wire [7:0] _GEN_79 = io_valid_4 ? $signed(_T_374) : $signed(8'sh0); // @[sad4x.scala 71:21 73:14 77:19]
  wire [7:0] _GEN_80 = io_valid_4 ? $signed(_T_379) : $signed(8'sh0); // @[sad4x.scala 71:21 73:14 77:19]
  wire [7:0] _GEN_81 = io_valid_4 ? $signed(_T_384) : $signed(8'sh0); // @[sad4x.scala 71:21 73:14 77:19]
  wire [7:0] _GEN_82 = io_valid_4 ? $signed(_T_389) : $signed(8'sh0); // @[sad4x.scala 71:21 73:14 77:19]
  wire [7:0] _GEN_83 = io_valid_4 ? $signed(_T_394) : $signed(8'sh0); // @[sad4x.scala 71:21 73:14 77:19]
  wire [7:0] _GEN_84 = io_valid_4 ? $signed(_T_399) : $signed(8'sh0); // @[sad4x.scala 71:21 73:14 77:19]
  wire [7:0] _io_sad_seq_5_T_2 = io_src_pix_0 - io_pred5_0; // @[sad4x.scala 82:82]
  wire [7:0] _io_sad_seq_5_T_4 = io_pred5_0 - io_src_pix_0; // @[sad4x.scala 82:89]
  wire [7:0] _io_sad_seq_5_T_5 = io_src_pix_0 >= io_pred5_0 ? _io_sad_seq_5_T_2 : _io_sad_seq_5_T_4; // @[sad4x.scala 82:71]
  wire [7:0] _io_sad_seq_5_T_8 = io_src_pix_1 - io_pred5_1; // @[sad4x.scala 82:82]
  wire [7:0] _io_sad_seq_5_T_10 = io_pred5_1 - io_src_pix_1; // @[sad4x.scala 82:89]
  wire [7:0] _io_sad_seq_5_T_11 = io_src_pix_1 >= io_pred5_1 ? _io_sad_seq_5_T_8 : _io_sad_seq_5_T_10; // @[sad4x.scala 82:71]
  wire [7:0] _io_sad_seq_5_T_14 = io_src_pix_2 - io_pred5_2; // @[sad4x.scala 82:82]
  wire [7:0] _io_sad_seq_5_T_16 = io_pred5_2 - io_src_pix_2; // @[sad4x.scala 82:89]
  wire [7:0] _io_sad_seq_5_T_17 = io_src_pix_2 >= io_pred5_2 ? _io_sad_seq_5_T_14 : _io_sad_seq_5_T_16; // @[sad4x.scala 82:71]
  wire [7:0] _io_sad_seq_5_T_20 = io_src_pix_3 - io_pred5_3; // @[sad4x.scala 82:82]
  wire [7:0] _io_sad_seq_5_T_22 = io_pred5_3 - io_src_pix_3; // @[sad4x.scala 82:89]
  wire [7:0] _io_sad_seq_5_T_23 = io_src_pix_3 >= io_pred5_3 ? _io_sad_seq_5_T_20 : _io_sad_seq_5_T_22; // @[sad4x.scala 82:71]
  wire [7:0] _io_sad_seq_5_T_26 = io_src_pix_4 - io_pred5_4; // @[sad4x.scala 82:82]
  wire [7:0] _io_sad_seq_5_T_28 = io_pred5_4 - io_src_pix_4; // @[sad4x.scala 82:89]
  wire [7:0] _io_sad_seq_5_T_29 = io_src_pix_4 >= io_pred5_4 ? _io_sad_seq_5_T_26 : _io_sad_seq_5_T_28; // @[sad4x.scala 82:71]
  wire [7:0] _io_sad_seq_5_T_32 = io_src_pix_5 - io_pred5_5; // @[sad4x.scala 82:82]
  wire [7:0] _io_sad_seq_5_T_34 = io_pred5_5 - io_src_pix_5; // @[sad4x.scala 82:89]
  wire [7:0] _io_sad_seq_5_T_35 = io_src_pix_5 >= io_pred5_5 ? _io_sad_seq_5_T_32 : _io_sad_seq_5_T_34; // @[sad4x.scala 82:71]
  wire [7:0] _io_sad_seq_5_T_38 = io_src_pix_6 - io_pred5_6; // @[sad4x.scala 82:82]
  wire [7:0] _io_sad_seq_5_T_40 = io_pred5_6 - io_src_pix_6; // @[sad4x.scala 82:89]
  wire [7:0] _io_sad_seq_5_T_41 = io_src_pix_6 >= io_pred5_6 ? _io_sad_seq_5_T_38 : _io_sad_seq_5_T_40; // @[sad4x.scala 82:71]
  wire [7:0] _io_sad_seq_5_T_44 = io_src_pix_7 - io_pred5_7; // @[sad4x.scala 82:82]
  wire [7:0] _io_sad_seq_5_T_46 = io_pred5_7 - io_src_pix_7; // @[sad4x.scala 82:89]
  wire [7:0] _io_sad_seq_5_T_47 = io_src_pix_7 >= io_pred5_7 ? _io_sad_seq_5_T_44 : _io_sad_seq_5_T_46; // @[sad4x.scala 82:71]
  wire [7:0] _io_sad_seq_5_T_50 = io_src_pix_8 - io_pred5_8; // @[sad4x.scala 82:82]
  wire [7:0] _io_sad_seq_5_T_52 = io_pred5_8 - io_src_pix_8; // @[sad4x.scala 82:89]
  wire [7:0] _io_sad_seq_5_T_53 = io_src_pix_8 >= io_pred5_8 ? _io_sad_seq_5_T_50 : _io_sad_seq_5_T_52; // @[sad4x.scala 82:71]
  wire [7:0] _io_sad_seq_5_T_56 = io_src_pix_9 - io_pred5_9; // @[sad4x.scala 82:82]
  wire [7:0] _io_sad_seq_5_T_58 = io_pred5_9 - io_src_pix_9; // @[sad4x.scala 82:89]
  wire [7:0] _io_sad_seq_5_T_59 = io_src_pix_9 >= io_pred5_9 ? _io_sad_seq_5_T_56 : _io_sad_seq_5_T_58; // @[sad4x.scala 82:71]
  wire [7:0] _io_sad_seq_5_T_62 = io_src_pix_10 - io_pred5_10; // @[sad4x.scala 82:82]
  wire [7:0] _io_sad_seq_5_T_64 = io_pred5_10 - io_src_pix_10; // @[sad4x.scala 82:89]
  wire [7:0] _io_sad_seq_5_T_65 = io_src_pix_10 >= io_pred5_10 ? _io_sad_seq_5_T_62 : _io_sad_seq_5_T_64; // @[sad4x.scala 82:71]
  wire [7:0] _io_sad_seq_5_T_68 = io_src_pix_11 - io_pred5_11; // @[sad4x.scala 82:82]
  wire [7:0] _io_sad_seq_5_T_70 = io_pred5_11 - io_src_pix_11; // @[sad4x.scala 82:89]
  wire [7:0] _io_sad_seq_5_T_71 = io_src_pix_11 >= io_pred5_11 ? _io_sad_seq_5_T_68 : _io_sad_seq_5_T_70; // @[sad4x.scala 82:71]
  wire [7:0] _io_sad_seq_5_T_74 = io_src_pix_12 - io_pred5_12; // @[sad4x.scala 82:82]
  wire [7:0] _io_sad_seq_5_T_76 = io_pred5_12 - io_src_pix_12; // @[sad4x.scala 82:89]
  wire [7:0] _io_sad_seq_5_T_77 = io_src_pix_12 >= io_pred5_12 ? _io_sad_seq_5_T_74 : _io_sad_seq_5_T_76; // @[sad4x.scala 82:71]
  wire [7:0] _io_sad_seq_5_T_80 = io_src_pix_13 - io_pred5_13; // @[sad4x.scala 82:82]
  wire [7:0] _io_sad_seq_5_T_82 = io_pred5_13 - io_src_pix_13; // @[sad4x.scala 82:89]
  wire [7:0] _io_sad_seq_5_T_83 = io_src_pix_13 >= io_pred5_13 ? _io_sad_seq_5_T_80 : _io_sad_seq_5_T_82; // @[sad4x.scala 82:71]
  wire [7:0] _io_sad_seq_5_T_86 = io_src_pix_14 - io_pred5_14; // @[sad4x.scala 82:82]
  wire [7:0] _io_sad_seq_5_T_88 = io_pred5_14 - io_src_pix_14; // @[sad4x.scala 82:89]
  wire [7:0] _io_sad_seq_5_T_89 = io_src_pix_14 >= io_pred5_14 ? _io_sad_seq_5_T_86 : _io_sad_seq_5_T_88; // @[sad4x.scala 82:71]
  wire [7:0] _io_sad_seq_5_T_92 = io_src_pix_15 - io_pred5_15; // @[sad4x.scala 82:82]
  wire [7:0] _io_sad_seq_5_T_94 = io_pred5_15 - io_src_pix_15; // @[sad4x.scala 82:89]
  wire [7:0] _io_sad_seq_5_T_95 = io_src_pix_15 >= io_pred5_15 ? _io_sad_seq_5_T_92 : _io_sad_seq_5_T_94; // @[sad4x.scala 82:71]
  wire [7:0] _io_sad_seq_5_T_97 = _io_sad_seq_5_T_5 + _io_sad_seq_5_T_11; // @[sad4x.scala 82:105]
  wire [7:0] _io_sad_seq_5_T_99 = _io_sad_seq_5_T_97 + _io_sad_seq_5_T_17; // @[sad4x.scala 82:105]
  wire [7:0] _io_sad_seq_5_T_101 = _io_sad_seq_5_T_99 + _io_sad_seq_5_T_23; // @[sad4x.scala 82:105]
  wire [7:0] _io_sad_seq_5_T_103 = _io_sad_seq_5_T_101 + _io_sad_seq_5_T_29; // @[sad4x.scala 82:105]
  wire [7:0] _io_sad_seq_5_T_105 = _io_sad_seq_5_T_103 + _io_sad_seq_5_T_35; // @[sad4x.scala 82:105]
  wire [7:0] _io_sad_seq_5_T_107 = _io_sad_seq_5_T_105 + _io_sad_seq_5_T_41; // @[sad4x.scala 82:105]
  wire [7:0] _io_sad_seq_5_T_109 = _io_sad_seq_5_T_107 + _io_sad_seq_5_T_47; // @[sad4x.scala 82:105]
  wire [7:0] _io_sad_seq_5_T_111 = _io_sad_seq_5_T_109 + _io_sad_seq_5_T_53; // @[sad4x.scala 82:105]
  wire [7:0] _io_sad_seq_5_T_113 = _io_sad_seq_5_T_111 + _io_sad_seq_5_T_59; // @[sad4x.scala 82:105]
  wire [7:0] _io_sad_seq_5_T_115 = _io_sad_seq_5_T_113 + _io_sad_seq_5_T_65; // @[sad4x.scala 82:105]
  wire [7:0] _io_sad_seq_5_T_117 = _io_sad_seq_5_T_115 + _io_sad_seq_5_T_71; // @[sad4x.scala 82:105]
  wire [7:0] _io_sad_seq_5_T_119 = _io_sad_seq_5_T_117 + _io_sad_seq_5_T_77; // @[sad4x.scala 82:105]
  wire [7:0] _io_sad_seq_5_T_121 = _io_sad_seq_5_T_119 + _io_sad_seq_5_T_83; // @[sad4x.scala 82:105]
  wire [7:0] _io_sad_seq_5_T_123 = _io_sad_seq_5_T_121 + _io_sad_seq_5_T_89; // @[sad4x.scala 82:105]
  wire [7:0] _io_sad_seq_5_T_125 = _io_sad_seq_5_T_123 + _io_sad_seq_5_T_95; // @[sad4x.scala 82:105]
  wire [7:0] _T_404 = $signed(io_src_pix_0) - $signed(io_pred5_0); // @[sad4x.scala 83:75]
  wire [7:0] _T_409 = $signed(io_src_pix_1) - $signed(io_pred5_1); // @[sad4x.scala 83:75]
  wire [7:0] _T_414 = $signed(io_src_pix_2) - $signed(io_pred5_2); // @[sad4x.scala 83:75]
  wire [7:0] _T_419 = $signed(io_src_pix_3) - $signed(io_pred5_3); // @[sad4x.scala 83:75]
  wire [7:0] _T_424 = $signed(io_src_pix_4) - $signed(io_pred5_4); // @[sad4x.scala 83:75]
  wire [7:0] _T_429 = $signed(io_src_pix_5) - $signed(io_pred5_5); // @[sad4x.scala 83:75]
  wire [7:0] _T_434 = $signed(io_src_pix_6) - $signed(io_pred5_6); // @[sad4x.scala 83:75]
  wire [7:0] _T_439 = $signed(io_src_pix_7) - $signed(io_pred5_7); // @[sad4x.scala 83:75]
  wire [7:0] _T_444 = $signed(io_src_pix_8) - $signed(io_pred5_8); // @[sad4x.scala 83:75]
  wire [7:0] _T_449 = $signed(io_src_pix_9) - $signed(io_pred5_9); // @[sad4x.scala 83:75]
  wire [7:0] _T_454 = $signed(io_src_pix_10) - $signed(io_pred5_10); // @[sad4x.scala 83:75]
  wire [7:0] _T_459 = $signed(io_src_pix_11) - $signed(io_pred5_11); // @[sad4x.scala 83:75]
  wire [7:0] _T_464 = $signed(io_src_pix_12) - $signed(io_pred5_12); // @[sad4x.scala 83:75]
  wire [7:0] _T_469 = $signed(io_src_pix_13) - $signed(io_pred5_13); // @[sad4x.scala 83:75]
  wire [7:0] _T_474 = $signed(io_src_pix_14) - $signed(io_pred5_14); // @[sad4x.scala 83:75]
  wire [7:0] _T_479 = $signed(io_src_pix_15) - $signed(io_pred5_15); // @[sad4x.scala 83:75]
  wire [7:0] _GEN_86 = io_valid_5 ? $signed(_T_404) : $signed(8'sh0); // @[sad4x.scala 81:21 83:14 87:19]
  wire [7:0] _GEN_87 = io_valid_5 ? $signed(_T_409) : $signed(8'sh0); // @[sad4x.scala 81:21 83:14 87:19]
  wire [7:0] _GEN_88 = io_valid_5 ? $signed(_T_414) : $signed(8'sh0); // @[sad4x.scala 81:21 83:14 87:19]
  wire [7:0] _GEN_89 = io_valid_5 ? $signed(_T_419) : $signed(8'sh0); // @[sad4x.scala 81:21 83:14 87:19]
  wire [7:0] _GEN_90 = io_valid_5 ? $signed(_T_424) : $signed(8'sh0); // @[sad4x.scala 81:21 83:14 87:19]
  wire [7:0] _GEN_91 = io_valid_5 ? $signed(_T_429) : $signed(8'sh0); // @[sad4x.scala 81:21 83:14 87:19]
  wire [7:0] _GEN_92 = io_valid_5 ? $signed(_T_434) : $signed(8'sh0); // @[sad4x.scala 81:21 83:14 87:19]
  wire [7:0] _GEN_93 = io_valid_5 ? $signed(_T_439) : $signed(8'sh0); // @[sad4x.scala 81:21 83:14 87:19]
  wire [7:0] _GEN_94 = io_valid_5 ? $signed(_T_444) : $signed(8'sh0); // @[sad4x.scala 81:21 83:14 87:19]
  wire [7:0] _GEN_95 = io_valid_5 ? $signed(_T_449) : $signed(8'sh0); // @[sad4x.scala 81:21 83:14 87:19]
  wire [7:0] _GEN_96 = io_valid_5 ? $signed(_T_454) : $signed(8'sh0); // @[sad4x.scala 81:21 83:14 87:19]
  wire [7:0] _GEN_97 = io_valid_5 ? $signed(_T_459) : $signed(8'sh0); // @[sad4x.scala 81:21 83:14 87:19]
  wire [7:0] _GEN_98 = io_valid_5 ? $signed(_T_464) : $signed(8'sh0); // @[sad4x.scala 81:21 83:14 87:19]
  wire [7:0] _GEN_99 = io_valid_5 ? $signed(_T_469) : $signed(8'sh0); // @[sad4x.scala 81:21 83:14 87:19]
  wire [7:0] _GEN_100 = io_valid_5 ? $signed(_T_474) : $signed(8'sh0); // @[sad4x.scala 81:21 83:14 87:19]
  wire [7:0] _GEN_101 = io_valid_5 ? $signed(_T_479) : $signed(8'sh0); // @[sad4x.scala 81:21 83:14 87:19]
  wire [7:0] _io_sad_seq_6_T_2 = io_src_pix_0 - io_pred6_0; // @[sad4x.scala 92:82]
  wire [7:0] _io_sad_seq_6_T_4 = io_pred6_0 - io_src_pix_0; // @[sad4x.scala 92:89]
  wire [7:0] _io_sad_seq_6_T_5 = io_src_pix_0 >= io_pred6_0 ? _io_sad_seq_6_T_2 : _io_sad_seq_6_T_4; // @[sad4x.scala 92:71]
  wire [7:0] _io_sad_seq_6_T_8 = io_src_pix_1 - io_pred6_1; // @[sad4x.scala 92:82]
  wire [7:0] _io_sad_seq_6_T_10 = io_pred6_1 - io_src_pix_1; // @[sad4x.scala 92:89]
  wire [7:0] _io_sad_seq_6_T_11 = io_src_pix_1 >= io_pred6_1 ? _io_sad_seq_6_T_8 : _io_sad_seq_6_T_10; // @[sad4x.scala 92:71]
  wire [7:0] _io_sad_seq_6_T_14 = io_src_pix_2 - io_pred6_2; // @[sad4x.scala 92:82]
  wire [7:0] _io_sad_seq_6_T_16 = io_pred6_2 - io_src_pix_2; // @[sad4x.scala 92:89]
  wire [7:0] _io_sad_seq_6_T_17 = io_src_pix_2 >= io_pred6_2 ? _io_sad_seq_6_T_14 : _io_sad_seq_6_T_16; // @[sad4x.scala 92:71]
  wire [7:0] _io_sad_seq_6_T_20 = io_src_pix_3 - io_pred6_3; // @[sad4x.scala 92:82]
  wire [7:0] _io_sad_seq_6_T_22 = io_pred6_3 - io_src_pix_3; // @[sad4x.scala 92:89]
  wire [7:0] _io_sad_seq_6_T_23 = io_src_pix_3 >= io_pred6_3 ? _io_sad_seq_6_T_20 : _io_sad_seq_6_T_22; // @[sad4x.scala 92:71]
  wire [7:0] _io_sad_seq_6_T_26 = io_src_pix_4 - io_pred6_4; // @[sad4x.scala 92:82]
  wire [7:0] _io_sad_seq_6_T_28 = io_pred6_4 - io_src_pix_4; // @[sad4x.scala 92:89]
  wire [7:0] _io_sad_seq_6_T_29 = io_src_pix_4 >= io_pred6_4 ? _io_sad_seq_6_T_26 : _io_sad_seq_6_T_28; // @[sad4x.scala 92:71]
  wire [7:0] _io_sad_seq_6_T_32 = io_src_pix_5 - io_pred6_5; // @[sad4x.scala 92:82]
  wire [7:0] _io_sad_seq_6_T_34 = io_pred6_5 - io_src_pix_5; // @[sad4x.scala 92:89]
  wire [7:0] _io_sad_seq_6_T_35 = io_src_pix_5 >= io_pred6_5 ? _io_sad_seq_6_T_32 : _io_sad_seq_6_T_34; // @[sad4x.scala 92:71]
  wire [7:0] _io_sad_seq_6_T_38 = io_src_pix_6 - io_pred6_6; // @[sad4x.scala 92:82]
  wire [7:0] _io_sad_seq_6_T_40 = io_pred6_6 - io_src_pix_6; // @[sad4x.scala 92:89]
  wire [7:0] _io_sad_seq_6_T_41 = io_src_pix_6 >= io_pred6_6 ? _io_sad_seq_6_T_38 : _io_sad_seq_6_T_40; // @[sad4x.scala 92:71]
  wire [7:0] _io_sad_seq_6_T_44 = io_src_pix_7 - io_pred6_7; // @[sad4x.scala 92:82]
  wire [7:0] _io_sad_seq_6_T_46 = io_pred6_7 - io_src_pix_7; // @[sad4x.scala 92:89]
  wire [7:0] _io_sad_seq_6_T_47 = io_src_pix_7 >= io_pred6_7 ? _io_sad_seq_6_T_44 : _io_sad_seq_6_T_46; // @[sad4x.scala 92:71]
  wire [7:0] _io_sad_seq_6_T_50 = io_src_pix_8 - io_pred6_8; // @[sad4x.scala 92:82]
  wire [7:0] _io_sad_seq_6_T_52 = io_pred6_8 - io_src_pix_8; // @[sad4x.scala 92:89]
  wire [7:0] _io_sad_seq_6_T_53 = io_src_pix_8 >= io_pred6_8 ? _io_sad_seq_6_T_50 : _io_sad_seq_6_T_52; // @[sad4x.scala 92:71]
  wire [7:0] _io_sad_seq_6_T_56 = io_src_pix_9 - io_pred6_9; // @[sad4x.scala 92:82]
  wire [7:0] _io_sad_seq_6_T_58 = io_pred6_9 - io_src_pix_9; // @[sad4x.scala 92:89]
  wire [7:0] _io_sad_seq_6_T_59 = io_src_pix_9 >= io_pred6_9 ? _io_sad_seq_6_T_56 : _io_sad_seq_6_T_58; // @[sad4x.scala 92:71]
  wire [7:0] _io_sad_seq_6_T_62 = io_src_pix_10 - io_pred6_10; // @[sad4x.scala 92:82]
  wire [7:0] _io_sad_seq_6_T_64 = io_pred6_10 - io_src_pix_10; // @[sad4x.scala 92:89]
  wire [7:0] _io_sad_seq_6_T_65 = io_src_pix_10 >= io_pred6_10 ? _io_sad_seq_6_T_62 : _io_sad_seq_6_T_64; // @[sad4x.scala 92:71]
  wire [7:0] _io_sad_seq_6_T_68 = io_src_pix_11 - io_pred6_11; // @[sad4x.scala 92:82]
  wire [7:0] _io_sad_seq_6_T_70 = io_pred6_11 - io_src_pix_11; // @[sad4x.scala 92:89]
  wire [7:0] _io_sad_seq_6_T_71 = io_src_pix_11 >= io_pred6_11 ? _io_sad_seq_6_T_68 : _io_sad_seq_6_T_70; // @[sad4x.scala 92:71]
  wire [7:0] _io_sad_seq_6_T_74 = io_src_pix_12 - io_pred6_12; // @[sad4x.scala 92:82]
  wire [7:0] _io_sad_seq_6_T_76 = io_pred6_12 - io_src_pix_12; // @[sad4x.scala 92:89]
  wire [7:0] _io_sad_seq_6_T_77 = io_src_pix_12 >= io_pred6_12 ? _io_sad_seq_6_T_74 : _io_sad_seq_6_T_76; // @[sad4x.scala 92:71]
  wire [7:0] _io_sad_seq_6_T_80 = io_src_pix_13 - io_pred6_13; // @[sad4x.scala 92:82]
  wire [7:0] _io_sad_seq_6_T_82 = io_pred6_13 - io_src_pix_13; // @[sad4x.scala 92:89]
  wire [7:0] _io_sad_seq_6_T_83 = io_src_pix_13 >= io_pred6_13 ? _io_sad_seq_6_T_80 : _io_sad_seq_6_T_82; // @[sad4x.scala 92:71]
  wire [7:0] _io_sad_seq_6_T_86 = io_src_pix_14 - io_pred6_14; // @[sad4x.scala 92:82]
  wire [7:0] _io_sad_seq_6_T_88 = io_pred6_14 - io_src_pix_14; // @[sad4x.scala 92:89]
  wire [7:0] _io_sad_seq_6_T_89 = io_src_pix_14 >= io_pred6_14 ? _io_sad_seq_6_T_86 : _io_sad_seq_6_T_88; // @[sad4x.scala 92:71]
  wire [7:0] _io_sad_seq_6_T_92 = io_src_pix_15 - io_pred6_15; // @[sad4x.scala 92:82]
  wire [7:0] _io_sad_seq_6_T_94 = io_pred6_15 - io_src_pix_15; // @[sad4x.scala 92:89]
  wire [7:0] _io_sad_seq_6_T_95 = io_src_pix_15 >= io_pred6_15 ? _io_sad_seq_6_T_92 : _io_sad_seq_6_T_94; // @[sad4x.scala 92:71]
  wire [7:0] _io_sad_seq_6_T_97 = _io_sad_seq_6_T_5 + _io_sad_seq_6_T_11; // @[sad4x.scala 92:105]
  wire [7:0] _io_sad_seq_6_T_99 = _io_sad_seq_6_T_97 + _io_sad_seq_6_T_17; // @[sad4x.scala 92:105]
  wire [7:0] _io_sad_seq_6_T_101 = _io_sad_seq_6_T_99 + _io_sad_seq_6_T_23; // @[sad4x.scala 92:105]
  wire [7:0] _io_sad_seq_6_T_103 = _io_sad_seq_6_T_101 + _io_sad_seq_6_T_29; // @[sad4x.scala 92:105]
  wire [7:0] _io_sad_seq_6_T_105 = _io_sad_seq_6_T_103 + _io_sad_seq_6_T_35; // @[sad4x.scala 92:105]
  wire [7:0] _io_sad_seq_6_T_107 = _io_sad_seq_6_T_105 + _io_sad_seq_6_T_41; // @[sad4x.scala 92:105]
  wire [7:0] _io_sad_seq_6_T_109 = _io_sad_seq_6_T_107 + _io_sad_seq_6_T_47; // @[sad4x.scala 92:105]
  wire [7:0] _io_sad_seq_6_T_111 = _io_sad_seq_6_T_109 + _io_sad_seq_6_T_53; // @[sad4x.scala 92:105]
  wire [7:0] _io_sad_seq_6_T_113 = _io_sad_seq_6_T_111 + _io_sad_seq_6_T_59; // @[sad4x.scala 92:105]
  wire [7:0] _io_sad_seq_6_T_115 = _io_sad_seq_6_T_113 + _io_sad_seq_6_T_65; // @[sad4x.scala 92:105]
  wire [7:0] _io_sad_seq_6_T_117 = _io_sad_seq_6_T_115 + _io_sad_seq_6_T_71; // @[sad4x.scala 92:105]
  wire [7:0] _io_sad_seq_6_T_119 = _io_sad_seq_6_T_117 + _io_sad_seq_6_T_77; // @[sad4x.scala 92:105]
  wire [7:0] _io_sad_seq_6_T_121 = _io_sad_seq_6_T_119 + _io_sad_seq_6_T_83; // @[sad4x.scala 92:105]
  wire [7:0] _io_sad_seq_6_T_123 = _io_sad_seq_6_T_121 + _io_sad_seq_6_T_89; // @[sad4x.scala 92:105]
  wire [7:0] _io_sad_seq_6_T_125 = _io_sad_seq_6_T_123 + _io_sad_seq_6_T_95; // @[sad4x.scala 92:105]
  wire [7:0] _T_484 = $signed(io_src_pix_0) - $signed(io_pred6_0); // @[sad4x.scala 93:75]
  wire [7:0] _T_489 = $signed(io_src_pix_1) - $signed(io_pred6_1); // @[sad4x.scala 93:75]
  wire [7:0] _T_494 = $signed(io_src_pix_2) - $signed(io_pred6_2); // @[sad4x.scala 93:75]
  wire [7:0] _T_499 = $signed(io_src_pix_3) - $signed(io_pred6_3); // @[sad4x.scala 93:75]
  wire [7:0] _T_504 = $signed(io_src_pix_4) - $signed(io_pred6_4); // @[sad4x.scala 93:75]
  wire [7:0] _T_509 = $signed(io_src_pix_5) - $signed(io_pred6_5); // @[sad4x.scala 93:75]
  wire [7:0] _T_514 = $signed(io_src_pix_6) - $signed(io_pred6_6); // @[sad4x.scala 93:75]
  wire [7:0] _T_519 = $signed(io_src_pix_7) - $signed(io_pred6_7); // @[sad4x.scala 93:75]
  wire [7:0] _T_524 = $signed(io_src_pix_8) - $signed(io_pred6_8); // @[sad4x.scala 93:75]
  wire [7:0] _T_529 = $signed(io_src_pix_9) - $signed(io_pred6_9); // @[sad4x.scala 93:75]
  wire [7:0] _T_534 = $signed(io_src_pix_10) - $signed(io_pred6_10); // @[sad4x.scala 93:75]
  wire [7:0] _T_539 = $signed(io_src_pix_11) - $signed(io_pred6_11); // @[sad4x.scala 93:75]
  wire [7:0] _T_544 = $signed(io_src_pix_12) - $signed(io_pred6_12); // @[sad4x.scala 93:75]
  wire [7:0] _T_549 = $signed(io_src_pix_13) - $signed(io_pred6_13); // @[sad4x.scala 93:75]
  wire [7:0] _T_554 = $signed(io_src_pix_14) - $signed(io_pred6_14); // @[sad4x.scala 93:75]
  wire [7:0] _T_559 = $signed(io_src_pix_15) - $signed(io_pred6_15); // @[sad4x.scala 93:75]
  wire [7:0] _GEN_103 = io_valid_6 ? $signed(_T_484) : $signed(8'sh0); // @[sad4x.scala 91:21 93:14 97:19]
  wire [7:0] _GEN_104 = io_valid_6 ? $signed(_T_489) : $signed(8'sh0); // @[sad4x.scala 91:21 93:14 97:19]
  wire [7:0] _GEN_105 = io_valid_6 ? $signed(_T_494) : $signed(8'sh0); // @[sad4x.scala 91:21 93:14 97:19]
  wire [7:0] _GEN_106 = io_valid_6 ? $signed(_T_499) : $signed(8'sh0); // @[sad4x.scala 91:21 93:14 97:19]
  wire [7:0] _GEN_107 = io_valid_6 ? $signed(_T_504) : $signed(8'sh0); // @[sad4x.scala 91:21 93:14 97:19]
  wire [7:0] _GEN_108 = io_valid_6 ? $signed(_T_509) : $signed(8'sh0); // @[sad4x.scala 91:21 93:14 97:19]
  wire [7:0] _GEN_109 = io_valid_6 ? $signed(_T_514) : $signed(8'sh0); // @[sad4x.scala 91:21 93:14 97:19]
  wire [7:0] _GEN_110 = io_valid_6 ? $signed(_T_519) : $signed(8'sh0); // @[sad4x.scala 91:21 93:14 97:19]
  wire [7:0] _GEN_111 = io_valid_6 ? $signed(_T_524) : $signed(8'sh0); // @[sad4x.scala 91:21 93:14 97:19]
  wire [7:0] _GEN_112 = io_valid_6 ? $signed(_T_529) : $signed(8'sh0); // @[sad4x.scala 91:21 93:14 97:19]
  wire [7:0] _GEN_113 = io_valid_6 ? $signed(_T_534) : $signed(8'sh0); // @[sad4x.scala 91:21 93:14 97:19]
  wire [7:0] _GEN_114 = io_valid_6 ? $signed(_T_539) : $signed(8'sh0); // @[sad4x.scala 91:21 93:14 97:19]
  wire [7:0] _GEN_115 = io_valid_6 ? $signed(_T_544) : $signed(8'sh0); // @[sad4x.scala 91:21 93:14 97:19]
  wire [7:0] _GEN_116 = io_valid_6 ? $signed(_T_549) : $signed(8'sh0); // @[sad4x.scala 91:21 93:14 97:19]
  wire [7:0] _GEN_117 = io_valid_6 ? $signed(_T_554) : $signed(8'sh0); // @[sad4x.scala 91:21 93:14 97:19]
  wire [7:0] _GEN_118 = io_valid_6 ? $signed(_T_559) : $signed(8'sh0); // @[sad4x.scala 91:21 93:14 97:19]
  wire [7:0] _io_sad_seq_7_T_2 = io_src_pix_0 - io_pred7_0; // @[sad4x.scala 102:82]
  wire [7:0] _io_sad_seq_7_T_4 = io_pred7_0 - io_src_pix_0; // @[sad4x.scala 102:89]
  wire [7:0] _io_sad_seq_7_T_5 = io_src_pix_0 >= io_pred7_0 ? _io_sad_seq_7_T_2 : _io_sad_seq_7_T_4; // @[sad4x.scala 102:71]
  wire [7:0] _io_sad_seq_7_T_8 = io_src_pix_1 - io_pred7_1; // @[sad4x.scala 102:82]
  wire [7:0] _io_sad_seq_7_T_10 = io_pred7_1 - io_src_pix_1; // @[sad4x.scala 102:89]
  wire [7:0] _io_sad_seq_7_T_11 = io_src_pix_1 >= io_pred7_1 ? _io_sad_seq_7_T_8 : _io_sad_seq_7_T_10; // @[sad4x.scala 102:71]
  wire [7:0] _io_sad_seq_7_T_14 = io_src_pix_2 - io_pred7_2; // @[sad4x.scala 102:82]
  wire [7:0] _io_sad_seq_7_T_16 = io_pred7_2 - io_src_pix_2; // @[sad4x.scala 102:89]
  wire [7:0] _io_sad_seq_7_T_17 = io_src_pix_2 >= io_pred7_2 ? _io_sad_seq_7_T_14 : _io_sad_seq_7_T_16; // @[sad4x.scala 102:71]
  wire [7:0] _io_sad_seq_7_T_20 = io_src_pix_3 - io_pred7_3; // @[sad4x.scala 102:82]
  wire [7:0] _io_sad_seq_7_T_22 = io_pred7_3 - io_src_pix_3; // @[sad4x.scala 102:89]
  wire [7:0] _io_sad_seq_7_T_23 = io_src_pix_3 >= io_pred7_3 ? _io_sad_seq_7_T_20 : _io_sad_seq_7_T_22; // @[sad4x.scala 102:71]
  wire [7:0] _io_sad_seq_7_T_26 = io_src_pix_4 - io_pred7_4; // @[sad4x.scala 102:82]
  wire [7:0] _io_sad_seq_7_T_28 = io_pred7_4 - io_src_pix_4; // @[sad4x.scala 102:89]
  wire [7:0] _io_sad_seq_7_T_29 = io_src_pix_4 >= io_pred7_4 ? _io_sad_seq_7_T_26 : _io_sad_seq_7_T_28; // @[sad4x.scala 102:71]
  wire [7:0] _io_sad_seq_7_T_32 = io_src_pix_5 - io_pred7_5; // @[sad4x.scala 102:82]
  wire [7:0] _io_sad_seq_7_T_34 = io_pred7_5 - io_src_pix_5; // @[sad4x.scala 102:89]
  wire [7:0] _io_sad_seq_7_T_35 = io_src_pix_5 >= io_pred7_5 ? _io_sad_seq_7_T_32 : _io_sad_seq_7_T_34; // @[sad4x.scala 102:71]
  wire [7:0] _io_sad_seq_7_T_38 = io_src_pix_6 - io_pred7_6; // @[sad4x.scala 102:82]
  wire [7:0] _io_sad_seq_7_T_40 = io_pred7_6 - io_src_pix_6; // @[sad4x.scala 102:89]
  wire [7:0] _io_sad_seq_7_T_41 = io_src_pix_6 >= io_pred7_6 ? _io_sad_seq_7_T_38 : _io_sad_seq_7_T_40; // @[sad4x.scala 102:71]
  wire [7:0] _io_sad_seq_7_T_44 = io_src_pix_7 - io_pred7_7; // @[sad4x.scala 102:82]
  wire [7:0] _io_sad_seq_7_T_46 = io_pred7_7 - io_src_pix_7; // @[sad4x.scala 102:89]
  wire [7:0] _io_sad_seq_7_T_47 = io_src_pix_7 >= io_pred7_7 ? _io_sad_seq_7_T_44 : _io_sad_seq_7_T_46; // @[sad4x.scala 102:71]
  wire [7:0] _io_sad_seq_7_T_50 = io_src_pix_8 - io_pred7_8; // @[sad4x.scala 102:82]
  wire [7:0] _io_sad_seq_7_T_52 = io_pred7_8 - io_src_pix_8; // @[sad4x.scala 102:89]
  wire [7:0] _io_sad_seq_7_T_53 = io_src_pix_8 >= io_pred7_8 ? _io_sad_seq_7_T_50 : _io_sad_seq_7_T_52; // @[sad4x.scala 102:71]
  wire [7:0] _io_sad_seq_7_T_56 = io_src_pix_9 - io_pred7_9; // @[sad4x.scala 102:82]
  wire [7:0] _io_sad_seq_7_T_58 = io_pred7_9 - io_src_pix_9; // @[sad4x.scala 102:89]
  wire [7:0] _io_sad_seq_7_T_59 = io_src_pix_9 >= io_pred7_9 ? _io_sad_seq_7_T_56 : _io_sad_seq_7_T_58; // @[sad4x.scala 102:71]
  wire [7:0] _io_sad_seq_7_T_62 = io_src_pix_10 - io_pred7_10; // @[sad4x.scala 102:82]
  wire [7:0] _io_sad_seq_7_T_64 = io_pred7_10 - io_src_pix_10; // @[sad4x.scala 102:89]
  wire [7:0] _io_sad_seq_7_T_65 = io_src_pix_10 >= io_pred7_10 ? _io_sad_seq_7_T_62 : _io_sad_seq_7_T_64; // @[sad4x.scala 102:71]
  wire [7:0] _io_sad_seq_7_T_68 = io_src_pix_11 - io_pred7_11; // @[sad4x.scala 102:82]
  wire [7:0] _io_sad_seq_7_T_70 = io_pred7_11 - io_src_pix_11; // @[sad4x.scala 102:89]
  wire [7:0] _io_sad_seq_7_T_71 = io_src_pix_11 >= io_pred7_11 ? _io_sad_seq_7_T_68 : _io_sad_seq_7_T_70; // @[sad4x.scala 102:71]
  wire [7:0] _io_sad_seq_7_T_74 = io_src_pix_12 - io_pred7_12; // @[sad4x.scala 102:82]
  wire [7:0] _io_sad_seq_7_T_76 = io_pred7_12 - io_src_pix_12; // @[sad4x.scala 102:89]
  wire [7:0] _io_sad_seq_7_T_77 = io_src_pix_12 >= io_pred7_12 ? _io_sad_seq_7_T_74 : _io_sad_seq_7_T_76; // @[sad4x.scala 102:71]
  wire [7:0] _io_sad_seq_7_T_80 = io_src_pix_13 - io_pred7_13; // @[sad4x.scala 102:82]
  wire [7:0] _io_sad_seq_7_T_82 = io_pred7_13 - io_src_pix_13; // @[sad4x.scala 102:89]
  wire [7:0] _io_sad_seq_7_T_83 = io_src_pix_13 >= io_pred7_13 ? _io_sad_seq_7_T_80 : _io_sad_seq_7_T_82; // @[sad4x.scala 102:71]
  wire [7:0] _io_sad_seq_7_T_86 = io_src_pix_14 - io_pred7_14; // @[sad4x.scala 102:82]
  wire [7:0] _io_sad_seq_7_T_88 = io_pred7_14 - io_src_pix_14; // @[sad4x.scala 102:89]
  wire [7:0] _io_sad_seq_7_T_89 = io_src_pix_14 >= io_pred7_14 ? _io_sad_seq_7_T_86 : _io_sad_seq_7_T_88; // @[sad4x.scala 102:71]
  wire [7:0] _io_sad_seq_7_T_92 = io_src_pix_15 - io_pred7_15; // @[sad4x.scala 102:82]
  wire [7:0] _io_sad_seq_7_T_94 = io_pred7_15 - io_src_pix_15; // @[sad4x.scala 102:89]
  wire [7:0] _io_sad_seq_7_T_95 = io_src_pix_15 >= io_pred7_15 ? _io_sad_seq_7_T_92 : _io_sad_seq_7_T_94; // @[sad4x.scala 102:71]
  wire [7:0] _io_sad_seq_7_T_97 = _io_sad_seq_7_T_5 + _io_sad_seq_7_T_11; // @[sad4x.scala 102:105]
  wire [7:0] _io_sad_seq_7_T_99 = _io_sad_seq_7_T_97 + _io_sad_seq_7_T_17; // @[sad4x.scala 102:105]
  wire [7:0] _io_sad_seq_7_T_101 = _io_sad_seq_7_T_99 + _io_sad_seq_7_T_23; // @[sad4x.scala 102:105]
  wire [7:0] _io_sad_seq_7_T_103 = _io_sad_seq_7_T_101 + _io_sad_seq_7_T_29; // @[sad4x.scala 102:105]
  wire [7:0] _io_sad_seq_7_T_105 = _io_sad_seq_7_T_103 + _io_sad_seq_7_T_35; // @[sad4x.scala 102:105]
  wire [7:0] _io_sad_seq_7_T_107 = _io_sad_seq_7_T_105 + _io_sad_seq_7_T_41; // @[sad4x.scala 102:105]
  wire [7:0] _io_sad_seq_7_T_109 = _io_sad_seq_7_T_107 + _io_sad_seq_7_T_47; // @[sad4x.scala 102:105]
  wire [7:0] _io_sad_seq_7_T_111 = _io_sad_seq_7_T_109 + _io_sad_seq_7_T_53; // @[sad4x.scala 102:105]
  wire [7:0] _io_sad_seq_7_T_113 = _io_sad_seq_7_T_111 + _io_sad_seq_7_T_59; // @[sad4x.scala 102:105]
  wire [7:0] _io_sad_seq_7_T_115 = _io_sad_seq_7_T_113 + _io_sad_seq_7_T_65; // @[sad4x.scala 102:105]
  wire [7:0] _io_sad_seq_7_T_117 = _io_sad_seq_7_T_115 + _io_sad_seq_7_T_71; // @[sad4x.scala 102:105]
  wire [7:0] _io_sad_seq_7_T_119 = _io_sad_seq_7_T_117 + _io_sad_seq_7_T_77; // @[sad4x.scala 102:105]
  wire [7:0] _io_sad_seq_7_T_121 = _io_sad_seq_7_T_119 + _io_sad_seq_7_T_83; // @[sad4x.scala 102:105]
  wire [7:0] _io_sad_seq_7_T_123 = _io_sad_seq_7_T_121 + _io_sad_seq_7_T_89; // @[sad4x.scala 102:105]
  wire [7:0] _io_sad_seq_7_T_125 = _io_sad_seq_7_T_123 + _io_sad_seq_7_T_95; // @[sad4x.scala 102:105]
  wire [7:0] _T_564 = $signed(io_src_pix_0) - $signed(io_pred7_0); // @[sad4x.scala 103:75]
  wire [7:0] _T_569 = $signed(io_src_pix_1) - $signed(io_pred7_1); // @[sad4x.scala 103:75]
  wire [7:0] _T_574 = $signed(io_src_pix_2) - $signed(io_pred7_2); // @[sad4x.scala 103:75]
  wire [7:0] _T_579 = $signed(io_src_pix_3) - $signed(io_pred7_3); // @[sad4x.scala 103:75]
  wire [7:0] _T_584 = $signed(io_src_pix_4) - $signed(io_pred7_4); // @[sad4x.scala 103:75]
  wire [7:0] _T_589 = $signed(io_src_pix_5) - $signed(io_pred7_5); // @[sad4x.scala 103:75]
  wire [7:0] _T_594 = $signed(io_src_pix_6) - $signed(io_pred7_6); // @[sad4x.scala 103:75]
  wire [7:0] _T_599 = $signed(io_src_pix_7) - $signed(io_pred7_7); // @[sad4x.scala 103:75]
  wire [7:0] _T_604 = $signed(io_src_pix_8) - $signed(io_pred7_8); // @[sad4x.scala 103:75]
  wire [7:0] _T_609 = $signed(io_src_pix_9) - $signed(io_pred7_9); // @[sad4x.scala 103:75]
  wire [7:0] _T_614 = $signed(io_src_pix_10) - $signed(io_pred7_10); // @[sad4x.scala 103:75]
  wire [7:0] _T_619 = $signed(io_src_pix_11) - $signed(io_pred7_11); // @[sad4x.scala 103:75]
  wire [7:0] _T_624 = $signed(io_src_pix_12) - $signed(io_pred7_12); // @[sad4x.scala 103:75]
  wire [7:0] _T_629 = $signed(io_src_pix_13) - $signed(io_pred7_13); // @[sad4x.scala 103:75]
  wire [7:0] _T_634 = $signed(io_src_pix_14) - $signed(io_pred7_14); // @[sad4x.scala 103:75]
  wire [7:0] _T_639 = $signed(io_src_pix_15) - $signed(io_pred7_15); // @[sad4x.scala 103:75]
  wire [7:0] _GEN_120 = io_valid_7 ? $signed(_T_564) : $signed(8'sh0); // @[sad4x.scala 101:21 103:14 107:19]
  wire [7:0] _GEN_121 = io_valid_7 ? $signed(_T_569) : $signed(8'sh0); // @[sad4x.scala 101:21 103:14 107:19]
  wire [7:0] _GEN_122 = io_valid_7 ? $signed(_T_574) : $signed(8'sh0); // @[sad4x.scala 101:21 103:14 107:19]
  wire [7:0] _GEN_123 = io_valid_7 ? $signed(_T_579) : $signed(8'sh0); // @[sad4x.scala 101:21 103:14 107:19]
  wire [7:0] _GEN_124 = io_valid_7 ? $signed(_T_584) : $signed(8'sh0); // @[sad4x.scala 101:21 103:14 107:19]
  wire [7:0] _GEN_125 = io_valid_7 ? $signed(_T_589) : $signed(8'sh0); // @[sad4x.scala 101:21 103:14 107:19]
  wire [7:0] _GEN_126 = io_valid_7 ? $signed(_T_594) : $signed(8'sh0); // @[sad4x.scala 101:21 103:14 107:19]
  wire [7:0] _GEN_127 = io_valid_7 ? $signed(_T_599) : $signed(8'sh0); // @[sad4x.scala 101:21 103:14 107:19]
  wire [7:0] _GEN_128 = io_valid_7 ? $signed(_T_604) : $signed(8'sh0); // @[sad4x.scala 101:21 103:14 107:19]
  wire [7:0] _GEN_129 = io_valid_7 ? $signed(_T_609) : $signed(8'sh0); // @[sad4x.scala 101:21 103:14 107:19]
  wire [7:0] _GEN_130 = io_valid_7 ? $signed(_T_614) : $signed(8'sh0); // @[sad4x.scala 101:21 103:14 107:19]
  wire [7:0] _GEN_131 = io_valid_7 ? $signed(_T_619) : $signed(8'sh0); // @[sad4x.scala 101:21 103:14 107:19]
  wire [7:0] _GEN_132 = io_valid_7 ? $signed(_T_624) : $signed(8'sh0); // @[sad4x.scala 101:21 103:14 107:19]
  wire [7:0] _GEN_133 = io_valid_7 ? $signed(_T_629) : $signed(8'sh0); // @[sad4x.scala 101:21 103:14 107:19]
  wire [7:0] _GEN_134 = io_valid_7 ? $signed(_T_634) : $signed(8'sh0); // @[sad4x.scala 101:21 103:14 107:19]
  wire [7:0] _GEN_135 = io_valid_7 ? $signed(_T_639) : $signed(8'sh0); // @[sad4x.scala 101:21 103:14 107:19]
  wire [7:0] _io_sad_seq_8_T_2 = io_src_pix_0 - io_pred8_0; // @[sad4x.scala 112:82]
  wire [7:0] _io_sad_seq_8_T_4 = io_pred8_0 - io_src_pix_0; // @[sad4x.scala 112:89]
  wire [7:0] _io_sad_seq_8_T_5 = io_src_pix_0 >= io_pred8_0 ? _io_sad_seq_8_T_2 : _io_sad_seq_8_T_4; // @[sad4x.scala 112:71]
  wire [7:0] _io_sad_seq_8_T_8 = io_src_pix_1 - io_pred8_1; // @[sad4x.scala 112:82]
  wire [7:0] _io_sad_seq_8_T_10 = io_pred8_1 - io_src_pix_1; // @[sad4x.scala 112:89]
  wire [7:0] _io_sad_seq_8_T_11 = io_src_pix_1 >= io_pred8_1 ? _io_sad_seq_8_T_8 : _io_sad_seq_8_T_10; // @[sad4x.scala 112:71]
  wire [7:0] _io_sad_seq_8_T_14 = io_src_pix_2 - io_pred8_2; // @[sad4x.scala 112:82]
  wire [7:0] _io_sad_seq_8_T_16 = io_pred8_2 - io_src_pix_2; // @[sad4x.scala 112:89]
  wire [7:0] _io_sad_seq_8_T_17 = io_src_pix_2 >= io_pred8_2 ? _io_sad_seq_8_T_14 : _io_sad_seq_8_T_16; // @[sad4x.scala 112:71]
  wire [7:0] _io_sad_seq_8_T_20 = io_src_pix_3 - io_pred8_3; // @[sad4x.scala 112:82]
  wire [7:0] _io_sad_seq_8_T_22 = io_pred8_3 - io_src_pix_3; // @[sad4x.scala 112:89]
  wire [7:0] _io_sad_seq_8_T_23 = io_src_pix_3 >= io_pred8_3 ? _io_sad_seq_8_T_20 : _io_sad_seq_8_T_22; // @[sad4x.scala 112:71]
  wire [7:0] _io_sad_seq_8_T_26 = io_src_pix_4 - io_pred8_4; // @[sad4x.scala 112:82]
  wire [7:0] _io_sad_seq_8_T_28 = io_pred8_4 - io_src_pix_4; // @[sad4x.scala 112:89]
  wire [7:0] _io_sad_seq_8_T_29 = io_src_pix_4 >= io_pred8_4 ? _io_sad_seq_8_T_26 : _io_sad_seq_8_T_28; // @[sad4x.scala 112:71]
  wire [7:0] _io_sad_seq_8_T_32 = io_src_pix_5 - io_pred8_5; // @[sad4x.scala 112:82]
  wire [7:0] _io_sad_seq_8_T_34 = io_pred8_5 - io_src_pix_5; // @[sad4x.scala 112:89]
  wire [7:0] _io_sad_seq_8_T_35 = io_src_pix_5 >= io_pred8_5 ? _io_sad_seq_8_T_32 : _io_sad_seq_8_T_34; // @[sad4x.scala 112:71]
  wire [7:0] _io_sad_seq_8_T_38 = io_src_pix_6 - io_pred8_6; // @[sad4x.scala 112:82]
  wire [7:0] _io_sad_seq_8_T_40 = io_pred8_6 - io_src_pix_6; // @[sad4x.scala 112:89]
  wire [7:0] _io_sad_seq_8_T_41 = io_src_pix_6 >= io_pred8_6 ? _io_sad_seq_8_T_38 : _io_sad_seq_8_T_40; // @[sad4x.scala 112:71]
  wire [7:0] _io_sad_seq_8_T_44 = io_src_pix_7 - io_pred8_7; // @[sad4x.scala 112:82]
  wire [7:0] _io_sad_seq_8_T_46 = io_pred8_7 - io_src_pix_7; // @[sad4x.scala 112:89]
  wire [7:0] _io_sad_seq_8_T_47 = io_src_pix_7 >= io_pred8_7 ? _io_sad_seq_8_T_44 : _io_sad_seq_8_T_46; // @[sad4x.scala 112:71]
  wire [7:0] _io_sad_seq_8_T_50 = io_src_pix_8 - io_pred8_8; // @[sad4x.scala 112:82]
  wire [7:0] _io_sad_seq_8_T_52 = io_pred8_8 - io_src_pix_8; // @[sad4x.scala 112:89]
  wire [7:0] _io_sad_seq_8_T_53 = io_src_pix_8 >= io_pred8_8 ? _io_sad_seq_8_T_50 : _io_sad_seq_8_T_52; // @[sad4x.scala 112:71]
  wire [7:0] _io_sad_seq_8_T_56 = io_src_pix_9 - io_pred8_9; // @[sad4x.scala 112:82]
  wire [7:0] _io_sad_seq_8_T_58 = io_pred8_9 - io_src_pix_9; // @[sad4x.scala 112:89]
  wire [7:0] _io_sad_seq_8_T_59 = io_src_pix_9 >= io_pred8_9 ? _io_sad_seq_8_T_56 : _io_sad_seq_8_T_58; // @[sad4x.scala 112:71]
  wire [7:0] _io_sad_seq_8_T_62 = io_src_pix_10 - io_pred8_10; // @[sad4x.scala 112:82]
  wire [7:0] _io_sad_seq_8_T_64 = io_pred8_10 - io_src_pix_10; // @[sad4x.scala 112:89]
  wire [7:0] _io_sad_seq_8_T_65 = io_src_pix_10 >= io_pred8_10 ? _io_sad_seq_8_T_62 : _io_sad_seq_8_T_64; // @[sad4x.scala 112:71]
  wire [7:0] _io_sad_seq_8_T_68 = io_src_pix_11 - io_pred8_11; // @[sad4x.scala 112:82]
  wire [7:0] _io_sad_seq_8_T_70 = io_pred8_11 - io_src_pix_11; // @[sad4x.scala 112:89]
  wire [7:0] _io_sad_seq_8_T_71 = io_src_pix_11 >= io_pred8_11 ? _io_sad_seq_8_T_68 : _io_sad_seq_8_T_70; // @[sad4x.scala 112:71]
  wire [7:0] _io_sad_seq_8_T_74 = io_src_pix_12 - io_pred8_12; // @[sad4x.scala 112:82]
  wire [7:0] _io_sad_seq_8_T_76 = io_pred8_12 - io_src_pix_12; // @[sad4x.scala 112:89]
  wire [7:0] _io_sad_seq_8_T_77 = io_src_pix_12 >= io_pred8_12 ? _io_sad_seq_8_T_74 : _io_sad_seq_8_T_76; // @[sad4x.scala 112:71]
  wire [7:0] _io_sad_seq_8_T_80 = io_src_pix_13 - io_pred8_13; // @[sad4x.scala 112:82]
  wire [7:0] _io_sad_seq_8_T_82 = io_pred8_13 - io_src_pix_13; // @[sad4x.scala 112:89]
  wire [7:0] _io_sad_seq_8_T_83 = io_src_pix_13 >= io_pred8_13 ? _io_sad_seq_8_T_80 : _io_sad_seq_8_T_82; // @[sad4x.scala 112:71]
  wire [7:0] _io_sad_seq_8_T_86 = io_src_pix_14 - io_pred8_14; // @[sad4x.scala 112:82]
  wire [7:0] _io_sad_seq_8_T_88 = io_pred8_14 - io_src_pix_14; // @[sad4x.scala 112:89]
  wire [7:0] _io_sad_seq_8_T_89 = io_src_pix_14 >= io_pred8_14 ? _io_sad_seq_8_T_86 : _io_sad_seq_8_T_88; // @[sad4x.scala 112:71]
  wire [7:0] _io_sad_seq_8_T_92 = io_src_pix_15 - io_pred8_15; // @[sad4x.scala 112:82]
  wire [7:0] _io_sad_seq_8_T_94 = io_pred8_15 - io_src_pix_15; // @[sad4x.scala 112:89]
  wire [7:0] _io_sad_seq_8_T_95 = io_src_pix_15 >= io_pred8_15 ? _io_sad_seq_8_T_92 : _io_sad_seq_8_T_94; // @[sad4x.scala 112:71]
  wire [7:0] _io_sad_seq_8_T_97 = _io_sad_seq_8_T_5 + _io_sad_seq_8_T_11; // @[sad4x.scala 112:105]
  wire [7:0] _io_sad_seq_8_T_99 = _io_sad_seq_8_T_97 + _io_sad_seq_8_T_17; // @[sad4x.scala 112:105]
  wire [7:0] _io_sad_seq_8_T_101 = _io_sad_seq_8_T_99 + _io_sad_seq_8_T_23; // @[sad4x.scala 112:105]
  wire [7:0] _io_sad_seq_8_T_103 = _io_sad_seq_8_T_101 + _io_sad_seq_8_T_29; // @[sad4x.scala 112:105]
  wire [7:0] _io_sad_seq_8_T_105 = _io_sad_seq_8_T_103 + _io_sad_seq_8_T_35; // @[sad4x.scala 112:105]
  wire [7:0] _io_sad_seq_8_T_107 = _io_sad_seq_8_T_105 + _io_sad_seq_8_T_41; // @[sad4x.scala 112:105]
  wire [7:0] _io_sad_seq_8_T_109 = _io_sad_seq_8_T_107 + _io_sad_seq_8_T_47; // @[sad4x.scala 112:105]
  wire [7:0] _io_sad_seq_8_T_111 = _io_sad_seq_8_T_109 + _io_sad_seq_8_T_53; // @[sad4x.scala 112:105]
  wire [7:0] _io_sad_seq_8_T_113 = _io_sad_seq_8_T_111 + _io_sad_seq_8_T_59; // @[sad4x.scala 112:105]
  wire [7:0] _io_sad_seq_8_T_115 = _io_sad_seq_8_T_113 + _io_sad_seq_8_T_65; // @[sad4x.scala 112:105]
  wire [7:0] _io_sad_seq_8_T_117 = _io_sad_seq_8_T_115 + _io_sad_seq_8_T_71; // @[sad4x.scala 112:105]
  wire [7:0] _io_sad_seq_8_T_119 = _io_sad_seq_8_T_117 + _io_sad_seq_8_T_77; // @[sad4x.scala 112:105]
  wire [7:0] _io_sad_seq_8_T_121 = _io_sad_seq_8_T_119 + _io_sad_seq_8_T_83; // @[sad4x.scala 112:105]
  wire [7:0] _io_sad_seq_8_T_123 = _io_sad_seq_8_T_121 + _io_sad_seq_8_T_89; // @[sad4x.scala 112:105]
  wire [7:0] _io_sad_seq_8_T_125 = _io_sad_seq_8_T_123 + _io_sad_seq_8_T_95; // @[sad4x.scala 112:105]
  wire [7:0] _T_644 = $signed(io_src_pix_0) - $signed(io_pred8_0); // @[sad4x.scala 113:75]
  wire [7:0] _T_649 = $signed(io_src_pix_1) - $signed(io_pred8_1); // @[sad4x.scala 113:75]
  wire [7:0] _T_654 = $signed(io_src_pix_2) - $signed(io_pred8_2); // @[sad4x.scala 113:75]
  wire [7:0] _T_659 = $signed(io_src_pix_3) - $signed(io_pred8_3); // @[sad4x.scala 113:75]
  wire [7:0] _T_664 = $signed(io_src_pix_4) - $signed(io_pred8_4); // @[sad4x.scala 113:75]
  wire [7:0] _T_669 = $signed(io_src_pix_5) - $signed(io_pred8_5); // @[sad4x.scala 113:75]
  wire [7:0] _T_674 = $signed(io_src_pix_6) - $signed(io_pred8_6); // @[sad4x.scala 113:75]
  wire [7:0] _T_679 = $signed(io_src_pix_7) - $signed(io_pred8_7); // @[sad4x.scala 113:75]
  wire [7:0] _T_684 = $signed(io_src_pix_8) - $signed(io_pred8_8); // @[sad4x.scala 113:75]
  wire [7:0] _T_689 = $signed(io_src_pix_9) - $signed(io_pred8_9); // @[sad4x.scala 113:75]
  wire [7:0] _T_694 = $signed(io_src_pix_10) - $signed(io_pred8_10); // @[sad4x.scala 113:75]
  wire [7:0] _T_699 = $signed(io_src_pix_11) - $signed(io_pred8_11); // @[sad4x.scala 113:75]
  wire [7:0] _T_704 = $signed(io_src_pix_12) - $signed(io_pred8_12); // @[sad4x.scala 113:75]
  wire [7:0] _T_709 = $signed(io_src_pix_13) - $signed(io_pred8_13); // @[sad4x.scala 113:75]
  wire [7:0] _T_714 = $signed(io_src_pix_14) - $signed(io_pred8_14); // @[sad4x.scala 113:75]
  wire [7:0] _T_719 = $signed(io_src_pix_15) - $signed(io_pred8_15); // @[sad4x.scala 113:75]
  wire [7:0] _GEN_137 = io_valid_8 ? $signed(_T_644) : $signed(8'sh0); // @[sad4x.scala 111:21 113:14 117:19]
  wire [7:0] _GEN_138 = io_valid_8 ? $signed(_T_649) : $signed(8'sh0); // @[sad4x.scala 111:21 113:14 117:19]
  wire [7:0] _GEN_139 = io_valid_8 ? $signed(_T_654) : $signed(8'sh0); // @[sad4x.scala 111:21 113:14 117:19]
  wire [7:0] _GEN_140 = io_valid_8 ? $signed(_T_659) : $signed(8'sh0); // @[sad4x.scala 111:21 113:14 117:19]
  wire [7:0] _GEN_141 = io_valid_8 ? $signed(_T_664) : $signed(8'sh0); // @[sad4x.scala 111:21 113:14 117:19]
  wire [7:0] _GEN_142 = io_valid_8 ? $signed(_T_669) : $signed(8'sh0); // @[sad4x.scala 111:21 113:14 117:19]
  wire [7:0] _GEN_143 = io_valid_8 ? $signed(_T_674) : $signed(8'sh0); // @[sad4x.scala 111:21 113:14 117:19]
  wire [7:0] _GEN_144 = io_valid_8 ? $signed(_T_679) : $signed(8'sh0); // @[sad4x.scala 111:21 113:14 117:19]
  wire [7:0] _GEN_145 = io_valid_8 ? $signed(_T_684) : $signed(8'sh0); // @[sad4x.scala 111:21 113:14 117:19]
  wire [7:0] _GEN_146 = io_valid_8 ? $signed(_T_689) : $signed(8'sh0); // @[sad4x.scala 111:21 113:14 117:19]
  wire [7:0] _GEN_147 = io_valid_8 ? $signed(_T_694) : $signed(8'sh0); // @[sad4x.scala 111:21 113:14 117:19]
  wire [7:0] _GEN_148 = io_valid_8 ? $signed(_T_699) : $signed(8'sh0); // @[sad4x.scala 111:21 113:14 117:19]
  wire [7:0] _GEN_149 = io_valid_8 ? $signed(_T_704) : $signed(8'sh0); // @[sad4x.scala 111:21 113:14 117:19]
  wire [7:0] _GEN_150 = io_valid_8 ? $signed(_T_709) : $signed(8'sh0); // @[sad4x.scala 111:21 113:14 117:19]
  wire [7:0] _GEN_151 = io_valid_8 ? $signed(_T_714) : $signed(8'sh0); // @[sad4x.scala 111:21 113:14 117:19]
  wire [7:0] _GEN_152 = io_valid_8 ? $signed(_T_719) : $signed(8'sh0); // @[sad4x.scala 111:21 113:14 117:19]
  assign io_sad_seq_0 = io_valid_0 ? {{4'd0}, _io_sad_seq_0_T_125} : 12'hfff; // @[sad4x.scala 31:21 32:19 35:19]
  assign io_sad_seq_1 = io_valid_1 ? {{4'd0}, _io_sad_seq_1_T_125} : 12'hfff; // @[sad4x.scala 41:21 42:19 45:19]
  assign io_sad_seq_2 = io_valid_2 ? {{4'd0}, _io_sad_seq_2_T_125} : 12'hfff; // @[sad4x.scala 51:21 52:19 55:19]
  assign io_sad_seq_3 = io_valid_3 ? {{4'd0}, _io_sad_seq_3_T_125} : 12'hfff; // @[sad4x.scala 61:21 62:19 65:19]
  assign io_sad_seq_4 = io_valid_4 ? {{4'd0}, _io_sad_seq_4_T_125} : 12'hfff; // @[sad4x.scala 71:21 72:19 75:19]
  assign io_sad_seq_5 = io_valid_5 ? {{4'd0}, _io_sad_seq_5_T_125} : 12'hfff; // @[sad4x.scala 81:21 82:19 85:19]
  assign io_sad_seq_6 = io_valid_6 ? {{4'd0}, _io_sad_seq_6_T_125} : 12'hfff; // @[sad4x.scala 91:21 92:19 95:19]
  assign io_sad_seq_7 = io_valid_7 ? {{4'd0}, _io_sad_seq_7_T_125} : 12'hfff; // @[sad4x.scala 101:21 102:19 105:19]
  assign io_sad_seq_8 = io_valid_8 ? {{4'd0}, _io_sad_seq_8_T_125} : 12'hfff; // @[sad4x.scala 111:21 112:19 115:19]
  assign io_diff0_0 = {{1{_GEN_1[7]}},_GEN_1};
  assign io_diff0_1 = {{1{_GEN_2[7]}},_GEN_2};
  assign io_diff0_2 = {{1{_GEN_3[7]}},_GEN_3};
  assign io_diff0_3 = {{1{_GEN_4[7]}},_GEN_4};
  assign io_diff0_4 = {{1{_GEN_5[7]}},_GEN_5};
  assign io_diff0_5 = {{1{_GEN_6[7]}},_GEN_6};
  assign io_diff0_6 = {{1{_GEN_7[7]}},_GEN_7};
  assign io_diff0_7 = {{1{_GEN_8[7]}},_GEN_8};
  assign io_diff0_8 = {{1{_GEN_9[7]}},_GEN_9};
  assign io_diff0_9 = {{1{_GEN_10[7]}},_GEN_10};
  assign io_diff0_10 = {{1{_GEN_11[7]}},_GEN_11};
  assign io_diff0_11 = {{1{_GEN_12[7]}},_GEN_12};
  assign io_diff0_12 = {{1{_GEN_13[7]}},_GEN_13};
  assign io_diff0_13 = {{1{_GEN_14[7]}},_GEN_14};
  assign io_diff0_14 = {{1{_GEN_15[7]}},_GEN_15};
  assign io_diff0_15 = {{1{_GEN_16[7]}},_GEN_16};
  assign io_diff1_0 = {{1{_GEN_18[7]}},_GEN_18};
  assign io_diff1_1 = {{1{_GEN_19[7]}},_GEN_19};
  assign io_diff1_2 = {{1{_GEN_20[7]}},_GEN_20};
  assign io_diff1_3 = {{1{_GEN_21[7]}},_GEN_21};
  assign io_diff1_4 = {{1{_GEN_22[7]}},_GEN_22};
  assign io_diff1_5 = {{1{_GEN_23[7]}},_GEN_23};
  assign io_diff1_6 = {{1{_GEN_24[7]}},_GEN_24};
  assign io_diff1_7 = {{1{_GEN_25[7]}},_GEN_25};
  assign io_diff1_8 = {{1{_GEN_26[7]}},_GEN_26};
  assign io_diff1_9 = {{1{_GEN_27[7]}},_GEN_27};
  assign io_diff1_10 = {{1{_GEN_28[7]}},_GEN_28};
  assign io_diff1_11 = {{1{_GEN_29[7]}},_GEN_29};
  assign io_diff1_12 = {{1{_GEN_30[7]}},_GEN_30};
  assign io_diff1_13 = {{1{_GEN_31[7]}},_GEN_31};
  assign io_diff1_14 = {{1{_GEN_32[7]}},_GEN_32};
  assign io_diff1_15 = {{1{_GEN_33[7]}},_GEN_33};
  assign io_diff2_0 = {{1{_GEN_35[7]}},_GEN_35};
  assign io_diff2_1 = {{1{_GEN_36[7]}},_GEN_36};
  assign io_diff2_2 = {{1{_GEN_37[7]}},_GEN_37};
  assign io_diff2_3 = {{1{_GEN_38[7]}},_GEN_38};
  assign io_diff2_4 = {{1{_GEN_39[7]}},_GEN_39};
  assign io_diff2_5 = {{1{_GEN_40[7]}},_GEN_40};
  assign io_diff2_6 = {{1{_GEN_41[7]}},_GEN_41};
  assign io_diff2_7 = {{1{_GEN_42[7]}},_GEN_42};
  assign io_diff2_8 = {{1{_GEN_43[7]}},_GEN_43};
  assign io_diff2_9 = {{1{_GEN_44[7]}},_GEN_44};
  assign io_diff2_10 = {{1{_GEN_45[7]}},_GEN_45};
  assign io_diff2_11 = {{1{_GEN_46[7]}},_GEN_46};
  assign io_diff2_12 = {{1{_GEN_47[7]}},_GEN_47};
  assign io_diff2_13 = {{1{_GEN_48[7]}},_GEN_48};
  assign io_diff2_14 = {{1{_GEN_49[7]}},_GEN_49};
  assign io_diff2_15 = {{1{_GEN_50[7]}},_GEN_50};
  assign io_diff3_0 = {{1{_GEN_52[7]}},_GEN_52};
  assign io_diff3_1 = {{1{_GEN_53[7]}},_GEN_53};
  assign io_diff3_2 = {{1{_GEN_54[7]}},_GEN_54};
  assign io_diff3_3 = {{1{_GEN_55[7]}},_GEN_55};
  assign io_diff3_4 = {{1{_GEN_56[7]}},_GEN_56};
  assign io_diff3_5 = {{1{_GEN_57[7]}},_GEN_57};
  assign io_diff3_6 = {{1{_GEN_58[7]}},_GEN_58};
  assign io_diff3_7 = {{1{_GEN_59[7]}},_GEN_59};
  assign io_diff3_8 = {{1{_GEN_60[7]}},_GEN_60};
  assign io_diff3_9 = {{1{_GEN_61[7]}},_GEN_61};
  assign io_diff3_10 = {{1{_GEN_62[7]}},_GEN_62};
  assign io_diff3_11 = {{1{_GEN_63[7]}},_GEN_63};
  assign io_diff3_12 = {{1{_GEN_64[7]}},_GEN_64};
  assign io_diff3_13 = {{1{_GEN_65[7]}},_GEN_65};
  assign io_diff3_14 = {{1{_GEN_66[7]}},_GEN_66};
  assign io_diff3_15 = {{1{_GEN_67[7]}},_GEN_67};
  assign io_diff4_0 = {{1{_GEN_69[7]}},_GEN_69};
  assign io_diff4_1 = {{1{_GEN_70[7]}},_GEN_70};
  assign io_diff4_2 = {{1{_GEN_71[7]}},_GEN_71};
  assign io_diff4_3 = {{1{_GEN_72[7]}},_GEN_72};
  assign io_diff4_4 = {{1{_GEN_73[7]}},_GEN_73};
  assign io_diff4_5 = {{1{_GEN_74[7]}},_GEN_74};
  assign io_diff4_6 = {{1{_GEN_75[7]}},_GEN_75};
  assign io_diff4_7 = {{1{_GEN_76[7]}},_GEN_76};
  assign io_diff4_8 = {{1{_GEN_77[7]}},_GEN_77};
  assign io_diff4_9 = {{1{_GEN_78[7]}},_GEN_78};
  assign io_diff4_10 = {{1{_GEN_79[7]}},_GEN_79};
  assign io_diff4_11 = {{1{_GEN_80[7]}},_GEN_80};
  assign io_diff4_12 = {{1{_GEN_81[7]}},_GEN_81};
  assign io_diff4_13 = {{1{_GEN_82[7]}},_GEN_82};
  assign io_diff4_14 = {{1{_GEN_83[7]}},_GEN_83};
  assign io_diff4_15 = {{1{_GEN_84[7]}},_GEN_84};
  assign io_diff5_0 = {{1{_GEN_86[7]}},_GEN_86};
  assign io_diff5_1 = {{1{_GEN_87[7]}},_GEN_87};
  assign io_diff5_2 = {{1{_GEN_88[7]}},_GEN_88};
  assign io_diff5_3 = {{1{_GEN_89[7]}},_GEN_89};
  assign io_diff5_4 = {{1{_GEN_90[7]}},_GEN_90};
  assign io_diff5_5 = {{1{_GEN_91[7]}},_GEN_91};
  assign io_diff5_6 = {{1{_GEN_92[7]}},_GEN_92};
  assign io_diff5_7 = {{1{_GEN_93[7]}},_GEN_93};
  assign io_diff5_8 = {{1{_GEN_94[7]}},_GEN_94};
  assign io_diff5_9 = {{1{_GEN_95[7]}},_GEN_95};
  assign io_diff5_10 = {{1{_GEN_96[7]}},_GEN_96};
  assign io_diff5_11 = {{1{_GEN_97[7]}},_GEN_97};
  assign io_diff5_12 = {{1{_GEN_98[7]}},_GEN_98};
  assign io_diff5_13 = {{1{_GEN_99[7]}},_GEN_99};
  assign io_diff5_14 = {{1{_GEN_100[7]}},_GEN_100};
  assign io_diff5_15 = {{1{_GEN_101[7]}},_GEN_101};
  assign io_diff6_0 = {{1{_GEN_103[7]}},_GEN_103};
  assign io_diff6_1 = {{1{_GEN_104[7]}},_GEN_104};
  assign io_diff6_2 = {{1{_GEN_105[7]}},_GEN_105};
  assign io_diff6_3 = {{1{_GEN_106[7]}},_GEN_106};
  assign io_diff6_4 = {{1{_GEN_107[7]}},_GEN_107};
  assign io_diff6_5 = {{1{_GEN_108[7]}},_GEN_108};
  assign io_diff6_6 = {{1{_GEN_109[7]}},_GEN_109};
  assign io_diff6_7 = {{1{_GEN_110[7]}},_GEN_110};
  assign io_diff6_8 = {{1{_GEN_111[7]}},_GEN_111};
  assign io_diff6_9 = {{1{_GEN_112[7]}},_GEN_112};
  assign io_diff6_10 = {{1{_GEN_113[7]}},_GEN_113};
  assign io_diff6_11 = {{1{_GEN_114[7]}},_GEN_114};
  assign io_diff6_12 = {{1{_GEN_115[7]}},_GEN_115};
  assign io_diff6_13 = {{1{_GEN_116[7]}},_GEN_116};
  assign io_diff6_14 = {{1{_GEN_117[7]}},_GEN_117};
  assign io_diff6_15 = {{1{_GEN_118[7]}},_GEN_118};
  assign io_diff7_0 = {{1{_GEN_120[7]}},_GEN_120};
  assign io_diff7_1 = {{1{_GEN_121[7]}},_GEN_121};
  assign io_diff7_2 = {{1{_GEN_122[7]}},_GEN_122};
  assign io_diff7_3 = {{1{_GEN_123[7]}},_GEN_123};
  assign io_diff7_4 = {{1{_GEN_124[7]}},_GEN_124};
  assign io_diff7_5 = {{1{_GEN_125[7]}},_GEN_125};
  assign io_diff7_6 = {{1{_GEN_126[7]}},_GEN_126};
  assign io_diff7_7 = {{1{_GEN_127[7]}},_GEN_127};
  assign io_diff7_8 = {{1{_GEN_128[7]}},_GEN_128};
  assign io_diff7_9 = {{1{_GEN_129[7]}},_GEN_129};
  assign io_diff7_10 = {{1{_GEN_130[7]}},_GEN_130};
  assign io_diff7_11 = {{1{_GEN_131[7]}},_GEN_131};
  assign io_diff7_12 = {{1{_GEN_132[7]}},_GEN_132};
  assign io_diff7_13 = {{1{_GEN_133[7]}},_GEN_133};
  assign io_diff7_14 = {{1{_GEN_134[7]}},_GEN_134};
  assign io_diff7_15 = {{1{_GEN_135[7]}},_GEN_135};
  assign io_diff8_0 = {{1{_GEN_137[7]}},_GEN_137};
  assign io_diff8_1 = {{1{_GEN_138[7]}},_GEN_138};
  assign io_diff8_2 = {{1{_GEN_139[7]}},_GEN_139};
  assign io_diff8_3 = {{1{_GEN_140[7]}},_GEN_140};
  assign io_diff8_4 = {{1{_GEN_141[7]}},_GEN_141};
  assign io_diff8_5 = {{1{_GEN_142[7]}},_GEN_142};
  assign io_diff8_6 = {{1{_GEN_143[7]}},_GEN_143};
  assign io_diff8_7 = {{1{_GEN_144[7]}},_GEN_144};
  assign io_diff8_8 = {{1{_GEN_145[7]}},_GEN_145};
  assign io_diff8_9 = {{1{_GEN_146[7]}},_GEN_146};
  assign io_diff8_10 = {{1{_GEN_147[7]}},_GEN_147};
  assign io_diff8_11 = {{1{_GEN_148[7]}},_GEN_148};
  assign io_diff8_12 = {{1{_GEN_149[7]}},_GEN_149};
  assign io_diff8_13 = {{1{_GEN_150[7]}},_GEN_150};
  assign io_diff8_14 = {{1{_GEN_151[7]}},_GEN_151};
  assign io_diff8_15 = {{1{_GEN_152[7]}},_GEN_152};
endmodule
module intra_ctrl(
  input   clock,
  input   reset,
  input   io_start,
  output  io_capture_pix,
  output  io_capture_sad,
  output  io_done
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [1:0] state; // @[intra_ctrl.scala 24:22]
  wire  _T_2 = state == 2'h2; // @[intra_ctrl.scala 32:22]
  wire  _T_3 = state == 2'h3; // @[intra_ctrl.scala 35:22]
  wire  _GEN_4 = state == 2'h2 ? 1'h0 : _T_3; // @[intra_ctrl.scala 20:21 32:35]
  wire  _GEN_6 = state == 2'h1 ? 1'h0 : _T_2; // @[intra_ctrl.scala 19:21 30:29]
  wire  _GEN_7 = state == 2'h1 ? 1'h0 : _GEN_4; // @[intra_ctrl.scala 20:21 30:29]
  assign io_capture_pix = io_start; // @[intra_ctrl.scala 17:21 26:26 27:22]
  assign io_capture_sad = io_start ? 1'h0 : _GEN_6; // @[intra_ctrl.scala 19:21 26:26]
  assign io_done = io_start ? 1'h0 : _GEN_7; // @[intra_ctrl.scala 20:21 26:26]
  always @(posedge clock) begin
    if (reset) begin // @[intra_ctrl.scala 24:22]
      state <= 2'h0; // @[intra_ctrl.scala 24:22]
    end else if (io_start) begin // @[intra_ctrl.scala 26:26]
      state <= 2'h1; // @[intra_ctrl.scala 28:22]
    end else if (state == 2'h1) begin // @[intra_ctrl.scala 30:29]
      state <= 2'h2; // @[intra_ctrl.scala 31:22]
    end else if (state == 2'h2) begin // @[intra_ctrl.scala 32:35]
      state <= 2'h3; // @[intra_ctrl.scala 34:22]
    end else begin
      state <= 2'h0;
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
  state = _RAND_0[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module intra_cmp(
  input         io_start,
  input  [11:0] io_sad_res_0,
  input  [11:0] io_sad_res_1,
  input  [11:0] io_sad_res_2,
  input  [11:0] io_sad_res_3,
  input  [11:0] io_sad_res_4,
  input  [11:0] io_sad_res_5,
  input  [11:0] io_sad_res_6,
  input  [11:0] io_sad_res_7,
  input  [11:0] io_sad_res_8,
  input  [8:0]  io_db0_0,
  input  [8:0]  io_db0_1,
  input  [8:0]  io_db0_2,
  input  [8:0]  io_db0_3,
  input  [8:0]  io_db0_4,
  input  [8:0]  io_db0_5,
  input  [8:0]  io_db0_6,
  input  [8:0]  io_db0_7,
  input  [8:0]  io_db0_8,
  input  [8:0]  io_db0_9,
  input  [8:0]  io_db0_10,
  input  [8:0]  io_db0_11,
  input  [8:0]  io_db0_12,
  input  [8:0]  io_db0_13,
  input  [8:0]  io_db0_14,
  input  [8:0]  io_db0_15,
  input  [8:0]  io_db1_0,
  input  [8:0]  io_db1_1,
  input  [8:0]  io_db1_2,
  input  [8:0]  io_db1_3,
  input  [8:0]  io_db1_4,
  input  [8:0]  io_db1_5,
  input  [8:0]  io_db1_6,
  input  [8:0]  io_db1_7,
  input  [8:0]  io_db1_8,
  input  [8:0]  io_db1_9,
  input  [8:0]  io_db1_10,
  input  [8:0]  io_db1_11,
  input  [8:0]  io_db1_12,
  input  [8:0]  io_db1_13,
  input  [8:0]  io_db1_14,
  input  [8:0]  io_db1_15,
  input  [8:0]  io_db2_0,
  input  [8:0]  io_db2_1,
  input  [8:0]  io_db2_2,
  input  [8:0]  io_db2_3,
  input  [8:0]  io_db2_4,
  input  [8:0]  io_db2_5,
  input  [8:0]  io_db2_6,
  input  [8:0]  io_db2_7,
  input  [8:0]  io_db2_8,
  input  [8:0]  io_db2_9,
  input  [8:0]  io_db2_10,
  input  [8:0]  io_db2_11,
  input  [8:0]  io_db2_12,
  input  [8:0]  io_db2_13,
  input  [8:0]  io_db2_14,
  input  [8:0]  io_db2_15,
  input  [8:0]  io_db3_0,
  input  [8:0]  io_db3_1,
  input  [8:0]  io_db3_2,
  input  [8:0]  io_db3_3,
  input  [8:0]  io_db3_4,
  input  [8:0]  io_db3_5,
  input  [8:0]  io_db3_6,
  input  [8:0]  io_db3_7,
  input  [8:0]  io_db3_8,
  input  [8:0]  io_db3_9,
  input  [8:0]  io_db3_10,
  input  [8:0]  io_db3_11,
  input  [8:0]  io_db3_12,
  input  [8:0]  io_db3_13,
  input  [8:0]  io_db3_14,
  input  [8:0]  io_db3_15,
  input  [8:0]  io_db4_0,
  input  [8:0]  io_db4_1,
  input  [8:0]  io_db4_2,
  input  [8:0]  io_db4_3,
  input  [8:0]  io_db4_4,
  input  [8:0]  io_db4_5,
  input  [8:0]  io_db4_6,
  input  [8:0]  io_db4_7,
  input  [8:0]  io_db4_8,
  input  [8:0]  io_db4_9,
  input  [8:0]  io_db4_10,
  input  [8:0]  io_db4_11,
  input  [8:0]  io_db4_12,
  input  [8:0]  io_db4_13,
  input  [8:0]  io_db4_14,
  input  [8:0]  io_db4_15,
  input  [8:0]  io_db5_0,
  input  [8:0]  io_db5_1,
  input  [8:0]  io_db5_2,
  input  [8:0]  io_db5_3,
  input  [8:0]  io_db5_4,
  input  [8:0]  io_db5_5,
  input  [8:0]  io_db5_6,
  input  [8:0]  io_db5_7,
  input  [8:0]  io_db5_8,
  input  [8:0]  io_db5_9,
  input  [8:0]  io_db5_10,
  input  [8:0]  io_db5_11,
  input  [8:0]  io_db5_12,
  input  [8:0]  io_db5_13,
  input  [8:0]  io_db5_14,
  input  [8:0]  io_db5_15,
  input  [8:0]  io_db6_0,
  input  [8:0]  io_db6_1,
  input  [8:0]  io_db6_2,
  input  [8:0]  io_db6_3,
  input  [8:0]  io_db6_4,
  input  [8:0]  io_db6_5,
  input  [8:0]  io_db6_6,
  input  [8:0]  io_db6_7,
  input  [8:0]  io_db6_8,
  input  [8:0]  io_db6_9,
  input  [8:0]  io_db6_10,
  input  [8:0]  io_db6_11,
  input  [8:0]  io_db6_12,
  input  [8:0]  io_db6_13,
  input  [8:0]  io_db6_14,
  input  [8:0]  io_db6_15,
  input  [8:0]  io_db7_0,
  input  [8:0]  io_db7_1,
  input  [8:0]  io_db7_2,
  input  [8:0]  io_db7_3,
  input  [8:0]  io_db7_4,
  input  [8:0]  io_db7_5,
  input  [8:0]  io_db7_6,
  input  [8:0]  io_db7_7,
  input  [8:0]  io_db7_8,
  input  [8:0]  io_db7_9,
  input  [8:0]  io_db7_10,
  input  [8:0]  io_db7_11,
  input  [8:0]  io_db7_12,
  input  [8:0]  io_db7_13,
  input  [8:0]  io_db7_14,
  input  [8:0]  io_db7_15,
  input  [8:0]  io_db8_0,
  input  [8:0]  io_db8_1,
  input  [8:0]  io_db8_2,
  input  [8:0]  io_db8_3,
  input  [8:0]  io_db8_4,
  input  [8:0]  io_db8_5,
  input  [8:0]  io_db8_6,
  input  [8:0]  io_db8_7,
  input  [8:0]  io_db8_8,
  input  [8:0]  io_db8_9,
  input  [8:0]  io_db8_10,
  input  [8:0]  io_db8_11,
  input  [8:0]  io_db8_12,
  input  [8:0]  io_db8_13,
  input  [8:0]  io_db8_14,
  input  [8:0]  io_db8_15,
  input  [7:0]  io_pred_pix0_0,
  input  [7:0]  io_pred_pix0_1,
  input  [7:0]  io_pred_pix0_2,
  input  [7:0]  io_pred_pix0_3,
  input  [7:0]  io_pred_pix0_4,
  input  [7:0]  io_pred_pix0_5,
  input  [7:0]  io_pred_pix0_6,
  input  [7:0]  io_pred_pix0_7,
  input  [7:0]  io_pred_pix0_8,
  input  [7:0]  io_pred_pix0_9,
  input  [7:0]  io_pred_pix0_10,
  input  [7:0]  io_pred_pix0_11,
  input  [7:0]  io_pred_pix0_12,
  input  [7:0]  io_pred_pix0_13,
  input  [7:0]  io_pred_pix0_14,
  input  [7:0]  io_pred_pix0_15,
  input  [7:0]  io_pred_pix1_0,
  input  [7:0]  io_pred_pix1_1,
  input  [7:0]  io_pred_pix1_2,
  input  [7:0]  io_pred_pix1_3,
  input  [7:0]  io_pred_pix1_4,
  input  [7:0]  io_pred_pix1_5,
  input  [7:0]  io_pred_pix1_6,
  input  [7:0]  io_pred_pix1_7,
  input  [7:0]  io_pred_pix1_8,
  input  [7:0]  io_pred_pix1_9,
  input  [7:0]  io_pred_pix1_10,
  input  [7:0]  io_pred_pix1_11,
  input  [7:0]  io_pred_pix1_12,
  input  [7:0]  io_pred_pix1_13,
  input  [7:0]  io_pred_pix1_14,
  input  [7:0]  io_pred_pix1_15,
  input  [7:0]  io_pred_pix2_0,
  input  [7:0]  io_pred_pix2_1,
  input  [7:0]  io_pred_pix2_2,
  input  [7:0]  io_pred_pix2_3,
  input  [7:0]  io_pred_pix2_4,
  input  [7:0]  io_pred_pix2_5,
  input  [7:0]  io_pred_pix2_6,
  input  [7:0]  io_pred_pix2_7,
  input  [7:0]  io_pred_pix2_8,
  input  [7:0]  io_pred_pix2_9,
  input  [7:0]  io_pred_pix2_10,
  input  [7:0]  io_pred_pix2_11,
  input  [7:0]  io_pred_pix2_12,
  input  [7:0]  io_pred_pix2_13,
  input  [7:0]  io_pred_pix2_14,
  input  [7:0]  io_pred_pix2_15,
  input  [7:0]  io_pred_pix3_0,
  input  [7:0]  io_pred_pix3_1,
  input  [7:0]  io_pred_pix3_2,
  input  [7:0]  io_pred_pix3_3,
  input  [7:0]  io_pred_pix3_4,
  input  [7:0]  io_pred_pix3_5,
  input  [7:0]  io_pred_pix3_6,
  input  [7:0]  io_pred_pix3_7,
  input  [7:0]  io_pred_pix3_8,
  input  [7:0]  io_pred_pix3_9,
  input  [7:0]  io_pred_pix3_10,
  input  [7:0]  io_pred_pix3_11,
  input  [7:0]  io_pred_pix3_12,
  input  [7:0]  io_pred_pix3_13,
  input  [7:0]  io_pred_pix3_14,
  input  [7:0]  io_pred_pix3_15,
  input  [7:0]  io_pred_pix4_0,
  input  [7:0]  io_pred_pix4_1,
  input  [7:0]  io_pred_pix4_2,
  input  [7:0]  io_pred_pix4_3,
  input  [7:0]  io_pred_pix4_4,
  input  [7:0]  io_pred_pix4_5,
  input  [7:0]  io_pred_pix4_6,
  input  [7:0]  io_pred_pix4_7,
  input  [7:0]  io_pred_pix4_8,
  input  [7:0]  io_pred_pix4_9,
  input  [7:0]  io_pred_pix4_10,
  input  [7:0]  io_pred_pix4_11,
  input  [7:0]  io_pred_pix4_12,
  input  [7:0]  io_pred_pix4_13,
  input  [7:0]  io_pred_pix4_14,
  input  [7:0]  io_pred_pix4_15,
  input  [7:0]  io_pred_pix5_0,
  input  [7:0]  io_pred_pix5_1,
  input  [7:0]  io_pred_pix5_2,
  input  [7:0]  io_pred_pix5_3,
  input  [7:0]  io_pred_pix5_4,
  input  [7:0]  io_pred_pix5_5,
  input  [7:0]  io_pred_pix5_6,
  input  [7:0]  io_pred_pix5_7,
  input  [7:0]  io_pred_pix5_8,
  input  [7:0]  io_pred_pix5_9,
  input  [7:0]  io_pred_pix5_10,
  input  [7:0]  io_pred_pix5_11,
  input  [7:0]  io_pred_pix5_12,
  input  [7:0]  io_pred_pix5_13,
  input  [7:0]  io_pred_pix5_14,
  input  [7:0]  io_pred_pix5_15,
  input  [7:0]  io_pred_pix6_0,
  input  [7:0]  io_pred_pix6_1,
  input  [7:0]  io_pred_pix6_2,
  input  [7:0]  io_pred_pix6_3,
  input  [7:0]  io_pred_pix6_4,
  input  [7:0]  io_pred_pix6_5,
  input  [7:0]  io_pred_pix6_6,
  input  [7:0]  io_pred_pix6_7,
  input  [7:0]  io_pred_pix6_8,
  input  [7:0]  io_pred_pix6_9,
  input  [7:0]  io_pred_pix6_10,
  input  [7:0]  io_pred_pix6_11,
  input  [7:0]  io_pred_pix6_12,
  input  [7:0]  io_pred_pix6_13,
  input  [7:0]  io_pred_pix6_14,
  input  [7:0]  io_pred_pix6_15,
  input  [7:0]  io_pred_pix7_0,
  input  [7:0]  io_pred_pix7_1,
  input  [7:0]  io_pred_pix7_2,
  input  [7:0]  io_pred_pix7_3,
  input  [7:0]  io_pred_pix7_4,
  input  [7:0]  io_pred_pix7_5,
  input  [7:0]  io_pred_pix7_6,
  input  [7:0]  io_pred_pix7_7,
  input  [7:0]  io_pred_pix7_8,
  input  [7:0]  io_pred_pix7_9,
  input  [7:0]  io_pred_pix7_10,
  input  [7:0]  io_pred_pix7_11,
  input  [7:0]  io_pred_pix7_12,
  input  [7:0]  io_pred_pix7_13,
  input  [7:0]  io_pred_pix7_14,
  input  [7:0]  io_pred_pix7_15,
  input  [7:0]  io_pred_pix8_0,
  input  [7:0]  io_pred_pix8_1,
  input  [7:0]  io_pred_pix8_2,
  input  [7:0]  io_pred_pix8_3,
  input  [7:0]  io_pred_pix8_4,
  input  [7:0]  io_pred_pix8_5,
  input  [7:0]  io_pred_pix8_6,
  input  [7:0]  io_pred_pix8_7,
  input  [7:0]  io_pred_pix8_8,
  input  [7:0]  io_pred_pix8_9,
  input  [7:0]  io_pred_pix8_10,
  input  [7:0]  io_pred_pix8_11,
  input  [7:0]  io_pred_pix8_12,
  input  [7:0]  io_pred_pix8_13,
  input  [7:0]  io_pred_pix8_14,
  input  [7:0]  io_pred_pix8_15,
  output [11:0] io_sad_best,
  output [3:0]  io_mode_best,
  output [7:0]  io_pred_best_0,
  output [7:0]  io_pred_best_1,
  output [7:0]  io_pred_best_2,
  output [7:0]  io_pred_best_3,
  output [7:0]  io_pred_best_4,
  output [7:0]  io_pred_best_5,
  output [7:0]  io_pred_best_6,
  output [7:0]  io_pred_best_7,
  output [7:0]  io_pred_best_8,
  output [7:0]  io_pred_best_9,
  output [7:0]  io_pred_best_10,
  output [7:0]  io_pred_best_11,
  output [7:0]  io_pred_best_12,
  output [7:0]  io_pred_best_13,
  output [7:0]  io_pred_best_14,
  output [7:0]  io_pred_best_15,
  output [8:0]  io_diff_best_0,
  output [8:0]  io_diff_best_1,
  output [8:0]  io_diff_best_2,
  output [8:0]  io_diff_best_3,
  output [8:0]  io_diff_best_4,
  output [8:0]  io_diff_best_5,
  output [8:0]  io_diff_best_6,
  output [8:0]  io_diff_best_7,
  output [8:0]  io_diff_best_8,
  output [8:0]  io_diff_best_9,
  output [8:0]  io_diff_best_10,
  output [8:0]  io_diff_best_11,
  output [8:0]  io_diff_best_12,
  output [8:0]  io_diff_best_13,
  output [8:0]  io_diff_best_14,
  output [8:0]  io_diff_best_15
);
  wire [11:0] sad0or1 = io_sad_res_0 < io_sad_res_1 ? io_sad_res_0 : io_sad_res_1; // @[intra_cmp.scala 46:23 47:15 49:15]
  wire [11:0] sad2or3 = io_sad_res_2 < io_sad_res_3 ? io_sad_res_2 : io_sad_res_3; // @[intra_cmp.scala 52:23 53:15 55:15]
  wire [11:0] sad4or5 = io_sad_res_4 < io_sad_res_5 ? io_sad_res_4 : io_sad_res_5; // @[intra_cmp.scala 58:23 59:15 61:15]
  wire [11:0] sad6or7 = io_sad_res_6 < io_sad_res_7 ? io_sad_res_6 : io_sad_res_7; // @[intra_cmp.scala 64:23 65:15 67:15]
  wire [11:0] sad0123 = sad0or1 < sad2or3 ? sad0or1 : sad2or3; // @[intra_cmp.scala 70:29 71:15 73:15]
  wire [11:0] sad4567 = sad4or5 < sad6or7 ? sad4or5 : sad6or7; // @[intra_cmp.scala 76:29 77:15 79:15]
  wire [11:0] sad0to7 = sad0123 < sad4567 ? sad0123 : sad4567; // @[intra_cmp.scala 82:29 83:15 85:15]
  wire [11:0] minSad = sad0to7 < io_sad_res_8 ? sad0to7 : io_sad_res_8; // @[intra_cmp.scala 88:26 89:14 91:14]
  wire [3:0] _GEN_8 = minSad == io_sad_res_8 ? 4'h8 : 4'h2; // @[intra_cmp.scala 111:33 112:16 114:16]
  wire [3:0] _GEN_9 = minSad == io_sad_res_7 ? 4'h7 : _GEN_8; // @[intra_cmp.scala 109:33 110:16]
  wire [3:0] _GEN_10 = minSad == io_sad_res_6 ? 4'h6 : _GEN_9; // @[intra_cmp.scala 107:33 108:16]
  wire [3:0] _GEN_11 = minSad == io_sad_res_5 ? 4'h5 : _GEN_10; // @[intra_cmp.scala 105:33 106:16]
  wire [3:0] _GEN_12 = minSad == io_sad_res_4 ? 4'h4 : _GEN_11; // @[intra_cmp.scala 103:33 104:16]
  wire [3:0] _GEN_13 = minSad == io_sad_res_3 ? 4'h3 : _GEN_12; // @[intra_cmp.scala 101:33 102:16]
  wire [3:0] _GEN_14 = minSad == io_sad_res_2 ? 4'h2 : _GEN_13; // @[intra_cmp.scala 100:16 99:33]
  wire [3:0] _GEN_15 = minSad == io_sad_res_1 ? 4'h1 : _GEN_14; // @[intra_cmp.scala 97:33 98:16]
  wire [3:0] minIndex = minSad == io_sad_res_0 ? 4'h0 : _GEN_15; // @[intra_cmp.scala 95:27 96:16]
  wire [11:0] _GEN_18 = 4'h1 == minIndex ? io_sad_res_1 : io_sad_res_0; // @[intra_cmp.scala 117:{17,17}]
  wire [11:0] _GEN_19 = 4'h2 == minIndex ? io_sad_res_2 : _GEN_18; // @[intra_cmp.scala 117:{17,17}]
  wire [11:0] _GEN_20 = 4'h3 == minIndex ? io_sad_res_3 : _GEN_19; // @[intra_cmp.scala 117:{17,17}]
  wire [11:0] _GEN_21 = 4'h4 == minIndex ? io_sad_res_4 : _GEN_20; // @[intra_cmp.scala 117:{17,17}]
  wire [11:0] _GEN_22 = 4'h5 == minIndex ? io_sad_res_5 : _GEN_21; // @[intra_cmp.scala 117:{17,17}]
  wire [11:0] _GEN_23 = 4'h6 == minIndex ? io_sad_res_6 : _GEN_22; // @[intra_cmp.scala 117:{17,17}]
  wire [11:0] _GEN_24 = 4'h7 == minIndex ? io_sad_res_7 : _GEN_23; // @[intra_cmp.scala 117:{17,17}]
  wire [11:0] _GEN_25 = 4'h8 == minIndex ? io_sad_res_8 : _GEN_24; // @[intra_cmp.scala 117:{17,17}]
  wire  _T_17 = minIndex == 4'h0; // @[intra_cmp.scala 120:34]
  wire  _T_18 = minIndex == 4'h1; // @[intra_cmp.scala 121:20]
  wire  _T_19 = minIndex == 4'h2; // @[intra_cmp.scala 122:22]
  wire  _T_20 = minIndex == 4'h3; // @[intra_cmp.scala 123:24]
  wire  _T_21 = minIndex == 4'h4; // @[intra_cmp.scala 124:26]
  wire  _T_22 = minIndex == 4'h5; // @[intra_cmp.scala 125:28]
  wire  _T_23 = minIndex == 4'h6; // @[intra_cmp.scala 126:30]
  wire  _T_24 = minIndex == 4'h7; // @[intra_cmp.scala 127:32]
  wire [7:0] _T_25_0 = minIndex == 4'h7 ? io_pred_pix7_0 : io_pred_pix8_0; // @[intra_cmp.scala 127:22]
  wire [7:0] _T_25_1 = minIndex == 4'h7 ? io_pred_pix7_1 : io_pred_pix8_1; // @[intra_cmp.scala 127:22]
  wire [7:0] _T_25_2 = minIndex == 4'h7 ? io_pred_pix7_2 : io_pred_pix8_2; // @[intra_cmp.scala 127:22]
  wire [7:0] _T_25_3 = minIndex == 4'h7 ? io_pred_pix7_3 : io_pred_pix8_3; // @[intra_cmp.scala 127:22]
  wire [7:0] _T_25_4 = minIndex == 4'h7 ? io_pred_pix7_4 : io_pred_pix8_4; // @[intra_cmp.scala 127:22]
  wire [7:0] _T_25_5 = minIndex == 4'h7 ? io_pred_pix7_5 : io_pred_pix8_5; // @[intra_cmp.scala 127:22]
  wire [7:0] _T_25_6 = minIndex == 4'h7 ? io_pred_pix7_6 : io_pred_pix8_6; // @[intra_cmp.scala 127:22]
  wire [7:0] _T_25_7 = minIndex == 4'h7 ? io_pred_pix7_7 : io_pred_pix8_7; // @[intra_cmp.scala 127:22]
  wire [7:0] _T_25_8 = minIndex == 4'h7 ? io_pred_pix7_8 : io_pred_pix8_8; // @[intra_cmp.scala 127:22]
  wire [7:0] _T_25_9 = minIndex == 4'h7 ? io_pred_pix7_9 : io_pred_pix8_9; // @[intra_cmp.scala 127:22]
  wire [7:0] _T_25_10 = minIndex == 4'h7 ? io_pred_pix7_10 : io_pred_pix8_10; // @[intra_cmp.scala 127:22]
  wire [7:0] _T_25_11 = minIndex == 4'h7 ? io_pred_pix7_11 : io_pred_pix8_11; // @[intra_cmp.scala 127:22]
  wire [7:0] _T_25_12 = minIndex == 4'h7 ? io_pred_pix7_12 : io_pred_pix8_12; // @[intra_cmp.scala 127:22]
  wire [7:0] _T_25_13 = minIndex == 4'h7 ? io_pred_pix7_13 : io_pred_pix8_13; // @[intra_cmp.scala 127:22]
  wire [7:0] _T_25_14 = minIndex == 4'h7 ? io_pred_pix7_14 : io_pred_pix8_14; // @[intra_cmp.scala 127:22]
  wire [7:0] _T_25_15 = minIndex == 4'h7 ? io_pred_pix7_15 : io_pred_pix8_15; // @[intra_cmp.scala 127:22]
  wire [7:0] _T_26_0 = minIndex == 4'h6 ? io_pred_pix6_0 : _T_25_0; // @[intra_cmp.scala 126:20]
  wire [7:0] _T_26_1 = minIndex == 4'h6 ? io_pred_pix6_1 : _T_25_1; // @[intra_cmp.scala 126:20]
  wire [7:0] _T_26_2 = minIndex == 4'h6 ? io_pred_pix6_2 : _T_25_2; // @[intra_cmp.scala 126:20]
  wire [7:0] _T_26_3 = minIndex == 4'h6 ? io_pred_pix6_3 : _T_25_3; // @[intra_cmp.scala 126:20]
  wire [7:0] _T_26_4 = minIndex == 4'h6 ? io_pred_pix6_4 : _T_25_4; // @[intra_cmp.scala 126:20]
  wire [7:0] _T_26_5 = minIndex == 4'h6 ? io_pred_pix6_5 : _T_25_5; // @[intra_cmp.scala 126:20]
  wire [7:0] _T_26_6 = minIndex == 4'h6 ? io_pred_pix6_6 : _T_25_6; // @[intra_cmp.scala 126:20]
  wire [7:0] _T_26_7 = minIndex == 4'h6 ? io_pred_pix6_7 : _T_25_7; // @[intra_cmp.scala 126:20]
  wire [7:0] _T_26_8 = minIndex == 4'h6 ? io_pred_pix6_8 : _T_25_8; // @[intra_cmp.scala 126:20]
  wire [7:0] _T_26_9 = minIndex == 4'h6 ? io_pred_pix6_9 : _T_25_9; // @[intra_cmp.scala 126:20]
  wire [7:0] _T_26_10 = minIndex == 4'h6 ? io_pred_pix6_10 : _T_25_10; // @[intra_cmp.scala 126:20]
  wire [7:0] _T_26_11 = minIndex == 4'h6 ? io_pred_pix6_11 : _T_25_11; // @[intra_cmp.scala 126:20]
  wire [7:0] _T_26_12 = minIndex == 4'h6 ? io_pred_pix6_12 : _T_25_12; // @[intra_cmp.scala 126:20]
  wire [7:0] _T_26_13 = minIndex == 4'h6 ? io_pred_pix6_13 : _T_25_13; // @[intra_cmp.scala 126:20]
  wire [7:0] _T_26_14 = minIndex == 4'h6 ? io_pred_pix6_14 : _T_25_14; // @[intra_cmp.scala 126:20]
  wire [7:0] _T_26_15 = minIndex == 4'h6 ? io_pred_pix6_15 : _T_25_15; // @[intra_cmp.scala 126:20]
  wire [7:0] _T_27_0 = minIndex == 4'h5 ? io_pred_pix5_0 : _T_26_0; // @[intra_cmp.scala 125:18]
  wire [7:0] _T_27_1 = minIndex == 4'h5 ? io_pred_pix5_1 : _T_26_1; // @[intra_cmp.scala 125:18]
  wire [7:0] _T_27_2 = minIndex == 4'h5 ? io_pred_pix5_2 : _T_26_2; // @[intra_cmp.scala 125:18]
  wire [7:0] _T_27_3 = minIndex == 4'h5 ? io_pred_pix5_3 : _T_26_3; // @[intra_cmp.scala 125:18]
  wire [7:0] _T_27_4 = minIndex == 4'h5 ? io_pred_pix5_4 : _T_26_4; // @[intra_cmp.scala 125:18]
  wire [7:0] _T_27_5 = minIndex == 4'h5 ? io_pred_pix5_5 : _T_26_5; // @[intra_cmp.scala 125:18]
  wire [7:0] _T_27_6 = minIndex == 4'h5 ? io_pred_pix5_6 : _T_26_6; // @[intra_cmp.scala 125:18]
  wire [7:0] _T_27_7 = minIndex == 4'h5 ? io_pred_pix5_7 : _T_26_7; // @[intra_cmp.scala 125:18]
  wire [7:0] _T_27_8 = minIndex == 4'h5 ? io_pred_pix5_8 : _T_26_8; // @[intra_cmp.scala 125:18]
  wire [7:0] _T_27_9 = minIndex == 4'h5 ? io_pred_pix5_9 : _T_26_9; // @[intra_cmp.scala 125:18]
  wire [7:0] _T_27_10 = minIndex == 4'h5 ? io_pred_pix5_10 : _T_26_10; // @[intra_cmp.scala 125:18]
  wire [7:0] _T_27_11 = minIndex == 4'h5 ? io_pred_pix5_11 : _T_26_11; // @[intra_cmp.scala 125:18]
  wire [7:0] _T_27_12 = minIndex == 4'h5 ? io_pred_pix5_12 : _T_26_12; // @[intra_cmp.scala 125:18]
  wire [7:0] _T_27_13 = minIndex == 4'h5 ? io_pred_pix5_13 : _T_26_13; // @[intra_cmp.scala 125:18]
  wire [7:0] _T_27_14 = minIndex == 4'h5 ? io_pred_pix5_14 : _T_26_14; // @[intra_cmp.scala 125:18]
  wire [7:0] _T_27_15 = minIndex == 4'h5 ? io_pred_pix5_15 : _T_26_15; // @[intra_cmp.scala 125:18]
  wire [7:0] _T_28_0 = minIndex == 4'h4 ? io_pred_pix4_0 : _T_27_0; // @[intra_cmp.scala 124:16]
  wire [7:0] _T_28_1 = minIndex == 4'h4 ? io_pred_pix4_1 : _T_27_1; // @[intra_cmp.scala 124:16]
  wire [7:0] _T_28_2 = minIndex == 4'h4 ? io_pred_pix4_2 : _T_27_2; // @[intra_cmp.scala 124:16]
  wire [7:0] _T_28_3 = minIndex == 4'h4 ? io_pred_pix4_3 : _T_27_3; // @[intra_cmp.scala 124:16]
  wire [7:0] _T_28_4 = minIndex == 4'h4 ? io_pred_pix4_4 : _T_27_4; // @[intra_cmp.scala 124:16]
  wire [7:0] _T_28_5 = minIndex == 4'h4 ? io_pred_pix4_5 : _T_27_5; // @[intra_cmp.scala 124:16]
  wire [7:0] _T_28_6 = minIndex == 4'h4 ? io_pred_pix4_6 : _T_27_6; // @[intra_cmp.scala 124:16]
  wire [7:0] _T_28_7 = minIndex == 4'h4 ? io_pred_pix4_7 : _T_27_7; // @[intra_cmp.scala 124:16]
  wire [7:0] _T_28_8 = minIndex == 4'h4 ? io_pred_pix4_8 : _T_27_8; // @[intra_cmp.scala 124:16]
  wire [7:0] _T_28_9 = minIndex == 4'h4 ? io_pred_pix4_9 : _T_27_9; // @[intra_cmp.scala 124:16]
  wire [7:0] _T_28_10 = minIndex == 4'h4 ? io_pred_pix4_10 : _T_27_10; // @[intra_cmp.scala 124:16]
  wire [7:0] _T_28_11 = minIndex == 4'h4 ? io_pred_pix4_11 : _T_27_11; // @[intra_cmp.scala 124:16]
  wire [7:0] _T_28_12 = minIndex == 4'h4 ? io_pred_pix4_12 : _T_27_12; // @[intra_cmp.scala 124:16]
  wire [7:0] _T_28_13 = minIndex == 4'h4 ? io_pred_pix4_13 : _T_27_13; // @[intra_cmp.scala 124:16]
  wire [7:0] _T_28_14 = minIndex == 4'h4 ? io_pred_pix4_14 : _T_27_14; // @[intra_cmp.scala 124:16]
  wire [7:0] _T_28_15 = minIndex == 4'h4 ? io_pred_pix4_15 : _T_27_15; // @[intra_cmp.scala 124:16]
  wire [7:0] _T_29_0 = minIndex == 4'h3 ? io_pred_pix3_0 : _T_28_0; // @[intra_cmp.scala 123:14]
  wire [7:0] _T_29_1 = minIndex == 4'h3 ? io_pred_pix3_1 : _T_28_1; // @[intra_cmp.scala 123:14]
  wire [7:0] _T_29_2 = minIndex == 4'h3 ? io_pred_pix3_2 : _T_28_2; // @[intra_cmp.scala 123:14]
  wire [7:0] _T_29_3 = minIndex == 4'h3 ? io_pred_pix3_3 : _T_28_3; // @[intra_cmp.scala 123:14]
  wire [7:0] _T_29_4 = minIndex == 4'h3 ? io_pred_pix3_4 : _T_28_4; // @[intra_cmp.scala 123:14]
  wire [7:0] _T_29_5 = minIndex == 4'h3 ? io_pred_pix3_5 : _T_28_5; // @[intra_cmp.scala 123:14]
  wire [7:0] _T_29_6 = minIndex == 4'h3 ? io_pred_pix3_6 : _T_28_6; // @[intra_cmp.scala 123:14]
  wire [7:0] _T_29_7 = minIndex == 4'h3 ? io_pred_pix3_7 : _T_28_7; // @[intra_cmp.scala 123:14]
  wire [7:0] _T_29_8 = minIndex == 4'h3 ? io_pred_pix3_8 : _T_28_8; // @[intra_cmp.scala 123:14]
  wire [7:0] _T_29_9 = minIndex == 4'h3 ? io_pred_pix3_9 : _T_28_9; // @[intra_cmp.scala 123:14]
  wire [7:0] _T_29_10 = minIndex == 4'h3 ? io_pred_pix3_10 : _T_28_10; // @[intra_cmp.scala 123:14]
  wire [7:0] _T_29_11 = minIndex == 4'h3 ? io_pred_pix3_11 : _T_28_11; // @[intra_cmp.scala 123:14]
  wire [7:0] _T_29_12 = minIndex == 4'h3 ? io_pred_pix3_12 : _T_28_12; // @[intra_cmp.scala 123:14]
  wire [7:0] _T_29_13 = minIndex == 4'h3 ? io_pred_pix3_13 : _T_28_13; // @[intra_cmp.scala 123:14]
  wire [7:0] _T_29_14 = minIndex == 4'h3 ? io_pred_pix3_14 : _T_28_14; // @[intra_cmp.scala 123:14]
  wire [7:0] _T_29_15 = minIndex == 4'h3 ? io_pred_pix3_15 : _T_28_15; // @[intra_cmp.scala 123:14]
  wire [7:0] _T_30_0 = minIndex == 4'h2 ? io_pred_pix2_0 : _T_29_0; // @[intra_cmp.scala 122:12]
  wire [7:0] _T_30_1 = minIndex == 4'h2 ? io_pred_pix2_1 : _T_29_1; // @[intra_cmp.scala 122:12]
  wire [7:0] _T_30_2 = minIndex == 4'h2 ? io_pred_pix2_2 : _T_29_2; // @[intra_cmp.scala 122:12]
  wire [7:0] _T_30_3 = minIndex == 4'h2 ? io_pred_pix2_3 : _T_29_3; // @[intra_cmp.scala 122:12]
  wire [7:0] _T_30_4 = minIndex == 4'h2 ? io_pred_pix2_4 : _T_29_4; // @[intra_cmp.scala 122:12]
  wire [7:0] _T_30_5 = minIndex == 4'h2 ? io_pred_pix2_5 : _T_29_5; // @[intra_cmp.scala 122:12]
  wire [7:0] _T_30_6 = minIndex == 4'h2 ? io_pred_pix2_6 : _T_29_6; // @[intra_cmp.scala 122:12]
  wire [7:0] _T_30_7 = minIndex == 4'h2 ? io_pred_pix2_7 : _T_29_7; // @[intra_cmp.scala 122:12]
  wire [7:0] _T_30_8 = minIndex == 4'h2 ? io_pred_pix2_8 : _T_29_8; // @[intra_cmp.scala 122:12]
  wire [7:0] _T_30_9 = minIndex == 4'h2 ? io_pred_pix2_9 : _T_29_9; // @[intra_cmp.scala 122:12]
  wire [7:0] _T_30_10 = minIndex == 4'h2 ? io_pred_pix2_10 : _T_29_10; // @[intra_cmp.scala 122:12]
  wire [7:0] _T_30_11 = minIndex == 4'h2 ? io_pred_pix2_11 : _T_29_11; // @[intra_cmp.scala 122:12]
  wire [7:0] _T_30_12 = minIndex == 4'h2 ? io_pred_pix2_12 : _T_29_12; // @[intra_cmp.scala 122:12]
  wire [7:0] _T_30_13 = minIndex == 4'h2 ? io_pred_pix2_13 : _T_29_13; // @[intra_cmp.scala 122:12]
  wire [7:0] _T_30_14 = minIndex == 4'h2 ? io_pred_pix2_14 : _T_29_14; // @[intra_cmp.scala 122:12]
  wire [7:0] _T_30_15 = minIndex == 4'h2 ? io_pred_pix2_15 : _T_29_15; // @[intra_cmp.scala 122:12]
  wire [7:0] _T_31_0 = minIndex == 4'h1 ? io_pred_pix1_0 : _T_30_0; // @[intra_cmp.scala 121:10]
  wire [7:0] _T_31_1 = minIndex == 4'h1 ? io_pred_pix1_1 : _T_30_1; // @[intra_cmp.scala 121:10]
  wire [7:0] _T_31_2 = minIndex == 4'h1 ? io_pred_pix1_2 : _T_30_2; // @[intra_cmp.scala 121:10]
  wire [7:0] _T_31_3 = minIndex == 4'h1 ? io_pred_pix1_3 : _T_30_3; // @[intra_cmp.scala 121:10]
  wire [7:0] _T_31_4 = minIndex == 4'h1 ? io_pred_pix1_4 : _T_30_4; // @[intra_cmp.scala 121:10]
  wire [7:0] _T_31_5 = minIndex == 4'h1 ? io_pred_pix1_5 : _T_30_5; // @[intra_cmp.scala 121:10]
  wire [7:0] _T_31_6 = minIndex == 4'h1 ? io_pred_pix1_6 : _T_30_6; // @[intra_cmp.scala 121:10]
  wire [7:0] _T_31_7 = minIndex == 4'h1 ? io_pred_pix1_7 : _T_30_7; // @[intra_cmp.scala 121:10]
  wire [7:0] _T_31_8 = minIndex == 4'h1 ? io_pred_pix1_8 : _T_30_8; // @[intra_cmp.scala 121:10]
  wire [7:0] _T_31_9 = minIndex == 4'h1 ? io_pred_pix1_9 : _T_30_9; // @[intra_cmp.scala 121:10]
  wire [7:0] _T_31_10 = minIndex == 4'h1 ? io_pred_pix1_10 : _T_30_10; // @[intra_cmp.scala 121:10]
  wire [7:0] _T_31_11 = minIndex == 4'h1 ? io_pred_pix1_11 : _T_30_11; // @[intra_cmp.scala 121:10]
  wire [7:0] _T_31_12 = minIndex == 4'h1 ? io_pred_pix1_12 : _T_30_12; // @[intra_cmp.scala 121:10]
  wire [7:0] _T_31_13 = minIndex == 4'h1 ? io_pred_pix1_13 : _T_30_13; // @[intra_cmp.scala 121:10]
  wire [7:0] _T_31_14 = minIndex == 4'h1 ? io_pred_pix1_14 : _T_30_14; // @[intra_cmp.scala 121:10]
  wire [7:0] _T_31_15 = minIndex == 4'h1 ? io_pred_pix1_15 : _T_30_15; // @[intra_cmp.scala 121:10]
  wire [7:0] _T_32_0 = minIndex == 4'h0 ? io_pred_pix0_0 : _T_31_0; // @[intra_cmp.scala 120:24]
  wire [7:0] _T_32_1 = minIndex == 4'h0 ? io_pred_pix0_1 : _T_31_1; // @[intra_cmp.scala 120:24]
  wire [7:0] _T_32_2 = minIndex == 4'h0 ? io_pred_pix0_2 : _T_31_2; // @[intra_cmp.scala 120:24]
  wire [7:0] _T_32_3 = minIndex == 4'h0 ? io_pred_pix0_3 : _T_31_3; // @[intra_cmp.scala 120:24]
  wire [7:0] _T_32_4 = minIndex == 4'h0 ? io_pred_pix0_4 : _T_31_4; // @[intra_cmp.scala 120:24]
  wire [7:0] _T_32_5 = minIndex == 4'h0 ? io_pred_pix0_5 : _T_31_5; // @[intra_cmp.scala 120:24]
  wire [7:0] _T_32_6 = minIndex == 4'h0 ? io_pred_pix0_6 : _T_31_6; // @[intra_cmp.scala 120:24]
  wire [7:0] _T_32_7 = minIndex == 4'h0 ? io_pred_pix0_7 : _T_31_7; // @[intra_cmp.scala 120:24]
  wire [7:0] _T_32_8 = minIndex == 4'h0 ? io_pred_pix0_8 : _T_31_8; // @[intra_cmp.scala 120:24]
  wire [7:0] _T_32_9 = minIndex == 4'h0 ? io_pred_pix0_9 : _T_31_9; // @[intra_cmp.scala 120:24]
  wire [7:0] _T_32_10 = minIndex == 4'h0 ? io_pred_pix0_10 : _T_31_10; // @[intra_cmp.scala 120:24]
  wire [7:0] _T_32_11 = minIndex == 4'h0 ? io_pred_pix0_11 : _T_31_11; // @[intra_cmp.scala 120:24]
  wire [7:0] _T_32_12 = minIndex == 4'h0 ? io_pred_pix0_12 : _T_31_12; // @[intra_cmp.scala 120:24]
  wire [7:0] _T_32_13 = minIndex == 4'h0 ? io_pred_pix0_13 : _T_31_13; // @[intra_cmp.scala 120:24]
  wire [7:0] _T_32_14 = minIndex == 4'h0 ? io_pred_pix0_14 : _T_31_14; // @[intra_cmp.scala 120:24]
  wire [7:0] _T_32_15 = minIndex == 4'h0 ? io_pred_pix0_15 : _T_31_15; // @[intra_cmp.scala 120:24]
  wire [8:0] _T_41_0 = _T_24 ? $signed(io_db7_0) : $signed(io_db8_0); // @[intra_cmp.scala 137:22]
  wire [8:0] _T_41_1 = _T_24 ? $signed(io_db7_1) : $signed(io_db8_1); // @[intra_cmp.scala 137:22]
  wire [8:0] _T_41_2 = _T_24 ? $signed(io_db7_2) : $signed(io_db8_2); // @[intra_cmp.scala 137:22]
  wire [8:0] _T_41_3 = _T_24 ? $signed(io_db7_3) : $signed(io_db8_3); // @[intra_cmp.scala 137:22]
  wire [8:0] _T_41_4 = _T_24 ? $signed(io_db7_4) : $signed(io_db8_4); // @[intra_cmp.scala 137:22]
  wire [8:0] _T_41_5 = _T_24 ? $signed(io_db7_5) : $signed(io_db8_5); // @[intra_cmp.scala 137:22]
  wire [8:0] _T_41_6 = _T_24 ? $signed(io_db7_6) : $signed(io_db8_6); // @[intra_cmp.scala 137:22]
  wire [8:0] _T_41_7 = _T_24 ? $signed(io_db7_7) : $signed(io_db8_7); // @[intra_cmp.scala 137:22]
  wire [8:0] _T_41_8 = _T_24 ? $signed(io_db7_8) : $signed(io_db8_8); // @[intra_cmp.scala 137:22]
  wire [8:0] _T_41_9 = _T_24 ? $signed(io_db7_9) : $signed(io_db8_9); // @[intra_cmp.scala 137:22]
  wire [8:0] _T_41_10 = _T_24 ? $signed(io_db7_10) : $signed(io_db8_10); // @[intra_cmp.scala 137:22]
  wire [8:0] _T_41_11 = _T_24 ? $signed(io_db7_11) : $signed(io_db8_11); // @[intra_cmp.scala 137:22]
  wire [8:0] _T_41_12 = _T_24 ? $signed(io_db7_12) : $signed(io_db8_12); // @[intra_cmp.scala 137:22]
  wire [8:0] _T_41_13 = _T_24 ? $signed(io_db7_13) : $signed(io_db8_13); // @[intra_cmp.scala 137:22]
  wire [8:0] _T_41_14 = _T_24 ? $signed(io_db7_14) : $signed(io_db8_14); // @[intra_cmp.scala 137:22]
  wire [8:0] _T_41_15 = _T_24 ? $signed(io_db7_15) : $signed(io_db8_15); // @[intra_cmp.scala 137:22]
  wire [8:0] _T_42_0 = _T_23 ? $signed(io_db6_0) : $signed(_T_41_0); // @[intra_cmp.scala 136:20]
  wire [8:0] _T_42_1 = _T_23 ? $signed(io_db6_1) : $signed(_T_41_1); // @[intra_cmp.scala 136:20]
  wire [8:0] _T_42_2 = _T_23 ? $signed(io_db6_2) : $signed(_T_41_2); // @[intra_cmp.scala 136:20]
  wire [8:0] _T_42_3 = _T_23 ? $signed(io_db6_3) : $signed(_T_41_3); // @[intra_cmp.scala 136:20]
  wire [8:0] _T_42_4 = _T_23 ? $signed(io_db6_4) : $signed(_T_41_4); // @[intra_cmp.scala 136:20]
  wire [8:0] _T_42_5 = _T_23 ? $signed(io_db6_5) : $signed(_T_41_5); // @[intra_cmp.scala 136:20]
  wire [8:0] _T_42_6 = _T_23 ? $signed(io_db6_6) : $signed(_T_41_6); // @[intra_cmp.scala 136:20]
  wire [8:0] _T_42_7 = _T_23 ? $signed(io_db6_7) : $signed(_T_41_7); // @[intra_cmp.scala 136:20]
  wire [8:0] _T_42_8 = _T_23 ? $signed(io_db6_8) : $signed(_T_41_8); // @[intra_cmp.scala 136:20]
  wire [8:0] _T_42_9 = _T_23 ? $signed(io_db6_9) : $signed(_T_41_9); // @[intra_cmp.scala 136:20]
  wire [8:0] _T_42_10 = _T_23 ? $signed(io_db6_10) : $signed(_T_41_10); // @[intra_cmp.scala 136:20]
  wire [8:0] _T_42_11 = _T_23 ? $signed(io_db6_11) : $signed(_T_41_11); // @[intra_cmp.scala 136:20]
  wire [8:0] _T_42_12 = _T_23 ? $signed(io_db6_12) : $signed(_T_41_12); // @[intra_cmp.scala 136:20]
  wire [8:0] _T_42_13 = _T_23 ? $signed(io_db6_13) : $signed(_T_41_13); // @[intra_cmp.scala 136:20]
  wire [8:0] _T_42_14 = _T_23 ? $signed(io_db6_14) : $signed(_T_41_14); // @[intra_cmp.scala 136:20]
  wire [8:0] _T_42_15 = _T_23 ? $signed(io_db6_15) : $signed(_T_41_15); // @[intra_cmp.scala 136:20]
  wire [8:0] _T_43_0 = _T_22 ? $signed(io_db5_0) : $signed(_T_42_0); // @[intra_cmp.scala 135:18]
  wire [8:0] _T_43_1 = _T_22 ? $signed(io_db5_1) : $signed(_T_42_1); // @[intra_cmp.scala 135:18]
  wire [8:0] _T_43_2 = _T_22 ? $signed(io_db5_2) : $signed(_T_42_2); // @[intra_cmp.scala 135:18]
  wire [8:0] _T_43_3 = _T_22 ? $signed(io_db5_3) : $signed(_T_42_3); // @[intra_cmp.scala 135:18]
  wire [8:0] _T_43_4 = _T_22 ? $signed(io_db5_4) : $signed(_T_42_4); // @[intra_cmp.scala 135:18]
  wire [8:0] _T_43_5 = _T_22 ? $signed(io_db5_5) : $signed(_T_42_5); // @[intra_cmp.scala 135:18]
  wire [8:0] _T_43_6 = _T_22 ? $signed(io_db5_6) : $signed(_T_42_6); // @[intra_cmp.scala 135:18]
  wire [8:0] _T_43_7 = _T_22 ? $signed(io_db5_7) : $signed(_T_42_7); // @[intra_cmp.scala 135:18]
  wire [8:0] _T_43_8 = _T_22 ? $signed(io_db5_8) : $signed(_T_42_8); // @[intra_cmp.scala 135:18]
  wire [8:0] _T_43_9 = _T_22 ? $signed(io_db5_9) : $signed(_T_42_9); // @[intra_cmp.scala 135:18]
  wire [8:0] _T_43_10 = _T_22 ? $signed(io_db5_10) : $signed(_T_42_10); // @[intra_cmp.scala 135:18]
  wire [8:0] _T_43_11 = _T_22 ? $signed(io_db5_11) : $signed(_T_42_11); // @[intra_cmp.scala 135:18]
  wire [8:0] _T_43_12 = _T_22 ? $signed(io_db5_12) : $signed(_T_42_12); // @[intra_cmp.scala 135:18]
  wire [8:0] _T_43_13 = _T_22 ? $signed(io_db5_13) : $signed(_T_42_13); // @[intra_cmp.scala 135:18]
  wire [8:0] _T_43_14 = _T_22 ? $signed(io_db5_14) : $signed(_T_42_14); // @[intra_cmp.scala 135:18]
  wire [8:0] _T_43_15 = _T_22 ? $signed(io_db5_15) : $signed(_T_42_15); // @[intra_cmp.scala 135:18]
  wire [8:0] _T_44_0 = _T_21 ? $signed(io_db4_0) : $signed(_T_43_0); // @[intra_cmp.scala 134:16]
  wire [8:0] _T_44_1 = _T_21 ? $signed(io_db4_1) : $signed(_T_43_1); // @[intra_cmp.scala 134:16]
  wire [8:0] _T_44_2 = _T_21 ? $signed(io_db4_2) : $signed(_T_43_2); // @[intra_cmp.scala 134:16]
  wire [8:0] _T_44_3 = _T_21 ? $signed(io_db4_3) : $signed(_T_43_3); // @[intra_cmp.scala 134:16]
  wire [8:0] _T_44_4 = _T_21 ? $signed(io_db4_4) : $signed(_T_43_4); // @[intra_cmp.scala 134:16]
  wire [8:0] _T_44_5 = _T_21 ? $signed(io_db4_5) : $signed(_T_43_5); // @[intra_cmp.scala 134:16]
  wire [8:0] _T_44_6 = _T_21 ? $signed(io_db4_6) : $signed(_T_43_6); // @[intra_cmp.scala 134:16]
  wire [8:0] _T_44_7 = _T_21 ? $signed(io_db4_7) : $signed(_T_43_7); // @[intra_cmp.scala 134:16]
  wire [8:0] _T_44_8 = _T_21 ? $signed(io_db4_8) : $signed(_T_43_8); // @[intra_cmp.scala 134:16]
  wire [8:0] _T_44_9 = _T_21 ? $signed(io_db4_9) : $signed(_T_43_9); // @[intra_cmp.scala 134:16]
  wire [8:0] _T_44_10 = _T_21 ? $signed(io_db4_10) : $signed(_T_43_10); // @[intra_cmp.scala 134:16]
  wire [8:0] _T_44_11 = _T_21 ? $signed(io_db4_11) : $signed(_T_43_11); // @[intra_cmp.scala 134:16]
  wire [8:0] _T_44_12 = _T_21 ? $signed(io_db4_12) : $signed(_T_43_12); // @[intra_cmp.scala 134:16]
  wire [8:0] _T_44_13 = _T_21 ? $signed(io_db4_13) : $signed(_T_43_13); // @[intra_cmp.scala 134:16]
  wire [8:0] _T_44_14 = _T_21 ? $signed(io_db4_14) : $signed(_T_43_14); // @[intra_cmp.scala 134:16]
  wire [8:0] _T_44_15 = _T_21 ? $signed(io_db4_15) : $signed(_T_43_15); // @[intra_cmp.scala 134:16]
  wire [8:0] _T_45_0 = _T_20 ? $signed(io_db3_0) : $signed(_T_44_0); // @[intra_cmp.scala 133:14]
  wire [8:0] _T_45_1 = _T_20 ? $signed(io_db3_1) : $signed(_T_44_1); // @[intra_cmp.scala 133:14]
  wire [8:0] _T_45_2 = _T_20 ? $signed(io_db3_2) : $signed(_T_44_2); // @[intra_cmp.scala 133:14]
  wire [8:0] _T_45_3 = _T_20 ? $signed(io_db3_3) : $signed(_T_44_3); // @[intra_cmp.scala 133:14]
  wire [8:0] _T_45_4 = _T_20 ? $signed(io_db3_4) : $signed(_T_44_4); // @[intra_cmp.scala 133:14]
  wire [8:0] _T_45_5 = _T_20 ? $signed(io_db3_5) : $signed(_T_44_5); // @[intra_cmp.scala 133:14]
  wire [8:0] _T_45_6 = _T_20 ? $signed(io_db3_6) : $signed(_T_44_6); // @[intra_cmp.scala 133:14]
  wire [8:0] _T_45_7 = _T_20 ? $signed(io_db3_7) : $signed(_T_44_7); // @[intra_cmp.scala 133:14]
  wire [8:0] _T_45_8 = _T_20 ? $signed(io_db3_8) : $signed(_T_44_8); // @[intra_cmp.scala 133:14]
  wire [8:0] _T_45_9 = _T_20 ? $signed(io_db3_9) : $signed(_T_44_9); // @[intra_cmp.scala 133:14]
  wire [8:0] _T_45_10 = _T_20 ? $signed(io_db3_10) : $signed(_T_44_10); // @[intra_cmp.scala 133:14]
  wire [8:0] _T_45_11 = _T_20 ? $signed(io_db3_11) : $signed(_T_44_11); // @[intra_cmp.scala 133:14]
  wire [8:0] _T_45_12 = _T_20 ? $signed(io_db3_12) : $signed(_T_44_12); // @[intra_cmp.scala 133:14]
  wire [8:0] _T_45_13 = _T_20 ? $signed(io_db3_13) : $signed(_T_44_13); // @[intra_cmp.scala 133:14]
  wire [8:0] _T_45_14 = _T_20 ? $signed(io_db3_14) : $signed(_T_44_14); // @[intra_cmp.scala 133:14]
  wire [8:0] _T_45_15 = _T_20 ? $signed(io_db3_15) : $signed(_T_44_15); // @[intra_cmp.scala 133:14]
  wire [8:0] _T_46_0 = _T_19 ? $signed(io_db2_0) : $signed(_T_45_0); // @[intra_cmp.scala 132:12]
  wire [8:0] _T_46_1 = _T_19 ? $signed(io_db2_1) : $signed(_T_45_1); // @[intra_cmp.scala 132:12]
  wire [8:0] _T_46_2 = _T_19 ? $signed(io_db2_2) : $signed(_T_45_2); // @[intra_cmp.scala 132:12]
  wire [8:0] _T_46_3 = _T_19 ? $signed(io_db2_3) : $signed(_T_45_3); // @[intra_cmp.scala 132:12]
  wire [8:0] _T_46_4 = _T_19 ? $signed(io_db2_4) : $signed(_T_45_4); // @[intra_cmp.scala 132:12]
  wire [8:0] _T_46_5 = _T_19 ? $signed(io_db2_5) : $signed(_T_45_5); // @[intra_cmp.scala 132:12]
  wire [8:0] _T_46_6 = _T_19 ? $signed(io_db2_6) : $signed(_T_45_6); // @[intra_cmp.scala 132:12]
  wire [8:0] _T_46_7 = _T_19 ? $signed(io_db2_7) : $signed(_T_45_7); // @[intra_cmp.scala 132:12]
  wire [8:0] _T_46_8 = _T_19 ? $signed(io_db2_8) : $signed(_T_45_8); // @[intra_cmp.scala 132:12]
  wire [8:0] _T_46_9 = _T_19 ? $signed(io_db2_9) : $signed(_T_45_9); // @[intra_cmp.scala 132:12]
  wire [8:0] _T_46_10 = _T_19 ? $signed(io_db2_10) : $signed(_T_45_10); // @[intra_cmp.scala 132:12]
  wire [8:0] _T_46_11 = _T_19 ? $signed(io_db2_11) : $signed(_T_45_11); // @[intra_cmp.scala 132:12]
  wire [8:0] _T_46_12 = _T_19 ? $signed(io_db2_12) : $signed(_T_45_12); // @[intra_cmp.scala 132:12]
  wire [8:0] _T_46_13 = _T_19 ? $signed(io_db2_13) : $signed(_T_45_13); // @[intra_cmp.scala 132:12]
  wire [8:0] _T_46_14 = _T_19 ? $signed(io_db2_14) : $signed(_T_45_14); // @[intra_cmp.scala 132:12]
  wire [8:0] _T_46_15 = _T_19 ? $signed(io_db2_15) : $signed(_T_45_15); // @[intra_cmp.scala 132:12]
  wire [8:0] _T_47_0 = _T_18 ? $signed(io_db1_0) : $signed(_T_46_0); // @[intra_cmp.scala 131:10]
  wire [8:0] _T_47_1 = _T_18 ? $signed(io_db1_1) : $signed(_T_46_1); // @[intra_cmp.scala 131:10]
  wire [8:0] _T_47_2 = _T_18 ? $signed(io_db1_2) : $signed(_T_46_2); // @[intra_cmp.scala 131:10]
  wire [8:0] _T_47_3 = _T_18 ? $signed(io_db1_3) : $signed(_T_46_3); // @[intra_cmp.scala 131:10]
  wire [8:0] _T_47_4 = _T_18 ? $signed(io_db1_4) : $signed(_T_46_4); // @[intra_cmp.scala 131:10]
  wire [8:0] _T_47_5 = _T_18 ? $signed(io_db1_5) : $signed(_T_46_5); // @[intra_cmp.scala 131:10]
  wire [8:0] _T_47_6 = _T_18 ? $signed(io_db1_6) : $signed(_T_46_6); // @[intra_cmp.scala 131:10]
  wire [8:0] _T_47_7 = _T_18 ? $signed(io_db1_7) : $signed(_T_46_7); // @[intra_cmp.scala 131:10]
  wire [8:0] _T_47_8 = _T_18 ? $signed(io_db1_8) : $signed(_T_46_8); // @[intra_cmp.scala 131:10]
  wire [8:0] _T_47_9 = _T_18 ? $signed(io_db1_9) : $signed(_T_46_9); // @[intra_cmp.scala 131:10]
  wire [8:0] _T_47_10 = _T_18 ? $signed(io_db1_10) : $signed(_T_46_10); // @[intra_cmp.scala 131:10]
  wire [8:0] _T_47_11 = _T_18 ? $signed(io_db1_11) : $signed(_T_46_11); // @[intra_cmp.scala 131:10]
  wire [8:0] _T_47_12 = _T_18 ? $signed(io_db1_12) : $signed(_T_46_12); // @[intra_cmp.scala 131:10]
  wire [8:0] _T_47_13 = _T_18 ? $signed(io_db1_13) : $signed(_T_46_13); // @[intra_cmp.scala 131:10]
  wire [8:0] _T_47_14 = _T_18 ? $signed(io_db1_14) : $signed(_T_46_14); // @[intra_cmp.scala 131:10]
  wire [8:0] _T_47_15 = _T_18 ? $signed(io_db1_15) : $signed(_T_46_15); // @[intra_cmp.scala 131:10]
  wire [8:0] _T_48_0 = _T_17 ? $signed(io_db0_0) : $signed(_T_47_0); // @[intra_cmp.scala 130:24]
  wire [8:0] _T_48_1 = _T_17 ? $signed(io_db0_1) : $signed(_T_47_1); // @[intra_cmp.scala 130:24]
  wire [8:0] _T_48_2 = _T_17 ? $signed(io_db0_2) : $signed(_T_47_2); // @[intra_cmp.scala 130:24]
  wire [8:0] _T_48_3 = _T_17 ? $signed(io_db0_3) : $signed(_T_47_3); // @[intra_cmp.scala 130:24]
  wire [8:0] _T_48_4 = _T_17 ? $signed(io_db0_4) : $signed(_T_47_4); // @[intra_cmp.scala 130:24]
  wire [8:0] _T_48_5 = _T_17 ? $signed(io_db0_5) : $signed(_T_47_5); // @[intra_cmp.scala 130:24]
  wire [8:0] _T_48_6 = _T_17 ? $signed(io_db0_6) : $signed(_T_47_6); // @[intra_cmp.scala 130:24]
  wire [8:0] _T_48_7 = _T_17 ? $signed(io_db0_7) : $signed(_T_47_7); // @[intra_cmp.scala 130:24]
  wire [8:0] _T_48_8 = _T_17 ? $signed(io_db0_8) : $signed(_T_47_8); // @[intra_cmp.scala 130:24]
  wire [8:0] _T_48_9 = _T_17 ? $signed(io_db0_9) : $signed(_T_47_9); // @[intra_cmp.scala 130:24]
  wire [8:0] _T_48_10 = _T_17 ? $signed(io_db0_10) : $signed(_T_47_10); // @[intra_cmp.scala 130:24]
  wire [8:0] _T_48_11 = _T_17 ? $signed(io_db0_11) : $signed(_T_47_11); // @[intra_cmp.scala 130:24]
  wire [8:0] _T_48_12 = _T_17 ? $signed(io_db0_12) : $signed(_T_47_12); // @[intra_cmp.scala 130:24]
  wire [8:0] _T_48_13 = _T_17 ? $signed(io_db0_13) : $signed(_T_47_13); // @[intra_cmp.scala 130:24]
  wire [8:0] _T_48_14 = _T_17 ? $signed(io_db0_14) : $signed(_T_47_14); // @[intra_cmp.scala 130:24]
  wire [8:0] _T_48_15 = _T_17 ? $signed(io_db0_15) : $signed(_T_47_15); // @[intra_cmp.scala 130:24]
  assign io_sad_best = io_start ? _GEN_25 : 12'hfff; // @[intra_cmp.scala 117:17 141:17 34:18]
  assign io_mode_best = io_start ? minIndex : 4'h0; // @[intra_cmp.scala 118:18 142:18 34:18]
  assign io_pred_best_0 = io_start ? _T_32_0 : 8'h0; // @[intra_cmp.scala 120:18 34:18 144:23]
  assign io_pred_best_1 = io_start ? _T_32_1 : 8'h0; // @[intra_cmp.scala 120:18 34:18 144:23]
  assign io_pred_best_2 = io_start ? _T_32_2 : 8'h0; // @[intra_cmp.scala 120:18 34:18 144:23]
  assign io_pred_best_3 = io_start ? _T_32_3 : 8'h0; // @[intra_cmp.scala 120:18 34:18 144:23]
  assign io_pred_best_4 = io_start ? _T_32_4 : 8'h0; // @[intra_cmp.scala 120:18 34:18 144:23]
  assign io_pred_best_5 = io_start ? _T_32_5 : 8'h0; // @[intra_cmp.scala 120:18 34:18 144:23]
  assign io_pred_best_6 = io_start ? _T_32_6 : 8'h0; // @[intra_cmp.scala 120:18 34:18 144:23]
  assign io_pred_best_7 = io_start ? _T_32_7 : 8'h0; // @[intra_cmp.scala 120:18 34:18 144:23]
  assign io_pred_best_8 = io_start ? _T_32_8 : 8'h0; // @[intra_cmp.scala 120:18 34:18 144:23]
  assign io_pred_best_9 = io_start ? _T_32_9 : 8'h0; // @[intra_cmp.scala 120:18 34:18 144:23]
  assign io_pred_best_10 = io_start ? _T_32_10 : 8'h0; // @[intra_cmp.scala 120:18 34:18 144:23]
  assign io_pred_best_11 = io_start ? _T_32_11 : 8'h0; // @[intra_cmp.scala 120:18 34:18 144:23]
  assign io_pred_best_12 = io_start ? _T_32_12 : 8'h0; // @[intra_cmp.scala 120:18 34:18 144:23]
  assign io_pred_best_13 = io_start ? _T_32_13 : 8'h0; // @[intra_cmp.scala 120:18 34:18 144:23]
  assign io_pred_best_14 = io_start ? _T_32_14 : 8'h0; // @[intra_cmp.scala 120:18 34:18 144:23]
  assign io_pred_best_15 = io_start ? _T_32_15 : 8'h0; // @[intra_cmp.scala 120:18 34:18 144:23]
  assign io_diff_best_0 = io_start ? $signed(_T_48_0) : $signed(9'sh0); // @[intra_cmp.scala 130:18 34:18 147:23]
  assign io_diff_best_1 = io_start ? $signed(_T_48_1) : $signed(9'sh0); // @[intra_cmp.scala 130:18 34:18 147:23]
  assign io_diff_best_2 = io_start ? $signed(_T_48_2) : $signed(9'sh0); // @[intra_cmp.scala 130:18 34:18 147:23]
  assign io_diff_best_3 = io_start ? $signed(_T_48_3) : $signed(9'sh0); // @[intra_cmp.scala 130:18 34:18 147:23]
  assign io_diff_best_4 = io_start ? $signed(_T_48_4) : $signed(9'sh0); // @[intra_cmp.scala 130:18 34:18 147:23]
  assign io_diff_best_5 = io_start ? $signed(_T_48_5) : $signed(9'sh0); // @[intra_cmp.scala 130:18 34:18 147:23]
  assign io_diff_best_6 = io_start ? $signed(_T_48_6) : $signed(9'sh0); // @[intra_cmp.scala 130:18 34:18 147:23]
  assign io_diff_best_7 = io_start ? $signed(_T_48_7) : $signed(9'sh0); // @[intra_cmp.scala 130:18 34:18 147:23]
  assign io_diff_best_8 = io_start ? $signed(_T_48_8) : $signed(9'sh0); // @[intra_cmp.scala 130:18 34:18 147:23]
  assign io_diff_best_9 = io_start ? $signed(_T_48_9) : $signed(9'sh0); // @[intra_cmp.scala 130:18 34:18 147:23]
  assign io_diff_best_10 = io_start ? $signed(_T_48_10) : $signed(9'sh0); // @[intra_cmp.scala 130:18 34:18 147:23]
  assign io_diff_best_11 = io_start ? $signed(_T_48_11) : $signed(9'sh0); // @[intra_cmp.scala 130:18 34:18 147:23]
  assign io_diff_best_12 = io_start ? $signed(_T_48_12) : $signed(9'sh0); // @[intra_cmp.scala 130:18 34:18 147:23]
  assign io_diff_best_13 = io_start ? $signed(_T_48_13) : $signed(9'sh0); // @[intra_cmp.scala 130:18 34:18 147:23]
  assign io_diff_best_14 = io_start ? $signed(_T_48_14) : $signed(9'sh0); // @[intra_cmp.scala 130:18 34:18 147:23]
  assign io_diff_best_15 = io_start ? $signed(_T_48_15) : $signed(9'sh0); // @[intra_cmp.scala 130:18 34:18 147:23]
endmodule
module intra4x4structural(
  input         clock,
  input         reset,
  input  [7:0]  io_neighbor_pixels_0,
  input  [7:0]  io_neighbor_pixels_1,
  input  [7:0]  io_neighbor_pixels_2,
  input  [7:0]  io_neighbor_pixels_3,
  input  [7:0]  io_neighbor_pixels_4,
  input  [7:0]  io_neighbor_pixels_5,
  input  [7:0]  io_neighbor_pixels_6,
  input  [7:0]  io_neighbor_pixels_7,
  input  [7:0]  io_neighbor_pixels_8,
  input  [7:0]  io_neighbor_pixels_9,
  input  [7:0]  io_neighbor_pixels_10,
  input  [7:0]  io_neighbor_pixels_11,
  input  [7:0]  io_neighbor_pixels_12,
  input         io_valid_IL,
  input         io_valid_EH,
  input         io_valid_AD,
  input         io_valid_M,
  input         io_start,
  input  [7:0]  io_src_pixels_0,
  input  [7:0]  io_src_pixels_1,
  input  [7:0]  io_src_pixels_2,
  input  [7:0]  io_src_pixels_3,
  input  [7:0]  io_src_pixels_4,
  input  [7:0]  io_src_pixels_5,
  input  [7:0]  io_src_pixels_6,
  input  [7:0]  io_src_pixels_7,
  input  [7:0]  io_src_pixels_8,
  input  [7:0]  io_src_pixels_9,
  input  [7:0]  io_src_pixels_10,
  input  [7:0]  io_src_pixels_11,
  input  [7:0]  io_src_pixels_12,
  input  [7:0]  io_src_pixels_13,
  input  [7:0]  io_src_pixels_14,
  input  [7:0]  io_src_pixels_15,
  output [11:0] io_sad_best,
  output [3:0]  io_mode_best,
  output [7:0]  io_pred_blk_best_0,
  output [7:0]  io_pred_blk_best_1,
  output [7:0]  io_pred_blk_best_2,
  output [7:0]  io_pred_blk_best_3,
  output [7:0]  io_pred_blk_best_4,
  output [7:0]  io_pred_blk_best_5,
  output [7:0]  io_pred_blk_best_6,
  output [7:0]  io_pred_blk_best_7,
  output [7:0]  io_pred_blk_best_8,
  output [7:0]  io_pred_blk_best_9,
  output [7:0]  io_pred_blk_best_10,
  output [7:0]  io_pred_blk_best_11,
  output [7:0]  io_pred_blk_best_12,
  output [7:0]  io_pred_blk_best_13,
  output [7:0]  io_pred_blk_best_14,
  output [7:0]  io_pred_blk_best_15,
  output [8:0]  io_diff_blk_best_0,
  output [8:0]  io_diff_blk_best_1,
  output [8:0]  io_diff_blk_best_2,
  output [8:0]  io_diff_blk_best_3,
  output [8:0]  io_diff_blk_best_4,
  output [8:0]  io_diff_blk_best_5,
  output [8:0]  io_diff_blk_best_6,
  output [8:0]  io_diff_blk_best_7,
  output [8:0]  io_diff_blk_best_8,
  output [8:0]  io_diff_blk_best_9,
  output [8:0]  io_diff_blk_best_10,
  output [8:0]  io_diff_blk_best_11,
  output [8:0]  io_diff_blk_best_12,
  output [8:0]  io_diff_blk_best_13,
  output [8:0]  io_diff_blk_best_14,
  output [8:0]  io_diff_blk_best_15,
  output        io_done
);
  wire [7:0] predictor_inst_io_neighbors_0; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_neighbors_1; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_neighbors_2; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_neighbors_3; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_neighbors_4; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_neighbors_5; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_neighbors_6; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_neighbors_7; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_neighbors_8; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_neighbors_9; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_neighbors_10; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_neighbors_11; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_neighbors_12; // @[intra4x4top.scala 28:31]
  wire  predictor_inst_io_valid_IL; // @[intra4x4top.scala 28:31]
  wire  predictor_inst_io_valid_EH; // @[intra4x4top.scala 28:31]
  wire  predictor_inst_io_valid_AD; // @[intra4x4top.scala 28:31]
  wire  predictor_inst_io_valid_M; // @[intra4x4top.scala 28:31]
  wire  predictor_inst_io_capture_pixel; // @[intra4x4top.scala 28:31]
  wire  predictor_inst_io_valid_0; // @[intra4x4top.scala 28:31]
  wire  predictor_inst_io_valid_1; // @[intra4x4top.scala 28:31]
  wire  predictor_inst_io_valid_2; // @[intra4x4top.scala 28:31]
  wire  predictor_inst_io_valid_3; // @[intra4x4top.scala 28:31]
  wire  predictor_inst_io_valid_4; // @[intra4x4top.scala 28:31]
  wire  predictor_inst_io_valid_5; // @[intra4x4top.scala 28:31]
  wire  predictor_inst_io_valid_6; // @[intra4x4top.scala 28:31]
  wire  predictor_inst_io_valid_7; // @[intra4x4top.scala 28:31]
  wire  predictor_inst_io_valid_8; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix0_0; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix0_1; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix0_2; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix0_3; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix0_4; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix0_5; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix0_6; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix0_7; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix0_8; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix0_9; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix0_10; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix0_11; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix0_12; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix0_13; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix0_14; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix0_15; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix1_0; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix1_1; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix1_2; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix1_3; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix1_4; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix1_5; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix1_6; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix1_7; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix1_8; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix1_9; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix1_10; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix1_11; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix1_12; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix1_13; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix1_14; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix1_15; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix2_0; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix2_1; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix2_2; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix2_3; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix2_4; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix2_5; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix2_6; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix2_7; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix2_8; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix2_9; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix2_10; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix2_11; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix2_12; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix2_13; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix2_14; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix2_15; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix3_0; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix3_1; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix3_2; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix3_3; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix3_4; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix3_5; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix3_6; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix3_7; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix3_8; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix3_9; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix3_10; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix3_11; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix3_12; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix3_13; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix3_14; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix3_15; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix4_0; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix4_1; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix4_2; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix4_3; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix4_4; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix4_5; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix4_6; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix4_7; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix4_8; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix4_9; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix4_10; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix4_11; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix4_12; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix4_13; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix4_14; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix4_15; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix5_0; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix5_1; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix5_2; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix5_3; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix5_4; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix5_5; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix5_6; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix5_7; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix5_8; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix5_9; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix5_10; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix5_11; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix5_12; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix5_13; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix5_14; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix5_15; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix6_0; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix6_1; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix6_2; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix6_3; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix6_4; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix6_5; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix6_6; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix6_7; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix6_8; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix6_9; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix6_10; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix6_11; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix6_12; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix6_13; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix6_14; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix6_15; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix7_0; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix7_1; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix7_2; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix7_3; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix7_4; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix7_5; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix7_6; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix7_7; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix7_8; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix7_9; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix7_10; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix7_11; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix7_12; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix7_13; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix7_14; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix7_15; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix8_0; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix8_1; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix8_2; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix8_3; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix8_4; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix8_5; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix8_6; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix8_7; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix8_8; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix8_9; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix8_10; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix8_11; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix8_12; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix8_13; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix8_14; // @[intra4x4top.scala 28:31]
  wire [7:0] predictor_inst_io_predicted_pix8_15; // @[intra4x4top.scala 28:31]
  wire  sad4x_inst_io_valid_0; // @[intra4x4top.scala 29:31]
  wire  sad4x_inst_io_valid_1; // @[intra4x4top.scala 29:31]
  wire  sad4x_inst_io_valid_2; // @[intra4x4top.scala 29:31]
  wire  sad4x_inst_io_valid_3; // @[intra4x4top.scala 29:31]
  wire  sad4x_inst_io_valid_4; // @[intra4x4top.scala 29:31]
  wire  sad4x_inst_io_valid_5; // @[intra4x4top.scala 29:31]
  wire  sad4x_inst_io_valid_6; // @[intra4x4top.scala 29:31]
  wire  sad4x_inst_io_valid_7; // @[intra4x4top.scala 29:31]
  wire  sad4x_inst_io_valid_8; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_src_pix_0; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_src_pix_1; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_src_pix_2; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_src_pix_3; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_src_pix_4; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_src_pix_5; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_src_pix_6; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_src_pix_7; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_src_pix_8; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_src_pix_9; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_src_pix_10; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_src_pix_11; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_src_pix_12; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_src_pix_13; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_src_pix_14; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_src_pix_15; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred0_0; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred0_1; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred0_2; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred0_3; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred0_4; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred0_5; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred0_6; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred0_7; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred0_8; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred0_9; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred0_10; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred0_11; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred0_12; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred0_13; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred0_14; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred0_15; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred1_0; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred1_1; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred1_2; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred1_3; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred1_4; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred1_5; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred1_6; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred1_7; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred1_8; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred1_9; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred1_10; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred1_11; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred1_12; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred1_13; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred1_14; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred1_15; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred2_0; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred2_1; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred2_2; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred2_3; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred2_4; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred2_5; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred2_6; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred2_7; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred2_8; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred2_9; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred2_10; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred2_11; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred2_12; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred2_13; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred2_14; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred2_15; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred3_0; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred3_1; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred3_2; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred3_3; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred3_4; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred3_5; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred3_6; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred3_7; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred3_8; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred3_9; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred3_10; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred3_11; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred3_12; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred3_13; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred3_14; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred3_15; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred4_0; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred4_1; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred4_2; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred4_3; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred4_4; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred4_5; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred4_6; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred4_7; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred4_8; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred4_9; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred4_10; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred4_11; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred4_12; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred4_13; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred4_14; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred4_15; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred5_0; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred5_1; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred5_2; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred5_3; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred5_4; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred5_5; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred5_6; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred5_7; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred5_8; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred5_9; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred5_10; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred5_11; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred5_12; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred5_13; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred5_14; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred5_15; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred6_0; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred6_1; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred6_2; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred6_3; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred6_4; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred6_5; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred6_6; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred6_7; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred6_8; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred6_9; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred6_10; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred6_11; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred6_12; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred6_13; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred6_14; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred6_15; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred7_0; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred7_1; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred7_2; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred7_3; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred7_4; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred7_5; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred7_6; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred7_7; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred7_8; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred7_9; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred7_10; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred7_11; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred7_12; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred7_13; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred7_14; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred7_15; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred8_0; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred8_1; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred8_2; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred8_3; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred8_4; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred8_5; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred8_6; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred8_7; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred8_8; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred8_9; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred8_10; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred8_11; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred8_12; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred8_13; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred8_14; // @[intra4x4top.scala 29:31]
  wire [7:0] sad4x_inst_io_pred8_15; // @[intra4x4top.scala 29:31]
  wire [11:0] sad4x_inst_io_sad_seq_0; // @[intra4x4top.scala 29:31]
  wire [11:0] sad4x_inst_io_sad_seq_1; // @[intra4x4top.scala 29:31]
  wire [11:0] sad4x_inst_io_sad_seq_2; // @[intra4x4top.scala 29:31]
  wire [11:0] sad4x_inst_io_sad_seq_3; // @[intra4x4top.scala 29:31]
  wire [11:0] sad4x_inst_io_sad_seq_4; // @[intra4x4top.scala 29:31]
  wire [11:0] sad4x_inst_io_sad_seq_5; // @[intra4x4top.scala 29:31]
  wire [11:0] sad4x_inst_io_sad_seq_6; // @[intra4x4top.scala 29:31]
  wire [11:0] sad4x_inst_io_sad_seq_7; // @[intra4x4top.scala 29:31]
  wire [11:0] sad4x_inst_io_sad_seq_8; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff0_0; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff0_1; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff0_2; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff0_3; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff0_4; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff0_5; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff0_6; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff0_7; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff0_8; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff0_9; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff0_10; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff0_11; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff0_12; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff0_13; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff0_14; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff0_15; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff1_0; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff1_1; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff1_2; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff1_3; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff1_4; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff1_5; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff1_6; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff1_7; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff1_8; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff1_9; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff1_10; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff1_11; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff1_12; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff1_13; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff1_14; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff1_15; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff2_0; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff2_1; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff2_2; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff2_3; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff2_4; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff2_5; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff2_6; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff2_7; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff2_8; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff2_9; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff2_10; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff2_11; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff2_12; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff2_13; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff2_14; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff2_15; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff3_0; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff3_1; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff3_2; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff3_3; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff3_4; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff3_5; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff3_6; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff3_7; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff3_8; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff3_9; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff3_10; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff3_11; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff3_12; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff3_13; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff3_14; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff3_15; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff4_0; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff4_1; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff4_2; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff4_3; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff4_4; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff4_5; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff4_6; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff4_7; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff4_8; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff4_9; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff4_10; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff4_11; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff4_12; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff4_13; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff4_14; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff4_15; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff5_0; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff5_1; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff5_2; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff5_3; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff5_4; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff5_5; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff5_6; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff5_7; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff5_8; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff5_9; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff5_10; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff5_11; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff5_12; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff5_13; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff5_14; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff5_15; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff6_0; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff6_1; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff6_2; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff6_3; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff6_4; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff6_5; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff6_6; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff6_7; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff6_8; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff6_9; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff6_10; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff6_11; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff6_12; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff6_13; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff6_14; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff6_15; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff7_0; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff7_1; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff7_2; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff7_3; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff7_4; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff7_5; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff7_6; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff7_7; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff7_8; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff7_9; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff7_10; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff7_11; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff7_12; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff7_13; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff7_14; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff7_15; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff8_0; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff8_1; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff8_2; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff8_3; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff8_4; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff8_5; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff8_6; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff8_7; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff8_8; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff8_9; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff8_10; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff8_11; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff8_12; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff8_13; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff8_14; // @[intra4x4top.scala 29:31]
  wire [8:0] sad4x_inst_io_diff8_15; // @[intra4x4top.scala 29:31]
  wire  intra_ctrl_inst_clock; // @[intra4x4top.scala 30:31]
  wire  intra_ctrl_inst_reset; // @[intra4x4top.scala 30:31]
  wire  intra_ctrl_inst_io_start; // @[intra4x4top.scala 30:31]
  wire  intra_ctrl_inst_io_capture_pix; // @[intra4x4top.scala 30:31]
  wire  intra_ctrl_inst_io_capture_sad; // @[intra4x4top.scala 30:31]
  wire  intra_ctrl_inst_io_done; // @[intra4x4top.scala 30:31]
  wire  intra_cmp_inst_io_start; // @[intra4x4top.scala 31:31]
  wire [11:0] intra_cmp_inst_io_sad_res_0; // @[intra4x4top.scala 31:31]
  wire [11:0] intra_cmp_inst_io_sad_res_1; // @[intra4x4top.scala 31:31]
  wire [11:0] intra_cmp_inst_io_sad_res_2; // @[intra4x4top.scala 31:31]
  wire [11:0] intra_cmp_inst_io_sad_res_3; // @[intra4x4top.scala 31:31]
  wire [11:0] intra_cmp_inst_io_sad_res_4; // @[intra4x4top.scala 31:31]
  wire [11:0] intra_cmp_inst_io_sad_res_5; // @[intra4x4top.scala 31:31]
  wire [11:0] intra_cmp_inst_io_sad_res_6; // @[intra4x4top.scala 31:31]
  wire [11:0] intra_cmp_inst_io_sad_res_7; // @[intra4x4top.scala 31:31]
  wire [11:0] intra_cmp_inst_io_sad_res_8; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db0_0; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db0_1; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db0_2; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db0_3; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db0_4; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db0_5; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db0_6; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db0_7; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db0_8; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db0_9; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db0_10; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db0_11; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db0_12; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db0_13; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db0_14; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db0_15; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db1_0; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db1_1; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db1_2; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db1_3; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db1_4; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db1_5; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db1_6; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db1_7; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db1_8; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db1_9; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db1_10; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db1_11; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db1_12; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db1_13; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db1_14; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db1_15; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db2_0; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db2_1; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db2_2; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db2_3; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db2_4; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db2_5; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db2_6; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db2_7; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db2_8; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db2_9; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db2_10; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db2_11; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db2_12; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db2_13; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db2_14; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db2_15; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db3_0; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db3_1; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db3_2; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db3_3; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db3_4; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db3_5; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db3_6; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db3_7; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db3_8; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db3_9; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db3_10; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db3_11; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db3_12; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db3_13; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db3_14; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db3_15; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db4_0; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db4_1; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db4_2; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db4_3; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db4_4; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db4_5; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db4_6; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db4_7; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db4_8; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db4_9; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db4_10; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db4_11; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db4_12; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db4_13; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db4_14; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db4_15; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db5_0; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db5_1; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db5_2; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db5_3; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db5_4; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db5_5; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db5_6; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db5_7; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db5_8; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db5_9; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db5_10; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db5_11; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db5_12; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db5_13; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db5_14; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db5_15; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db6_0; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db6_1; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db6_2; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db6_3; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db6_4; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db6_5; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db6_6; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db6_7; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db6_8; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db6_9; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db6_10; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db6_11; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db6_12; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db6_13; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db6_14; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db6_15; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db7_0; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db7_1; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db7_2; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db7_3; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db7_4; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db7_5; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db7_6; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db7_7; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db7_8; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db7_9; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db7_10; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db7_11; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db7_12; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db7_13; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db7_14; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db7_15; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db8_0; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db8_1; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db8_2; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db8_3; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db8_4; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db8_5; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db8_6; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db8_7; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db8_8; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db8_9; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db8_10; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db8_11; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db8_12; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db8_13; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db8_14; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_db8_15; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix0_0; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix0_1; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix0_2; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix0_3; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix0_4; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix0_5; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix0_6; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix0_7; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix0_8; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix0_9; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix0_10; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix0_11; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix0_12; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix0_13; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix0_14; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix0_15; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix1_0; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix1_1; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix1_2; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix1_3; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix1_4; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix1_5; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix1_6; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix1_7; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix1_8; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix1_9; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix1_10; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix1_11; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix1_12; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix1_13; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix1_14; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix1_15; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix2_0; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix2_1; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix2_2; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix2_3; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix2_4; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix2_5; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix2_6; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix2_7; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix2_8; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix2_9; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix2_10; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix2_11; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix2_12; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix2_13; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix2_14; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix2_15; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix3_0; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix3_1; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix3_2; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix3_3; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix3_4; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix3_5; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix3_6; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix3_7; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix3_8; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix3_9; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix3_10; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix3_11; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix3_12; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix3_13; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix3_14; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix3_15; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix4_0; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix4_1; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix4_2; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix4_3; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix4_4; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix4_5; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix4_6; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix4_7; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix4_8; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix4_9; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix4_10; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix4_11; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix4_12; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix4_13; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix4_14; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix4_15; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix5_0; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix5_1; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix5_2; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix5_3; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix5_4; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix5_5; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix5_6; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix5_7; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix5_8; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix5_9; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix5_10; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix5_11; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix5_12; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix5_13; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix5_14; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix5_15; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix6_0; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix6_1; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix6_2; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix6_3; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix6_4; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix6_5; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix6_6; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix6_7; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix6_8; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix6_9; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix6_10; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix6_11; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix6_12; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix6_13; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix6_14; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix6_15; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix7_0; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix7_1; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix7_2; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix7_3; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix7_4; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix7_5; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix7_6; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix7_7; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix7_8; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix7_9; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix7_10; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix7_11; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix7_12; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix7_13; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix7_14; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix7_15; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix8_0; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix8_1; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix8_2; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix8_3; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix8_4; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix8_5; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix8_6; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix8_7; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix8_8; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix8_9; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix8_10; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix8_11; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix8_12; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix8_13; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix8_14; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_pix8_15; // @[intra4x4top.scala 31:31]
  wire [11:0] intra_cmp_inst_io_sad_best; // @[intra4x4top.scala 31:31]
  wire [3:0] intra_cmp_inst_io_mode_best; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_best_0; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_best_1; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_best_2; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_best_3; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_best_4; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_best_5; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_best_6; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_best_7; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_best_8; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_best_9; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_best_10; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_best_11; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_best_12; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_best_13; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_best_14; // @[intra4x4top.scala 31:31]
  wire [7:0] intra_cmp_inst_io_pred_best_15; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_diff_best_0; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_diff_best_1; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_diff_best_2; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_diff_best_3; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_diff_best_4; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_diff_best_5; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_diff_best_6; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_diff_best_7; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_diff_best_8; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_diff_best_9; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_diff_best_10; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_diff_best_11; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_diff_best_12; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_diff_best_13; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_diff_best_14; // @[intra4x4top.scala 31:31]
  wire [8:0] intra_cmp_inst_io_diff_best_15; // @[intra4x4top.scala 31:31]
  predictor predictor_inst ( // @[intra4x4top.scala 28:31]
    .io_neighbors_0(predictor_inst_io_neighbors_0),
    .io_neighbors_1(predictor_inst_io_neighbors_1),
    .io_neighbors_2(predictor_inst_io_neighbors_2),
    .io_neighbors_3(predictor_inst_io_neighbors_3),
    .io_neighbors_4(predictor_inst_io_neighbors_4),
    .io_neighbors_5(predictor_inst_io_neighbors_5),
    .io_neighbors_6(predictor_inst_io_neighbors_6),
    .io_neighbors_7(predictor_inst_io_neighbors_7),
    .io_neighbors_8(predictor_inst_io_neighbors_8),
    .io_neighbors_9(predictor_inst_io_neighbors_9),
    .io_neighbors_10(predictor_inst_io_neighbors_10),
    .io_neighbors_11(predictor_inst_io_neighbors_11),
    .io_neighbors_12(predictor_inst_io_neighbors_12),
    .io_valid_IL(predictor_inst_io_valid_IL),
    .io_valid_EH(predictor_inst_io_valid_EH),
    .io_valid_AD(predictor_inst_io_valid_AD),
    .io_valid_M(predictor_inst_io_valid_M),
    .io_capture_pixel(predictor_inst_io_capture_pixel),
    .io_valid_0(predictor_inst_io_valid_0),
    .io_valid_1(predictor_inst_io_valid_1),
    .io_valid_2(predictor_inst_io_valid_2),
    .io_valid_3(predictor_inst_io_valid_3),
    .io_valid_4(predictor_inst_io_valid_4),
    .io_valid_5(predictor_inst_io_valid_5),
    .io_valid_6(predictor_inst_io_valid_6),
    .io_valid_7(predictor_inst_io_valid_7),
    .io_valid_8(predictor_inst_io_valid_8),
    .io_predicted_pix0_0(predictor_inst_io_predicted_pix0_0),
    .io_predicted_pix0_1(predictor_inst_io_predicted_pix0_1),
    .io_predicted_pix0_2(predictor_inst_io_predicted_pix0_2),
    .io_predicted_pix0_3(predictor_inst_io_predicted_pix0_3),
    .io_predicted_pix0_4(predictor_inst_io_predicted_pix0_4),
    .io_predicted_pix0_5(predictor_inst_io_predicted_pix0_5),
    .io_predicted_pix0_6(predictor_inst_io_predicted_pix0_6),
    .io_predicted_pix0_7(predictor_inst_io_predicted_pix0_7),
    .io_predicted_pix0_8(predictor_inst_io_predicted_pix0_8),
    .io_predicted_pix0_9(predictor_inst_io_predicted_pix0_9),
    .io_predicted_pix0_10(predictor_inst_io_predicted_pix0_10),
    .io_predicted_pix0_11(predictor_inst_io_predicted_pix0_11),
    .io_predicted_pix0_12(predictor_inst_io_predicted_pix0_12),
    .io_predicted_pix0_13(predictor_inst_io_predicted_pix0_13),
    .io_predicted_pix0_14(predictor_inst_io_predicted_pix0_14),
    .io_predicted_pix0_15(predictor_inst_io_predicted_pix0_15),
    .io_predicted_pix1_0(predictor_inst_io_predicted_pix1_0),
    .io_predicted_pix1_1(predictor_inst_io_predicted_pix1_1),
    .io_predicted_pix1_2(predictor_inst_io_predicted_pix1_2),
    .io_predicted_pix1_3(predictor_inst_io_predicted_pix1_3),
    .io_predicted_pix1_4(predictor_inst_io_predicted_pix1_4),
    .io_predicted_pix1_5(predictor_inst_io_predicted_pix1_5),
    .io_predicted_pix1_6(predictor_inst_io_predicted_pix1_6),
    .io_predicted_pix1_7(predictor_inst_io_predicted_pix1_7),
    .io_predicted_pix1_8(predictor_inst_io_predicted_pix1_8),
    .io_predicted_pix1_9(predictor_inst_io_predicted_pix1_9),
    .io_predicted_pix1_10(predictor_inst_io_predicted_pix1_10),
    .io_predicted_pix1_11(predictor_inst_io_predicted_pix1_11),
    .io_predicted_pix1_12(predictor_inst_io_predicted_pix1_12),
    .io_predicted_pix1_13(predictor_inst_io_predicted_pix1_13),
    .io_predicted_pix1_14(predictor_inst_io_predicted_pix1_14),
    .io_predicted_pix1_15(predictor_inst_io_predicted_pix1_15),
    .io_predicted_pix2_0(predictor_inst_io_predicted_pix2_0),
    .io_predicted_pix2_1(predictor_inst_io_predicted_pix2_1),
    .io_predicted_pix2_2(predictor_inst_io_predicted_pix2_2),
    .io_predicted_pix2_3(predictor_inst_io_predicted_pix2_3),
    .io_predicted_pix2_4(predictor_inst_io_predicted_pix2_4),
    .io_predicted_pix2_5(predictor_inst_io_predicted_pix2_5),
    .io_predicted_pix2_6(predictor_inst_io_predicted_pix2_6),
    .io_predicted_pix2_7(predictor_inst_io_predicted_pix2_7),
    .io_predicted_pix2_8(predictor_inst_io_predicted_pix2_8),
    .io_predicted_pix2_9(predictor_inst_io_predicted_pix2_9),
    .io_predicted_pix2_10(predictor_inst_io_predicted_pix2_10),
    .io_predicted_pix2_11(predictor_inst_io_predicted_pix2_11),
    .io_predicted_pix2_12(predictor_inst_io_predicted_pix2_12),
    .io_predicted_pix2_13(predictor_inst_io_predicted_pix2_13),
    .io_predicted_pix2_14(predictor_inst_io_predicted_pix2_14),
    .io_predicted_pix2_15(predictor_inst_io_predicted_pix2_15),
    .io_predicted_pix3_0(predictor_inst_io_predicted_pix3_0),
    .io_predicted_pix3_1(predictor_inst_io_predicted_pix3_1),
    .io_predicted_pix3_2(predictor_inst_io_predicted_pix3_2),
    .io_predicted_pix3_3(predictor_inst_io_predicted_pix3_3),
    .io_predicted_pix3_4(predictor_inst_io_predicted_pix3_4),
    .io_predicted_pix3_5(predictor_inst_io_predicted_pix3_5),
    .io_predicted_pix3_6(predictor_inst_io_predicted_pix3_6),
    .io_predicted_pix3_7(predictor_inst_io_predicted_pix3_7),
    .io_predicted_pix3_8(predictor_inst_io_predicted_pix3_8),
    .io_predicted_pix3_9(predictor_inst_io_predicted_pix3_9),
    .io_predicted_pix3_10(predictor_inst_io_predicted_pix3_10),
    .io_predicted_pix3_11(predictor_inst_io_predicted_pix3_11),
    .io_predicted_pix3_12(predictor_inst_io_predicted_pix3_12),
    .io_predicted_pix3_13(predictor_inst_io_predicted_pix3_13),
    .io_predicted_pix3_14(predictor_inst_io_predicted_pix3_14),
    .io_predicted_pix3_15(predictor_inst_io_predicted_pix3_15),
    .io_predicted_pix4_0(predictor_inst_io_predicted_pix4_0),
    .io_predicted_pix4_1(predictor_inst_io_predicted_pix4_1),
    .io_predicted_pix4_2(predictor_inst_io_predicted_pix4_2),
    .io_predicted_pix4_3(predictor_inst_io_predicted_pix4_3),
    .io_predicted_pix4_4(predictor_inst_io_predicted_pix4_4),
    .io_predicted_pix4_5(predictor_inst_io_predicted_pix4_5),
    .io_predicted_pix4_6(predictor_inst_io_predicted_pix4_6),
    .io_predicted_pix4_7(predictor_inst_io_predicted_pix4_7),
    .io_predicted_pix4_8(predictor_inst_io_predicted_pix4_8),
    .io_predicted_pix4_9(predictor_inst_io_predicted_pix4_9),
    .io_predicted_pix4_10(predictor_inst_io_predicted_pix4_10),
    .io_predicted_pix4_11(predictor_inst_io_predicted_pix4_11),
    .io_predicted_pix4_12(predictor_inst_io_predicted_pix4_12),
    .io_predicted_pix4_13(predictor_inst_io_predicted_pix4_13),
    .io_predicted_pix4_14(predictor_inst_io_predicted_pix4_14),
    .io_predicted_pix4_15(predictor_inst_io_predicted_pix4_15),
    .io_predicted_pix5_0(predictor_inst_io_predicted_pix5_0),
    .io_predicted_pix5_1(predictor_inst_io_predicted_pix5_1),
    .io_predicted_pix5_2(predictor_inst_io_predicted_pix5_2),
    .io_predicted_pix5_3(predictor_inst_io_predicted_pix5_3),
    .io_predicted_pix5_4(predictor_inst_io_predicted_pix5_4),
    .io_predicted_pix5_5(predictor_inst_io_predicted_pix5_5),
    .io_predicted_pix5_6(predictor_inst_io_predicted_pix5_6),
    .io_predicted_pix5_7(predictor_inst_io_predicted_pix5_7),
    .io_predicted_pix5_8(predictor_inst_io_predicted_pix5_8),
    .io_predicted_pix5_9(predictor_inst_io_predicted_pix5_9),
    .io_predicted_pix5_10(predictor_inst_io_predicted_pix5_10),
    .io_predicted_pix5_11(predictor_inst_io_predicted_pix5_11),
    .io_predicted_pix5_12(predictor_inst_io_predicted_pix5_12),
    .io_predicted_pix5_13(predictor_inst_io_predicted_pix5_13),
    .io_predicted_pix5_14(predictor_inst_io_predicted_pix5_14),
    .io_predicted_pix5_15(predictor_inst_io_predicted_pix5_15),
    .io_predicted_pix6_0(predictor_inst_io_predicted_pix6_0),
    .io_predicted_pix6_1(predictor_inst_io_predicted_pix6_1),
    .io_predicted_pix6_2(predictor_inst_io_predicted_pix6_2),
    .io_predicted_pix6_3(predictor_inst_io_predicted_pix6_3),
    .io_predicted_pix6_4(predictor_inst_io_predicted_pix6_4),
    .io_predicted_pix6_5(predictor_inst_io_predicted_pix6_5),
    .io_predicted_pix6_6(predictor_inst_io_predicted_pix6_6),
    .io_predicted_pix6_7(predictor_inst_io_predicted_pix6_7),
    .io_predicted_pix6_8(predictor_inst_io_predicted_pix6_8),
    .io_predicted_pix6_9(predictor_inst_io_predicted_pix6_9),
    .io_predicted_pix6_10(predictor_inst_io_predicted_pix6_10),
    .io_predicted_pix6_11(predictor_inst_io_predicted_pix6_11),
    .io_predicted_pix6_12(predictor_inst_io_predicted_pix6_12),
    .io_predicted_pix6_13(predictor_inst_io_predicted_pix6_13),
    .io_predicted_pix6_14(predictor_inst_io_predicted_pix6_14),
    .io_predicted_pix6_15(predictor_inst_io_predicted_pix6_15),
    .io_predicted_pix7_0(predictor_inst_io_predicted_pix7_0),
    .io_predicted_pix7_1(predictor_inst_io_predicted_pix7_1),
    .io_predicted_pix7_2(predictor_inst_io_predicted_pix7_2),
    .io_predicted_pix7_3(predictor_inst_io_predicted_pix7_3),
    .io_predicted_pix7_4(predictor_inst_io_predicted_pix7_4),
    .io_predicted_pix7_5(predictor_inst_io_predicted_pix7_5),
    .io_predicted_pix7_6(predictor_inst_io_predicted_pix7_6),
    .io_predicted_pix7_7(predictor_inst_io_predicted_pix7_7),
    .io_predicted_pix7_8(predictor_inst_io_predicted_pix7_8),
    .io_predicted_pix7_9(predictor_inst_io_predicted_pix7_9),
    .io_predicted_pix7_10(predictor_inst_io_predicted_pix7_10),
    .io_predicted_pix7_11(predictor_inst_io_predicted_pix7_11),
    .io_predicted_pix7_12(predictor_inst_io_predicted_pix7_12),
    .io_predicted_pix7_13(predictor_inst_io_predicted_pix7_13),
    .io_predicted_pix7_14(predictor_inst_io_predicted_pix7_14),
    .io_predicted_pix7_15(predictor_inst_io_predicted_pix7_15),
    .io_predicted_pix8_0(predictor_inst_io_predicted_pix8_0),
    .io_predicted_pix8_1(predictor_inst_io_predicted_pix8_1),
    .io_predicted_pix8_2(predictor_inst_io_predicted_pix8_2),
    .io_predicted_pix8_3(predictor_inst_io_predicted_pix8_3),
    .io_predicted_pix8_4(predictor_inst_io_predicted_pix8_4),
    .io_predicted_pix8_5(predictor_inst_io_predicted_pix8_5),
    .io_predicted_pix8_6(predictor_inst_io_predicted_pix8_6),
    .io_predicted_pix8_7(predictor_inst_io_predicted_pix8_7),
    .io_predicted_pix8_8(predictor_inst_io_predicted_pix8_8),
    .io_predicted_pix8_9(predictor_inst_io_predicted_pix8_9),
    .io_predicted_pix8_10(predictor_inst_io_predicted_pix8_10),
    .io_predicted_pix8_11(predictor_inst_io_predicted_pix8_11),
    .io_predicted_pix8_12(predictor_inst_io_predicted_pix8_12),
    .io_predicted_pix8_13(predictor_inst_io_predicted_pix8_13),
    .io_predicted_pix8_14(predictor_inst_io_predicted_pix8_14),
    .io_predicted_pix8_15(predictor_inst_io_predicted_pix8_15)
  );
  sad4x sad4x_inst ( // @[intra4x4top.scala 29:31]
    .io_valid_0(sad4x_inst_io_valid_0),
    .io_valid_1(sad4x_inst_io_valid_1),
    .io_valid_2(sad4x_inst_io_valid_2),
    .io_valid_3(sad4x_inst_io_valid_3),
    .io_valid_4(sad4x_inst_io_valid_4),
    .io_valid_5(sad4x_inst_io_valid_5),
    .io_valid_6(sad4x_inst_io_valid_6),
    .io_valid_7(sad4x_inst_io_valid_7),
    .io_valid_8(sad4x_inst_io_valid_8),
    .io_src_pix_0(sad4x_inst_io_src_pix_0),
    .io_src_pix_1(sad4x_inst_io_src_pix_1),
    .io_src_pix_2(sad4x_inst_io_src_pix_2),
    .io_src_pix_3(sad4x_inst_io_src_pix_3),
    .io_src_pix_4(sad4x_inst_io_src_pix_4),
    .io_src_pix_5(sad4x_inst_io_src_pix_5),
    .io_src_pix_6(sad4x_inst_io_src_pix_6),
    .io_src_pix_7(sad4x_inst_io_src_pix_7),
    .io_src_pix_8(sad4x_inst_io_src_pix_8),
    .io_src_pix_9(sad4x_inst_io_src_pix_9),
    .io_src_pix_10(sad4x_inst_io_src_pix_10),
    .io_src_pix_11(sad4x_inst_io_src_pix_11),
    .io_src_pix_12(sad4x_inst_io_src_pix_12),
    .io_src_pix_13(sad4x_inst_io_src_pix_13),
    .io_src_pix_14(sad4x_inst_io_src_pix_14),
    .io_src_pix_15(sad4x_inst_io_src_pix_15),
    .io_pred0_0(sad4x_inst_io_pred0_0),
    .io_pred0_1(sad4x_inst_io_pred0_1),
    .io_pred0_2(sad4x_inst_io_pred0_2),
    .io_pred0_3(sad4x_inst_io_pred0_3),
    .io_pred0_4(sad4x_inst_io_pred0_4),
    .io_pred0_5(sad4x_inst_io_pred0_5),
    .io_pred0_6(sad4x_inst_io_pred0_6),
    .io_pred0_7(sad4x_inst_io_pred0_7),
    .io_pred0_8(sad4x_inst_io_pred0_8),
    .io_pred0_9(sad4x_inst_io_pred0_9),
    .io_pred0_10(sad4x_inst_io_pred0_10),
    .io_pred0_11(sad4x_inst_io_pred0_11),
    .io_pred0_12(sad4x_inst_io_pred0_12),
    .io_pred0_13(sad4x_inst_io_pred0_13),
    .io_pred0_14(sad4x_inst_io_pred0_14),
    .io_pred0_15(sad4x_inst_io_pred0_15),
    .io_pred1_0(sad4x_inst_io_pred1_0),
    .io_pred1_1(sad4x_inst_io_pred1_1),
    .io_pred1_2(sad4x_inst_io_pred1_2),
    .io_pred1_3(sad4x_inst_io_pred1_3),
    .io_pred1_4(sad4x_inst_io_pred1_4),
    .io_pred1_5(sad4x_inst_io_pred1_5),
    .io_pred1_6(sad4x_inst_io_pred1_6),
    .io_pred1_7(sad4x_inst_io_pred1_7),
    .io_pred1_8(sad4x_inst_io_pred1_8),
    .io_pred1_9(sad4x_inst_io_pred1_9),
    .io_pred1_10(sad4x_inst_io_pred1_10),
    .io_pred1_11(sad4x_inst_io_pred1_11),
    .io_pred1_12(sad4x_inst_io_pred1_12),
    .io_pred1_13(sad4x_inst_io_pred1_13),
    .io_pred1_14(sad4x_inst_io_pred1_14),
    .io_pred1_15(sad4x_inst_io_pred1_15),
    .io_pred2_0(sad4x_inst_io_pred2_0),
    .io_pred2_1(sad4x_inst_io_pred2_1),
    .io_pred2_2(sad4x_inst_io_pred2_2),
    .io_pred2_3(sad4x_inst_io_pred2_3),
    .io_pred2_4(sad4x_inst_io_pred2_4),
    .io_pred2_5(sad4x_inst_io_pred2_5),
    .io_pred2_6(sad4x_inst_io_pred2_6),
    .io_pred2_7(sad4x_inst_io_pred2_7),
    .io_pred2_8(sad4x_inst_io_pred2_8),
    .io_pred2_9(sad4x_inst_io_pred2_9),
    .io_pred2_10(sad4x_inst_io_pred2_10),
    .io_pred2_11(sad4x_inst_io_pred2_11),
    .io_pred2_12(sad4x_inst_io_pred2_12),
    .io_pred2_13(sad4x_inst_io_pred2_13),
    .io_pred2_14(sad4x_inst_io_pred2_14),
    .io_pred2_15(sad4x_inst_io_pred2_15),
    .io_pred3_0(sad4x_inst_io_pred3_0),
    .io_pred3_1(sad4x_inst_io_pred3_1),
    .io_pred3_2(sad4x_inst_io_pred3_2),
    .io_pred3_3(sad4x_inst_io_pred3_3),
    .io_pred3_4(sad4x_inst_io_pred3_4),
    .io_pred3_5(sad4x_inst_io_pred3_5),
    .io_pred3_6(sad4x_inst_io_pred3_6),
    .io_pred3_7(sad4x_inst_io_pred3_7),
    .io_pred3_8(sad4x_inst_io_pred3_8),
    .io_pred3_9(sad4x_inst_io_pred3_9),
    .io_pred3_10(sad4x_inst_io_pred3_10),
    .io_pred3_11(sad4x_inst_io_pred3_11),
    .io_pred3_12(sad4x_inst_io_pred3_12),
    .io_pred3_13(sad4x_inst_io_pred3_13),
    .io_pred3_14(sad4x_inst_io_pred3_14),
    .io_pred3_15(sad4x_inst_io_pred3_15),
    .io_pred4_0(sad4x_inst_io_pred4_0),
    .io_pred4_1(sad4x_inst_io_pred4_1),
    .io_pred4_2(sad4x_inst_io_pred4_2),
    .io_pred4_3(sad4x_inst_io_pred4_3),
    .io_pred4_4(sad4x_inst_io_pred4_4),
    .io_pred4_5(sad4x_inst_io_pred4_5),
    .io_pred4_6(sad4x_inst_io_pred4_6),
    .io_pred4_7(sad4x_inst_io_pred4_7),
    .io_pred4_8(sad4x_inst_io_pred4_8),
    .io_pred4_9(sad4x_inst_io_pred4_9),
    .io_pred4_10(sad4x_inst_io_pred4_10),
    .io_pred4_11(sad4x_inst_io_pred4_11),
    .io_pred4_12(sad4x_inst_io_pred4_12),
    .io_pred4_13(sad4x_inst_io_pred4_13),
    .io_pred4_14(sad4x_inst_io_pred4_14),
    .io_pred4_15(sad4x_inst_io_pred4_15),
    .io_pred5_0(sad4x_inst_io_pred5_0),
    .io_pred5_1(sad4x_inst_io_pred5_1),
    .io_pred5_2(sad4x_inst_io_pred5_2),
    .io_pred5_3(sad4x_inst_io_pred5_3),
    .io_pred5_4(sad4x_inst_io_pred5_4),
    .io_pred5_5(sad4x_inst_io_pred5_5),
    .io_pred5_6(sad4x_inst_io_pred5_6),
    .io_pred5_7(sad4x_inst_io_pred5_7),
    .io_pred5_8(sad4x_inst_io_pred5_8),
    .io_pred5_9(sad4x_inst_io_pred5_9),
    .io_pred5_10(sad4x_inst_io_pred5_10),
    .io_pred5_11(sad4x_inst_io_pred5_11),
    .io_pred5_12(sad4x_inst_io_pred5_12),
    .io_pred5_13(sad4x_inst_io_pred5_13),
    .io_pred5_14(sad4x_inst_io_pred5_14),
    .io_pred5_15(sad4x_inst_io_pred5_15),
    .io_pred6_0(sad4x_inst_io_pred6_0),
    .io_pred6_1(sad4x_inst_io_pred6_1),
    .io_pred6_2(sad4x_inst_io_pred6_2),
    .io_pred6_3(sad4x_inst_io_pred6_3),
    .io_pred6_4(sad4x_inst_io_pred6_4),
    .io_pred6_5(sad4x_inst_io_pred6_5),
    .io_pred6_6(sad4x_inst_io_pred6_6),
    .io_pred6_7(sad4x_inst_io_pred6_7),
    .io_pred6_8(sad4x_inst_io_pred6_8),
    .io_pred6_9(sad4x_inst_io_pred6_9),
    .io_pred6_10(sad4x_inst_io_pred6_10),
    .io_pred6_11(sad4x_inst_io_pred6_11),
    .io_pred6_12(sad4x_inst_io_pred6_12),
    .io_pred6_13(sad4x_inst_io_pred6_13),
    .io_pred6_14(sad4x_inst_io_pred6_14),
    .io_pred6_15(sad4x_inst_io_pred6_15),
    .io_pred7_0(sad4x_inst_io_pred7_0),
    .io_pred7_1(sad4x_inst_io_pred7_1),
    .io_pred7_2(sad4x_inst_io_pred7_2),
    .io_pred7_3(sad4x_inst_io_pred7_3),
    .io_pred7_4(sad4x_inst_io_pred7_4),
    .io_pred7_5(sad4x_inst_io_pred7_5),
    .io_pred7_6(sad4x_inst_io_pred7_6),
    .io_pred7_7(sad4x_inst_io_pred7_7),
    .io_pred7_8(sad4x_inst_io_pred7_8),
    .io_pred7_9(sad4x_inst_io_pred7_9),
    .io_pred7_10(sad4x_inst_io_pred7_10),
    .io_pred7_11(sad4x_inst_io_pred7_11),
    .io_pred7_12(sad4x_inst_io_pred7_12),
    .io_pred7_13(sad4x_inst_io_pred7_13),
    .io_pred7_14(sad4x_inst_io_pred7_14),
    .io_pred7_15(sad4x_inst_io_pred7_15),
    .io_pred8_0(sad4x_inst_io_pred8_0),
    .io_pred8_1(sad4x_inst_io_pred8_1),
    .io_pred8_2(sad4x_inst_io_pred8_2),
    .io_pred8_3(sad4x_inst_io_pred8_3),
    .io_pred8_4(sad4x_inst_io_pred8_4),
    .io_pred8_5(sad4x_inst_io_pred8_5),
    .io_pred8_6(sad4x_inst_io_pred8_6),
    .io_pred8_7(sad4x_inst_io_pred8_7),
    .io_pred8_8(sad4x_inst_io_pred8_8),
    .io_pred8_9(sad4x_inst_io_pred8_9),
    .io_pred8_10(sad4x_inst_io_pred8_10),
    .io_pred8_11(sad4x_inst_io_pred8_11),
    .io_pred8_12(sad4x_inst_io_pred8_12),
    .io_pred8_13(sad4x_inst_io_pred8_13),
    .io_pred8_14(sad4x_inst_io_pred8_14),
    .io_pred8_15(sad4x_inst_io_pred8_15),
    .io_sad_seq_0(sad4x_inst_io_sad_seq_0),
    .io_sad_seq_1(sad4x_inst_io_sad_seq_1),
    .io_sad_seq_2(sad4x_inst_io_sad_seq_2),
    .io_sad_seq_3(sad4x_inst_io_sad_seq_3),
    .io_sad_seq_4(sad4x_inst_io_sad_seq_4),
    .io_sad_seq_5(sad4x_inst_io_sad_seq_5),
    .io_sad_seq_6(sad4x_inst_io_sad_seq_6),
    .io_sad_seq_7(sad4x_inst_io_sad_seq_7),
    .io_sad_seq_8(sad4x_inst_io_sad_seq_8),
    .io_diff0_0(sad4x_inst_io_diff0_0),
    .io_diff0_1(sad4x_inst_io_diff0_1),
    .io_diff0_2(sad4x_inst_io_diff0_2),
    .io_diff0_3(sad4x_inst_io_diff0_3),
    .io_diff0_4(sad4x_inst_io_diff0_4),
    .io_diff0_5(sad4x_inst_io_diff0_5),
    .io_diff0_6(sad4x_inst_io_diff0_6),
    .io_diff0_7(sad4x_inst_io_diff0_7),
    .io_diff0_8(sad4x_inst_io_diff0_8),
    .io_diff0_9(sad4x_inst_io_diff0_9),
    .io_diff0_10(sad4x_inst_io_diff0_10),
    .io_diff0_11(sad4x_inst_io_diff0_11),
    .io_diff0_12(sad4x_inst_io_diff0_12),
    .io_diff0_13(sad4x_inst_io_diff0_13),
    .io_diff0_14(sad4x_inst_io_diff0_14),
    .io_diff0_15(sad4x_inst_io_diff0_15),
    .io_diff1_0(sad4x_inst_io_diff1_0),
    .io_diff1_1(sad4x_inst_io_diff1_1),
    .io_diff1_2(sad4x_inst_io_diff1_2),
    .io_diff1_3(sad4x_inst_io_diff1_3),
    .io_diff1_4(sad4x_inst_io_diff1_4),
    .io_diff1_5(sad4x_inst_io_diff1_5),
    .io_diff1_6(sad4x_inst_io_diff1_6),
    .io_diff1_7(sad4x_inst_io_diff1_7),
    .io_diff1_8(sad4x_inst_io_diff1_8),
    .io_diff1_9(sad4x_inst_io_diff1_9),
    .io_diff1_10(sad4x_inst_io_diff1_10),
    .io_diff1_11(sad4x_inst_io_diff1_11),
    .io_diff1_12(sad4x_inst_io_diff1_12),
    .io_diff1_13(sad4x_inst_io_diff1_13),
    .io_diff1_14(sad4x_inst_io_diff1_14),
    .io_diff1_15(sad4x_inst_io_diff1_15),
    .io_diff2_0(sad4x_inst_io_diff2_0),
    .io_diff2_1(sad4x_inst_io_diff2_1),
    .io_diff2_2(sad4x_inst_io_diff2_2),
    .io_diff2_3(sad4x_inst_io_diff2_3),
    .io_diff2_4(sad4x_inst_io_diff2_4),
    .io_diff2_5(sad4x_inst_io_diff2_5),
    .io_diff2_6(sad4x_inst_io_diff2_6),
    .io_diff2_7(sad4x_inst_io_diff2_7),
    .io_diff2_8(sad4x_inst_io_diff2_8),
    .io_diff2_9(sad4x_inst_io_diff2_9),
    .io_diff2_10(sad4x_inst_io_diff2_10),
    .io_diff2_11(sad4x_inst_io_diff2_11),
    .io_diff2_12(sad4x_inst_io_diff2_12),
    .io_diff2_13(sad4x_inst_io_diff2_13),
    .io_diff2_14(sad4x_inst_io_diff2_14),
    .io_diff2_15(sad4x_inst_io_diff2_15),
    .io_diff3_0(sad4x_inst_io_diff3_0),
    .io_diff3_1(sad4x_inst_io_diff3_1),
    .io_diff3_2(sad4x_inst_io_diff3_2),
    .io_diff3_3(sad4x_inst_io_diff3_3),
    .io_diff3_4(sad4x_inst_io_diff3_4),
    .io_diff3_5(sad4x_inst_io_diff3_5),
    .io_diff3_6(sad4x_inst_io_diff3_6),
    .io_diff3_7(sad4x_inst_io_diff3_7),
    .io_diff3_8(sad4x_inst_io_diff3_8),
    .io_diff3_9(sad4x_inst_io_diff3_9),
    .io_diff3_10(sad4x_inst_io_diff3_10),
    .io_diff3_11(sad4x_inst_io_diff3_11),
    .io_diff3_12(sad4x_inst_io_diff3_12),
    .io_diff3_13(sad4x_inst_io_diff3_13),
    .io_diff3_14(sad4x_inst_io_diff3_14),
    .io_diff3_15(sad4x_inst_io_diff3_15),
    .io_diff4_0(sad4x_inst_io_diff4_0),
    .io_diff4_1(sad4x_inst_io_diff4_1),
    .io_diff4_2(sad4x_inst_io_diff4_2),
    .io_diff4_3(sad4x_inst_io_diff4_3),
    .io_diff4_4(sad4x_inst_io_diff4_4),
    .io_diff4_5(sad4x_inst_io_diff4_5),
    .io_diff4_6(sad4x_inst_io_diff4_6),
    .io_diff4_7(sad4x_inst_io_diff4_7),
    .io_diff4_8(sad4x_inst_io_diff4_8),
    .io_diff4_9(sad4x_inst_io_diff4_9),
    .io_diff4_10(sad4x_inst_io_diff4_10),
    .io_diff4_11(sad4x_inst_io_diff4_11),
    .io_diff4_12(sad4x_inst_io_diff4_12),
    .io_diff4_13(sad4x_inst_io_diff4_13),
    .io_diff4_14(sad4x_inst_io_diff4_14),
    .io_diff4_15(sad4x_inst_io_diff4_15),
    .io_diff5_0(sad4x_inst_io_diff5_0),
    .io_diff5_1(sad4x_inst_io_diff5_1),
    .io_diff5_2(sad4x_inst_io_diff5_2),
    .io_diff5_3(sad4x_inst_io_diff5_3),
    .io_diff5_4(sad4x_inst_io_diff5_4),
    .io_diff5_5(sad4x_inst_io_diff5_5),
    .io_diff5_6(sad4x_inst_io_diff5_6),
    .io_diff5_7(sad4x_inst_io_diff5_7),
    .io_diff5_8(sad4x_inst_io_diff5_8),
    .io_diff5_9(sad4x_inst_io_diff5_9),
    .io_diff5_10(sad4x_inst_io_diff5_10),
    .io_diff5_11(sad4x_inst_io_diff5_11),
    .io_diff5_12(sad4x_inst_io_diff5_12),
    .io_diff5_13(sad4x_inst_io_diff5_13),
    .io_diff5_14(sad4x_inst_io_diff5_14),
    .io_diff5_15(sad4x_inst_io_diff5_15),
    .io_diff6_0(sad4x_inst_io_diff6_0),
    .io_diff6_1(sad4x_inst_io_diff6_1),
    .io_diff6_2(sad4x_inst_io_diff6_2),
    .io_diff6_3(sad4x_inst_io_diff6_3),
    .io_diff6_4(sad4x_inst_io_diff6_4),
    .io_diff6_5(sad4x_inst_io_diff6_5),
    .io_diff6_6(sad4x_inst_io_diff6_6),
    .io_diff6_7(sad4x_inst_io_diff6_7),
    .io_diff6_8(sad4x_inst_io_diff6_8),
    .io_diff6_9(sad4x_inst_io_diff6_9),
    .io_diff6_10(sad4x_inst_io_diff6_10),
    .io_diff6_11(sad4x_inst_io_diff6_11),
    .io_diff6_12(sad4x_inst_io_diff6_12),
    .io_diff6_13(sad4x_inst_io_diff6_13),
    .io_diff6_14(sad4x_inst_io_diff6_14),
    .io_diff6_15(sad4x_inst_io_diff6_15),
    .io_diff7_0(sad4x_inst_io_diff7_0),
    .io_diff7_1(sad4x_inst_io_diff7_1),
    .io_diff7_2(sad4x_inst_io_diff7_2),
    .io_diff7_3(sad4x_inst_io_diff7_3),
    .io_diff7_4(sad4x_inst_io_diff7_4),
    .io_diff7_5(sad4x_inst_io_diff7_5),
    .io_diff7_6(sad4x_inst_io_diff7_6),
    .io_diff7_7(sad4x_inst_io_diff7_7),
    .io_diff7_8(sad4x_inst_io_diff7_8),
    .io_diff7_9(sad4x_inst_io_diff7_9),
    .io_diff7_10(sad4x_inst_io_diff7_10),
    .io_diff7_11(sad4x_inst_io_diff7_11),
    .io_diff7_12(sad4x_inst_io_diff7_12),
    .io_diff7_13(sad4x_inst_io_diff7_13),
    .io_diff7_14(sad4x_inst_io_diff7_14),
    .io_diff7_15(sad4x_inst_io_diff7_15),
    .io_diff8_0(sad4x_inst_io_diff8_0),
    .io_diff8_1(sad4x_inst_io_diff8_1),
    .io_diff8_2(sad4x_inst_io_diff8_2),
    .io_diff8_3(sad4x_inst_io_diff8_3),
    .io_diff8_4(sad4x_inst_io_diff8_4),
    .io_diff8_5(sad4x_inst_io_diff8_5),
    .io_diff8_6(sad4x_inst_io_diff8_6),
    .io_diff8_7(sad4x_inst_io_diff8_7),
    .io_diff8_8(sad4x_inst_io_diff8_8),
    .io_diff8_9(sad4x_inst_io_diff8_9),
    .io_diff8_10(sad4x_inst_io_diff8_10),
    .io_diff8_11(sad4x_inst_io_diff8_11),
    .io_diff8_12(sad4x_inst_io_diff8_12),
    .io_diff8_13(sad4x_inst_io_diff8_13),
    .io_diff8_14(sad4x_inst_io_diff8_14),
    .io_diff8_15(sad4x_inst_io_diff8_15)
  );
  intra_ctrl intra_ctrl_inst ( // @[intra4x4top.scala 30:31]
    .clock(intra_ctrl_inst_clock),
    .reset(intra_ctrl_inst_reset),
    .io_start(intra_ctrl_inst_io_start),
    .io_capture_pix(intra_ctrl_inst_io_capture_pix),
    .io_capture_sad(intra_ctrl_inst_io_capture_sad),
    .io_done(intra_ctrl_inst_io_done)
  );
  intra_cmp intra_cmp_inst ( // @[intra4x4top.scala 31:31]
    .io_start(intra_cmp_inst_io_start),
    .io_sad_res_0(intra_cmp_inst_io_sad_res_0),
    .io_sad_res_1(intra_cmp_inst_io_sad_res_1),
    .io_sad_res_2(intra_cmp_inst_io_sad_res_2),
    .io_sad_res_3(intra_cmp_inst_io_sad_res_3),
    .io_sad_res_4(intra_cmp_inst_io_sad_res_4),
    .io_sad_res_5(intra_cmp_inst_io_sad_res_5),
    .io_sad_res_6(intra_cmp_inst_io_sad_res_6),
    .io_sad_res_7(intra_cmp_inst_io_sad_res_7),
    .io_sad_res_8(intra_cmp_inst_io_sad_res_8),
    .io_db0_0(intra_cmp_inst_io_db0_0),
    .io_db0_1(intra_cmp_inst_io_db0_1),
    .io_db0_2(intra_cmp_inst_io_db0_2),
    .io_db0_3(intra_cmp_inst_io_db0_3),
    .io_db0_4(intra_cmp_inst_io_db0_4),
    .io_db0_5(intra_cmp_inst_io_db0_5),
    .io_db0_6(intra_cmp_inst_io_db0_6),
    .io_db0_7(intra_cmp_inst_io_db0_7),
    .io_db0_8(intra_cmp_inst_io_db0_8),
    .io_db0_9(intra_cmp_inst_io_db0_9),
    .io_db0_10(intra_cmp_inst_io_db0_10),
    .io_db0_11(intra_cmp_inst_io_db0_11),
    .io_db0_12(intra_cmp_inst_io_db0_12),
    .io_db0_13(intra_cmp_inst_io_db0_13),
    .io_db0_14(intra_cmp_inst_io_db0_14),
    .io_db0_15(intra_cmp_inst_io_db0_15),
    .io_db1_0(intra_cmp_inst_io_db1_0),
    .io_db1_1(intra_cmp_inst_io_db1_1),
    .io_db1_2(intra_cmp_inst_io_db1_2),
    .io_db1_3(intra_cmp_inst_io_db1_3),
    .io_db1_4(intra_cmp_inst_io_db1_4),
    .io_db1_5(intra_cmp_inst_io_db1_5),
    .io_db1_6(intra_cmp_inst_io_db1_6),
    .io_db1_7(intra_cmp_inst_io_db1_7),
    .io_db1_8(intra_cmp_inst_io_db1_8),
    .io_db1_9(intra_cmp_inst_io_db1_9),
    .io_db1_10(intra_cmp_inst_io_db1_10),
    .io_db1_11(intra_cmp_inst_io_db1_11),
    .io_db1_12(intra_cmp_inst_io_db1_12),
    .io_db1_13(intra_cmp_inst_io_db1_13),
    .io_db1_14(intra_cmp_inst_io_db1_14),
    .io_db1_15(intra_cmp_inst_io_db1_15),
    .io_db2_0(intra_cmp_inst_io_db2_0),
    .io_db2_1(intra_cmp_inst_io_db2_1),
    .io_db2_2(intra_cmp_inst_io_db2_2),
    .io_db2_3(intra_cmp_inst_io_db2_3),
    .io_db2_4(intra_cmp_inst_io_db2_4),
    .io_db2_5(intra_cmp_inst_io_db2_5),
    .io_db2_6(intra_cmp_inst_io_db2_6),
    .io_db2_7(intra_cmp_inst_io_db2_7),
    .io_db2_8(intra_cmp_inst_io_db2_8),
    .io_db2_9(intra_cmp_inst_io_db2_9),
    .io_db2_10(intra_cmp_inst_io_db2_10),
    .io_db2_11(intra_cmp_inst_io_db2_11),
    .io_db2_12(intra_cmp_inst_io_db2_12),
    .io_db2_13(intra_cmp_inst_io_db2_13),
    .io_db2_14(intra_cmp_inst_io_db2_14),
    .io_db2_15(intra_cmp_inst_io_db2_15),
    .io_db3_0(intra_cmp_inst_io_db3_0),
    .io_db3_1(intra_cmp_inst_io_db3_1),
    .io_db3_2(intra_cmp_inst_io_db3_2),
    .io_db3_3(intra_cmp_inst_io_db3_3),
    .io_db3_4(intra_cmp_inst_io_db3_4),
    .io_db3_5(intra_cmp_inst_io_db3_5),
    .io_db3_6(intra_cmp_inst_io_db3_6),
    .io_db3_7(intra_cmp_inst_io_db3_7),
    .io_db3_8(intra_cmp_inst_io_db3_8),
    .io_db3_9(intra_cmp_inst_io_db3_9),
    .io_db3_10(intra_cmp_inst_io_db3_10),
    .io_db3_11(intra_cmp_inst_io_db3_11),
    .io_db3_12(intra_cmp_inst_io_db3_12),
    .io_db3_13(intra_cmp_inst_io_db3_13),
    .io_db3_14(intra_cmp_inst_io_db3_14),
    .io_db3_15(intra_cmp_inst_io_db3_15),
    .io_db4_0(intra_cmp_inst_io_db4_0),
    .io_db4_1(intra_cmp_inst_io_db4_1),
    .io_db4_2(intra_cmp_inst_io_db4_2),
    .io_db4_3(intra_cmp_inst_io_db4_3),
    .io_db4_4(intra_cmp_inst_io_db4_4),
    .io_db4_5(intra_cmp_inst_io_db4_5),
    .io_db4_6(intra_cmp_inst_io_db4_6),
    .io_db4_7(intra_cmp_inst_io_db4_7),
    .io_db4_8(intra_cmp_inst_io_db4_8),
    .io_db4_9(intra_cmp_inst_io_db4_9),
    .io_db4_10(intra_cmp_inst_io_db4_10),
    .io_db4_11(intra_cmp_inst_io_db4_11),
    .io_db4_12(intra_cmp_inst_io_db4_12),
    .io_db4_13(intra_cmp_inst_io_db4_13),
    .io_db4_14(intra_cmp_inst_io_db4_14),
    .io_db4_15(intra_cmp_inst_io_db4_15),
    .io_db5_0(intra_cmp_inst_io_db5_0),
    .io_db5_1(intra_cmp_inst_io_db5_1),
    .io_db5_2(intra_cmp_inst_io_db5_2),
    .io_db5_3(intra_cmp_inst_io_db5_3),
    .io_db5_4(intra_cmp_inst_io_db5_4),
    .io_db5_5(intra_cmp_inst_io_db5_5),
    .io_db5_6(intra_cmp_inst_io_db5_6),
    .io_db5_7(intra_cmp_inst_io_db5_7),
    .io_db5_8(intra_cmp_inst_io_db5_8),
    .io_db5_9(intra_cmp_inst_io_db5_9),
    .io_db5_10(intra_cmp_inst_io_db5_10),
    .io_db5_11(intra_cmp_inst_io_db5_11),
    .io_db5_12(intra_cmp_inst_io_db5_12),
    .io_db5_13(intra_cmp_inst_io_db5_13),
    .io_db5_14(intra_cmp_inst_io_db5_14),
    .io_db5_15(intra_cmp_inst_io_db5_15),
    .io_db6_0(intra_cmp_inst_io_db6_0),
    .io_db6_1(intra_cmp_inst_io_db6_1),
    .io_db6_2(intra_cmp_inst_io_db6_2),
    .io_db6_3(intra_cmp_inst_io_db6_3),
    .io_db6_4(intra_cmp_inst_io_db6_4),
    .io_db6_5(intra_cmp_inst_io_db6_5),
    .io_db6_6(intra_cmp_inst_io_db6_6),
    .io_db6_7(intra_cmp_inst_io_db6_7),
    .io_db6_8(intra_cmp_inst_io_db6_8),
    .io_db6_9(intra_cmp_inst_io_db6_9),
    .io_db6_10(intra_cmp_inst_io_db6_10),
    .io_db6_11(intra_cmp_inst_io_db6_11),
    .io_db6_12(intra_cmp_inst_io_db6_12),
    .io_db6_13(intra_cmp_inst_io_db6_13),
    .io_db6_14(intra_cmp_inst_io_db6_14),
    .io_db6_15(intra_cmp_inst_io_db6_15),
    .io_db7_0(intra_cmp_inst_io_db7_0),
    .io_db7_1(intra_cmp_inst_io_db7_1),
    .io_db7_2(intra_cmp_inst_io_db7_2),
    .io_db7_3(intra_cmp_inst_io_db7_3),
    .io_db7_4(intra_cmp_inst_io_db7_4),
    .io_db7_5(intra_cmp_inst_io_db7_5),
    .io_db7_6(intra_cmp_inst_io_db7_6),
    .io_db7_7(intra_cmp_inst_io_db7_7),
    .io_db7_8(intra_cmp_inst_io_db7_8),
    .io_db7_9(intra_cmp_inst_io_db7_9),
    .io_db7_10(intra_cmp_inst_io_db7_10),
    .io_db7_11(intra_cmp_inst_io_db7_11),
    .io_db7_12(intra_cmp_inst_io_db7_12),
    .io_db7_13(intra_cmp_inst_io_db7_13),
    .io_db7_14(intra_cmp_inst_io_db7_14),
    .io_db7_15(intra_cmp_inst_io_db7_15),
    .io_db8_0(intra_cmp_inst_io_db8_0),
    .io_db8_1(intra_cmp_inst_io_db8_1),
    .io_db8_2(intra_cmp_inst_io_db8_2),
    .io_db8_3(intra_cmp_inst_io_db8_3),
    .io_db8_4(intra_cmp_inst_io_db8_4),
    .io_db8_5(intra_cmp_inst_io_db8_5),
    .io_db8_6(intra_cmp_inst_io_db8_6),
    .io_db8_7(intra_cmp_inst_io_db8_7),
    .io_db8_8(intra_cmp_inst_io_db8_8),
    .io_db8_9(intra_cmp_inst_io_db8_9),
    .io_db8_10(intra_cmp_inst_io_db8_10),
    .io_db8_11(intra_cmp_inst_io_db8_11),
    .io_db8_12(intra_cmp_inst_io_db8_12),
    .io_db8_13(intra_cmp_inst_io_db8_13),
    .io_db8_14(intra_cmp_inst_io_db8_14),
    .io_db8_15(intra_cmp_inst_io_db8_15),
    .io_pred_pix0_0(intra_cmp_inst_io_pred_pix0_0),
    .io_pred_pix0_1(intra_cmp_inst_io_pred_pix0_1),
    .io_pred_pix0_2(intra_cmp_inst_io_pred_pix0_2),
    .io_pred_pix0_3(intra_cmp_inst_io_pred_pix0_3),
    .io_pred_pix0_4(intra_cmp_inst_io_pred_pix0_4),
    .io_pred_pix0_5(intra_cmp_inst_io_pred_pix0_5),
    .io_pred_pix0_6(intra_cmp_inst_io_pred_pix0_6),
    .io_pred_pix0_7(intra_cmp_inst_io_pred_pix0_7),
    .io_pred_pix0_8(intra_cmp_inst_io_pred_pix0_8),
    .io_pred_pix0_9(intra_cmp_inst_io_pred_pix0_9),
    .io_pred_pix0_10(intra_cmp_inst_io_pred_pix0_10),
    .io_pred_pix0_11(intra_cmp_inst_io_pred_pix0_11),
    .io_pred_pix0_12(intra_cmp_inst_io_pred_pix0_12),
    .io_pred_pix0_13(intra_cmp_inst_io_pred_pix0_13),
    .io_pred_pix0_14(intra_cmp_inst_io_pred_pix0_14),
    .io_pred_pix0_15(intra_cmp_inst_io_pred_pix0_15),
    .io_pred_pix1_0(intra_cmp_inst_io_pred_pix1_0),
    .io_pred_pix1_1(intra_cmp_inst_io_pred_pix1_1),
    .io_pred_pix1_2(intra_cmp_inst_io_pred_pix1_2),
    .io_pred_pix1_3(intra_cmp_inst_io_pred_pix1_3),
    .io_pred_pix1_4(intra_cmp_inst_io_pred_pix1_4),
    .io_pred_pix1_5(intra_cmp_inst_io_pred_pix1_5),
    .io_pred_pix1_6(intra_cmp_inst_io_pred_pix1_6),
    .io_pred_pix1_7(intra_cmp_inst_io_pred_pix1_7),
    .io_pred_pix1_8(intra_cmp_inst_io_pred_pix1_8),
    .io_pred_pix1_9(intra_cmp_inst_io_pred_pix1_9),
    .io_pred_pix1_10(intra_cmp_inst_io_pred_pix1_10),
    .io_pred_pix1_11(intra_cmp_inst_io_pred_pix1_11),
    .io_pred_pix1_12(intra_cmp_inst_io_pred_pix1_12),
    .io_pred_pix1_13(intra_cmp_inst_io_pred_pix1_13),
    .io_pred_pix1_14(intra_cmp_inst_io_pred_pix1_14),
    .io_pred_pix1_15(intra_cmp_inst_io_pred_pix1_15),
    .io_pred_pix2_0(intra_cmp_inst_io_pred_pix2_0),
    .io_pred_pix2_1(intra_cmp_inst_io_pred_pix2_1),
    .io_pred_pix2_2(intra_cmp_inst_io_pred_pix2_2),
    .io_pred_pix2_3(intra_cmp_inst_io_pred_pix2_3),
    .io_pred_pix2_4(intra_cmp_inst_io_pred_pix2_4),
    .io_pred_pix2_5(intra_cmp_inst_io_pred_pix2_5),
    .io_pred_pix2_6(intra_cmp_inst_io_pred_pix2_6),
    .io_pred_pix2_7(intra_cmp_inst_io_pred_pix2_7),
    .io_pred_pix2_8(intra_cmp_inst_io_pred_pix2_8),
    .io_pred_pix2_9(intra_cmp_inst_io_pred_pix2_9),
    .io_pred_pix2_10(intra_cmp_inst_io_pred_pix2_10),
    .io_pred_pix2_11(intra_cmp_inst_io_pred_pix2_11),
    .io_pred_pix2_12(intra_cmp_inst_io_pred_pix2_12),
    .io_pred_pix2_13(intra_cmp_inst_io_pred_pix2_13),
    .io_pred_pix2_14(intra_cmp_inst_io_pred_pix2_14),
    .io_pred_pix2_15(intra_cmp_inst_io_pred_pix2_15),
    .io_pred_pix3_0(intra_cmp_inst_io_pred_pix3_0),
    .io_pred_pix3_1(intra_cmp_inst_io_pred_pix3_1),
    .io_pred_pix3_2(intra_cmp_inst_io_pred_pix3_2),
    .io_pred_pix3_3(intra_cmp_inst_io_pred_pix3_3),
    .io_pred_pix3_4(intra_cmp_inst_io_pred_pix3_4),
    .io_pred_pix3_5(intra_cmp_inst_io_pred_pix3_5),
    .io_pred_pix3_6(intra_cmp_inst_io_pred_pix3_6),
    .io_pred_pix3_7(intra_cmp_inst_io_pred_pix3_7),
    .io_pred_pix3_8(intra_cmp_inst_io_pred_pix3_8),
    .io_pred_pix3_9(intra_cmp_inst_io_pred_pix3_9),
    .io_pred_pix3_10(intra_cmp_inst_io_pred_pix3_10),
    .io_pred_pix3_11(intra_cmp_inst_io_pred_pix3_11),
    .io_pred_pix3_12(intra_cmp_inst_io_pred_pix3_12),
    .io_pred_pix3_13(intra_cmp_inst_io_pred_pix3_13),
    .io_pred_pix3_14(intra_cmp_inst_io_pred_pix3_14),
    .io_pred_pix3_15(intra_cmp_inst_io_pred_pix3_15),
    .io_pred_pix4_0(intra_cmp_inst_io_pred_pix4_0),
    .io_pred_pix4_1(intra_cmp_inst_io_pred_pix4_1),
    .io_pred_pix4_2(intra_cmp_inst_io_pred_pix4_2),
    .io_pred_pix4_3(intra_cmp_inst_io_pred_pix4_3),
    .io_pred_pix4_4(intra_cmp_inst_io_pred_pix4_4),
    .io_pred_pix4_5(intra_cmp_inst_io_pred_pix4_5),
    .io_pred_pix4_6(intra_cmp_inst_io_pred_pix4_6),
    .io_pred_pix4_7(intra_cmp_inst_io_pred_pix4_7),
    .io_pred_pix4_8(intra_cmp_inst_io_pred_pix4_8),
    .io_pred_pix4_9(intra_cmp_inst_io_pred_pix4_9),
    .io_pred_pix4_10(intra_cmp_inst_io_pred_pix4_10),
    .io_pred_pix4_11(intra_cmp_inst_io_pred_pix4_11),
    .io_pred_pix4_12(intra_cmp_inst_io_pred_pix4_12),
    .io_pred_pix4_13(intra_cmp_inst_io_pred_pix4_13),
    .io_pred_pix4_14(intra_cmp_inst_io_pred_pix4_14),
    .io_pred_pix4_15(intra_cmp_inst_io_pred_pix4_15),
    .io_pred_pix5_0(intra_cmp_inst_io_pred_pix5_0),
    .io_pred_pix5_1(intra_cmp_inst_io_pred_pix5_1),
    .io_pred_pix5_2(intra_cmp_inst_io_pred_pix5_2),
    .io_pred_pix5_3(intra_cmp_inst_io_pred_pix5_3),
    .io_pred_pix5_4(intra_cmp_inst_io_pred_pix5_4),
    .io_pred_pix5_5(intra_cmp_inst_io_pred_pix5_5),
    .io_pred_pix5_6(intra_cmp_inst_io_pred_pix5_6),
    .io_pred_pix5_7(intra_cmp_inst_io_pred_pix5_7),
    .io_pred_pix5_8(intra_cmp_inst_io_pred_pix5_8),
    .io_pred_pix5_9(intra_cmp_inst_io_pred_pix5_9),
    .io_pred_pix5_10(intra_cmp_inst_io_pred_pix5_10),
    .io_pred_pix5_11(intra_cmp_inst_io_pred_pix5_11),
    .io_pred_pix5_12(intra_cmp_inst_io_pred_pix5_12),
    .io_pred_pix5_13(intra_cmp_inst_io_pred_pix5_13),
    .io_pred_pix5_14(intra_cmp_inst_io_pred_pix5_14),
    .io_pred_pix5_15(intra_cmp_inst_io_pred_pix5_15),
    .io_pred_pix6_0(intra_cmp_inst_io_pred_pix6_0),
    .io_pred_pix6_1(intra_cmp_inst_io_pred_pix6_1),
    .io_pred_pix6_2(intra_cmp_inst_io_pred_pix6_2),
    .io_pred_pix6_3(intra_cmp_inst_io_pred_pix6_3),
    .io_pred_pix6_4(intra_cmp_inst_io_pred_pix6_4),
    .io_pred_pix6_5(intra_cmp_inst_io_pred_pix6_5),
    .io_pred_pix6_6(intra_cmp_inst_io_pred_pix6_6),
    .io_pred_pix6_7(intra_cmp_inst_io_pred_pix6_7),
    .io_pred_pix6_8(intra_cmp_inst_io_pred_pix6_8),
    .io_pred_pix6_9(intra_cmp_inst_io_pred_pix6_9),
    .io_pred_pix6_10(intra_cmp_inst_io_pred_pix6_10),
    .io_pred_pix6_11(intra_cmp_inst_io_pred_pix6_11),
    .io_pred_pix6_12(intra_cmp_inst_io_pred_pix6_12),
    .io_pred_pix6_13(intra_cmp_inst_io_pred_pix6_13),
    .io_pred_pix6_14(intra_cmp_inst_io_pred_pix6_14),
    .io_pred_pix6_15(intra_cmp_inst_io_pred_pix6_15),
    .io_pred_pix7_0(intra_cmp_inst_io_pred_pix7_0),
    .io_pred_pix7_1(intra_cmp_inst_io_pred_pix7_1),
    .io_pred_pix7_2(intra_cmp_inst_io_pred_pix7_2),
    .io_pred_pix7_3(intra_cmp_inst_io_pred_pix7_3),
    .io_pred_pix7_4(intra_cmp_inst_io_pred_pix7_4),
    .io_pred_pix7_5(intra_cmp_inst_io_pred_pix7_5),
    .io_pred_pix7_6(intra_cmp_inst_io_pred_pix7_6),
    .io_pred_pix7_7(intra_cmp_inst_io_pred_pix7_7),
    .io_pred_pix7_8(intra_cmp_inst_io_pred_pix7_8),
    .io_pred_pix7_9(intra_cmp_inst_io_pred_pix7_9),
    .io_pred_pix7_10(intra_cmp_inst_io_pred_pix7_10),
    .io_pred_pix7_11(intra_cmp_inst_io_pred_pix7_11),
    .io_pred_pix7_12(intra_cmp_inst_io_pred_pix7_12),
    .io_pred_pix7_13(intra_cmp_inst_io_pred_pix7_13),
    .io_pred_pix7_14(intra_cmp_inst_io_pred_pix7_14),
    .io_pred_pix7_15(intra_cmp_inst_io_pred_pix7_15),
    .io_pred_pix8_0(intra_cmp_inst_io_pred_pix8_0),
    .io_pred_pix8_1(intra_cmp_inst_io_pred_pix8_1),
    .io_pred_pix8_2(intra_cmp_inst_io_pred_pix8_2),
    .io_pred_pix8_3(intra_cmp_inst_io_pred_pix8_3),
    .io_pred_pix8_4(intra_cmp_inst_io_pred_pix8_4),
    .io_pred_pix8_5(intra_cmp_inst_io_pred_pix8_5),
    .io_pred_pix8_6(intra_cmp_inst_io_pred_pix8_6),
    .io_pred_pix8_7(intra_cmp_inst_io_pred_pix8_7),
    .io_pred_pix8_8(intra_cmp_inst_io_pred_pix8_8),
    .io_pred_pix8_9(intra_cmp_inst_io_pred_pix8_9),
    .io_pred_pix8_10(intra_cmp_inst_io_pred_pix8_10),
    .io_pred_pix8_11(intra_cmp_inst_io_pred_pix8_11),
    .io_pred_pix8_12(intra_cmp_inst_io_pred_pix8_12),
    .io_pred_pix8_13(intra_cmp_inst_io_pred_pix8_13),
    .io_pred_pix8_14(intra_cmp_inst_io_pred_pix8_14),
    .io_pred_pix8_15(intra_cmp_inst_io_pred_pix8_15),
    .io_sad_best(intra_cmp_inst_io_sad_best),
    .io_mode_best(intra_cmp_inst_io_mode_best),
    .io_pred_best_0(intra_cmp_inst_io_pred_best_0),
    .io_pred_best_1(intra_cmp_inst_io_pred_best_1),
    .io_pred_best_2(intra_cmp_inst_io_pred_best_2),
    .io_pred_best_3(intra_cmp_inst_io_pred_best_3),
    .io_pred_best_4(intra_cmp_inst_io_pred_best_4),
    .io_pred_best_5(intra_cmp_inst_io_pred_best_5),
    .io_pred_best_6(intra_cmp_inst_io_pred_best_6),
    .io_pred_best_7(intra_cmp_inst_io_pred_best_7),
    .io_pred_best_8(intra_cmp_inst_io_pred_best_8),
    .io_pred_best_9(intra_cmp_inst_io_pred_best_9),
    .io_pred_best_10(intra_cmp_inst_io_pred_best_10),
    .io_pred_best_11(intra_cmp_inst_io_pred_best_11),
    .io_pred_best_12(intra_cmp_inst_io_pred_best_12),
    .io_pred_best_13(intra_cmp_inst_io_pred_best_13),
    .io_pred_best_14(intra_cmp_inst_io_pred_best_14),
    .io_pred_best_15(intra_cmp_inst_io_pred_best_15),
    .io_diff_best_0(intra_cmp_inst_io_diff_best_0),
    .io_diff_best_1(intra_cmp_inst_io_diff_best_1),
    .io_diff_best_2(intra_cmp_inst_io_diff_best_2),
    .io_diff_best_3(intra_cmp_inst_io_diff_best_3),
    .io_diff_best_4(intra_cmp_inst_io_diff_best_4),
    .io_diff_best_5(intra_cmp_inst_io_diff_best_5),
    .io_diff_best_6(intra_cmp_inst_io_diff_best_6),
    .io_diff_best_7(intra_cmp_inst_io_diff_best_7),
    .io_diff_best_8(intra_cmp_inst_io_diff_best_8),
    .io_diff_best_9(intra_cmp_inst_io_diff_best_9),
    .io_diff_best_10(intra_cmp_inst_io_diff_best_10),
    .io_diff_best_11(intra_cmp_inst_io_diff_best_11),
    .io_diff_best_12(intra_cmp_inst_io_diff_best_12),
    .io_diff_best_13(intra_cmp_inst_io_diff_best_13),
    .io_diff_best_14(intra_cmp_inst_io_diff_best_14),
    .io_diff_best_15(intra_cmp_inst_io_diff_best_15)
  );
  assign io_sad_best = intra_cmp_inst_io_sad_best; // @[intra4x4top.scala 33:38]
  assign io_mode_best = intra_cmp_inst_io_mode_best; // @[intra4x4top.scala 34:38]
  assign io_pred_blk_best_0 = intra_cmp_inst_io_pred_best_0; // @[intra4x4top.scala 35:38]
  assign io_pred_blk_best_1 = intra_cmp_inst_io_pred_best_1; // @[intra4x4top.scala 35:38]
  assign io_pred_blk_best_2 = intra_cmp_inst_io_pred_best_2; // @[intra4x4top.scala 35:38]
  assign io_pred_blk_best_3 = intra_cmp_inst_io_pred_best_3; // @[intra4x4top.scala 35:38]
  assign io_pred_blk_best_4 = intra_cmp_inst_io_pred_best_4; // @[intra4x4top.scala 35:38]
  assign io_pred_blk_best_5 = intra_cmp_inst_io_pred_best_5; // @[intra4x4top.scala 35:38]
  assign io_pred_blk_best_6 = intra_cmp_inst_io_pred_best_6; // @[intra4x4top.scala 35:38]
  assign io_pred_blk_best_7 = intra_cmp_inst_io_pred_best_7; // @[intra4x4top.scala 35:38]
  assign io_pred_blk_best_8 = intra_cmp_inst_io_pred_best_8; // @[intra4x4top.scala 35:38]
  assign io_pred_blk_best_9 = intra_cmp_inst_io_pred_best_9; // @[intra4x4top.scala 35:38]
  assign io_pred_blk_best_10 = intra_cmp_inst_io_pred_best_10; // @[intra4x4top.scala 35:38]
  assign io_pred_blk_best_11 = intra_cmp_inst_io_pred_best_11; // @[intra4x4top.scala 35:38]
  assign io_pred_blk_best_12 = intra_cmp_inst_io_pred_best_12; // @[intra4x4top.scala 35:38]
  assign io_pred_blk_best_13 = intra_cmp_inst_io_pred_best_13; // @[intra4x4top.scala 35:38]
  assign io_pred_blk_best_14 = intra_cmp_inst_io_pred_best_14; // @[intra4x4top.scala 35:38]
  assign io_pred_blk_best_15 = intra_cmp_inst_io_pred_best_15; // @[intra4x4top.scala 35:38]
  assign io_diff_blk_best_0 = intra_cmp_inst_io_diff_best_0; // @[intra4x4top.scala 36:38]
  assign io_diff_blk_best_1 = intra_cmp_inst_io_diff_best_1; // @[intra4x4top.scala 36:38]
  assign io_diff_blk_best_2 = intra_cmp_inst_io_diff_best_2; // @[intra4x4top.scala 36:38]
  assign io_diff_blk_best_3 = intra_cmp_inst_io_diff_best_3; // @[intra4x4top.scala 36:38]
  assign io_diff_blk_best_4 = intra_cmp_inst_io_diff_best_4; // @[intra4x4top.scala 36:38]
  assign io_diff_blk_best_5 = intra_cmp_inst_io_diff_best_5; // @[intra4x4top.scala 36:38]
  assign io_diff_blk_best_6 = intra_cmp_inst_io_diff_best_6; // @[intra4x4top.scala 36:38]
  assign io_diff_blk_best_7 = intra_cmp_inst_io_diff_best_7; // @[intra4x4top.scala 36:38]
  assign io_diff_blk_best_8 = intra_cmp_inst_io_diff_best_8; // @[intra4x4top.scala 36:38]
  assign io_diff_blk_best_9 = intra_cmp_inst_io_diff_best_9; // @[intra4x4top.scala 36:38]
  assign io_diff_blk_best_10 = intra_cmp_inst_io_diff_best_10; // @[intra4x4top.scala 36:38]
  assign io_diff_blk_best_11 = intra_cmp_inst_io_diff_best_11; // @[intra4x4top.scala 36:38]
  assign io_diff_blk_best_12 = intra_cmp_inst_io_diff_best_12; // @[intra4x4top.scala 36:38]
  assign io_diff_blk_best_13 = intra_cmp_inst_io_diff_best_13; // @[intra4x4top.scala 36:38]
  assign io_diff_blk_best_14 = intra_cmp_inst_io_diff_best_14; // @[intra4x4top.scala 36:38]
  assign io_diff_blk_best_15 = intra_cmp_inst_io_diff_best_15; // @[intra4x4top.scala 36:38]
  assign io_done = intra_ctrl_inst_io_done; // @[intra4x4top.scala 37:38]
  assign predictor_inst_io_neighbors_0 = io_neighbor_pixels_0; // @[intra4x4top.scala 41:38]
  assign predictor_inst_io_neighbors_1 = io_neighbor_pixels_1; // @[intra4x4top.scala 41:38]
  assign predictor_inst_io_neighbors_2 = io_neighbor_pixels_2; // @[intra4x4top.scala 41:38]
  assign predictor_inst_io_neighbors_3 = io_neighbor_pixels_3; // @[intra4x4top.scala 41:38]
  assign predictor_inst_io_neighbors_4 = io_neighbor_pixels_4; // @[intra4x4top.scala 41:38]
  assign predictor_inst_io_neighbors_5 = io_neighbor_pixels_5; // @[intra4x4top.scala 41:38]
  assign predictor_inst_io_neighbors_6 = io_neighbor_pixels_6; // @[intra4x4top.scala 41:38]
  assign predictor_inst_io_neighbors_7 = io_neighbor_pixels_7; // @[intra4x4top.scala 41:38]
  assign predictor_inst_io_neighbors_8 = io_neighbor_pixels_8; // @[intra4x4top.scala 41:38]
  assign predictor_inst_io_neighbors_9 = io_neighbor_pixels_9; // @[intra4x4top.scala 41:38]
  assign predictor_inst_io_neighbors_10 = io_neighbor_pixels_10; // @[intra4x4top.scala 41:38]
  assign predictor_inst_io_neighbors_11 = io_neighbor_pixels_11; // @[intra4x4top.scala 41:38]
  assign predictor_inst_io_neighbors_12 = io_neighbor_pixels_12; // @[intra4x4top.scala 41:38]
  assign predictor_inst_io_valid_IL = io_valid_IL; // @[intra4x4top.scala 42:38]
  assign predictor_inst_io_valid_EH = io_valid_EH; // @[intra4x4top.scala 43:38]
  assign predictor_inst_io_valid_AD = io_valid_AD; // @[intra4x4top.scala 44:38]
  assign predictor_inst_io_valid_M = io_valid_M; // @[intra4x4top.scala 45:38]
  assign predictor_inst_io_capture_pixel = intra_ctrl_inst_io_capture_pix; // @[intra4x4top.scala 46:38]
  assign sad4x_inst_io_valid_0 = predictor_inst_io_valid_0; // @[intra4x4top.scala 49:38]
  assign sad4x_inst_io_valid_1 = predictor_inst_io_valid_1; // @[intra4x4top.scala 49:38]
  assign sad4x_inst_io_valid_2 = predictor_inst_io_valid_2; // @[intra4x4top.scala 49:38]
  assign sad4x_inst_io_valid_3 = predictor_inst_io_valid_3; // @[intra4x4top.scala 49:38]
  assign sad4x_inst_io_valid_4 = predictor_inst_io_valid_4; // @[intra4x4top.scala 49:38]
  assign sad4x_inst_io_valid_5 = predictor_inst_io_valid_5; // @[intra4x4top.scala 49:38]
  assign sad4x_inst_io_valid_6 = predictor_inst_io_valid_6; // @[intra4x4top.scala 49:38]
  assign sad4x_inst_io_valid_7 = predictor_inst_io_valid_7; // @[intra4x4top.scala 49:38]
  assign sad4x_inst_io_valid_8 = predictor_inst_io_valid_8; // @[intra4x4top.scala 49:38]
  assign sad4x_inst_io_src_pix_0 = io_src_pixels_0; // @[intra4x4top.scala 50:38]
  assign sad4x_inst_io_src_pix_1 = io_src_pixels_1; // @[intra4x4top.scala 50:38]
  assign sad4x_inst_io_src_pix_2 = io_src_pixels_2; // @[intra4x4top.scala 50:38]
  assign sad4x_inst_io_src_pix_3 = io_src_pixels_3; // @[intra4x4top.scala 50:38]
  assign sad4x_inst_io_src_pix_4 = io_src_pixels_4; // @[intra4x4top.scala 50:38]
  assign sad4x_inst_io_src_pix_5 = io_src_pixels_5; // @[intra4x4top.scala 50:38]
  assign sad4x_inst_io_src_pix_6 = io_src_pixels_6; // @[intra4x4top.scala 50:38]
  assign sad4x_inst_io_src_pix_7 = io_src_pixels_7; // @[intra4x4top.scala 50:38]
  assign sad4x_inst_io_src_pix_8 = io_src_pixels_8; // @[intra4x4top.scala 50:38]
  assign sad4x_inst_io_src_pix_9 = io_src_pixels_9; // @[intra4x4top.scala 50:38]
  assign sad4x_inst_io_src_pix_10 = io_src_pixels_10; // @[intra4x4top.scala 50:38]
  assign sad4x_inst_io_src_pix_11 = io_src_pixels_11; // @[intra4x4top.scala 50:38]
  assign sad4x_inst_io_src_pix_12 = io_src_pixels_12; // @[intra4x4top.scala 50:38]
  assign sad4x_inst_io_src_pix_13 = io_src_pixels_13; // @[intra4x4top.scala 50:38]
  assign sad4x_inst_io_src_pix_14 = io_src_pixels_14; // @[intra4x4top.scala 50:38]
  assign sad4x_inst_io_src_pix_15 = io_src_pixels_15; // @[intra4x4top.scala 50:38]
  assign sad4x_inst_io_pred0_0 = predictor_inst_io_predicted_pix0_0; // @[intra4x4top.scala 51:38]
  assign sad4x_inst_io_pred0_1 = predictor_inst_io_predicted_pix0_1; // @[intra4x4top.scala 51:38]
  assign sad4x_inst_io_pred0_2 = predictor_inst_io_predicted_pix0_2; // @[intra4x4top.scala 51:38]
  assign sad4x_inst_io_pred0_3 = predictor_inst_io_predicted_pix0_3; // @[intra4x4top.scala 51:38]
  assign sad4x_inst_io_pred0_4 = predictor_inst_io_predicted_pix0_4; // @[intra4x4top.scala 51:38]
  assign sad4x_inst_io_pred0_5 = predictor_inst_io_predicted_pix0_5; // @[intra4x4top.scala 51:38]
  assign sad4x_inst_io_pred0_6 = predictor_inst_io_predicted_pix0_6; // @[intra4x4top.scala 51:38]
  assign sad4x_inst_io_pred0_7 = predictor_inst_io_predicted_pix0_7; // @[intra4x4top.scala 51:38]
  assign sad4x_inst_io_pred0_8 = predictor_inst_io_predicted_pix0_8; // @[intra4x4top.scala 51:38]
  assign sad4x_inst_io_pred0_9 = predictor_inst_io_predicted_pix0_9; // @[intra4x4top.scala 51:38]
  assign sad4x_inst_io_pred0_10 = predictor_inst_io_predicted_pix0_10; // @[intra4x4top.scala 51:38]
  assign sad4x_inst_io_pred0_11 = predictor_inst_io_predicted_pix0_11; // @[intra4x4top.scala 51:38]
  assign sad4x_inst_io_pred0_12 = predictor_inst_io_predicted_pix0_12; // @[intra4x4top.scala 51:38]
  assign sad4x_inst_io_pred0_13 = predictor_inst_io_predicted_pix0_13; // @[intra4x4top.scala 51:38]
  assign sad4x_inst_io_pred0_14 = predictor_inst_io_predicted_pix0_14; // @[intra4x4top.scala 51:38]
  assign sad4x_inst_io_pred0_15 = predictor_inst_io_predicted_pix0_15; // @[intra4x4top.scala 51:38]
  assign sad4x_inst_io_pred1_0 = predictor_inst_io_predicted_pix1_0; // @[intra4x4top.scala 52:38]
  assign sad4x_inst_io_pred1_1 = predictor_inst_io_predicted_pix1_1; // @[intra4x4top.scala 52:38]
  assign sad4x_inst_io_pred1_2 = predictor_inst_io_predicted_pix1_2; // @[intra4x4top.scala 52:38]
  assign sad4x_inst_io_pred1_3 = predictor_inst_io_predicted_pix1_3; // @[intra4x4top.scala 52:38]
  assign sad4x_inst_io_pred1_4 = predictor_inst_io_predicted_pix1_4; // @[intra4x4top.scala 52:38]
  assign sad4x_inst_io_pred1_5 = predictor_inst_io_predicted_pix1_5; // @[intra4x4top.scala 52:38]
  assign sad4x_inst_io_pred1_6 = predictor_inst_io_predicted_pix1_6; // @[intra4x4top.scala 52:38]
  assign sad4x_inst_io_pred1_7 = predictor_inst_io_predicted_pix1_7; // @[intra4x4top.scala 52:38]
  assign sad4x_inst_io_pred1_8 = predictor_inst_io_predicted_pix1_8; // @[intra4x4top.scala 52:38]
  assign sad4x_inst_io_pred1_9 = predictor_inst_io_predicted_pix1_9; // @[intra4x4top.scala 52:38]
  assign sad4x_inst_io_pred1_10 = predictor_inst_io_predicted_pix1_10; // @[intra4x4top.scala 52:38]
  assign sad4x_inst_io_pred1_11 = predictor_inst_io_predicted_pix1_11; // @[intra4x4top.scala 52:38]
  assign sad4x_inst_io_pred1_12 = predictor_inst_io_predicted_pix1_12; // @[intra4x4top.scala 52:38]
  assign sad4x_inst_io_pred1_13 = predictor_inst_io_predicted_pix1_13; // @[intra4x4top.scala 52:38]
  assign sad4x_inst_io_pred1_14 = predictor_inst_io_predicted_pix1_14; // @[intra4x4top.scala 52:38]
  assign sad4x_inst_io_pred1_15 = predictor_inst_io_predicted_pix1_15; // @[intra4x4top.scala 52:38]
  assign sad4x_inst_io_pred2_0 = predictor_inst_io_predicted_pix2_0; // @[intra4x4top.scala 53:38]
  assign sad4x_inst_io_pred2_1 = predictor_inst_io_predicted_pix2_1; // @[intra4x4top.scala 53:38]
  assign sad4x_inst_io_pred2_2 = predictor_inst_io_predicted_pix2_2; // @[intra4x4top.scala 53:38]
  assign sad4x_inst_io_pred2_3 = predictor_inst_io_predicted_pix2_3; // @[intra4x4top.scala 53:38]
  assign sad4x_inst_io_pred2_4 = predictor_inst_io_predicted_pix2_4; // @[intra4x4top.scala 53:38]
  assign sad4x_inst_io_pred2_5 = predictor_inst_io_predicted_pix2_5; // @[intra4x4top.scala 53:38]
  assign sad4x_inst_io_pred2_6 = predictor_inst_io_predicted_pix2_6; // @[intra4x4top.scala 53:38]
  assign sad4x_inst_io_pred2_7 = predictor_inst_io_predicted_pix2_7; // @[intra4x4top.scala 53:38]
  assign sad4x_inst_io_pred2_8 = predictor_inst_io_predicted_pix2_8; // @[intra4x4top.scala 53:38]
  assign sad4x_inst_io_pred2_9 = predictor_inst_io_predicted_pix2_9; // @[intra4x4top.scala 53:38]
  assign sad4x_inst_io_pred2_10 = predictor_inst_io_predicted_pix2_10; // @[intra4x4top.scala 53:38]
  assign sad4x_inst_io_pred2_11 = predictor_inst_io_predicted_pix2_11; // @[intra4x4top.scala 53:38]
  assign sad4x_inst_io_pred2_12 = predictor_inst_io_predicted_pix2_12; // @[intra4x4top.scala 53:38]
  assign sad4x_inst_io_pred2_13 = predictor_inst_io_predicted_pix2_13; // @[intra4x4top.scala 53:38]
  assign sad4x_inst_io_pred2_14 = predictor_inst_io_predicted_pix2_14; // @[intra4x4top.scala 53:38]
  assign sad4x_inst_io_pred2_15 = predictor_inst_io_predicted_pix2_15; // @[intra4x4top.scala 53:38]
  assign sad4x_inst_io_pred3_0 = predictor_inst_io_predicted_pix3_0; // @[intra4x4top.scala 54:38]
  assign sad4x_inst_io_pred3_1 = predictor_inst_io_predicted_pix3_1; // @[intra4x4top.scala 54:38]
  assign sad4x_inst_io_pred3_2 = predictor_inst_io_predicted_pix3_2; // @[intra4x4top.scala 54:38]
  assign sad4x_inst_io_pred3_3 = predictor_inst_io_predicted_pix3_3; // @[intra4x4top.scala 54:38]
  assign sad4x_inst_io_pred3_4 = predictor_inst_io_predicted_pix3_4; // @[intra4x4top.scala 54:38]
  assign sad4x_inst_io_pred3_5 = predictor_inst_io_predicted_pix3_5; // @[intra4x4top.scala 54:38]
  assign sad4x_inst_io_pred3_6 = predictor_inst_io_predicted_pix3_6; // @[intra4x4top.scala 54:38]
  assign sad4x_inst_io_pred3_7 = predictor_inst_io_predicted_pix3_7; // @[intra4x4top.scala 54:38]
  assign sad4x_inst_io_pred3_8 = predictor_inst_io_predicted_pix3_8; // @[intra4x4top.scala 54:38]
  assign sad4x_inst_io_pred3_9 = predictor_inst_io_predicted_pix3_9; // @[intra4x4top.scala 54:38]
  assign sad4x_inst_io_pred3_10 = predictor_inst_io_predicted_pix3_10; // @[intra4x4top.scala 54:38]
  assign sad4x_inst_io_pred3_11 = predictor_inst_io_predicted_pix3_11; // @[intra4x4top.scala 54:38]
  assign sad4x_inst_io_pred3_12 = predictor_inst_io_predicted_pix3_12; // @[intra4x4top.scala 54:38]
  assign sad4x_inst_io_pred3_13 = predictor_inst_io_predicted_pix3_13; // @[intra4x4top.scala 54:38]
  assign sad4x_inst_io_pred3_14 = predictor_inst_io_predicted_pix3_14; // @[intra4x4top.scala 54:38]
  assign sad4x_inst_io_pred3_15 = predictor_inst_io_predicted_pix3_15; // @[intra4x4top.scala 54:38]
  assign sad4x_inst_io_pred4_0 = predictor_inst_io_predicted_pix4_0; // @[intra4x4top.scala 55:38]
  assign sad4x_inst_io_pred4_1 = predictor_inst_io_predicted_pix4_1; // @[intra4x4top.scala 55:38]
  assign sad4x_inst_io_pred4_2 = predictor_inst_io_predicted_pix4_2; // @[intra4x4top.scala 55:38]
  assign sad4x_inst_io_pred4_3 = predictor_inst_io_predicted_pix4_3; // @[intra4x4top.scala 55:38]
  assign sad4x_inst_io_pred4_4 = predictor_inst_io_predicted_pix4_4; // @[intra4x4top.scala 55:38]
  assign sad4x_inst_io_pred4_5 = predictor_inst_io_predicted_pix4_5; // @[intra4x4top.scala 55:38]
  assign sad4x_inst_io_pred4_6 = predictor_inst_io_predicted_pix4_6; // @[intra4x4top.scala 55:38]
  assign sad4x_inst_io_pred4_7 = predictor_inst_io_predicted_pix4_7; // @[intra4x4top.scala 55:38]
  assign sad4x_inst_io_pred4_8 = predictor_inst_io_predicted_pix4_8; // @[intra4x4top.scala 55:38]
  assign sad4x_inst_io_pred4_9 = predictor_inst_io_predicted_pix4_9; // @[intra4x4top.scala 55:38]
  assign sad4x_inst_io_pred4_10 = predictor_inst_io_predicted_pix4_10; // @[intra4x4top.scala 55:38]
  assign sad4x_inst_io_pred4_11 = predictor_inst_io_predicted_pix4_11; // @[intra4x4top.scala 55:38]
  assign sad4x_inst_io_pred4_12 = predictor_inst_io_predicted_pix4_12; // @[intra4x4top.scala 55:38]
  assign sad4x_inst_io_pred4_13 = predictor_inst_io_predicted_pix4_13; // @[intra4x4top.scala 55:38]
  assign sad4x_inst_io_pred4_14 = predictor_inst_io_predicted_pix4_14; // @[intra4x4top.scala 55:38]
  assign sad4x_inst_io_pred4_15 = predictor_inst_io_predicted_pix4_15; // @[intra4x4top.scala 55:38]
  assign sad4x_inst_io_pred5_0 = predictor_inst_io_predicted_pix5_0; // @[intra4x4top.scala 56:38]
  assign sad4x_inst_io_pred5_1 = predictor_inst_io_predicted_pix5_1; // @[intra4x4top.scala 56:38]
  assign sad4x_inst_io_pred5_2 = predictor_inst_io_predicted_pix5_2; // @[intra4x4top.scala 56:38]
  assign sad4x_inst_io_pred5_3 = predictor_inst_io_predicted_pix5_3; // @[intra4x4top.scala 56:38]
  assign sad4x_inst_io_pred5_4 = predictor_inst_io_predicted_pix5_4; // @[intra4x4top.scala 56:38]
  assign sad4x_inst_io_pred5_5 = predictor_inst_io_predicted_pix5_5; // @[intra4x4top.scala 56:38]
  assign sad4x_inst_io_pred5_6 = predictor_inst_io_predicted_pix5_6; // @[intra4x4top.scala 56:38]
  assign sad4x_inst_io_pred5_7 = predictor_inst_io_predicted_pix5_7; // @[intra4x4top.scala 56:38]
  assign sad4x_inst_io_pred5_8 = predictor_inst_io_predicted_pix5_8; // @[intra4x4top.scala 56:38]
  assign sad4x_inst_io_pred5_9 = predictor_inst_io_predicted_pix5_9; // @[intra4x4top.scala 56:38]
  assign sad4x_inst_io_pred5_10 = predictor_inst_io_predicted_pix5_10; // @[intra4x4top.scala 56:38]
  assign sad4x_inst_io_pred5_11 = predictor_inst_io_predicted_pix5_11; // @[intra4x4top.scala 56:38]
  assign sad4x_inst_io_pred5_12 = predictor_inst_io_predicted_pix5_12; // @[intra4x4top.scala 56:38]
  assign sad4x_inst_io_pred5_13 = predictor_inst_io_predicted_pix5_13; // @[intra4x4top.scala 56:38]
  assign sad4x_inst_io_pred5_14 = predictor_inst_io_predicted_pix5_14; // @[intra4x4top.scala 56:38]
  assign sad4x_inst_io_pred5_15 = predictor_inst_io_predicted_pix5_15; // @[intra4x4top.scala 56:38]
  assign sad4x_inst_io_pred6_0 = predictor_inst_io_predicted_pix6_0; // @[intra4x4top.scala 57:38]
  assign sad4x_inst_io_pred6_1 = predictor_inst_io_predicted_pix6_1; // @[intra4x4top.scala 57:38]
  assign sad4x_inst_io_pred6_2 = predictor_inst_io_predicted_pix6_2; // @[intra4x4top.scala 57:38]
  assign sad4x_inst_io_pred6_3 = predictor_inst_io_predicted_pix6_3; // @[intra4x4top.scala 57:38]
  assign sad4x_inst_io_pred6_4 = predictor_inst_io_predicted_pix6_4; // @[intra4x4top.scala 57:38]
  assign sad4x_inst_io_pred6_5 = predictor_inst_io_predicted_pix6_5; // @[intra4x4top.scala 57:38]
  assign sad4x_inst_io_pred6_6 = predictor_inst_io_predicted_pix6_6; // @[intra4x4top.scala 57:38]
  assign sad4x_inst_io_pred6_7 = predictor_inst_io_predicted_pix6_7; // @[intra4x4top.scala 57:38]
  assign sad4x_inst_io_pred6_8 = predictor_inst_io_predicted_pix6_8; // @[intra4x4top.scala 57:38]
  assign sad4x_inst_io_pred6_9 = predictor_inst_io_predicted_pix6_9; // @[intra4x4top.scala 57:38]
  assign sad4x_inst_io_pred6_10 = predictor_inst_io_predicted_pix6_10; // @[intra4x4top.scala 57:38]
  assign sad4x_inst_io_pred6_11 = predictor_inst_io_predicted_pix6_11; // @[intra4x4top.scala 57:38]
  assign sad4x_inst_io_pred6_12 = predictor_inst_io_predicted_pix6_12; // @[intra4x4top.scala 57:38]
  assign sad4x_inst_io_pred6_13 = predictor_inst_io_predicted_pix6_13; // @[intra4x4top.scala 57:38]
  assign sad4x_inst_io_pred6_14 = predictor_inst_io_predicted_pix6_14; // @[intra4x4top.scala 57:38]
  assign sad4x_inst_io_pred6_15 = predictor_inst_io_predicted_pix6_15; // @[intra4x4top.scala 57:38]
  assign sad4x_inst_io_pred7_0 = predictor_inst_io_predicted_pix7_0; // @[intra4x4top.scala 58:38]
  assign sad4x_inst_io_pred7_1 = predictor_inst_io_predicted_pix7_1; // @[intra4x4top.scala 58:38]
  assign sad4x_inst_io_pred7_2 = predictor_inst_io_predicted_pix7_2; // @[intra4x4top.scala 58:38]
  assign sad4x_inst_io_pred7_3 = predictor_inst_io_predicted_pix7_3; // @[intra4x4top.scala 58:38]
  assign sad4x_inst_io_pred7_4 = predictor_inst_io_predicted_pix7_4; // @[intra4x4top.scala 58:38]
  assign sad4x_inst_io_pred7_5 = predictor_inst_io_predicted_pix7_5; // @[intra4x4top.scala 58:38]
  assign sad4x_inst_io_pred7_6 = predictor_inst_io_predicted_pix7_6; // @[intra4x4top.scala 58:38]
  assign sad4x_inst_io_pred7_7 = predictor_inst_io_predicted_pix7_7; // @[intra4x4top.scala 58:38]
  assign sad4x_inst_io_pred7_8 = predictor_inst_io_predicted_pix7_8; // @[intra4x4top.scala 58:38]
  assign sad4x_inst_io_pred7_9 = predictor_inst_io_predicted_pix7_9; // @[intra4x4top.scala 58:38]
  assign sad4x_inst_io_pred7_10 = predictor_inst_io_predicted_pix7_10; // @[intra4x4top.scala 58:38]
  assign sad4x_inst_io_pred7_11 = predictor_inst_io_predicted_pix7_11; // @[intra4x4top.scala 58:38]
  assign sad4x_inst_io_pred7_12 = predictor_inst_io_predicted_pix7_12; // @[intra4x4top.scala 58:38]
  assign sad4x_inst_io_pred7_13 = predictor_inst_io_predicted_pix7_13; // @[intra4x4top.scala 58:38]
  assign sad4x_inst_io_pred7_14 = predictor_inst_io_predicted_pix7_14; // @[intra4x4top.scala 58:38]
  assign sad4x_inst_io_pred7_15 = predictor_inst_io_predicted_pix7_15; // @[intra4x4top.scala 58:38]
  assign sad4x_inst_io_pred8_0 = predictor_inst_io_predicted_pix8_0; // @[intra4x4top.scala 59:38]
  assign sad4x_inst_io_pred8_1 = predictor_inst_io_predicted_pix8_1; // @[intra4x4top.scala 59:38]
  assign sad4x_inst_io_pred8_2 = predictor_inst_io_predicted_pix8_2; // @[intra4x4top.scala 59:38]
  assign sad4x_inst_io_pred8_3 = predictor_inst_io_predicted_pix8_3; // @[intra4x4top.scala 59:38]
  assign sad4x_inst_io_pred8_4 = predictor_inst_io_predicted_pix8_4; // @[intra4x4top.scala 59:38]
  assign sad4x_inst_io_pred8_5 = predictor_inst_io_predicted_pix8_5; // @[intra4x4top.scala 59:38]
  assign sad4x_inst_io_pred8_6 = predictor_inst_io_predicted_pix8_6; // @[intra4x4top.scala 59:38]
  assign sad4x_inst_io_pred8_7 = predictor_inst_io_predicted_pix8_7; // @[intra4x4top.scala 59:38]
  assign sad4x_inst_io_pred8_8 = predictor_inst_io_predicted_pix8_8; // @[intra4x4top.scala 59:38]
  assign sad4x_inst_io_pred8_9 = predictor_inst_io_predicted_pix8_9; // @[intra4x4top.scala 59:38]
  assign sad4x_inst_io_pred8_10 = predictor_inst_io_predicted_pix8_10; // @[intra4x4top.scala 59:38]
  assign sad4x_inst_io_pred8_11 = predictor_inst_io_predicted_pix8_11; // @[intra4x4top.scala 59:38]
  assign sad4x_inst_io_pred8_12 = predictor_inst_io_predicted_pix8_12; // @[intra4x4top.scala 59:38]
  assign sad4x_inst_io_pred8_13 = predictor_inst_io_predicted_pix8_13; // @[intra4x4top.scala 59:38]
  assign sad4x_inst_io_pred8_14 = predictor_inst_io_predicted_pix8_14; // @[intra4x4top.scala 59:38]
  assign sad4x_inst_io_pred8_15 = predictor_inst_io_predicted_pix8_15; // @[intra4x4top.scala 59:38]
  assign intra_ctrl_inst_clock = clock;
  assign intra_ctrl_inst_reset = reset;
  assign intra_ctrl_inst_io_start = io_start; // @[intra4x4top.scala 39:38]
  assign intra_cmp_inst_io_start = intra_ctrl_inst_io_capture_sad; // @[intra4x4top.scala 61:38]
  assign intra_cmp_inst_io_sad_res_0 = sad4x_inst_io_sad_seq_0; // @[intra4x4top.scala 62:38]
  assign intra_cmp_inst_io_sad_res_1 = sad4x_inst_io_sad_seq_1; // @[intra4x4top.scala 62:38]
  assign intra_cmp_inst_io_sad_res_2 = sad4x_inst_io_sad_seq_2; // @[intra4x4top.scala 62:38]
  assign intra_cmp_inst_io_sad_res_3 = sad4x_inst_io_sad_seq_3; // @[intra4x4top.scala 62:38]
  assign intra_cmp_inst_io_sad_res_4 = sad4x_inst_io_sad_seq_4; // @[intra4x4top.scala 62:38]
  assign intra_cmp_inst_io_sad_res_5 = sad4x_inst_io_sad_seq_5; // @[intra4x4top.scala 62:38]
  assign intra_cmp_inst_io_sad_res_6 = sad4x_inst_io_sad_seq_6; // @[intra4x4top.scala 62:38]
  assign intra_cmp_inst_io_sad_res_7 = sad4x_inst_io_sad_seq_7; // @[intra4x4top.scala 62:38]
  assign intra_cmp_inst_io_sad_res_8 = sad4x_inst_io_sad_seq_8; // @[intra4x4top.scala 62:38]
  assign intra_cmp_inst_io_db0_0 = sad4x_inst_io_diff0_0; // @[intra4x4top.scala 63:38]
  assign intra_cmp_inst_io_db0_1 = sad4x_inst_io_diff0_1; // @[intra4x4top.scala 63:38]
  assign intra_cmp_inst_io_db0_2 = sad4x_inst_io_diff0_2; // @[intra4x4top.scala 63:38]
  assign intra_cmp_inst_io_db0_3 = sad4x_inst_io_diff0_3; // @[intra4x4top.scala 63:38]
  assign intra_cmp_inst_io_db0_4 = sad4x_inst_io_diff0_4; // @[intra4x4top.scala 63:38]
  assign intra_cmp_inst_io_db0_5 = sad4x_inst_io_diff0_5; // @[intra4x4top.scala 63:38]
  assign intra_cmp_inst_io_db0_6 = sad4x_inst_io_diff0_6; // @[intra4x4top.scala 63:38]
  assign intra_cmp_inst_io_db0_7 = sad4x_inst_io_diff0_7; // @[intra4x4top.scala 63:38]
  assign intra_cmp_inst_io_db0_8 = sad4x_inst_io_diff0_8; // @[intra4x4top.scala 63:38]
  assign intra_cmp_inst_io_db0_9 = sad4x_inst_io_diff0_9; // @[intra4x4top.scala 63:38]
  assign intra_cmp_inst_io_db0_10 = sad4x_inst_io_diff0_10; // @[intra4x4top.scala 63:38]
  assign intra_cmp_inst_io_db0_11 = sad4x_inst_io_diff0_11; // @[intra4x4top.scala 63:38]
  assign intra_cmp_inst_io_db0_12 = sad4x_inst_io_diff0_12; // @[intra4x4top.scala 63:38]
  assign intra_cmp_inst_io_db0_13 = sad4x_inst_io_diff0_13; // @[intra4x4top.scala 63:38]
  assign intra_cmp_inst_io_db0_14 = sad4x_inst_io_diff0_14; // @[intra4x4top.scala 63:38]
  assign intra_cmp_inst_io_db0_15 = sad4x_inst_io_diff0_15; // @[intra4x4top.scala 63:38]
  assign intra_cmp_inst_io_db1_0 = sad4x_inst_io_diff1_0; // @[intra4x4top.scala 64:38]
  assign intra_cmp_inst_io_db1_1 = sad4x_inst_io_diff1_1; // @[intra4x4top.scala 64:38]
  assign intra_cmp_inst_io_db1_2 = sad4x_inst_io_diff1_2; // @[intra4x4top.scala 64:38]
  assign intra_cmp_inst_io_db1_3 = sad4x_inst_io_diff1_3; // @[intra4x4top.scala 64:38]
  assign intra_cmp_inst_io_db1_4 = sad4x_inst_io_diff1_4; // @[intra4x4top.scala 64:38]
  assign intra_cmp_inst_io_db1_5 = sad4x_inst_io_diff1_5; // @[intra4x4top.scala 64:38]
  assign intra_cmp_inst_io_db1_6 = sad4x_inst_io_diff1_6; // @[intra4x4top.scala 64:38]
  assign intra_cmp_inst_io_db1_7 = sad4x_inst_io_diff1_7; // @[intra4x4top.scala 64:38]
  assign intra_cmp_inst_io_db1_8 = sad4x_inst_io_diff1_8; // @[intra4x4top.scala 64:38]
  assign intra_cmp_inst_io_db1_9 = sad4x_inst_io_diff1_9; // @[intra4x4top.scala 64:38]
  assign intra_cmp_inst_io_db1_10 = sad4x_inst_io_diff1_10; // @[intra4x4top.scala 64:38]
  assign intra_cmp_inst_io_db1_11 = sad4x_inst_io_diff1_11; // @[intra4x4top.scala 64:38]
  assign intra_cmp_inst_io_db1_12 = sad4x_inst_io_diff1_12; // @[intra4x4top.scala 64:38]
  assign intra_cmp_inst_io_db1_13 = sad4x_inst_io_diff1_13; // @[intra4x4top.scala 64:38]
  assign intra_cmp_inst_io_db1_14 = sad4x_inst_io_diff1_14; // @[intra4x4top.scala 64:38]
  assign intra_cmp_inst_io_db1_15 = sad4x_inst_io_diff1_15; // @[intra4x4top.scala 64:38]
  assign intra_cmp_inst_io_db2_0 = sad4x_inst_io_diff2_0; // @[intra4x4top.scala 65:38]
  assign intra_cmp_inst_io_db2_1 = sad4x_inst_io_diff2_1; // @[intra4x4top.scala 65:38]
  assign intra_cmp_inst_io_db2_2 = sad4x_inst_io_diff2_2; // @[intra4x4top.scala 65:38]
  assign intra_cmp_inst_io_db2_3 = sad4x_inst_io_diff2_3; // @[intra4x4top.scala 65:38]
  assign intra_cmp_inst_io_db2_4 = sad4x_inst_io_diff2_4; // @[intra4x4top.scala 65:38]
  assign intra_cmp_inst_io_db2_5 = sad4x_inst_io_diff2_5; // @[intra4x4top.scala 65:38]
  assign intra_cmp_inst_io_db2_6 = sad4x_inst_io_diff2_6; // @[intra4x4top.scala 65:38]
  assign intra_cmp_inst_io_db2_7 = sad4x_inst_io_diff2_7; // @[intra4x4top.scala 65:38]
  assign intra_cmp_inst_io_db2_8 = sad4x_inst_io_diff2_8; // @[intra4x4top.scala 65:38]
  assign intra_cmp_inst_io_db2_9 = sad4x_inst_io_diff2_9; // @[intra4x4top.scala 65:38]
  assign intra_cmp_inst_io_db2_10 = sad4x_inst_io_diff2_10; // @[intra4x4top.scala 65:38]
  assign intra_cmp_inst_io_db2_11 = sad4x_inst_io_diff2_11; // @[intra4x4top.scala 65:38]
  assign intra_cmp_inst_io_db2_12 = sad4x_inst_io_diff2_12; // @[intra4x4top.scala 65:38]
  assign intra_cmp_inst_io_db2_13 = sad4x_inst_io_diff2_13; // @[intra4x4top.scala 65:38]
  assign intra_cmp_inst_io_db2_14 = sad4x_inst_io_diff2_14; // @[intra4x4top.scala 65:38]
  assign intra_cmp_inst_io_db2_15 = sad4x_inst_io_diff2_15; // @[intra4x4top.scala 65:38]
  assign intra_cmp_inst_io_db3_0 = sad4x_inst_io_diff3_0; // @[intra4x4top.scala 66:38]
  assign intra_cmp_inst_io_db3_1 = sad4x_inst_io_diff3_1; // @[intra4x4top.scala 66:38]
  assign intra_cmp_inst_io_db3_2 = sad4x_inst_io_diff3_2; // @[intra4x4top.scala 66:38]
  assign intra_cmp_inst_io_db3_3 = sad4x_inst_io_diff3_3; // @[intra4x4top.scala 66:38]
  assign intra_cmp_inst_io_db3_4 = sad4x_inst_io_diff3_4; // @[intra4x4top.scala 66:38]
  assign intra_cmp_inst_io_db3_5 = sad4x_inst_io_diff3_5; // @[intra4x4top.scala 66:38]
  assign intra_cmp_inst_io_db3_6 = sad4x_inst_io_diff3_6; // @[intra4x4top.scala 66:38]
  assign intra_cmp_inst_io_db3_7 = sad4x_inst_io_diff3_7; // @[intra4x4top.scala 66:38]
  assign intra_cmp_inst_io_db3_8 = sad4x_inst_io_diff3_8; // @[intra4x4top.scala 66:38]
  assign intra_cmp_inst_io_db3_9 = sad4x_inst_io_diff3_9; // @[intra4x4top.scala 66:38]
  assign intra_cmp_inst_io_db3_10 = sad4x_inst_io_diff3_10; // @[intra4x4top.scala 66:38]
  assign intra_cmp_inst_io_db3_11 = sad4x_inst_io_diff3_11; // @[intra4x4top.scala 66:38]
  assign intra_cmp_inst_io_db3_12 = sad4x_inst_io_diff3_12; // @[intra4x4top.scala 66:38]
  assign intra_cmp_inst_io_db3_13 = sad4x_inst_io_diff3_13; // @[intra4x4top.scala 66:38]
  assign intra_cmp_inst_io_db3_14 = sad4x_inst_io_diff3_14; // @[intra4x4top.scala 66:38]
  assign intra_cmp_inst_io_db3_15 = sad4x_inst_io_diff3_15; // @[intra4x4top.scala 66:38]
  assign intra_cmp_inst_io_db4_0 = sad4x_inst_io_diff4_0; // @[intra4x4top.scala 67:38]
  assign intra_cmp_inst_io_db4_1 = sad4x_inst_io_diff4_1; // @[intra4x4top.scala 67:38]
  assign intra_cmp_inst_io_db4_2 = sad4x_inst_io_diff4_2; // @[intra4x4top.scala 67:38]
  assign intra_cmp_inst_io_db4_3 = sad4x_inst_io_diff4_3; // @[intra4x4top.scala 67:38]
  assign intra_cmp_inst_io_db4_4 = sad4x_inst_io_diff4_4; // @[intra4x4top.scala 67:38]
  assign intra_cmp_inst_io_db4_5 = sad4x_inst_io_diff4_5; // @[intra4x4top.scala 67:38]
  assign intra_cmp_inst_io_db4_6 = sad4x_inst_io_diff4_6; // @[intra4x4top.scala 67:38]
  assign intra_cmp_inst_io_db4_7 = sad4x_inst_io_diff4_7; // @[intra4x4top.scala 67:38]
  assign intra_cmp_inst_io_db4_8 = sad4x_inst_io_diff4_8; // @[intra4x4top.scala 67:38]
  assign intra_cmp_inst_io_db4_9 = sad4x_inst_io_diff4_9; // @[intra4x4top.scala 67:38]
  assign intra_cmp_inst_io_db4_10 = sad4x_inst_io_diff4_10; // @[intra4x4top.scala 67:38]
  assign intra_cmp_inst_io_db4_11 = sad4x_inst_io_diff4_11; // @[intra4x4top.scala 67:38]
  assign intra_cmp_inst_io_db4_12 = sad4x_inst_io_diff4_12; // @[intra4x4top.scala 67:38]
  assign intra_cmp_inst_io_db4_13 = sad4x_inst_io_diff4_13; // @[intra4x4top.scala 67:38]
  assign intra_cmp_inst_io_db4_14 = sad4x_inst_io_diff4_14; // @[intra4x4top.scala 67:38]
  assign intra_cmp_inst_io_db4_15 = sad4x_inst_io_diff4_15; // @[intra4x4top.scala 67:38]
  assign intra_cmp_inst_io_db5_0 = sad4x_inst_io_diff5_0; // @[intra4x4top.scala 68:38]
  assign intra_cmp_inst_io_db5_1 = sad4x_inst_io_diff5_1; // @[intra4x4top.scala 68:38]
  assign intra_cmp_inst_io_db5_2 = sad4x_inst_io_diff5_2; // @[intra4x4top.scala 68:38]
  assign intra_cmp_inst_io_db5_3 = sad4x_inst_io_diff5_3; // @[intra4x4top.scala 68:38]
  assign intra_cmp_inst_io_db5_4 = sad4x_inst_io_diff5_4; // @[intra4x4top.scala 68:38]
  assign intra_cmp_inst_io_db5_5 = sad4x_inst_io_diff5_5; // @[intra4x4top.scala 68:38]
  assign intra_cmp_inst_io_db5_6 = sad4x_inst_io_diff5_6; // @[intra4x4top.scala 68:38]
  assign intra_cmp_inst_io_db5_7 = sad4x_inst_io_diff5_7; // @[intra4x4top.scala 68:38]
  assign intra_cmp_inst_io_db5_8 = sad4x_inst_io_diff5_8; // @[intra4x4top.scala 68:38]
  assign intra_cmp_inst_io_db5_9 = sad4x_inst_io_diff5_9; // @[intra4x4top.scala 68:38]
  assign intra_cmp_inst_io_db5_10 = sad4x_inst_io_diff5_10; // @[intra4x4top.scala 68:38]
  assign intra_cmp_inst_io_db5_11 = sad4x_inst_io_diff5_11; // @[intra4x4top.scala 68:38]
  assign intra_cmp_inst_io_db5_12 = sad4x_inst_io_diff5_12; // @[intra4x4top.scala 68:38]
  assign intra_cmp_inst_io_db5_13 = sad4x_inst_io_diff5_13; // @[intra4x4top.scala 68:38]
  assign intra_cmp_inst_io_db5_14 = sad4x_inst_io_diff5_14; // @[intra4x4top.scala 68:38]
  assign intra_cmp_inst_io_db5_15 = sad4x_inst_io_diff5_15; // @[intra4x4top.scala 68:38]
  assign intra_cmp_inst_io_db6_0 = sad4x_inst_io_diff6_0; // @[intra4x4top.scala 69:38]
  assign intra_cmp_inst_io_db6_1 = sad4x_inst_io_diff6_1; // @[intra4x4top.scala 69:38]
  assign intra_cmp_inst_io_db6_2 = sad4x_inst_io_diff6_2; // @[intra4x4top.scala 69:38]
  assign intra_cmp_inst_io_db6_3 = sad4x_inst_io_diff6_3; // @[intra4x4top.scala 69:38]
  assign intra_cmp_inst_io_db6_4 = sad4x_inst_io_diff6_4; // @[intra4x4top.scala 69:38]
  assign intra_cmp_inst_io_db6_5 = sad4x_inst_io_diff6_5; // @[intra4x4top.scala 69:38]
  assign intra_cmp_inst_io_db6_6 = sad4x_inst_io_diff6_6; // @[intra4x4top.scala 69:38]
  assign intra_cmp_inst_io_db6_7 = sad4x_inst_io_diff6_7; // @[intra4x4top.scala 69:38]
  assign intra_cmp_inst_io_db6_8 = sad4x_inst_io_diff6_8; // @[intra4x4top.scala 69:38]
  assign intra_cmp_inst_io_db6_9 = sad4x_inst_io_diff6_9; // @[intra4x4top.scala 69:38]
  assign intra_cmp_inst_io_db6_10 = sad4x_inst_io_diff6_10; // @[intra4x4top.scala 69:38]
  assign intra_cmp_inst_io_db6_11 = sad4x_inst_io_diff6_11; // @[intra4x4top.scala 69:38]
  assign intra_cmp_inst_io_db6_12 = sad4x_inst_io_diff6_12; // @[intra4x4top.scala 69:38]
  assign intra_cmp_inst_io_db6_13 = sad4x_inst_io_diff6_13; // @[intra4x4top.scala 69:38]
  assign intra_cmp_inst_io_db6_14 = sad4x_inst_io_diff6_14; // @[intra4x4top.scala 69:38]
  assign intra_cmp_inst_io_db6_15 = sad4x_inst_io_diff6_15; // @[intra4x4top.scala 69:38]
  assign intra_cmp_inst_io_db7_0 = sad4x_inst_io_diff7_0; // @[intra4x4top.scala 70:38]
  assign intra_cmp_inst_io_db7_1 = sad4x_inst_io_diff7_1; // @[intra4x4top.scala 70:38]
  assign intra_cmp_inst_io_db7_2 = sad4x_inst_io_diff7_2; // @[intra4x4top.scala 70:38]
  assign intra_cmp_inst_io_db7_3 = sad4x_inst_io_diff7_3; // @[intra4x4top.scala 70:38]
  assign intra_cmp_inst_io_db7_4 = sad4x_inst_io_diff7_4; // @[intra4x4top.scala 70:38]
  assign intra_cmp_inst_io_db7_5 = sad4x_inst_io_diff7_5; // @[intra4x4top.scala 70:38]
  assign intra_cmp_inst_io_db7_6 = sad4x_inst_io_diff7_6; // @[intra4x4top.scala 70:38]
  assign intra_cmp_inst_io_db7_7 = sad4x_inst_io_diff7_7; // @[intra4x4top.scala 70:38]
  assign intra_cmp_inst_io_db7_8 = sad4x_inst_io_diff7_8; // @[intra4x4top.scala 70:38]
  assign intra_cmp_inst_io_db7_9 = sad4x_inst_io_diff7_9; // @[intra4x4top.scala 70:38]
  assign intra_cmp_inst_io_db7_10 = sad4x_inst_io_diff7_10; // @[intra4x4top.scala 70:38]
  assign intra_cmp_inst_io_db7_11 = sad4x_inst_io_diff7_11; // @[intra4x4top.scala 70:38]
  assign intra_cmp_inst_io_db7_12 = sad4x_inst_io_diff7_12; // @[intra4x4top.scala 70:38]
  assign intra_cmp_inst_io_db7_13 = sad4x_inst_io_diff7_13; // @[intra4x4top.scala 70:38]
  assign intra_cmp_inst_io_db7_14 = sad4x_inst_io_diff7_14; // @[intra4x4top.scala 70:38]
  assign intra_cmp_inst_io_db7_15 = sad4x_inst_io_diff7_15; // @[intra4x4top.scala 70:38]
  assign intra_cmp_inst_io_db8_0 = sad4x_inst_io_diff8_0; // @[intra4x4top.scala 71:38]
  assign intra_cmp_inst_io_db8_1 = sad4x_inst_io_diff8_1; // @[intra4x4top.scala 71:38]
  assign intra_cmp_inst_io_db8_2 = sad4x_inst_io_diff8_2; // @[intra4x4top.scala 71:38]
  assign intra_cmp_inst_io_db8_3 = sad4x_inst_io_diff8_3; // @[intra4x4top.scala 71:38]
  assign intra_cmp_inst_io_db8_4 = sad4x_inst_io_diff8_4; // @[intra4x4top.scala 71:38]
  assign intra_cmp_inst_io_db8_5 = sad4x_inst_io_diff8_5; // @[intra4x4top.scala 71:38]
  assign intra_cmp_inst_io_db8_6 = sad4x_inst_io_diff8_6; // @[intra4x4top.scala 71:38]
  assign intra_cmp_inst_io_db8_7 = sad4x_inst_io_diff8_7; // @[intra4x4top.scala 71:38]
  assign intra_cmp_inst_io_db8_8 = sad4x_inst_io_diff8_8; // @[intra4x4top.scala 71:38]
  assign intra_cmp_inst_io_db8_9 = sad4x_inst_io_diff8_9; // @[intra4x4top.scala 71:38]
  assign intra_cmp_inst_io_db8_10 = sad4x_inst_io_diff8_10; // @[intra4x4top.scala 71:38]
  assign intra_cmp_inst_io_db8_11 = sad4x_inst_io_diff8_11; // @[intra4x4top.scala 71:38]
  assign intra_cmp_inst_io_db8_12 = sad4x_inst_io_diff8_12; // @[intra4x4top.scala 71:38]
  assign intra_cmp_inst_io_db8_13 = sad4x_inst_io_diff8_13; // @[intra4x4top.scala 71:38]
  assign intra_cmp_inst_io_db8_14 = sad4x_inst_io_diff8_14; // @[intra4x4top.scala 71:38]
  assign intra_cmp_inst_io_db8_15 = sad4x_inst_io_diff8_15; // @[intra4x4top.scala 71:38]
  assign intra_cmp_inst_io_pred_pix0_0 = predictor_inst_io_predicted_pix0_0; // @[intra4x4top.scala 72:38]
  assign intra_cmp_inst_io_pred_pix0_1 = predictor_inst_io_predicted_pix0_1; // @[intra4x4top.scala 72:38]
  assign intra_cmp_inst_io_pred_pix0_2 = predictor_inst_io_predicted_pix0_2; // @[intra4x4top.scala 72:38]
  assign intra_cmp_inst_io_pred_pix0_3 = predictor_inst_io_predicted_pix0_3; // @[intra4x4top.scala 72:38]
  assign intra_cmp_inst_io_pred_pix0_4 = predictor_inst_io_predicted_pix0_4; // @[intra4x4top.scala 72:38]
  assign intra_cmp_inst_io_pred_pix0_5 = predictor_inst_io_predicted_pix0_5; // @[intra4x4top.scala 72:38]
  assign intra_cmp_inst_io_pred_pix0_6 = predictor_inst_io_predicted_pix0_6; // @[intra4x4top.scala 72:38]
  assign intra_cmp_inst_io_pred_pix0_7 = predictor_inst_io_predicted_pix0_7; // @[intra4x4top.scala 72:38]
  assign intra_cmp_inst_io_pred_pix0_8 = predictor_inst_io_predicted_pix0_8; // @[intra4x4top.scala 72:38]
  assign intra_cmp_inst_io_pred_pix0_9 = predictor_inst_io_predicted_pix0_9; // @[intra4x4top.scala 72:38]
  assign intra_cmp_inst_io_pred_pix0_10 = predictor_inst_io_predicted_pix0_10; // @[intra4x4top.scala 72:38]
  assign intra_cmp_inst_io_pred_pix0_11 = predictor_inst_io_predicted_pix0_11; // @[intra4x4top.scala 72:38]
  assign intra_cmp_inst_io_pred_pix0_12 = predictor_inst_io_predicted_pix0_12; // @[intra4x4top.scala 72:38]
  assign intra_cmp_inst_io_pred_pix0_13 = predictor_inst_io_predicted_pix0_13; // @[intra4x4top.scala 72:38]
  assign intra_cmp_inst_io_pred_pix0_14 = predictor_inst_io_predicted_pix0_14; // @[intra4x4top.scala 72:38]
  assign intra_cmp_inst_io_pred_pix0_15 = predictor_inst_io_predicted_pix0_15; // @[intra4x4top.scala 72:38]
  assign intra_cmp_inst_io_pred_pix1_0 = predictor_inst_io_predicted_pix1_0; // @[intra4x4top.scala 73:38]
  assign intra_cmp_inst_io_pred_pix1_1 = predictor_inst_io_predicted_pix1_1; // @[intra4x4top.scala 73:38]
  assign intra_cmp_inst_io_pred_pix1_2 = predictor_inst_io_predicted_pix1_2; // @[intra4x4top.scala 73:38]
  assign intra_cmp_inst_io_pred_pix1_3 = predictor_inst_io_predicted_pix1_3; // @[intra4x4top.scala 73:38]
  assign intra_cmp_inst_io_pred_pix1_4 = predictor_inst_io_predicted_pix1_4; // @[intra4x4top.scala 73:38]
  assign intra_cmp_inst_io_pred_pix1_5 = predictor_inst_io_predicted_pix1_5; // @[intra4x4top.scala 73:38]
  assign intra_cmp_inst_io_pred_pix1_6 = predictor_inst_io_predicted_pix1_6; // @[intra4x4top.scala 73:38]
  assign intra_cmp_inst_io_pred_pix1_7 = predictor_inst_io_predicted_pix1_7; // @[intra4x4top.scala 73:38]
  assign intra_cmp_inst_io_pred_pix1_8 = predictor_inst_io_predicted_pix1_8; // @[intra4x4top.scala 73:38]
  assign intra_cmp_inst_io_pred_pix1_9 = predictor_inst_io_predicted_pix1_9; // @[intra4x4top.scala 73:38]
  assign intra_cmp_inst_io_pred_pix1_10 = predictor_inst_io_predicted_pix1_10; // @[intra4x4top.scala 73:38]
  assign intra_cmp_inst_io_pred_pix1_11 = predictor_inst_io_predicted_pix1_11; // @[intra4x4top.scala 73:38]
  assign intra_cmp_inst_io_pred_pix1_12 = predictor_inst_io_predicted_pix1_12; // @[intra4x4top.scala 73:38]
  assign intra_cmp_inst_io_pred_pix1_13 = predictor_inst_io_predicted_pix1_13; // @[intra4x4top.scala 73:38]
  assign intra_cmp_inst_io_pred_pix1_14 = predictor_inst_io_predicted_pix1_14; // @[intra4x4top.scala 73:38]
  assign intra_cmp_inst_io_pred_pix1_15 = predictor_inst_io_predicted_pix1_15; // @[intra4x4top.scala 73:38]
  assign intra_cmp_inst_io_pred_pix2_0 = predictor_inst_io_predicted_pix2_0; // @[intra4x4top.scala 74:38]
  assign intra_cmp_inst_io_pred_pix2_1 = predictor_inst_io_predicted_pix2_1; // @[intra4x4top.scala 74:38]
  assign intra_cmp_inst_io_pred_pix2_2 = predictor_inst_io_predicted_pix2_2; // @[intra4x4top.scala 74:38]
  assign intra_cmp_inst_io_pred_pix2_3 = predictor_inst_io_predicted_pix2_3; // @[intra4x4top.scala 74:38]
  assign intra_cmp_inst_io_pred_pix2_4 = predictor_inst_io_predicted_pix2_4; // @[intra4x4top.scala 74:38]
  assign intra_cmp_inst_io_pred_pix2_5 = predictor_inst_io_predicted_pix2_5; // @[intra4x4top.scala 74:38]
  assign intra_cmp_inst_io_pred_pix2_6 = predictor_inst_io_predicted_pix2_6; // @[intra4x4top.scala 74:38]
  assign intra_cmp_inst_io_pred_pix2_7 = predictor_inst_io_predicted_pix2_7; // @[intra4x4top.scala 74:38]
  assign intra_cmp_inst_io_pred_pix2_8 = predictor_inst_io_predicted_pix2_8; // @[intra4x4top.scala 74:38]
  assign intra_cmp_inst_io_pred_pix2_9 = predictor_inst_io_predicted_pix2_9; // @[intra4x4top.scala 74:38]
  assign intra_cmp_inst_io_pred_pix2_10 = predictor_inst_io_predicted_pix2_10; // @[intra4x4top.scala 74:38]
  assign intra_cmp_inst_io_pred_pix2_11 = predictor_inst_io_predicted_pix2_11; // @[intra4x4top.scala 74:38]
  assign intra_cmp_inst_io_pred_pix2_12 = predictor_inst_io_predicted_pix2_12; // @[intra4x4top.scala 74:38]
  assign intra_cmp_inst_io_pred_pix2_13 = predictor_inst_io_predicted_pix2_13; // @[intra4x4top.scala 74:38]
  assign intra_cmp_inst_io_pred_pix2_14 = predictor_inst_io_predicted_pix2_14; // @[intra4x4top.scala 74:38]
  assign intra_cmp_inst_io_pred_pix2_15 = predictor_inst_io_predicted_pix2_15; // @[intra4x4top.scala 74:38]
  assign intra_cmp_inst_io_pred_pix3_0 = predictor_inst_io_predicted_pix3_0; // @[intra4x4top.scala 75:38]
  assign intra_cmp_inst_io_pred_pix3_1 = predictor_inst_io_predicted_pix3_1; // @[intra4x4top.scala 75:38]
  assign intra_cmp_inst_io_pred_pix3_2 = predictor_inst_io_predicted_pix3_2; // @[intra4x4top.scala 75:38]
  assign intra_cmp_inst_io_pred_pix3_3 = predictor_inst_io_predicted_pix3_3; // @[intra4x4top.scala 75:38]
  assign intra_cmp_inst_io_pred_pix3_4 = predictor_inst_io_predicted_pix3_4; // @[intra4x4top.scala 75:38]
  assign intra_cmp_inst_io_pred_pix3_5 = predictor_inst_io_predicted_pix3_5; // @[intra4x4top.scala 75:38]
  assign intra_cmp_inst_io_pred_pix3_6 = predictor_inst_io_predicted_pix3_6; // @[intra4x4top.scala 75:38]
  assign intra_cmp_inst_io_pred_pix3_7 = predictor_inst_io_predicted_pix3_7; // @[intra4x4top.scala 75:38]
  assign intra_cmp_inst_io_pred_pix3_8 = predictor_inst_io_predicted_pix3_8; // @[intra4x4top.scala 75:38]
  assign intra_cmp_inst_io_pred_pix3_9 = predictor_inst_io_predicted_pix3_9; // @[intra4x4top.scala 75:38]
  assign intra_cmp_inst_io_pred_pix3_10 = predictor_inst_io_predicted_pix3_10; // @[intra4x4top.scala 75:38]
  assign intra_cmp_inst_io_pred_pix3_11 = predictor_inst_io_predicted_pix3_11; // @[intra4x4top.scala 75:38]
  assign intra_cmp_inst_io_pred_pix3_12 = predictor_inst_io_predicted_pix3_12; // @[intra4x4top.scala 75:38]
  assign intra_cmp_inst_io_pred_pix3_13 = predictor_inst_io_predicted_pix3_13; // @[intra4x4top.scala 75:38]
  assign intra_cmp_inst_io_pred_pix3_14 = predictor_inst_io_predicted_pix3_14; // @[intra4x4top.scala 75:38]
  assign intra_cmp_inst_io_pred_pix3_15 = predictor_inst_io_predicted_pix3_15; // @[intra4x4top.scala 75:38]
  assign intra_cmp_inst_io_pred_pix4_0 = predictor_inst_io_predicted_pix4_0; // @[intra4x4top.scala 76:38]
  assign intra_cmp_inst_io_pred_pix4_1 = predictor_inst_io_predicted_pix4_1; // @[intra4x4top.scala 76:38]
  assign intra_cmp_inst_io_pred_pix4_2 = predictor_inst_io_predicted_pix4_2; // @[intra4x4top.scala 76:38]
  assign intra_cmp_inst_io_pred_pix4_3 = predictor_inst_io_predicted_pix4_3; // @[intra4x4top.scala 76:38]
  assign intra_cmp_inst_io_pred_pix4_4 = predictor_inst_io_predicted_pix4_4; // @[intra4x4top.scala 76:38]
  assign intra_cmp_inst_io_pred_pix4_5 = predictor_inst_io_predicted_pix4_5; // @[intra4x4top.scala 76:38]
  assign intra_cmp_inst_io_pred_pix4_6 = predictor_inst_io_predicted_pix4_6; // @[intra4x4top.scala 76:38]
  assign intra_cmp_inst_io_pred_pix4_7 = predictor_inst_io_predicted_pix4_7; // @[intra4x4top.scala 76:38]
  assign intra_cmp_inst_io_pred_pix4_8 = predictor_inst_io_predicted_pix4_8; // @[intra4x4top.scala 76:38]
  assign intra_cmp_inst_io_pred_pix4_9 = predictor_inst_io_predicted_pix4_9; // @[intra4x4top.scala 76:38]
  assign intra_cmp_inst_io_pred_pix4_10 = predictor_inst_io_predicted_pix4_10; // @[intra4x4top.scala 76:38]
  assign intra_cmp_inst_io_pred_pix4_11 = predictor_inst_io_predicted_pix4_11; // @[intra4x4top.scala 76:38]
  assign intra_cmp_inst_io_pred_pix4_12 = predictor_inst_io_predicted_pix4_12; // @[intra4x4top.scala 76:38]
  assign intra_cmp_inst_io_pred_pix4_13 = predictor_inst_io_predicted_pix4_13; // @[intra4x4top.scala 76:38]
  assign intra_cmp_inst_io_pred_pix4_14 = predictor_inst_io_predicted_pix4_14; // @[intra4x4top.scala 76:38]
  assign intra_cmp_inst_io_pred_pix4_15 = predictor_inst_io_predicted_pix4_15; // @[intra4x4top.scala 76:38]
  assign intra_cmp_inst_io_pred_pix5_0 = predictor_inst_io_predicted_pix5_0; // @[intra4x4top.scala 77:38]
  assign intra_cmp_inst_io_pred_pix5_1 = predictor_inst_io_predicted_pix5_1; // @[intra4x4top.scala 77:38]
  assign intra_cmp_inst_io_pred_pix5_2 = predictor_inst_io_predicted_pix5_2; // @[intra4x4top.scala 77:38]
  assign intra_cmp_inst_io_pred_pix5_3 = predictor_inst_io_predicted_pix5_3; // @[intra4x4top.scala 77:38]
  assign intra_cmp_inst_io_pred_pix5_4 = predictor_inst_io_predicted_pix5_4; // @[intra4x4top.scala 77:38]
  assign intra_cmp_inst_io_pred_pix5_5 = predictor_inst_io_predicted_pix5_5; // @[intra4x4top.scala 77:38]
  assign intra_cmp_inst_io_pred_pix5_6 = predictor_inst_io_predicted_pix5_6; // @[intra4x4top.scala 77:38]
  assign intra_cmp_inst_io_pred_pix5_7 = predictor_inst_io_predicted_pix5_7; // @[intra4x4top.scala 77:38]
  assign intra_cmp_inst_io_pred_pix5_8 = predictor_inst_io_predicted_pix5_8; // @[intra4x4top.scala 77:38]
  assign intra_cmp_inst_io_pred_pix5_9 = predictor_inst_io_predicted_pix5_9; // @[intra4x4top.scala 77:38]
  assign intra_cmp_inst_io_pred_pix5_10 = predictor_inst_io_predicted_pix5_10; // @[intra4x4top.scala 77:38]
  assign intra_cmp_inst_io_pred_pix5_11 = predictor_inst_io_predicted_pix5_11; // @[intra4x4top.scala 77:38]
  assign intra_cmp_inst_io_pred_pix5_12 = predictor_inst_io_predicted_pix5_12; // @[intra4x4top.scala 77:38]
  assign intra_cmp_inst_io_pred_pix5_13 = predictor_inst_io_predicted_pix5_13; // @[intra4x4top.scala 77:38]
  assign intra_cmp_inst_io_pred_pix5_14 = predictor_inst_io_predicted_pix5_14; // @[intra4x4top.scala 77:38]
  assign intra_cmp_inst_io_pred_pix5_15 = predictor_inst_io_predicted_pix5_15; // @[intra4x4top.scala 77:38]
  assign intra_cmp_inst_io_pred_pix6_0 = predictor_inst_io_predicted_pix6_0; // @[intra4x4top.scala 78:38]
  assign intra_cmp_inst_io_pred_pix6_1 = predictor_inst_io_predicted_pix6_1; // @[intra4x4top.scala 78:38]
  assign intra_cmp_inst_io_pred_pix6_2 = predictor_inst_io_predicted_pix6_2; // @[intra4x4top.scala 78:38]
  assign intra_cmp_inst_io_pred_pix6_3 = predictor_inst_io_predicted_pix6_3; // @[intra4x4top.scala 78:38]
  assign intra_cmp_inst_io_pred_pix6_4 = predictor_inst_io_predicted_pix6_4; // @[intra4x4top.scala 78:38]
  assign intra_cmp_inst_io_pred_pix6_5 = predictor_inst_io_predicted_pix6_5; // @[intra4x4top.scala 78:38]
  assign intra_cmp_inst_io_pred_pix6_6 = predictor_inst_io_predicted_pix6_6; // @[intra4x4top.scala 78:38]
  assign intra_cmp_inst_io_pred_pix6_7 = predictor_inst_io_predicted_pix6_7; // @[intra4x4top.scala 78:38]
  assign intra_cmp_inst_io_pred_pix6_8 = predictor_inst_io_predicted_pix6_8; // @[intra4x4top.scala 78:38]
  assign intra_cmp_inst_io_pred_pix6_9 = predictor_inst_io_predicted_pix6_9; // @[intra4x4top.scala 78:38]
  assign intra_cmp_inst_io_pred_pix6_10 = predictor_inst_io_predicted_pix6_10; // @[intra4x4top.scala 78:38]
  assign intra_cmp_inst_io_pred_pix6_11 = predictor_inst_io_predicted_pix6_11; // @[intra4x4top.scala 78:38]
  assign intra_cmp_inst_io_pred_pix6_12 = predictor_inst_io_predicted_pix6_12; // @[intra4x4top.scala 78:38]
  assign intra_cmp_inst_io_pred_pix6_13 = predictor_inst_io_predicted_pix6_13; // @[intra4x4top.scala 78:38]
  assign intra_cmp_inst_io_pred_pix6_14 = predictor_inst_io_predicted_pix6_14; // @[intra4x4top.scala 78:38]
  assign intra_cmp_inst_io_pred_pix6_15 = predictor_inst_io_predicted_pix6_15; // @[intra4x4top.scala 78:38]
  assign intra_cmp_inst_io_pred_pix7_0 = predictor_inst_io_predicted_pix7_0; // @[intra4x4top.scala 79:38]
  assign intra_cmp_inst_io_pred_pix7_1 = predictor_inst_io_predicted_pix7_1; // @[intra4x4top.scala 79:38]
  assign intra_cmp_inst_io_pred_pix7_2 = predictor_inst_io_predicted_pix7_2; // @[intra4x4top.scala 79:38]
  assign intra_cmp_inst_io_pred_pix7_3 = predictor_inst_io_predicted_pix7_3; // @[intra4x4top.scala 79:38]
  assign intra_cmp_inst_io_pred_pix7_4 = predictor_inst_io_predicted_pix7_4; // @[intra4x4top.scala 79:38]
  assign intra_cmp_inst_io_pred_pix7_5 = predictor_inst_io_predicted_pix7_5; // @[intra4x4top.scala 79:38]
  assign intra_cmp_inst_io_pred_pix7_6 = predictor_inst_io_predicted_pix7_6; // @[intra4x4top.scala 79:38]
  assign intra_cmp_inst_io_pred_pix7_7 = predictor_inst_io_predicted_pix7_7; // @[intra4x4top.scala 79:38]
  assign intra_cmp_inst_io_pred_pix7_8 = predictor_inst_io_predicted_pix7_8; // @[intra4x4top.scala 79:38]
  assign intra_cmp_inst_io_pred_pix7_9 = predictor_inst_io_predicted_pix7_9; // @[intra4x4top.scala 79:38]
  assign intra_cmp_inst_io_pred_pix7_10 = predictor_inst_io_predicted_pix7_10; // @[intra4x4top.scala 79:38]
  assign intra_cmp_inst_io_pred_pix7_11 = predictor_inst_io_predicted_pix7_11; // @[intra4x4top.scala 79:38]
  assign intra_cmp_inst_io_pred_pix7_12 = predictor_inst_io_predicted_pix7_12; // @[intra4x4top.scala 79:38]
  assign intra_cmp_inst_io_pred_pix7_13 = predictor_inst_io_predicted_pix7_13; // @[intra4x4top.scala 79:38]
  assign intra_cmp_inst_io_pred_pix7_14 = predictor_inst_io_predicted_pix7_14; // @[intra4x4top.scala 79:38]
  assign intra_cmp_inst_io_pred_pix7_15 = predictor_inst_io_predicted_pix7_15; // @[intra4x4top.scala 79:38]
  assign intra_cmp_inst_io_pred_pix8_0 = predictor_inst_io_predicted_pix8_0; // @[intra4x4top.scala 80:38]
  assign intra_cmp_inst_io_pred_pix8_1 = predictor_inst_io_predicted_pix8_1; // @[intra4x4top.scala 80:38]
  assign intra_cmp_inst_io_pred_pix8_2 = predictor_inst_io_predicted_pix8_2; // @[intra4x4top.scala 80:38]
  assign intra_cmp_inst_io_pred_pix8_3 = predictor_inst_io_predicted_pix8_3; // @[intra4x4top.scala 80:38]
  assign intra_cmp_inst_io_pred_pix8_4 = predictor_inst_io_predicted_pix8_4; // @[intra4x4top.scala 80:38]
  assign intra_cmp_inst_io_pred_pix8_5 = predictor_inst_io_predicted_pix8_5; // @[intra4x4top.scala 80:38]
  assign intra_cmp_inst_io_pred_pix8_6 = predictor_inst_io_predicted_pix8_6; // @[intra4x4top.scala 80:38]
  assign intra_cmp_inst_io_pred_pix8_7 = predictor_inst_io_predicted_pix8_7; // @[intra4x4top.scala 80:38]
  assign intra_cmp_inst_io_pred_pix8_8 = predictor_inst_io_predicted_pix8_8; // @[intra4x4top.scala 80:38]
  assign intra_cmp_inst_io_pred_pix8_9 = predictor_inst_io_predicted_pix8_9; // @[intra4x4top.scala 80:38]
  assign intra_cmp_inst_io_pred_pix8_10 = predictor_inst_io_predicted_pix8_10; // @[intra4x4top.scala 80:38]
  assign intra_cmp_inst_io_pred_pix8_11 = predictor_inst_io_predicted_pix8_11; // @[intra4x4top.scala 80:38]
  assign intra_cmp_inst_io_pred_pix8_12 = predictor_inst_io_predicted_pix8_12; // @[intra4x4top.scala 80:38]
  assign intra_cmp_inst_io_pred_pix8_13 = predictor_inst_io_predicted_pix8_13; // @[intra4x4top.scala 80:38]
  assign intra_cmp_inst_io_pred_pix8_14 = predictor_inst_io_predicted_pix8_14; // @[intra4x4top.scala 80:38]
  assign intra_cmp_inst_io_pred_pix8_15 = predictor_inst_io_predicted_pix8_15; // @[intra4x4top.scala 80:38]
endmodule
