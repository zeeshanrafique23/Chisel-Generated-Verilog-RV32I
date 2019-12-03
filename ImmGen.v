module ImmGen(
  input  [31:0] io_pc,
  input  [31:0] io_instruction,
  output [31:0] io_iImm_out,
  output [31:0] io_uImm_out,
  output [31:0] io_sImm_out,
  output [31:0] io_sbImm_out,
  output [31:0] io_ujImm_out
);
  wire [11:0] _T; // @[ImmGen.scala 17:33]
  wire [11:0] i_imm; // @[ImmGen.scala 17:42]
  wire [19:0] _T_1; // @[ImmGen.scala 18:37]
  wire [19:0] u_imm; // @[ImmGen.scala 18:47]
  wire [6:0] _T_2; // @[ImmGen.scala 19:36]
  wire [4:0] _T_3; // @[ImmGen.scala 19:58]
  wire [11:0] s_imm; // @[Cat.scala 29:58]
  wire  _T_4; // @[ImmGen.scala 20:36]
  wire  _T_5; // @[ImmGen.scala 20:55]
  wire [5:0] _T_6; // @[ImmGen.scala 20:73]
  wire [3:0] _T_7; // @[ImmGen.scala 20:95]
  wire [12:0] sb_imm; // @[Cat.scala 29:58]
  wire [7:0] _T_12; // @[ImmGen.scala 21:55]
  wire  _T_13; // @[ImmGen.scala 21:77]
  wire [9:0] _T_14; // @[ImmGen.scala 21:96]
  wire [20:0] uj_imm; // @[Cat.scala 29:58]
  wire  _T_18; // @[ImmGen.scala 23:39]
  wire [19:0] _T_20; // @[Bitwise.scala 71:12]
  wire [11:0] _T_21; // @[Cat.scala 29:58]
  wire [31:0] _T_22; // @[Cat.scala 29:58]
  wire  _T_24; // @[ImmGen.scala 24:40]
  wire [11:0] _T_26; // @[Bitwise.scala 71:12]
  wire [19:0] _T_27; // @[Cat.scala 29:58]
  wire [31:0] _T_28; // @[Cat.scala 29:58]
  wire [43:0] _GEN_0; // @[ImmGen.scala 24:53]
  wire [46:0] _T_29; // @[ImmGen.scala 24:53]
  wire [46:0] _T_30; // @[ImmGen.scala 24:61]
  wire  _T_31; // @[ImmGen.scala 25:38]
  wire [19:0] _T_33; // @[Bitwise.scala 71:12]
  wire  _T_35; // @[ImmGen.scala 26:47]
  wire [18:0] _T_37; // @[Bitwise.scala 71:12]
  wire [31:0] _T_38; // @[Cat.scala 29:58]
  wire  _T_41; // @[ImmGen.scala 27:47]
  wire [10:0] _T_43; // @[Bitwise.scala 71:12]
  wire [31:0] _T_44; // @[Cat.scala 29:58]
  wire [31:0] _GEN_1; // @[ImmGen.scala 24:18]
  assign _T = io_instruction[31:20]; // @[ImmGen.scala 17:33]
  assign i_imm = $signed(_T); // @[ImmGen.scala 17:42]
  assign _T_1 = io_instruction[31:12]; // @[ImmGen.scala 18:37]
  assign u_imm = $signed(_T_1); // @[ImmGen.scala 18:47]
  assign _T_2 = io_instruction[31:25]; // @[ImmGen.scala 19:36]
  assign _T_3 = io_instruction[11:7]; // @[ImmGen.scala 19:58]
  assign s_imm = {_T_2,_T_3}; // @[Cat.scala 29:58]
  assign _T_4 = io_instruction[31]; // @[ImmGen.scala 20:36]
  assign _T_5 = io_instruction[7]; // @[ImmGen.scala 20:55]
  assign _T_6 = io_instruction[30:25]; // @[ImmGen.scala 20:73]
  assign _T_7 = io_instruction[11:8]; // @[ImmGen.scala 20:95]
  assign sb_imm = {_T_4,_T_5,_T_6,_T_7,1'h0}; // @[Cat.scala 29:58]
  assign _T_12 = io_instruction[19:12]; // @[ImmGen.scala 21:55]
  assign _T_13 = io_instruction[20]; // @[ImmGen.scala 21:77]
  assign _T_14 = io_instruction[30:21]; // @[ImmGen.scala 21:96]
  assign uj_imm = {_T_4,_T_12,_T_13,_T_14,1'h0}; // @[Cat.scala 29:58]
  assign _T_18 = i_imm[11]; // @[ImmGen.scala 23:39]
  assign _T_20 = _T_18 ? 20'hfffff : 20'h0; // @[Bitwise.scala 71:12]
  assign _T_21 = $unsigned(i_imm); // @[Cat.scala 29:58]
  assign _T_22 = {_T_20,_T_21}; // @[Cat.scala 29:58]
  assign _T_24 = u_imm[19]; // @[ImmGen.scala 24:40]
  assign _T_26 = _T_24 ? 12'hfff : 12'h0; // @[Bitwise.scala 71:12]
  assign _T_27 = $unsigned(u_imm); // @[Cat.scala 29:58]
  assign _T_28 = {_T_26,_T_27}; // @[Cat.scala 29:58]
  assign _GEN_0 = {_T_28, 12'h0}; // @[ImmGen.scala 24:53]
  assign _T_29 = {{3'd0}, _GEN_0}; // @[ImmGen.scala 24:53]
  assign _T_30 = $signed(_T_29); // @[ImmGen.scala 24:61]
  assign _T_31 = s_imm[11]; // @[ImmGen.scala 25:38]
  assign _T_33 = _T_31 ? 20'hfffff : 20'h0; // @[Bitwise.scala 71:12]
  assign _T_35 = sb_imm[12]; // @[ImmGen.scala 26:47]
  assign _T_37 = _T_35 ? 19'h7ffff : 19'h0; // @[Bitwise.scala 71:12]
  assign _T_38 = {_T_37,_T_4,_T_5,_T_6,_T_7,1'h0}; // @[Cat.scala 29:58]
  assign _T_41 = uj_imm[20]; // @[ImmGen.scala 27:47]
  assign _T_43 = _T_41 ? 11'h7ff : 11'h0; // @[Bitwise.scala 71:12]
  assign _T_44 = {_T_43,_T_4,_T_12,_T_13,_T_14,1'h0}; // @[Cat.scala 29:58]
  assign io_iImm_out = $signed(_T_22); // @[ImmGen.scala 23:18]
  assign _GEN_1 = _T_30[31:0]; // @[ImmGen.scala 24:18]
  assign io_uImm_out = $signed(_GEN_1); // @[ImmGen.scala 24:18]
  assign io_sImm_out = {_T_33,s_imm}; // @[ImmGen.scala 25:18]
  assign io_sbImm_out = io_pc + _T_38; // @[ImmGen.scala 26:18]
  assign io_ujImm_out = io_pc + _T_44; // @[ImmGen.scala 27:18]
endmodule