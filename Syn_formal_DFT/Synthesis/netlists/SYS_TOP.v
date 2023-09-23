/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06
// Date      : Thu Sep 21 04:41:06 2023
/////////////////////////////////////////////////////////////


module CLK_GATE ( E, CK, ECK );
  input E, CK;
  output ECK;


  TLATNCAX3M ICG_DUT ( .E(E), .CK(CK), .ECK(ECK) );
endmodule


module ClkDiv___0 ( i_ref_clk, i_rst_n, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n;
  output o_div_clk;
  wire   n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175;
  wire   [9:0] Counter_1;
  wire   [9:0] Counter_2;
  wire   [9:0] Counter_3;
  wire   [9:0] Counter_4;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  DFFRQX1M \Counter_2_reg[0]  ( .D(n63), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_2[0]) );
  DFFRQX1M \Counter_2_reg[1]  ( .D(n62), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_2[1]) );
  DFFRQX1M \Counter_2_reg[2]  ( .D(n61), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_2[2]) );
  DFFRQX1M \Counter_2_reg[3]  ( .D(n60), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_2[3]) );
  DFFRQX1M \Counter_2_reg[4]  ( .D(n59), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_2[4]) );
  DFFRQX1M \Counter_2_reg[5]  ( .D(n58), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_2[5]) );
  DFFRQX1M \Counter_2_reg[6]  ( .D(n57), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_2[6]) );
  DFFRQX1M \Counter_2_reg[7]  ( .D(n56), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_2[7]) );
  DFFRQX1M \Counter_2_reg[8]  ( .D(n55), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_2[8]) );
  DFFRQX1M \Counter_2_reg[9]  ( .D(n54), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_2[9]) );
  DFFRQX1M \Counter_1_reg[0]  ( .D(n53), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_1[0]) );
  DFFRQX1M \Counter_1_reg[1]  ( .D(n52), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_1[1]) );
  DFFRQX1M \Counter_1_reg[2]  ( .D(n51), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_1[2]) );
  DFFRQX1M \Counter_1_reg[3]  ( .D(n50), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_1[3]) );
  DFFRQX1M \Counter_1_reg[4]  ( .D(n49), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_1[4]) );
  DFFRQX1M \Counter_1_reg[5]  ( .D(n48), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_1[5]) );
  DFFRQX1M \Counter_1_reg[6]  ( .D(n47), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_1[6]) );
  DFFRQX1M \Counter_1_reg[7]  ( .D(n46), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_1[7]) );
  DFFRQX1M \Counter_1_reg[8]  ( .D(n45), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_1[8]) );
  DFFRQX1M \Counter_1_reg[9]  ( .D(n44), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_1[9]) );
  DFFRQX1M \Counter_4_reg[9]  ( .D(n73), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_4[9]) );
  DFFRQX1M \Counter_4_reg[0]  ( .D(n72), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_4[0]) );
  DFFRQX1M \Counter_4_reg[1]  ( .D(n71), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_4[1]) );
  DFFRQX1M \Counter_4_reg[2]  ( .D(n70), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_4[2]) );
  DFFRQX1M \Counter_4_reg[3]  ( .D(n69), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_4[3]) );
  DFFRQX1M \Counter_4_reg[4]  ( .D(n68), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_4[4]) );
  DFFRQX1M \Counter_4_reg[5]  ( .D(n67), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_4[5]) );
  DFFRQX1M \Counter_4_reg[6]  ( .D(n66), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_4[6]) );
  DFFRQX1M \Counter_4_reg[7]  ( .D(n65), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_4[7]) );
  DFFRQX1M \Counter_4_reg[8]  ( .D(n64), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_4[8]) );
  DFFRQX1M \Counter_3_reg[0]  ( .D(n43), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_3[0]) );
  DFFRQX1M \Counter_3_reg[1]  ( .D(n42), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_3[1]) );
  DFFRQX1M \Counter_3_reg[2]  ( .D(n41), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_3[2]) );
  DFFRQX1M \Counter_3_reg[3]  ( .D(n40), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_3[3]) );
  DFFRQX1M \Counter_3_reg[4]  ( .D(n39), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_3[4]) );
  DFFRQX1M \Counter_3_reg[5]  ( .D(n38), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_3[5]) );
  DFFRQX1M \Counter_3_reg[6]  ( .D(n37), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_3[6]) );
  DFFRQX1M \Counter_3_reg[7]  ( .D(n36), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_3[7]) );
  DFFRQX1M \Counter_3_reg[8]  ( .D(n35), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_3[8]) );
  DFFRQX1M \Counter_3_reg[9]  ( .D(n34), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_3[9]) );
  CLKINVX1M U79 ( .A(n33), .Y(o_div_clk) );
  DFFRQX1M \current_state_reg[2]  ( .D(next_state[2]), .CK(i_ref_clk), .RN(
        i_rst_n), .Q(current_state[2]) );
  DFFRQX1M \current_state_reg[0]  ( .D(next_state[0]), .CK(i_ref_clk), .RN(
        i_rst_n), .Q(current_state[0]) );
  DFFRQX1M \current_state_reg[1]  ( .D(next_state[1]), .CK(i_ref_clk), .RN(
        i_rst_n), .Q(current_state[1]) );
  AOI31XLM U78 ( .A0(n32), .A1(n31), .A2(i_ref_clk), .B0(n30), .Y(n33) );
  CLKINVX1M U3 ( .A(n172), .Y(n96) );
  AOI21XLM U4 ( .A0(n171), .A1(n82), .B0(n96), .Y(n138) );
  CLKINVX1M U5 ( .A(Counter_3[3]), .Y(n89) );
  NOR2XLM U6 ( .A(n155), .B(n6), .Y(n158) );
  AOI21XLM U7 ( .A0(n166), .A1(n119), .B0(n126), .Y(n86) );
  CLKINVX1M U8 ( .A(n148), .Y(n166) );
  CLKINVX1M U9 ( .A(n109), .Y(n107) );
  NOR2XLM U10 ( .A(n8), .B(n125), .Y(next_state[2]) );
  OAI32XLM U11 ( .A0(Counter_4[4]), .A1(n78), .A2(n143), .B0(n14), .B1(n77), 
        .Y(n68) );
  OAI31XLM U12 ( .A0(Counter_2[9]), .A1(n164), .A2(n165), .B0(n154), .Y(n54)
         );
  NOR2BXLM U13 ( .AN(current_state[0]), .B(current_state[2]), .Y(n30) );
  CLKINVX1M U14 ( .A(current_state[1]), .Y(n31) );
  CLKINVX1M U15 ( .A(current_state[2]), .Y(n32) );
  NAND3XLM U16 ( .A(Counter_3[1]), .B(Counter_3[0]), .C(Counter_3[2]), .Y(n91)
         );
  NOR2XLM U17 ( .A(n91), .B(n89), .Y(n95) );
  NOR4XLM U18 ( .A(Counter_3[9]), .B(Counter_3[8]), .C(Counter_3[4]), .D(
        Counter_3[6]), .Y(n1) );
  CLKINVX1M U19 ( .A(Counter_3[7]), .Y(n81) );
  CLKINVX1M U20 ( .A(Counter_3[5]), .Y(n98) );
  NAND4XLM U21 ( .A(n95), .B(n1), .C(n81), .D(n98), .Y(n11) );
  NAND3XLM U22 ( .A(n30), .B(n31), .C(n11), .Y(n139) );
  NOR3XLM U23 ( .A(current_state[1]), .B(current_state[0]), .C(n32), .Y(n151)
         );
  NOR4XLM U24 ( .A(Counter_2[1]), .B(Counter_2[9]), .C(Counter_2[0]), .D(
        Counter_2[2]), .Y(n3) );
  NOR4XLM U25 ( .A(Counter_2[3]), .B(Counter_2[7]), .C(Counter_2[5]), .D(
        Counter_2[6]), .Y(n2) );
  CLKINVX1M U26 ( .A(Counter_2[8]), .Y(n164) );
  NAND4XLM U27 ( .A(Counter_2[4]), .B(n3), .C(n2), .D(n164), .Y(n9) );
  NAND2XLM U28 ( .A(n151), .B(n9), .Y(n153) );
  CLKINVX1M U29 ( .A(n153), .Y(n162) );
  NAND3XLM U30 ( .A(Counter_1[1]), .B(Counter_1[0]), .C(Counter_1[2]), .Y(n127) );
  CLKINVX1M U31 ( .A(Counter_1[3]), .Y(n129) );
  NOR2XLM U32 ( .A(n127), .B(n129), .Y(n124) );
  NOR4XLM U33 ( .A(Counter_1[9]), .B(Counter_1[4]), .C(Counter_1[7]), .D(
        Counter_1[8]), .Y(n4) );
  CLKINVX1M U34 ( .A(Counter_1[6]), .Y(n121) );
  CLKINVX1M U35 ( .A(Counter_1[5]), .Y(n120) );
  NAND4XLM U36 ( .A(n124), .B(n4), .C(n121), .D(n120), .Y(n8) );
  NAND3XLM U37 ( .A(current_state[1]), .B(n30), .C(n8), .Y(n148) );
  NOR2XLM U38 ( .A(n162), .B(n166), .Y(n172) );
  OAI21XLM U39 ( .A0(Counter_3[0]), .A1(n139), .B0(n172), .Y(n15) );
  NOR2XLM U40 ( .A(Counter_3[1]), .B(n139), .Y(n16) );
  AO22XLM U41 ( .A0(Counter_3[1]), .A1(n15), .B0(Counter_3[0]), .B1(n16), .Y(
        n42) );
  AND3XLM U42 ( .A(Counter_4[1]), .B(Counter_4[0]), .C(Counter_4[2]), .Y(n7)
         );
  NAND2XLM U43 ( .A(n7), .B(Counter_4[3]), .Y(n78) );
  CLKINVX1M U44 ( .A(Counter_4[7]), .Y(n84) );
  CLKINVX1M U45 ( .A(Counter_4[5]), .Y(n79) );
  CLKINVX1M U46 ( .A(Counter_4[6]), .Y(n103) );
  CLKINVX1M U47 ( .A(Counter_4[8]), .Y(n160) );
  NAND4XLM U48 ( .A(n84), .B(n79), .C(n103), .D(n160), .Y(n5) );
  NOR4XLM U49 ( .A(Counter_4[9]), .B(Counter_4[4]), .C(n78), .D(n5), .Y(n155)
         );
  NOR2XLM U50 ( .A(current_state[2]), .B(current_state[0]), .Y(n156) );
  NAND2XLM U51 ( .A(current_state[1]), .B(n156), .Y(n6) );
  CLKINVX1M U52 ( .A(n158), .Y(n143) );
  OAI21XLM U53 ( .A0(Counter_4[0]), .A1(n143), .B0(n172), .Y(n19) );
  NOR2XLM U54 ( .A(Counter_4[1]), .B(n143), .Y(n20) );
  AO22XLM U55 ( .A0(Counter_4[1]), .A1(n19), .B0(Counter_4[0]), .B1(n20), .Y(
        n71) );
  NOR2XLM U56 ( .A(Counter_4[3]), .B(n6), .Y(n13) );
  OAI21XLM U57 ( .A0(n7), .A1(n6), .B0(n172), .Y(n12) );
  AO22XLM U58 ( .A0(n7), .A1(n13), .B0(Counter_4[3]), .B1(n12), .Y(n69) );
  CLKINVX1M U59 ( .A(n139), .Y(n171) );
  NOR2XLM U60 ( .A(n158), .B(n171), .Y(n167) );
  OAI21XLM U61 ( .A0(Counter_2[0]), .A1(n153), .B0(n167), .Y(n28) );
  NOR2XLM U62 ( .A(Counter_2[1]), .B(n153), .Y(n29) );
  AO22XLM U63 ( .A0(Counter_2[1]), .A1(n28), .B0(Counter_2[0]), .B1(n29), .Y(
        n62) );
  OAI21XLM U64 ( .A0(Counter_1[0]), .A1(n148), .B0(n167), .Y(n24) );
  NOR2XLM U65 ( .A(Counter_1[1]), .B(n148), .Y(n25) );
  AO22XLM U66 ( .A0(Counter_1[1]), .A1(n24), .B0(Counter_1[0]), .B1(n25), .Y(
        n52) );
  NAND2XLM U67 ( .A(current_state[1]), .B(n30), .Y(n125) );
  NAND2XLM U68 ( .A(n30), .B(n31), .Y(n88) );
  AOI2B1XLM U69 ( .A1N(n9), .A0(n151), .B0(n158), .Y(n10) );
  OAI21XLM U70 ( .A0(n11), .A1(n88), .B0(n10), .Y(next_state[1]) );
  NOR2XLM U71 ( .A(n13), .B(n12), .Y(n14) );
  CLKINVX1M U72 ( .A(Counter_4[4]), .Y(n77) );
  NAND2XLM U73 ( .A(Counter_3[1]), .B(Counter_3[0]), .Y(n18) );
  OAI21XLM U74 ( .A0(n16), .A1(n15), .B0(Counter_3[2]), .Y(n17) );
  OAI31XLM U75 ( .A0(Counter_3[2]), .A1(n18), .A2(n139), .B0(n17), .Y(n41) );
  NAND2XLM U76 ( .A(Counter_4[1]), .B(Counter_4[0]), .Y(n22) );
  OAI21XLM U77 ( .A0(n20), .A1(n19), .B0(Counter_4[2]), .Y(n21) );
  OAI31XLM U80 ( .A0(Counter_4[2]), .A1(n22), .A2(n143), .B0(n21), .Y(n70) );
  NAND2XLM U81 ( .A(n95), .B(Counter_3[4]), .Y(n97) );
  AOI21XLM U82 ( .A0(n171), .A1(n97), .B0(n96), .Y(n23) );
  OAI32XLM U83 ( .A0(Counter_3[5]), .A1(n139), .A2(n97), .B0(n23), .B1(n98), 
        .Y(n38) );
  NAND2XLM U84 ( .A(Counter_1[1]), .B(Counter_1[0]), .Y(n27) );
  OAI21XLM U85 ( .A0(n25), .A1(n24), .B0(Counter_1[2]), .Y(n26) );
  OAI31XLM U86 ( .A0(Counter_1[2]), .A1(n27), .A2(n148), .B0(n26), .Y(n51) );
  NAND2XLM U87 ( .A(Counter_2[1]), .B(Counter_2[0]), .Y(n75) );
  OAI21XLM U88 ( .A0(n29), .A1(n28), .B0(Counter_2[2]), .Y(n74) );
  OAI31XLM U89 ( .A0(Counter_2[2]), .A1(n153), .A2(n75), .B0(n74), .Y(n61) );
  AOI31XLM U90 ( .A0(n30), .A1(n31), .A2(n91), .B0(n96), .Y(n76) );
  OAI32XLM U91 ( .A0(Counter_3[3]), .A1(n91), .A2(n88), .B0(n76), .B1(n89), 
        .Y(n40) );
  NOR2XLM U92 ( .A(n78), .B(n77), .Y(n83) );
  CLKINVX1M U93 ( .A(n83), .Y(n80) );
  AOI21XLM U94 ( .A0(n80), .A1(n158), .B0(n96), .Y(n102) );
  OAI32XLM U95 ( .A0(Counter_4[5]), .A1(n143), .A2(n80), .B0(n102), .B1(n79), 
        .Y(n67) );
  CLKINVX1M U96 ( .A(Counter_3[6]), .Y(n99) );
  NOR3XLM U97 ( .A(n99), .B(n98), .C(n97), .Y(n137) );
  CLKINVX1M U98 ( .A(n137), .Y(n82) );
  OAI32XLM U99 ( .A0(Counter_3[7]), .A1(n139), .A2(n82), .B0(n138), .B1(n81), 
        .Y(n36) );
  NAND2XLM U100 ( .A(Counter_4[5]), .B(n83), .Y(n105) );
  NOR2XLM U101 ( .A(n103), .B(n105), .Y(n141) );
  CLKINVX1M U102 ( .A(n141), .Y(n85) );
  AOI21XLM U103 ( .A0(n158), .A1(n85), .B0(n96), .Y(n142) );
  OAI32XLM U104 ( .A0(Counter_4[7]), .A1(n143), .A2(n85), .B0(n142), .B1(n84), 
        .Y(n65) );
  NAND2XLM U105 ( .A(n124), .B(Counter_1[4]), .Y(n119) );
  CLKINVX1M U106 ( .A(n167), .Y(n126) );
  OAI32XLM U107 ( .A0(Counter_1[5]), .A1(n148), .A2(n119), .B0(n86), .B1(n120), 
        .Y(n48) );
  AOI31XLM U108 ( .A0(current_state[1]), .A1(n30), .A2(n127), .B0(n126), .Y(
        n87) );
  OAI32XLM U109 ( .A0(Counter_1[3]), .A1(n127), .A2(n125), .B0(n87), .B1(n129), 
        .Y(n50) );
  CLKINVX1M U110 ( .A(n95), .Y(n94) );
  CLKINVX1M U111 ( .A(n88), .Y(n90) );
  AOI221XLM U112 ( .A0(n91), .A1(n90), .B0(n89), .B1(n90), .C0(n96), .Y(n93)
         );
  CLKINVX1M U113 ( .A(Counter_3[4]), .Y(n92) );
  OAI32XLM U114 ( .A0(Counter_3[4]), .A1(n94), .A2(n139), .B0(n93), .B1(n92), 
        .Y(n39) );
  NAND3XLM U115 ( .A(n95), .B(Counter_3[4]), .C(Counter_3[5]), .Y(n101) );
  AOI221XLM U116 ( .A0(n98), .A1(n171), .B0(n97), .B1(n171), .C0(n96), .Y(n100) );
  OAI32XLM U117 ( .A0(Counter_3[6]), .A1(n139), .A2(n101), .B0(n100), .B1(n99), 
        .Y(n37) );
  OA21XLM U118 ( .A0(n143), .A1(Counter_4[5]), .B0(n102), .Y(n104) );
  OAI32XLM U119 ( .A0(Counter_4[6]), .A1(n143), .A2(n105), .B0(n104), .B1(n103), .Y(n66) );
  CLKINVX1M U120 ( .A(Counter_2[3]), .Y(n108) );
  CLKINVX1M U121 ( .A(Counter_2[4]), .Y(n115) );
  NAND3XLM U122 ( .A(Counter_2[1]), .B(Counter_2[0]), .C(Counter_2[2]), .Y(
        n114) );
  NOR3XLM U123 ( .A(n108), .B(n115), .C(n114), .Y(n109) );
  AOI21XLM U124 ( .A0(n107), .A1(n162), .B0(n126), .Y(n133) );
  CLKINVX1M U125 ( .A(Counter_2[5]), .Y(n106) );
  OAI32XLM U126 ( .A0(Counter_2[5]), .A1(n153), .A2(n107), .B0(n133), .B1(n106), .Y(n58) );
  AOI21XLM U127 ( .A0(n162), .A1(n114), .B0(n126), .Y(n118) );
  NAND2XLM U128 ( .A(n162), .B(n108), .Y(n117) );
  OAI22XLM U129 ( .A0(n118), .A1(n108), .B0(n114), .B1(n117), .Y(n60) );
  CLKINVX1M U130 ( .A(Counter_2[6]), .Y(n134) );
  NAND2XLM U131 ( .A(Counter_2[5]), .B(n109), .Y(n136) );
  NOR2XLM U132 ( .A(n134), .B(n136), .Y(n150) );
  CLKINVX1M U133 ( .A(n150), .Y(n111) );
  AOI21XLM U134 ( .A0(n162), .A1(n111), .B0(n126), .Y(n152) );
  CLKINVX1M U135 ( .A(Counter_2[7]), .Y(n110) );
  OAI32XLM U136 ( .A0(Counter_2[7]), .A1(n153), .A2(n111), .B0(n152), .B1(n110), .Y(n56) );
  NOR3XLM U137 ( .A(n120), .B(n121), .C(n119), .Y(n146) );
  CLKINVX1M U138 ( .A(n146), .Y(n113) );
  AOI21XLM U139 ( .A0(n166), .A1(n113), .B0(n126), .Y(n147) );
  CLKINVX1M U140 ( .A(Counter_1[7]), .Y(n112) );
  OAI32XLM U141 ( .A0(Counter_1[7]), .A1(n148), .A2(n113), .B0(n147), .B1(n112), .Y(n46) );
  NAND3BXLM U142 ( .AN(n114), .B(Counter_2[3]), .C(n162), .Y(n116) );
  AOI32XLM U143 ( .A0(n118), .A1(Counter_2[4]), .A2(n117), .B0(n116), .B1(n115), .Y(n59) );
  NAND3XLM U144 ( .A(n124), .B(Counter_1[4]), .C(Counter_1[5]), .Y(n123) );
  AOI221XLM U145 ( .A0(n120), .A1(n166), .B0(n119), .B1(n166), .C0(n126), .Y(
        n122) );
  OAI32XLM U146 ( .A0(Counter_1[6]), .A1(n148), .A2(n123), .B0(n122), .B1(n121), .Y(n47) );
  CLKINVX1M U147 ( .A(n124), .Y(n132) );
  CLKINVX1M U148 ( .A(n125), .Y(n128) );
  AOI221XLM U149 ( .A0(n129), .A1(n128), .B0(n127), .B1(n128), .C0(n126), .Y(
        n131) );
  CLKINVX1M U150 ( .A(Counter_1[4]), .Y(n130) );
  OAI32XLM U151 ( .A0(Counter_1[4]), .A1(n132), .A2(n148), .B0(n131), .B1(n130), .Y(n49) );
  OA21XLM U152 ( .A0(n153), .A1(Counter_2[5]), .B0(n133), .Y(n135) );
  OAI32XLM U153 ( .A0(Counter_2[6]), .A1(n153), .A2(n136), .B0(n135), .B1(n134), .Y(n57) );
  CLKINVX1M U154 ( .A(Counter_3[8]), .Y(n174) );
  NAND3XLM U155 ( .A(Counter_3[7]), .B(n171), .C(n137), .Y(n175) );
  OAI21XLM U156 ( .A0(Counter_3[7]), .A1(n139), .B0(n138), .Y(n173) );
  AOI32XLM U157 ( .A0(n171), .A1(Counter_3[9]), .A2(n174), .B0(n173), .B1(
        Counter_3[9]), .Y(n140) );
  OAI31XLM U158 ( .A0(Counter_3[9]), .A1(n174), .A2(n175), .B0(n140), .Y(n34)
         );
  NAND3XLM U159 ( .A(Counter_4[7]), .B(n158), .C(n141), .Y(n161) );
  OAI21XLM U160 ( .A0(Counter_4[7]), .A1(n143), .B0(n142), .Y(n159) );
  AOI21XLM U161 ( .A0(n158), .A1(n160), .B0(n159), .Y(n145) );
  CLKINVX1M U162 ( .A(Counter_4[9]), .Y(n144) );
  OAI32XLM U163 ( .A0(Counter_4[9]), .A1(n160), .A2(n161), .B0(n145), .B1(n144), .Y(n73) );
  CLKINVX1M U164 ( .A(Counter_1[8]), .Y(n169) );
  NAND3XLM U165 ( .A(Counter_1[7]), .B(n166), .C(n146), .Y(n170) );
  OAI21XLM U166 ( .A0(Counter_1[7]), .A1(n148), .B0(n147), .Y(n168) );
  AOI32XLM U167 ( .A0(n166), .A1(Counter_1[9]), .A2(n169), .B0(n168), .B1(
        Counter_1[9]), .Y(n149) );
  OAI31XLM U168 ( .A0(Counter_1[9]), .A1(n169), .A2(n170), .B0(n149), .Y(n44)
         );
  NAND3XLM U169 ( .A(Counter_2[7]), .B(n151), .C(n150), .Y(n165) );
  OAI21XLM U170 ( .A0(Counter_2[7]), .A1(n153), .B0(n152), .Y(n163) );
  AOI32XLM U171 ( .A0(n162), .A1(Counter_2[9]), .A2(n164), .B0(n163), .B1(
        Counter_2[9]), .Y(n154) );
  AOI211XLM U172 ( .A0(n156), .A1(n155), .B0(n166), .C0(n171), .Y(n157) );
  OAI21XLM U173 ( .A0(current_state[1]), .A1(current_state[0]), .B0(n157), .Y(
        next_state[0]) );
  AOI2BB2XLM U174 ( .B0(Counter_4[0]), .B1(n172), .A0N(n158), .A1N(
        Counter_4[0]), .Y(n72) );
  AOI2BB2XLM U175 ( .B0(n161), .B1(n160), .A0N(n160), .A1N(n159), .Y(n64) );
  AOI2BB2XLM U176 ( .B0(Counter_2[0]), .B1(n167), .A0N(n162), .A1N(
        Counter_2[0]), .Y(n63) );
  AOI2BB2XLM U177 ( .B0(n165), .B1(n164), .A0N(n164), .A1N(n163), .Y(n55) );
  AOI2BB2XLM U178 ( .B0(Counter_1[0]), .B1(n167), .A0N(n166), .A1N(
        Counter_1[0]), .Y(n53) );
  AOI2BB2XLM U179 ( .B0(n170), .B1(n169), .A0N(n169), .A1N(n168), .Y(n45) );
  AOI2BB2XLM U180 ( .B0(Counter_3[0]), .B1(n172), .A0N(n171), .A1N(
        Counter_3[0]), .Y(n43) );
  AOI2BB2XLM U181 ( .B0(n175), .B1(n174), .A0N(n174), .A1N(n173), .Y(n35) );
endmodule


module Rst_Sync_NUM_STAGES2_ACTIVE_TYPLOW_0 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;

  wire   [1:0] FF_Stage;

  DFFRQX1M \FF_Stage_reg[1]  ( .D(FF_Stage[0]), .CK(CLK), .RN(RST), .Q(
        FF_Stage[1]) );
  DFFRQX1M \FF_Stage_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(FF_Stage[0])
         );
  CLKAND2X16M U4 ( .A(FF_Stage[1]), .B(RST), .Y(SYNC_RST) );
endmodule


module Data_Sync_NUM_STAGES2_BUS_WIDTH8 ( CLK, RST_n, bus_enable, UNSYNC_bus, 
        enable_pulse, SYNC_bus );
  input [7:0] UNSYNC_bus;
  output [7:0] SYNC_bus;
  input CLK, RST_n, bus_enable;
  output enable_pulse;
  wire   data_SYN2, pulse_gen, Q_in, N3, n2, n3, n4, n5, n6, n7, n8, n9, n1;
  wire   [1:0] FF_Stage;

  DFFRQX1M \FF_Stage_reg[0]  ( .D(bus_enable), .CK(CLK), .RN(RST_n), .Q(
        FF_Stage[0]) );
  DFFRQX1M \FF_Stage_reg[1]  ( .D(FF_Stage[0]), .CK(CLK), .RN(RST_n), .Q(
        FF_Stage[1]) );
  DFFRQX1M Q_in_reg ( .D(data_SYN2), .CK(CLK), .RN(RST_n), .Q(Q_in) );
  DFFRQX1M enable_pulse_reg ( .D(pulse_gen), .CK(CLK), .RN(RST_n), .Q(
        enable_pulse) );
  AO22XLM U4 ( .A0(pulse_gen), .A1(UNSYNC_bus[0]), .B0(n1), .B1(SYNC_bus[0]), 
        .Y(n2) );
  AO22XLM U5 ( .A0(pulse_gen), .A1(UNSYNC_bus[1]), .B0(n1), .B1(SYNC_bus[1]), 
        .Y(n3) );
  AO22XLM U6 ( .A0(pulse_gen), .A1(UNSYNC_bus[2]), .B0(n1), .B1(SYNC_bus[2]), 
        .Y(n4) );
  AO22XLM U7 ( .A0(pulse_gen), .A1(UNSYNC_bus[3]), .B0(n1), .B1(SYNC_bus[3]), 
        .Y(n5) );
  AO22XLM U8 ( .A0(pulse_gen), .A1(UNSYNC_bus[4]), .B0(n1), .B1(SYNC_bus[4]), 
        .Y(n6) );
  AO22XLM U9 ( .A0(pulse_gen), .A1(UNSYNC_bus[5]), .B0(n1), .B1(SYNC_bus[5]), 
        .Y(n7) );
  AO22XLM U10 ( .A0(pulse_gen), .A1(UNSYNC_bus[6]), .B0(n1), .B1(SYNC_bus[6]), 
        .Y(n8) );
  AO22XLM U11 ( .A0(pulse_gen), .A1(UNSYNC_bus[7]), .B0(n1), .B1(SYNC_bus[7]), 
        .Y(n9) );
  DFFRQX1M pulse_gen_reg ( .D(N3), .CK(CLK), .RN(RST_n), .Q(pulse_gen) );
  DFFRQX1M \SYNC_bus_reg[7]  ( .D(n9), .CK(CLK), .RN(RST_n), .Q(SYNC_bus[7])
         );
  DFFRQX1M \SYNC_bus_reg[6]  ( .D(n8), .CK(CLK), .RN(RST_n), .Q(SYNC_bus[6])
         );
  DFFRQX1M \SYNC_bus_reg[4]  ( .D(n6), .CK(CLK), .RN(RST_n), .Q(SYNC_bus[4])
         );
  DFFRQX1M \SYNC_bus_reg[5]  ( .D(n7), .CK(CLK), .RN(RST_n), .Q(SYNC_bus[5])
         );
  DFFRQX1M \SYNC_bus_reg[0]  ( .D(n2), .CK(CLK), .RN(RST_n), .Q(SYNC_bus[0])
         );
  DFFRQX1M \SYNC_bus_reg[2]  ( .D(n4), .CK(CLK), .RN(RST_n), .Q(SYNC_bus[2])
         );
  DFFRQX1M \SYNC_bus_reg[3]  ( .D(n5), .CK(CLK), .RN(RST_n), .Q(SYNC_bus[3])
         );
  DFFRQX1M \SYNC_bus_reg[1]  ( .D(n3), .CK(CLK), .RN(RST_n), .Q(SYNC_bus[1])
         );
  NOR2BXLM U13 ( .AN(data_SYN2), .B(Q_in), .Y(N3) );
  AND2X1M U12 ( .A(FF_Stage[1]), .B(RST_n), .Y(data_SYN2) );
  CLKINVX1M U3 ( .A(pulse_gen), .Y(n1) );
endmodule


module SYS_CTRL ( CLK, RST, Data_sync, enable_pulse, FIFO_FULL, Rd_DATA, 
        Rd_Valid, ALU_OUT, OUT_VALID, WR_DATA, WR_INC, FUN, EN, Gate_En, Wr_D, 
        Addr, RdEn, WrEn );
  input [7:0] Data_sync;
  input [7:0] Rd_DATA;
  input [15:0] ALU_OUT;
  output [7:0] WR_DATA;
  output [3:0] FUN;
  output [7:0] Wr_D;
  output [7:0] Addr;
  input CLK, RST, enable_pulse, FIFO_FULL, Rd_Valid, OUT_VALID;
  output WR_INC, EN, Gate_En, RdEn, WrEn;
  wire   flag, flag_1, N225, N226, n1, n2, n6, n11, n12, n13, n14, n15, n16,
         n17, n22, n53, n55, n3, n4, n5, n7, n8, n9, n10, n18, n19, n20, n21,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51;
  wire   [3:0] current_state;
  wire   [3:0] next_state;
  wire   [1:0] Counter;
  wire   [7:0] Addr_next;

  DFFRQX1M \Counter_reg[0]  ( .D(N225), .CK(CLK), .RN(RST), .Q(Counter[0]) );
  DFFRQX1M \Counter_reg[1]  ( .D(N226), .CK(CLK), .RN(RST), .Q(Counter[1]) );
  DFFRQX1M flag_1_reg ( .D(flag), .CK(CLK), .RN(RST), .Q(flag_1) );
  DFFRQX1M \current_state_reg[3]  ( .D(next_state[3]), .CK(CLK), .RN(RST), .Q(
        current_state[3]) );
  DFFRQX1M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(RST), .Q(
        current_state[0]) );
  DFFRQX1M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(RST), .Q(
        current_state[2]) );
  DFFRQX1M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(RST), .Q(
        current_state[1]) );
  DFFRQX1M \Addr_next_reg[3]  ( .D(Addr[3]), .CK(CLK), .RN(RST), .Q(
        Addr_next[3]) );
  DFFRQX1M \Addr_next_reg[2]  ( .D(Addr[2]), .CK(CLK), .RN(RST), .Q(
        Addr_next[2]) );
  DFFRQX1M \Addr_next_reg[1]  ( .D(Addr[1]), .CK(CLK), .RN(RST), .Q(
        Addr_next[1]) );
  DFFRQX1M \Addr_next_reg[0]  ( .D(Addr[0]), .CK(CLK), .RN(RST), .Q(
        Addr_next[0]) );
  AOI211XLM U45 ( .A0(FIFO_FULL), .A1(n55), .B0(n13), .C0(n12), .Y(n14) );
  NOR4BXLM U3 ( .AN(n43), .B(current_state[0]), .C(n18), .D(n42), .Y(n23) );
  AND2X1M U4 ( .A(n26), .B(n17), .Y(n47) );
  AOI2BB1X1M U5 ( .A0N(n31), .A1N(current_state[1]), .B0(n23), .Y(n25) );
  NOR2BX1M U6 ( .AN(n49), .B(flag), .Y(n40) );
  NOR2XLM U7 ( .A(n40), .B(n28), .Y(FUN[1]) );
  NOR2XLM U8 ( .A(n40), .B(n38), .Y(FUN[0]) );
  NOR2BXLM U9 ( .AN(n55), .B(FIFO_FULL), .Y(WR_INC) );
  NOR2XLM U10 ( .A(n40), .B(n39), .Y(FUN[2]) );
  NOR2XLM U11 ( .A(n33), .B(n27), .Y(n48) );
  CLKINVX1M U12 ( .A(n11), .Y(n3) );
  NAND3BXLM U13 ( .AN(OUT_VALID), .B(n17), .C(n22), .Y(n49) );
  AO22XLM U14 ( .A0(n47), .A1(Rd_DATA[0]), .B0(n48), .B1(ALU_OUT[0]), .Y(
        WR_DATA[0]) );
  AO22XLM U15 ( .A0(n47), .A1(Rd_DATA[1]), .B0(n48), .B1(ALU_OUT[1]), .Y(
        WR_DATA[1]) );
  AO22XLM U16 ( .A0(n47), .A1(Rd_DATA[2]), .B0(n48), .B1(ALU_OUT[2]), .Y(
        WR_DATA[2]) );
  AO22XLM U17 ( .A0(n47), .A1(Rd_DATA[3]), .B0(n48), .B1(ALU_OUT[3]), .Y(
        WR_DATA[3]) );
  AO22XLM U18 ( .A0(n47), .A1(Rd_DATA[4]), .B0(n48), .B1(ALU_OUT[4]), .Y(
        WR_DATA[4]) );
  AO22XLM U19 ( .A0(n47), .A1(Rd_DATA[5]), .B0(n48), .B1(ALU_OUT[5]), .Y(
        WR_DATA[5]) );
  AO22XLM U20 ( .A0(n47), .A1(Rd_DATA[6]), .B0(n48), .B1(ALU_OUT[6]), .Y(
        WR_DATA[6]) );
  AO22XLM U21 ( .A0(n47), .A1(Rd_DATA[7]), .B0(n48), .B1(ALU_OUT[7]), .Y(
        WR_DATA[7]) );
  NAND2XLM U22 ( .A(n53), .B(n49), .Y(EN) );
  NOR2XLM U23 ( .A(n25), .B(n38), .Y(Wr_D[0]) );
  NOR2XLM U24 ( .A(n25), .B(n10), .Y(Wr_D[4]) );
  NOR2XLM U25 ( .A(n25), .B(n28), .Y(Wr_D[1]) );
  NOR2XLM U26 ( .A(n25), .B(n39), .Y(Wr_D[2]) );
  CLKINVX1M U27 ( .A(n25), .Y(WrEn) );
  AND3XLM U28 ( .A(n43), .B(n26), .C(n42), .Y(n19) );
  OR2X1M U29 ( .A(n48), .B(n47), .Y(n55) );
  NOR2BXLM U30 ( .AN(n53), .B(n5), .Y(n41) );
  NAND2XLM U31 ( .A(n3), .B(n43), .Y(n32) );
  NAND2XLM U32 ( .A(n3), .B(n9), .Y(n2) );
  NAND2XLM U33 ( .A(n9), .B(n26), .Y(n5) );
  OAI21XLM U34 ( .A0(n33), .A1(n31), .B0(n21), .Y(Addr[0]) );
  OAI2BB2XLM U35 ( .B0(n24), .B1(n28), .A0N(Addr_next[1]), .A1N(n23), .Y(
        Addr[1]) );
  OAI2BB2XLM U36 ( .B0(n24), .B1(n39), .A0N(Addr_next[2]), .A1N(n23), .Y(
        Addr[2]) );
  OAI2BB2XLM U37 ( .B0(n24), .B1(n29), .A0N(n23), .A1N(Addr_next[3]), .Y(
        Addr[3]) );
  OAI21XLM U38 ( .A0(n16), .A1(n15), .B0(n14), .Y(next_state[1]) );
  OAI211XLM U39 ( .A0(n6), .A1(n2), .B0(n1), .C0(n53), .Y(next_state[3]) );
  NOR2XLM U40 ( .A(n40), .B(n29), .Y(FUN[3]) );
  NOR2XLM U41 ( .A(n25), .B(n29), .Y(Wr_D[3]) );
  CLKINVX1M U42 ( .A(n27), .Y(n17) );
  AOI211XLM U43 ( .A0(n13), .A1(n20), .B0(n19), .C0(RdEn), .Y(n24) );
  AOI32XLM U44 ( .A0(FIFO_FULL), .A1(n17), .A2(n11), .B0(n22), .B1(n17), .Y(n1) );
  NAND2XLM U46 ( .A(current_state[0]), .B(current_state[1]), .Y(n11) );
  CLKINVX1M U47 ( .A(current_state[2]), .Y(n20) );
  NOR2XLM U48 ( .A(current_state[3]), .B(n20), .Y(n9) );
  CLKINVX1M U49 ( .A(enable_pulse), .Y(n42) );
  NOR2XLM U50 ( .A(current_state[3]), .B(current_state[2]), .Y(n43) );
  OAI22XLM U51 ( .A0(Rd_Valid), .A1(n2), .B0(n42), .B1(n32), .Y(RdEn) );
  CLKINVX1M U52 ( .A(current_state[1]), .Y(n18) );
  NOR2XLM U53 ( .A(current_state[0]), .B(n18), .Y(n26) );
  AOI2BB1XLM U54 ( .A0N(flag_1), .A1N(enable_pulse), .B0(n5), .Y(flag) );
  NAND3XLM U55 ( .A(Counter[0]), .B(Counter[1]), .C(flag), .Y(n53) );
  NAND2XLM U56 ( .A(n20), .B(current_state[3]), .Y(n27) );
  NOR2XLM U57 ( .A(current_state[0]), .B(current_state[1]), .Y(n22) );
  CLKINVX1M U58 ( .A(n40), .Y(Gate_En) );
  CLKINVX1M U59 ( .A(Rd_Valid), .Y(n6) );
  NOR2BXLM U60 ( .AN(n43), .B(n42), .Y(n4) );
  NAND4XLM U61 ( .A(Data_sync[3]), .B(n4), .C(n22), .D(Data_sync[7]), .Y(n16)
         );
  CLKINVX1M U62 ( .A(Data_sync[2]), .Y(n39) );
  NOR4BXLM U63 ( .AN(Data_sync[6]), .B(Data_sync[5]), .C(Data_sync[1]), .D(n39), .Y(n45) );
  CLKINVX1M U64 ( .A(Data_sync[4]), .Y(n10) );
  CLKINVX1M U65 ( .A(Data_sync[0]), .Y(n38) );
  AOI221XLM U66 ( .A0(Data_sync[0]), .A1(n10), .B0(n38), .B1(Data_sync[4]), 
        .C0(n16), .Y(n37) );
  NOR2XLM U67 ( .A(Rd_Valid), .B(n2), .Y(n30) );
  AOI211XLM U68 ( .A0(n45), .A1(n37), .B0(n30), .C0(n41), .Y(n8) );
  NAND2XLM U69 ( .A(n9), .B(n18), .Y(n7) );
  OAI211XLM U70 ( .A0(n32), .A1(n6), .B0(n8), .C0(n7), .Y(next_state[2]) );
  NAND2XLM U71 ( .A(n9), .B(enable_pulse), .Y(n31) );
  CLKINVX1M U72 ( .A(Data_sync[3]), .Y(n29) );
  CLKINVX1M U73 ( .A(Data_sync[1]), .Y(n28) );
  NOR2BXLM U74 ( .AN(Data_sync[7]), .B(n25), .Y(Wr_D[7]) );
  NOR2BXLM U75 ( .AN(Data_sync[5]), .B(n25), .Y(Wr_D[5]) );
  NOR2BXLM U76 ( .AN(Data_sync[6]), .B(n25), .Y(Wr_D[6]) );
  NAND2XLM U77 ( .A(current_state[0]), .B(n18), .Y(n33) );
  NOR3XLM U78 ( .A(current_state[3]), .B(n42), .C(n33), .Y(n13) );
  AOI2BB2XLM U79 ( .B0(Addr_next[0]), .B1(n23), .A0N(n38), .A1N(n24), .Y(n21)
         );
  NAND4BXLM U80 ( .AN(Data_sync[6]), .B(Data_sync[5]), .C(Data_sync[1]), .D(
        n39), .Y(n46) );
  AOI2B1XLM U81 ( .A1N(n31), .A0(n22), .B0(n30), .Y(n36) );
  OAI31XLM U82 ( .A0(current_state[3]), .A1(enable_pulse), .A2(n33), .B0(n32), 
        .Y(n34) );
  AOI31XLM U83 ( .A0(n22), .A1(n17), .A2(OUT_VALID), .B0(n34), .Y(n35) );
  OAI2B11XLM U84 ( .A1N(n37), .A0(n46), .B0(n36), .C0(n35), .Y(next_state[0])
         );
  AOI31XLM U85 ( .A0(current_state[1]), .A1(n43), .A2(n42), .B0(n41), .Y(n44)
         );
  OAI21XLM U86 ( .A0(current_state[3]), .A1(n11), .B0(n44), .Y(n12) );
  OAI2B11XLM U87 ( .A1N(n46), .A0(n45), .B0(Data_sync[0]), .C0(Data_sync[4]), 
        .Y(n15) );
  NOR2XLM U88 ( .A(enable_pulse), .B(Counter[0]), .Y(N225) );
  CLKINVX1M U89 ( .A(Counter[0]), .Y(n51) );
  CLKINVX1M U90 ( .A(Counter[1]), .Y(n50) );
  AOI221XLM U91 ( .A0(Counter[0]), .A1(Counter[1]), .B0(n51), .B1(n50), .C0(
        enable_pulse), .Y(N226) );
endmodule


module Register_File_10_0_1 ( CLK, RST_n, RdEn, WrEn, Address, WrData, RdData, 
        RdData_Valid, REG0, REG1, REG2, REG3 );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input CLK, RST_n, RdEn, WrEn;
  output RdData_Valid;
  wire   \reg_file[4][7] , \reg_file[4][6] , \reg_file[4][5] ,
         \reg_file[4][4] , \reg_file[4][3] , \reg_file[4][2] ,
         \reg_file[4][1] , \reg_file[4][0] , \reg_file[5][7] ,
         \reg_file[5][6] , \reg_file[5][5] , \reg_file[5][4] ,
         \reg_file[5][3] , \reg_file[5][2] , \reg_file[5][1] ,
         \reg_file[5][0] , \reg_file[6][7] , \reg_file[6][6] ,
         \reg_file[6][5] , \reg_file[6][4] , \reg_file[6][3] ,
         \reg_file[6][2] , \reg_file[6][1] , \reg_file[6][0] ,
         \reg_file[7][7] , \reg_file[7][6] , \reg_file[7][5] ,
         \reg_file[7][4] , \reg_file[7][3] , \reg_file[7][2] ,
         \reg_file[7][1] , \reg_file[7][0] , \reg_file[8][7] ,
         \reg_file[8][6] , \reg_file[8][5] , \reg_file[8][4] ,
         \reg_file[8][3] , \reg_file[8][2] , \reg_file[8][1] ,
         \reg_file[8][0] , \reg_file[9][7] , \reg_file[9][6] ,
         \reg_file[9][5] , \reg_file[9][4] , \reg_file[9][3] ,
         \reg_file[9][2] , \reg_file[9][1] , \reg_file[9][0] ,
         \reg_file[10][7] , \reg_file[10][6] , \reg_file[10][5] ,
         \reg_file[10][4] , \reg_file[10][3] , \reg_file[10][2] ,
         \reg_file[10][1] , \reg_file[10][0] , \reg_file[11][7] ,
         \reg_file[11][6] , \reg_file[11][5] , \reg_file[11][4] ,
         \reg_file[11][3] , \reg_file[11][2] , \reg_file[11][1] ,
         \reg_file[11][0] , \reg_file[12][7] , \reg_file[12][6] ,
         \reg_file[12][5] , \reg_file[12][4] , \reg_file[12][3] ,
         \reg_file[12][2] , \reg_file[12][1] , \reg_file[12][0] ,
         \reg_file[13][7] , \reg_file[13][6] , \reg_file[13][5] ,
         \reg_file[13][4] , \reg_file[13][3] , \reg_file[13][2] ,
         \reg_file[13][1] , \reg_file[13][0] , \reg_file[14][7] ,
         \reg_file[14][6] , \reg_file[14][5] , \reg_file[14][4] ,
         \reg_file[14][3] , \reg_file[14][2] , \reg_file[14][1] ,
         \reg_file[14][0] , \reg_file[15][7] , \reg_file[15][6] ,
         \reg_file[15][5] , \reg_file[15][4] , \reg_file[15][3] ,
         \reg_file[15][2] , \reg_file[15][1] , \reg_file[15][0] , N59, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n256, n257, n258, n259,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250;

  DFFRQX1M RdData_Valid_reg ( .D(N59), .CK(CLK), .RN(RST_n), .Q(RdData_Valid)
         );
  DFFRQX1M \RdData_reg[7]  ( .D(n279), .CK(CLK), .RN(RST_n), .Q(RdData[7]) );
  DFFRQX1M \RdData_reg[6]  ( .D(n278), .CK(CLK), .RN(RST_n), .Q(RdData[6]) );
  DFFRQX1M \RdData_reg[5]  ( .D(n277), .CK(CLK), .RN(RST_n), .Q(RdData[5]) );
  DFFRQX1M \RdData_reg[4]  ( .D(n276), .CK(CLK), .RN(RST_n), .Q(RdData[4]) );
  DFFRQX1M \RdData_reg[3]  ( .D(n275), .CK(CLK), .RN(RST_n), .Q(RdData[3]) );
  DFFRQX1M \RdData_reg[2]  ( .D(n274), .CK(CLK), .RN(RST_n), .Q(RdData[2]) );
  DFFRQX1M \RdData_reg[1]  ( .D(n273), .CK(CLK), .RN(RST_n), .Q(RdData[1]) );
  DFFRQX1M \RdData_reg[0]  ( .D(n272), .CK(CLK), .RN(RST_n), .Q(RdData[0]) );
  DFFRQX1M \reg_file_reg[0][7]  ( .D(n271), .CK(CLK), .RN(RST_n), .Q(REG0[7])
         );
  DFFRQX1M \reg_file_reg[0][6]  ( .D(n270), .CK(CLK), .RN(RST_n), .Q(REG0[6])
         );
  DFFRQX1M \reg_file_reg[0][5]  ( .D(n269), .CK(CLK), .RN(RST_n), .Q(REG0[5])
         );
  DFFRQX1M \reg_file_reg[0][4]  ( .D(n268), .CK(CLK), .RN(RST_n), .Q(REG0[4])
         );
  DFFRQX1M \reg_file_reg[0][3]  ( .D(n267), .CK(CLK), .RN(RST_n), .Q(REG0[3])
         );
  DFFRQX1M \reg_file_reg[0][2]  ( .D(n266), .CK(CLK), .RN(RST_n), .Q(REG0[2])
         );
  DFFRQX1M \reg_file_reg[0][1]  ( .D(n265), .CK(CLK), .RN(RST_n), .Q(REG0[1])
         );
  DFFRQX1M \reg_file_reg[0][0]  ( .D(n264), .CK(CLK), .RN(RST_n), .Q(REG0[0])
         );
  DFFRHQX1M \reg_file_reg[1][7]  ( .D(n263), .CK(CLK), .RN(RST_n), .Q(REG1[7])
         );
  DFFRHQX1M \reg_file_reg[1][6]  ( .D(n262), .CK(CLK), .RN(RST_n), .Q(REG1[6])
         );
  DFFRQX1M \reg_file_reg[4][7]  ( .D(n239), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[4][7] ) );
  DFFRQX1M \reg_file_reg[4][6]  ( .D(n238), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[4][6] ) );
  DFFRQX1M \reg_file_reg[4][5]  ( .D(n237), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[4][5] ) );
  DFFRQX1M \reg_file_reg[4][4]  ( .D(n236), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[4][4] ) );
  DFFRQX1M \reg_file_reg[4][3]  ( .D(n235), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[4][3] ) );
  DFFRQX1M \reg_file_reg[4][2]  ( .D(n234), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[4][2] ) );
  DFFRQX1M \reg_file_reg[4][1]  ( .D(n233), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[4][1] ) );
  DFFRQX1M \reg_file_reg[4][0]  ( .D(n232), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[4][0] ) );
  DFFRQX1M \reg_file_reg[5][7]  ( .D(n231), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[5][7] ) );
  DFFRQX1M \reg_file_reg[5][6]  ( .D(n230), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[5][6] ) );
  DFFRQX1M \reg_file_reg[5][5]  ( .D(n229), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[5][5] ) );
  DFFRQX1M \reg_file_reg[5][4]  ( .D(n228), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[5][4] ) );
  DFFRQX1M \reg_file_reg[5][3]  ( .D(n227), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[5][3] ) );
  DFFRQX1M \reg_file_reg[5][2]  ( .D(n226), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[5][2] ) );
  DFFRQX1M \reg_file_reg[5][1]  ( .D(n225), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[5][1] ) );
  DFFRQX1M \reg_file_reg[5][0]  ( .D(n224), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[5][0] ) );
  DFFRQX1M \reg_file_reg[6][7]  ( .D(n223), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[6][7] ) );
  DFFRQX1M \reg_file_reg[6][6]  ( .D(n222), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[6][6] ) );
  DFFRQX1M \reg_file_reg[6][5]  ( .D(n221), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[6][5] ) );
  DFFRQX1M \reg_file_reg[6][4]  ( .D(n220), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[6][4] ) );
  DFFRQX1M \reg_file_reg[6][3]  ( .D(n219), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[6][3] ) );
  DFFRQX1M \reg_file_reg[6][2]  ( .D(n218), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[6][2] ) );
  DFFRQX1M \reg_file_reg[6][1]  ( .D(n217), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[6][1] ) );
  DFFRQX1M \reg_file_reg[6][0]  ( .D(n216), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[6][0] ) );
  DFFRQX1M \reg_file_reg[7][7]  ( .D(n215), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[7][7] ) );
  DFFRQX1M \reg_file_reg[7][6]  ( .D(n214), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[7][6] ) );
  DFFRQX1M \reg_file_reg[7][5]  ( .D(n213), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[7][5] ) );
  DFFRQX1M \reg_file_reg[7][4]  ( .D(n212), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[7][4] ) );
  DFFRQX1M \reg_file_reg[7][3]  ( .D(n211), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[7][3] ) );
  DFFRQX1M \reg_file_reg[7][2]  ( .D(n210), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[7][2] ) );
  DFFRQX1M \reg_file_reg[7][1]  ( .D(n209), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[7][1] ) );
  DFFRQX1M \reg_file_reg[7][0]  ( .D(n208), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[7][0] ) );
  DFFRQX1M \reg_file_reg[8][7]  ( .D(n207), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[8][7] ) );
  DFFRQX1M \reg_file_reg[8][6]  ( .D(n206), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[8][6] ) );
  DFFRQX1M \reg_file_reg[8][5]  ( .D(n205), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[8][5] ) );
  DFFRQX1M \reg_file_reg[8][4]  ( .D(n204), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[8][4] ) );
  DFFRQX1M \reg_file_reg[8][3]  ( .D(n203), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[8][3] ) );
  DFFRQX1M \reg_file_reg[8][2]  ( .D(n202), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[8][2] ) );
  DFFRQX1M \reg_file_reg[8][1]  ( .D(n201), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[8][1] ) );
  DFFRQX1M \reg_file_reg[8][0]  ( .D(n200), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[8][0] ) );
  DFFRQX1M \reg_file_reg[9][7]  ( .D(n199), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[9][7] ) );
  DFFRQX1M \reg_file_reg[9][6]  ( .D(n198), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[9][6] ) );
  DFFRQX1M \reg_file_reg[9][5]  ( .D(n197), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[9][5] ) );
  DFFRQX1M \reg_file_reg[9][4]  ( .D(n196), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[9][4] ) );
  DFFRQX1M \reg_file_reg[9][3]  ( .D(n195), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[9][3] ) );
  DFFRQX1M \reg_file_reg[9][2]  ( .D(n194), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[9][2] ) );
  DFFRQX1M \reg_file_reg[9][1]  ( .D(n193), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[9][1] ) );
  DFFRQX1M \reg_file_reg[9][0]  ( .D(n192), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[9][0] ) );
  DFFRQX1M \reg_file_reg[10][7]  ( .D(n191), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[10][7] ) );
  DFFRQX1M \reg_file_reg[10][6]  ( .D(n190), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[10][6] ) );
  DFFRQX1M \reg_file_reg[10][5]  ( .D(n189), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[10][5] ) );
  DFFRQX1M \reg_file_reg[10][4]  ( .D(n188), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[10][4] ) );
  DFFRQX1M \reg_file_reg[10][3]  ( .D(n187), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[10][3] ) );
  DFFRQX1M \reg_file_reg[10][2]  ( .D(n186), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[10][2] ) );
  DFFRQX1M \reg_file_reg[10][1]  ( .D(n185), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[10][1] ) );
  DFFRQX1M \reg_file_reg[10][0]  ( .D(n184), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[10][0] ) );
  DFFRQX1M \reg_file_reg[11][7]  ( .D(n183), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[11][7] ) );
  DFFRQX1M \reg_file_reg[11][6]  ( .D(n182), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[11][6] ) );
  DFFRQX1M \reg_file_reg[11][5]  ( .D(n181), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[11][5] ) );
  DFFRQX1M \reg_file_reg[11][4]  ( .D(n180), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[11][4] ) );
  DFFRQX1M \reg_file_reg[11][3]  ( .D(n179), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[11][3] ) );
  DFFRQX1M \reg_file_reg[11][2]  ( .D(n178), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[11][2] ) );
  DFFRQX1M \reg_file_reg[11][1]  ( .D(n177), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[11][1] ) );
  DFFRQX1M \reg_file_reg[11][0]  ( .D(n176), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[11][0] ) );
  DFFRQX1M \reg_file_reg[12][7]  ( .D(n175), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[12][7] ) );
  DFFRQX1M \reg_file_reg[12][6]  ( .D(n174), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[12][6] ) );
  DFFRQX1M \reg_file_reg[12][5]  ( .D(n173), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[12][5] ) );
  DFFRQX1M \reg_file_reg[12][4]  ( .D(n172), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[12][4] ) );
  DFFRQX1M \reg_file_reg[12][3]  ( .D(n171), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[12][3] ) );
  DFFRQX1M \reg_file_reg[12][2]  ( .D(n170), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[12][2] ) );
  DFFRQX1M \reg_file_reg[12][1]  ( .D(n169), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[12][1] ) );
  DFFRQX1M \reg_file_reg[12][0]  ( .D(n168), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[12][0] ) );
  DFFRQX1M \reg_file_reg[13][7]  ( .D(n167), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[13][7] ) );
  DFFRQX1M \reg_file_reg[13][6]  ( .D(n166), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[13][6] ) );
  DFFRQX1M \reg_file_reg[13][5]  ( .D(n165), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[13][5] ) );
  DFFRQX1M \reg_file_reg[13][4]  ( .D(n164), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[13][4] ) );
  DFFRQX1M \reg_file_reg[13][3]  ( .D(n163), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[13][3] ) );
  DFFRQX1M \reg_file_reg[13][2]  ( .D(n162), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[13][2] ) );
  DFFRQX1M \reg_file_reg[13][1]  ( .D(n161), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[13][1] ) );
  DFFRQX1M \reg_file_reg[13][0]  ( .D(n160), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[13][0] ) );
  DFFRQX1M \reg_file_reg[14][7]  ( .D(n159), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[14][7] ) );
  DFFRQX1M \reg_file_reg[14][6]  ( .D(n158), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[14][6] ) );
  DFFRQX1M \reg_file_reg[14][5]  ( .D(n157), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[14][5] ) );
  DFFRQX1M \reg_file_reg[14][4]  ( .D(n156), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[14][4] ) );
  DFFRQX1M \reg_file_reg[14][3]  ( .D(n155), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[14][3] ) );
  DFFRQX1M \reg_file_reg[14][2]  ( .D(n154), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[14][2] ) );
  DFFRQX1M \reg_file_reg[14][1]  ( .D(n153), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[14][1] ) );
  DFFRQX1M \reg_file_reg[14][0]  ( .D(n152), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[14][0] ) );
  DFFRQX1M \reg_file_reg[15][7]  ( .D(n151), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[15][7] ) );
  DFFRQX1M \reg_file_reg[15][6]  ( .D(n150), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[15][6] ) );
  DFFRQX1M \reg_file_reg[15][5]  ( .D(n149), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[15][5] ) );
  DFFRQX1M \reg_file_reg[15][4]  ( .D(n148), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[15][4] ) );
  DFFRQX1M \reg_file_reg[15][3]  ( .D(n147), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[15][3] ) );
  DFFRQX1M \reg_file_reg[15][2]  ( .D(n146), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[15][2] ) );
  DFFRQX1M \reg_file_reg[15][1]  ( .D(n145), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[15][1] ) );
  DFFRQX1M \reg_file_reg[15][0]  ( .D(n144), .CK(CLK), .RN(RST_n), .Q(
        \reg_file[15][0] ) );
  DFFSQX2M \reg_file_reg[1][4]  ( .D(n1), .CK(CLK), .SN(RST_n), .Q(n250) );
  DFFRHQX1M \reg_file_reg[1][5]  ( .D(n261), .CK(CLK), .RN(RST_n), .Q(REG1[5])
         );
  DFFRQX2M \reg_file_reg[1][0]  ( .D(n256), .CK(CLK), .RN(RST_n), .Q(REG1[0])
         );
  DFFRQX2M \reg_file_reg[1][1]  ( .D(n257), .CK(CLK), .RN(RST_n), .Q(REG1[1])
         );
  DFFRQX2M \reg_file_reg[1][2]  ( .D(n258), .CK(CLK), .RN(RST_n), .Q(REG1[2])
         );
  DFFRQX2M \reg_file_reg[1][3]  ( .D(n259), .CK(CLK), .RN(RST_n), .Q(REG1[3])
         );
  AND2X1M U3 ( .A(WrEn), .B(n136), .Y(n137) );
  AND2X1M U4 ( .A(WrEn), .B(n134), .Y(n135) );
  AO2B2XLM U5 ( .B0(n120), .B1(n83), .A0(n82), .A1N(n81), .Y(n84) );
  AO2B2XLM U6 ( .B0(n120), .B1(n57), .A0(n56), .A1N(n55), .Y(n58) );
  AO2B2XLM U7 ( .B0(n120), .B1(n70), .A0(n69), .A1N(n68), .Y(n71) );
  AO2B2XLM U8 ( .B0(n120), .B1(n44), .A0(n43), .A1N(n42), .Y(n45) );
  INVX1M U9 ( .A(n250), .Y(REG1[4]) );
  NOR2XLM U10 ( .A(Address[1]), .B(Address[2]), .Y(n3) );
  CLKINVX1M U11 ( .A(Address[1]), .Y(n8) );
  NAND2BXLM U12 ( .AN(n126), .B(WrEn), .Y(n143) );
  CLKINVX1M U13 ( .A(n11), .Y(n127) );
  NAND2BXLM U14 ( .AN(n123), .B(WrEn), .Y(n139) );
  NAND2XLM U15 ( .A(WrEn), .B(n3), .Y(n132) );
  CLKINVX1M U16 ( .A(n3), .Y(n9) );
  NAND2BXLM U17 ( .AN(Address[0]), .B(Address[3]), .Y(n141) );
  NAND2XLM U18 ( .A(Address[0]), .B(Address[3]), .Y(n240) );
  CLKINVX1M U19 ( .A(n10), .Y(n100) );
  NOR2XLM U20 ( .A(n8), .B(Address[2]), .Y(n10) );
  NOR2XLM U21 ( .A(Address[0]), .B(Address[3]), .Y(n11) );
  NAND2XLM U22 ( .A(Address[2]), .B(n8), .Y(n123) );
  NAND2BXLM U23 ( .AN(Address[3]), .B(Address[0]), .Y(n129) );
  NOR2XLM U24 ( .A(n9), .B(n127), .Y(n106) );
  NOR2XLM U25 ( .A(n126), .B(n127), .Y(n115) );
  NOR2XLM U26 ( .A(n127), .B(n123), .Y(n107) );
  NOR2XLM U27 ( .A(n9), .B(n129), .Y(n103) );
  NOR2XLM U28 ( .A(n141), .B(n100), .Y(n134) );
  NOR2XLM U29 ( .A(n126), .B(n240), .Y(n101) );
  NOR2XLM U30 ( .A(n240), .B(n123), .Y(n108) );
  NOR2XLM U31 ( .A(n240), .B(n143), .Y(n249) );
  NOR2XLM U32 ( .A(n240), .B(n139), .Y(n140) );
  NOR2XLM U33 ( .A(n141), .B(n139), .Y(n138) );
  NOR2XLM U34 ( .A(n240), .B(n132), .Y(n133) );
  NOR2XLM U35 ( .A(n141), .B(n132), .Y(n131) );
  NOR2XLM U36 ( .A(n129), .B(n143), .Y(n130) );
  NOR2XLM U37 ( .A(n127), .B(n143), .Y(n128) );
  NOR2XLM U38 ( .A(n129), .B(n139), .Y(n125) );
  CLKINVX1M U39 ( .A(WrData[5]), .Y(n243) );
  CLKINVX1M U40 ( .A(WrData[6]), .Y(n242) );
  NOR2XLM U41 ( .A(n127), .B(n139), .Y(n124) );
  CLKINVX1M U42 ( .A(WrData[7]), .Y(n241) );
  NOR2XLM U43 ( .A(n129), .B(n132), .Y(n32) );
  CLKINVX1M U44 ( .A(WrData[0]), .Y(n248) );
  CLKINVX1M U45 ( .A(WrData[1]), .Y(n247) );
  CLKINVX1M U46 ( .A(WrData[2]), .Y(n246) );
  CLKINVX1M U47 ( .A(WrData[3]), .Y(n245) );
  CLKINVX1M U48 ( .A(n121), .Y(n122) );
  CLKINVX1M U49 ( .A(WrData[4]), .Y(n244) );
  NAND2BXLM U50 ( .AN(n132), .B(n11), .Y(n121) );
  AOI211XLM U51 ( .A0(n134), .A1(\reg_file[10][1] ), .B0(n65), .C0(n64), .Y(
        n69) );
  NAND4XLM U52 ( .A(n63), .B(n62), .C(n61), .D(n60), .Y(n64) );
  AOI211XLM U53 ( .A0(n134), .A1(\reg_file[10][2] ), .B0(n39), .C0(n38), .Y(
        n43) );
  NAND4XLM U54 ( .A(n37), .B(n36), .C(n35), .D(n34), .Y(n38) );
  AOI211XLM U55 ( .A0(n134), .A1(\reg_file[10][3] ), .B0(n52), .C0(n51), .Y(
        n56) );
  NAND4XLM U56 ( .A(n50), .B(n49), .C(n48), .D(n47), .Y(n51) );
  AOI211XLM U57 ( .A0(n134), .A1(\reg_file[10][4] ), .B0(n78), .C0(n77), .Y(
        n82) );
  NAND4XLM U58 ( .A(n76), .B(n75), .C(n74), .D(n73), .Y(n77) );
  NOR2XLM U59 ( .A(n126), .B(n141), .Y(n98) );
  NOR2XLM U60 ( .A(n9), .B(n240), .Y(n99) );
  NOR2XLM U61 ( .A(n9), .B(n141), .Y(n97) );
  NOR2XLM U62 ( .A(n100), .B(n240), .Y(n136) );
  AOI211XLM U63 ( .A0(n115), .A1(\reg_file[6][5] ), .B0(n114), .C0(n113), .Y(
        n116) );
  NOR2XLM U64 ( .A(n129), .B(n123), .Y(n104) );
  CLKINVX1M U65 ( .A(N59), .Y(n120) );
  NAND4XLM U66 ( .A(n92), .B(n91), .C(n90), .D(n89), .Y(n93) );
  OAI21XLM U67 ( .A0(n32), .A1(n41), .B0(n29), .Y(n258) );
  OAI21XLM U68 ( .A0(n32), .A1(n54), .B0(n31), .Y(n259) );
  NAND4XLM U69 ( .A(n21), .B(n20), .C(n19), .D(n18), .Y(n27) );
  AOI31XLM U70 ( .A0(n118), .A1(n117), .A2(n116), .B0(n120), .Y(n119) );
  OAI32XLM U71 ( .A0(n120), .A1(n16), .A2(n15), .B0(RdData[6]), .B1(N59), .Y(
        n17) );
  NAND4XLM U72 ( .A(n14), .B(n13), .C(n12), .D(n22), .Y(n15) );
  NAND4XLM U73 ( .A(n7), .B(n6), .C(n5), .D(n4), .Y(n16) );
  AOI2B1XLM U74 ( .A1N(RdData[7]), .A0(n120), .B0(n96), .Y(n279) );
  NOR3BXLM U75 ( .AN(n95), .B(n94), .C(n93), .Y(n96) );
  NOR2BXLM U76 ( .AN(RdEn), .B(WrEn), .Y(N59) );
  OA21XLM U77 ( .A0(n32), .A1(n250), .B0(n2), .Y(n1) );
  AOI22XLM U78 ( .A0(n106), .A1(REG0[3]), .B0(n105), .B1(\reg_file[7][3] ), 
        .Y(n48) );
  NOR2XLM U79 ( .A(n141), .B(n123), .Y(n102) );
  NAND2XLM U80 ( .A(Address[1]), .B(Address[2]), .Y(n126) );
  OAI2BB1XLM U81 ( .A0N(n136), .A1N(\reg_file[11][2] ), .B0(n33), .Y(n39) );
  AOI22XLM U82 ( .A0(n136), .A1(\reg_file[11][6] ), .B0(n97), .B1(
        \reg_file[8][6] ), .Y(n12) );
  NOR2XLM U83 ( .A(n129), .B(n126), .Y(n105) );
  OAI211XLM U84 ( .A0(n80), .A1(n250), .B0(n79), .C0(N59), .Y(n81) );
  NOR2XLM U85 ( .A(n141), .B(n143), .Y(n142) );
  CLKINVX1M U86 ( .A(REG1[1]), .Y(n67) );
  OAI32XLM U87 ( .A0(n120), .A1(n27), .A2(n26), .B0(RdData[0]), .B1(N59), .Y(
        n28) );
  OAI21XLM U88 ( .A0(n32), .A1(n67), .B0(n30), .Y(n257) );
  MX2XLM U89 ( .A(REG1[7]), .B(WrData[7]), .S0(n32), .Y(n263) );
  CLKINVX1M U90 ( .A(n17), .Y(n278) );
  NAND2XLM U91 ( .A(n32), .B(WrData[4]), .Y(n2) );
  MX2XLM U92 ( .A(REG1[5]), .B(WrData[5]), .S0(n32), .Y(n261) );
  MX2XLM U93 ( .A(REG1[6]), .B(WrData[6]), .S0(n32), .Y(n262) );
  MX2XLM U94 ( .A(WrData[5]), .B(REG0[5]), .S0(n121), .Y(n269) );
  MX2XLM U95 ( .A(WrData[6]), .B(REG0[6]), .S0(n121), .Y(n270) );
  MX2XLM U96 ( .A(WrData[7]), .B(REG0[7]), .S0(n121), .Y(n271) );
  MX2XLM U97 ( .A(REG1[0]), .B(WrData[0]), .S0(n32), .Y(n256) );
  AOI22XLM U98 ( .A0(n102), .A1(\reg_file[12][6] ), .B0(n101), .B1(
        \reg_file[15][6] ), .Y(n7) );
  AOI22XLM U99 ( .A0(n104), .A1(\reg_file[5][6] ), .B0(n103), .B1(REG1[6]), 
        .Y(n6) );
  AOI22XLM U100 ( .A0(n106), .A1(REG0[6]), .B0(n105), .B1(\reg_file[7][6] ), 
        .Y(n5) );
  AOI22XLM U101 ( .A0(n108), .A1(\reg_file[13][6] ), .B0(n107), .B1(
        \reg_file[4][6] ), .Y(n4) );
  AOI22XLM U102 ( .A0(n115), .A1(\reg_file[6][6] ), .B0(n134), .B1(
        \reg_file[10][6] ), .Y(n14) );
  AOI22XLM U103 ( .A0(n99), .A1(\reg_file[9][6] ), .B0(n98), .B1(
        \reg_file[14][6] ), .Y(n13) );
  NAND2XLM U104 ( .A(n11), .B(n10), .Y(n22) );
  AOI22XLM U105 ( .A0(n102), .A1(\reg_file[12][0] ), .B0(n101), .B1(
        \reg_file[15][0] ), .Y(n21) );
  AOI22XLM U106 ( .A0(n104), .A1(\reg_file[5][0] ), .B0(n106), .B1(REG0[0]), 
        .Y(n20) );
  AOI22XLM U107 ( .A0(n105), .A1(\reg_file[7][0] ), .B0(n103), .B1(REG1[0]), 
        .Y(n19) );
  AOI22XLM U108 ( .A0(n108), .A1(\reg_file[13][0] ), .B0(n107), .B1(
        \reg_file[4][0] ), .Y(n18) );
  AOI22XLM U109 ( .A0(n115), .A1(\reg_file[6][0] ), .B0(n134), .B1(
        \reg_file[10][0] ), .Y(n25) );
  AOI22XLM U110 ( .A0(n99), .A1(\reg_file[9][0] ), .B0(n98), .B1(
        \reg_file[14][0] ), .Y(n24) );
  AOI22XLM U111 ( .A0(n136), .A1(\reg_file[11][0] ), .B0(n97), .B1(
        \reg_file[8][0] ), .Y(n23) );
  NAND4XLM U112 ( .A(n25), .B(n24), .C(n23), .D(n22), .Y(n26) );
  CLKINVX1M U113 ( .A(n28), .Y(n272) );
  CLKINVX1M U114 ( .A(REG1[2]), .Y(n41) );
  NAND2XLM U115 ( .A(n32), .B(WrData[2]), .Y(n29) );
  NAND2XLM U116 ( .A(n32), .B(WrData[1]), .Y(n30) );
  CLKINVX1M U117 ( .A(REG1[3]), .Y(n54) );
  NAND2XLM U118 ( .A(n32), .B(WrData[3]), .Y(n31) );
  CLKINVX1M U119 ( .A(RdData[2]), .Y(n44) );
  AOI22XLM U120 ( .A0(n97), .A1(\reg_file[8][2] ), .B0(n99), .B1(
        \reg_file[9][2] ), .Y(n33) );
  AOI22XLM U121 ( .A0(n101), .A1(\reg_file[15][2] ), .B0(n108), .B1(
        \reg_file[13][2] ), .Y(n37) );
  AOI22XLM U122 ( .A0(n102), .A1(\reg_file[12][2] ), .B0(n98), .B1(
        \reg_file[14][2] ), .Y(n36) );
  AOI22XLM U123 ( .A0(n106), .A1(REG0[2]), .B0(n105), .B1(\reg_file[7][2] ), 
        .Y(n35) );
  AOI22XLM U124 ( .A0(n107), .A1(\reg_file[4][2] ), .B0(n104), .B1(
        \reg_file[5][2] ), .Y(n34) );
  CLKINVX1M U125 ( .A(n103), .Y(n80) );
  NAND2XLM U126 ( .A(n115), .B(\reg_file[6][2] ), .Y(n40) );
  OAI211XLM U127 ( .A0(n80), .A1(n41), .B0(n40), .C0(N59), .Y(n42) );
  CLKINVX1M U128 ( .A(n45), .Y(n274) );
  CLKINVX1M U129 ( .A(RdData[3]), .Y(n57) );
  AOI22XLM U130 ( .A0(n97), .A1(\reg_file[8][3] ), .B0(n99), .B1(
        \reg_file[9][3] ), .Y(n46) );
  OAI2BB1XLM U131 ( .A0N(n136), .A1N(\reg_file[11][3] ), .B0(n46), .Y(n52) );
  AOI22XLM U132 ( .A0(n101), .A1(\reg_file[15][3] ), .B0(n108), .B1(
        \reg_file[13][3] ), .Y(n50) );
  AOI22XLM U133 ( .A0(n102), .A1(\reg_file[12][3] ), .B0(n98), .B1(
        \reg_file[14][3] ), .Y(n49) );
  AOI22XLM U134 ( .A0(n107), .A1(\reg_file[4][3] ), .B0(n104), .B1(
        \reg_file[5][3] ), .Y(n47) );
  NAND2XLM U135 ( .A(n115), .B(\reg_file[6][3] ), .Y(n53) );
  OAI211XLM U136 ( .A0(n80), .A1(n54), .B0(n53), .C0(N59), .Y(n55) );
  CLKINVX1M U137 ( .A(n58), .Y(n275) );
  CLKINVX1M U138 ( .A(RdData[1]), .Y(n70) );
  AOI22XLM U139 ( .A0(n97), .A1(\reg_file[8][1] ), .B0(n99), .B1(
        \reg_file[9][1] ), .Y(n59) );
  OAI2BB1XLM U140 ( .A0N(n136), .A1N(\reg_file[11][1] ), .B0(n59), .Y(n65) );
  AOI22XLM U141 ( .A0(n101), .A1(\reg_file[15][1] ), .B0(n108), .B1(
        \reg_file[13][1] ), .Y(n63) );
  AOI22XLM U142 ( .A0(n102), .A1(\reg_file[12][1] ), .B0(n98), .B1(
        \reg_file[14][1] ), .Y(n62) );
  AOI22XLM U143 ( .A0(n106), .A1(REG0[1]), .B0(n105), .B1(\reg_file[7][1] ), 
        .Y(n61) );
  AOI22XLM U144 ( .A0(n107), .A1(\reg_file[4][1] ), .B0(n104), .B1(
        \reg_file[5][1] ), .Y(n60) );
  NAND2XLM U145 ( .A(n115), .B(\reg_file[6][1] ), .Y(n66) );
  OAI211XLM U146 ( .A0(n67), .A1(n80), .B0(n66), .C0(N59), .Y(n68) );
  CLKINVX1M U147 ( .A(n71), .Y(n273) );
  CLKINVX1M U148 ( .A(RdData[4]), .Y(n83) );
  AOI22XLM U149 ( .A0(n97), .A1(\reg_file[8][4] ), .B0(n99), .B1(
        \reg_file[9][4] ), .Y(n72) );
  OAI2BB1XLM U150 ( .A0N(n136), .A1N(\reg_file[11][4] ), .B0(n72), .Y(n78) );
  AOI22XLM U151 ( .A0(n101), .A1(\reg_file[15][4] ), .B0(n108), .B1(
        \reg_file[13][4] ), .Y(n76) );
  AOI22XLM U152 ( .A0(n102), .A1(\reg_file[12][4] ), .B0(n98), .B1(
        \reg_file[14][4] ), .Y(n75) );
  AOI22XLM U153 ( .A0(n106), .A1(REG0[4]), .B0(n105), .B1(\reg_file[7][4] ), 
        .Y(n74) );
  AOI22XLM U154 ( .A0(n107), .A1(\reg_file[4][4] ), .B0(n104), .B1(
        \reg_file[5][4] ), .Y(n73) );
  NAND2XLM U155 ( .A(n115), .B(\reg_file[6][4] ), .Y(n79) );
  CLKINVX1M U156 ( .A(n84), .Y(n276) );
  AOI22XLM U157 ( .A0(\reg_file[5][7] ), .A1(n104), .B0(\reg_file[7][7] ), 
        .B1(n105), .Y(n95) );
  CLKINVX1M U158 ( .A(n107), .Y(n88) );
  CLKINVX1M U159 ( .A(\reg_file[4][7] ), .Y(n87) );
  AOI21XLM U160 ( .A0(n103), .A1(REG1[7]), .B0(n120), .Y(n86) );
  AOI22XLM U161 ( .A0(n115), .A1(\reg_file[6][7] ), .B0(n106), .B1(REG0[7]), 
        .Y(n85) );
  OAI211XLM U162 ( .A0(n88), .A1(n87), .B0(n86), .C0(n85), .Y(n94) );
  AOI22XLM U163 ( .A0(\reg_file[8][7] ), .A1(n97), .B0(\reg_file[9][7] ), .B1(
        n99), .Y(n92) );
  AOI22XLM U164 ( .A0(n134), .A1(\reg_file[10][7] ), .B0(n136), .B1(
        \reg_file[11][7] ), .Y(n91) );
  AOI22XLM U165 ( .A0(\reg_file[15][7] ), .A1(n101), .B0(\reg_file[13][7] ), 
        .B1(n108), .Y(n90) );
  AOI22XLM U166 ( .A0(\reg_file[12][7] ), .A1(n102), .B0(\reg_file[14][7] ), 
        .B1(n98), .Y(n89) );
  AOI22XLM U167 ( .A0(n136), .A1(\reg_file[11][5] ), .B0(n97), .B1(
        \reg_file[8][5] ), .Y(n118) );
  AOI22XLM U168 ( .A0(n99), .A1(\reg_file[9][5] ), .B0(n98), .B1(
        \reg_file[14][5] ), .Y(n117) );
  OAI2BB2XLM U169 ( .B0(n129), .B1(n100), .A0N(n134), .A1N(\reg_file[10][5] ), 
        .Y(n114) );
  AOI22XLM U170 ( .A0(n102), .A1(\reg_file[12][5] ), .B0(n101), .B1(
        \reg_file[15][5] ), .Y(n112) );
  AOI22XLM U171 ( .A0(n104), .A1(\reg_file[5][5] ), .B0(n103), .B1(REG1[5]), 
        .Y(n111) );
  AOI22XLM U172 ( .A0(n106), .A1(REG0[5]), .B0(n105), .B1(\reg_file[7][5] ), 
        .Y(n110) );
  AOI22XLM U173 ( .A0(n108), .A1(\reg_file[13][5] ), .B0(n107), .B1(
        \reg_file[4][5] ), .Y(n109) );
  NAND4XLM U174 ( .A(n112), .B(n111), .C(n110), .D(n109), .Y(n113) );
  AO21XLM U175 ( .A0(RdData[5]), .A1(n120), .B0(n119), .Y(n277) );
  AOI2BB2XLM U176 ( .B0(n122), .B1(n244), .A0N(REG0[4]), .A1N(n122), .Y(n268)
         );
  AOI2BB2XLM U177 ( .B0(n122), .B1(n245), .A0N(REG0[3]), .A1N(n122), .Y(n267)
         );
  AOI2BB2XLM U178 ( .B0(n122), .B1(n246), .A0N(REG0[2]), .A1N(n122), .Y(n266)
         );
  AOI2BB2XLM U179 ( .B0(n122), .B1(n247), .A0N(REG0[1]), .A1N(n122), .Y(n265)
         );
  AOI2BB2XLM U180 ( .B0(n122), .B1(n248), .A0N(REG0[0]), .A1N(n122), .Y(n264)
         );
  AOI2BB2XLM U181 ( .B0(n124), .B1(n241), .A0N(\reg_file[4][7] ), .A1N(n124), 
        .Y(n239) );
  AOI2BB2XLM U182 ( .B0(n124), .B1(n242), .A0N(\reg_file[4][6] ), .A1N(n124), 
        .Y(n238) );
  AOI2BB2XLM U183 ( .B0(n124), .B1(n243), .A0N(\reg_file[4][5] ), .A1N(n124), 
        .Y(n237) );
  AOI2BB2XLM U184 ( .B0(n124), .B1(n244), .A0N(\reg_file[4][4] ), .A1N(n124), 
        .Y(n236) );
  AOI2BB2XLM U185 ( .B0(n124), .B1(n245), .A0N(\reg_file[4][3] ), .A1N(n124), 
        .Y(n235) );
  AOI2BB2XLM U186 ( .B0(n124), .B1(n246), .A0N(\reg_file[4][2] ), .A1N(n124), 
        .Y(n234) );
  AOI2BB2XLM U187 ( .B0(n124), .B1(n247), .A0N(\reg_file[4][1] ), .A1N(n124), 
        .Y(n233) );
  AOI2BB2XLM U188 ( .B0(n124), .B1(n248), .A0N(\reg_file[4][0] ), .A1N(n124), 
        .Y(n232) );
  AOI2BB2XLM U189 ( .B0(n125), .B1(n241), .A0N(\reg_file[5][7] ), .A1N(n125), 
        .Y(n231) );
  AOI2BB2XLM U190 ( .B0(n125), .B1(n242), .A0N(\reg_file[5][6] ), .A1N(n125), 
        .Y(n230) );
  AOI2BB2XLM U191 ( .B0(n125), .B1(n243), .A0N(\reg_file[5][5] ), .A1N(n125), 
        .Y(n229) );
  AOI2BB2XLM U192 ( .B0(n125), .B1(n244), .A0N(\reg_file[5][4] ), .A1N(n125), 
        .Y(n228) );
  AOI2BB2XLM U193 ( .B0(n125), .B1(n245), .A0N(\reg_file[5][3] ), .A1N(n125), 
        .Y(n227) );
  AOI2BB2XLM U194 ( .B0(n125), .B1(n246), .A0N(\reg_file[5][2] ), .A1N(n125), 
        .Y(n226) );
  AOI2BB2XLM U195 ( .B0(n125), .B1(n247), .A0N(\reg_file[5][1] ), .A1N(n125), 
        .Y(n225) );
  AOI2BB2XLM U196 ( .B0(n125), .B1(n248), .A0N(\reg_file[5][0] ), .A1N(n125), 
        .Y(n224) );
  AOI2BB2XLM U197 ( .B0(n128), .B1(n241), .A0N(\reg_file[6][7] ), .A1N(n128), 
        .Y(n223) );
  AOI2BB2XLM U198 ( .B0(n128), .B1(n242), .A0N(\reg_file[6][6] ), .A1N(n128), 
        .Y(n222) );
  AOI2BB2XLM U199 ( .B0(n128), .B1(n243), .A0N(\reg_file[6][5] ), .A1N(n128), 
        .Y(n221) );
  AOI2BB2XLM U200 ( .B0(n128), .B1(n244), .A0N(\reg_file[6][4] ), .A1N(n128), 
        .Y(n220) );
  AOI2BB2XLM U201 ( .B0(n128), .B1(n245), .A0N(\reg_file[6][3] ), .A1N(n128), 
        .Y(n219) );
  AOI2BB2XLM U202 ( .B0(n128), .B1(n246), .A0N(\reg_file[6][2] ), .A1N(n128), 
        .Y(n218) );
  AOI2BB2XLM U203 ( .B0(n128), .B1(n247), .A0N(\reg_file[6][1] ), .A1N(n128), 
        .Y(n217) );
  AOI2BB2XLM U204 ( .B0(n128), .B1(n248), .A0N(\reg_file[6][0] ), .A1N(n128), 
        .Y(n216) );
  AOI2BB2XLM U205 ( .B0(n130), .B1(n241), .A0N(\reg_file[7][7] ), .A1N(n130), 
        .Y(n215) );
  AOI2BB2XLM U206 ( .B0(n130), .B1(n242), .A0N(\reg_file[7][6] ), .A1N(n130), 
        .Y(n214) );
  AOI2BB2XLM U207 ( .B0(n130), .B1(n243), .A0N(\reg_file[7][5] ), .A1N(n130), 
        .Y(n213) );
  AOI2BB2XLM U208 ( .B0(n130), .B1(n244), .A0N(\reg_file[7][4] ), .A1N(n130), 
        .Y(n212) );
  AOI2BB2XLM U209 ( .B0(n130), .B1(n245), .A0N(\reg_file[7][3] ), .A1N(n130), 
        .Y(n211) );
  AOI2BB2XLM U210 ( .B0(n130), .B1(n246), .A0N(\reg_file[7][2] ), .A1N(n130), 
        .Y(n210) );
  AOI2BB2XLM U211 ( .B0(n130), .B1(n247), .A0N(\reg_file[7][1] ), .A1N(n130), 
        .Y(n209) );
  AOI2BB2XLM U212 ( .B0(n130), .B1(n248), .A0N(\reg_file[7][0] ), .A1N(n130), 
        .Y(n208) );
  AOI2BB2XLM U213 ( .B0(n131), .B1(n241), .A0N(\reg_file[8][7] ), .A1N(n131), 
        .Y(n207) );
  AOI2BB2XLM U214 ( .B0(n131), .B1(n242), .A0N(\reg_file[8][6] ), .A1N(n131), 
        .Y(n206) );
  AOI2BB2XLM U215 ( .B0(n131), .B1(n243), .A0N(\reg_file[8][5] ), .A1N(n131), 
        .Y(n205) );
  AOI2BB2XLM U216 ( .B0(n131), .B1(n244), .A0N(\reg_file[8][4] ), .A1N(n131), 
        .Y(n204) );
  AOI2BB2XLM U217 ( .B0(n131), .B1(n245), .A0N(\reg_file[8][3] ), .A1N(n131), 
        .Y(n203) );
  AOI2BB2XLM U218 ( .B0(n131), .B1(n246), .A0N(\reg_file[8][2] ), .A1N(n131), 
        .Y(n202) );
  AOI2BB2XLM U219 ( .B0(n131), .B1(n247), .A0N(\reg_file[8][1] ), .A1N(n131), 
        .Y(n201) );
  AOI2BB2XLM U220 ( .B0(n131), .B1(n248), .A0N(\reg_file[8][0] ), .A1N(n131), 
        .Y(n200) );
  AOI2BB2XLM U221 ( .B0(n133), .B1(n241), .A0N(\reg_file[9][7] ), .A1N(n133), 
        .Y(n199) );
  AOI2BB2XLM U222 ( .B0(n133), .B1(n242), .A0N(\reg_file[9][6] ), .A1N(n133), 
        .Y(n198) );
  AOI2BB2XLM U223 ( .B0(n133), .B1(n243), .A0N(\reg_file[9][5] ), .A1N(n133), 
        .Y(n197) );
  AOI2BB2XLM U224 ( .B0(n133), .B1(n244), .A0N(\reg_file[9][4] ), .A1N(n133), 
        .Y(n196) );
  AOI2BB2XLM U225 ( .B0(n133), .B1(n245), .A0N(\reg_file[9][3] ), .A1N(n133), 
        .Y(n195) );
  AOI2BB2XLM U226 ( .B0(n133), .B1(n246), .A0N(\reg_file[9][2] ), .A1N(n133), 
        .Y(n194) );
  AOI2BB2XLM U227 ( .B0(n133), .B1(n247), .A0N(\reg_file[9][1] ), .A1N(n133), 
        .Y(n193) );
  AOI2BB2XLM U228 ( .B0(n133), .B1(n248), .A0N(\reg_file[9][0] ), .A1N(n133), 
        .Y(n192) );
  AOI2BB2XLM U229 ( .B0(n135), .B1(n241), .A0N(\reg_file[10][7] ), .A1N(n135), 
        .Y(n191) );
  AOI2BB2XLM U230 ( .B0(n135), .B1(n242), .A0N(\reg_file[10][6] ), .A1N(n135), 
        .Y(n190) );
  AOI2BB2XLM U231 ( .B0(n135), .B1(n243), .A0N(\reg_file[10][5] ), .A1N(n135), 
        .Y(n189) );
  AOI2BB2XLM U232 ( .B0(n135), .B1(n244), .A0N(\reg_file[10][4] ), .A1N(n135), 
        .Y(n188) );
  AOI2BB2XLM U233 ( .B0(n135), .B1(n245), .A0N(\reg_file[10][3] ), .A1N(n135), 
        .Y(n187) );
  AOI2BB2XLM U234 ( .B0(n135), .B1(n246), .A0N(\reg_file[10][2] ), .A1N(n135), 
        .Y(n186) );
  AOI2BB2XLM U235 ( .B0(n135), .B1(n247), .A0N(\reg_file[10][1] ), .A1N(n135), 
        .Y(n185) );
  AOI2BB2XLM U236 ( .B0(n135), .B1(n248), .A0N(\reg_file[10][0] ), .A1N(n135), 
        .Y(n184) );
  AOI2BB2XLM U237 ( .B0(n137), .B1(n241), .A0N(\reg_file[11][7] ), .A1N(n137), 
        .Y(n183) );
  AOI2BB2XLM U238 ( .B0(n137), .B1(n242), .A0N(\reg_file[11][6] ), .A1N(n137), 
        .Y(n182) );
  AOI2BB2XLM U239 ( .B0(n137), .B1(n243), .A0N(\reg_file[11][5] ), .A1N(n137), 
        .Y(n181) );
  AOI2BB2XLM U240 ( .B0(n137), .B1(n244), .A0N(\reg_file[11][4] ), .A1N(n137), 
        .Y(n180) );
  AOI2BB2XLM U241 ( .B0(n137), .B1(n245), .A0N(\reg_file[11][3] ), .A1N(n137), 
        .Y(n179) );
  AOI2BB2XLM U242 ( .B0(n137), .B1(n246), .A0N(\reg_file[11][2] ), .A1N(n137), 
        .Y(n178) );
  AOI2BB2XLM U243 ( .B0(n137), .B1(n247), .A0N(\reg_file[11][1] ), .A1N(n137), 
        .Y(n177) );
  AOI2BB2XLM U244 ( .B0(n137), .B1(n248), .A0N(\reg_file[11][0] ), .A1N(n137), 
        .Y(n176) );
  AOI2BB2XLM U245 ( .B0(n138), .B1(n241), .A0N(\reg_file[12][7] ), .A1N(n138), 
        .Y(n175) );
  AOI2BB2XLM U246 ( .B0(n138), .B1(n242), .A0N(\reg_file[12][6] ), .A1N(n138), 
        .Y(n174) );
  AOI2BB2XLM U247 ( .B0(n138), .B1(n243), .A0N(\reg_file[12][5] ), .A1N(n138), 
        .Y(n173) );
  AOI2BB2XLM U248 ( .B0(n138), .B1(n244), .A0N(\reg_file[12][4] ), .A1N(n138), 
        .Y(n172) );
  AOI2BB2XLM U249 ( .B0(n138), .B1(n245), .A0N(\reg_file[12][3] ), .A1N(n138), 
        .Y(n171) );
  AOI2BB2XLM U250 ( .B0(n138), .B1(n246), .A0N(\reg_file[12][2] ), .A1N(n138), 
        .Y(n170) );
  AOI2BB2XLM U251 ( .B0(n138), .B1(n247), .A0N(\reg_file[12][1] ), .A1N(n138), 
        .Y(n169) );
  AOI2BB2XLM U252 ( .B0(n138), .B1(n248), .A0N(\reg_file[12][0] ), .A1N(n138), 
        .Y(n168) );
  AOI2BB2XLM U253 ( .B0(n140), .B1(n241), .A0N(\reg_file[13][7] ), .A1N(n140), 
        .Y(n167) );
  AOI2BB2XLM U254 ( .B0(n140), .B1(n242), .A0N(\reg_file[13][6] ), .A1N(n140), 
        .Y(n166) );
  AOI2BB2XLM U255 ( .B0(n140), .B1(n243), .A0N(\reg_file[13][5] ), .A1N(n140), 
        .Y(n165) );
  AOI2BB2XLM U256 ( .B0(n140), .B1(n244), .A0N(\reg_file[13][4] ), .A1N(n140), 
        .Y(n164) );
  AOI2BB2XLM U257 ( .B0(n140), .B1(n245), .A0N(\reg_file[13][3] ), .A1N(n140), 
        .Y(n163) );
  AOI2BB2XLM U258 ( .B0(n140), .B1(n246), .A0N(\reg_file[13][2] ), .A1N(n140), 
        .Y(n162) );
  AOI2BB2XLM U259 ( .B0(n140), .B1(n247), .A0N(\reg_file[13][1] ), .A1N(n140), 
        .Y(n161) );
  AOI2BB2XLM U260 ( .B0(n140), .B1(n248), .A0N(\reg_file[13][0] ), .A1N(n140), 
        .Y(n160) );
  AOI2BB2XLM U261 ( .B0(n142), .B1(n241), .A0N(\reg_file[14][7] ), .A1N(n142), 
        .Y(n159) );
  AOI2BB2XLM U262 ( .B0(n142), .B1(n242), .A0N(\reg_file[14][6] ), .A1N(n142), 
        .Y(n158) );
  AOI2BB2XLM U263 ( .B0(n142), .B1(n243), .A0N(\reg_file[14][5] ), .A1N(n142), 
        .Y(n157) );
  AOI2BB2XLM U264 ( .B0(n142), .B1(n244), .A0N(\reg_file[14][4] ), .A1N(n142), 
        .Y(n156) );
  AOI2BB2XLM U265 ( .B0(n142), .B1(n245), .A0N(\reg_file[14][3] ), .A1N(n142), 
        .Y(n155) );
  AOI2BB2XLM U266 ( .B0(n142), .B1(n246), .A0N(\reg_file[14][2] ), .A1N(n142), 
        .Y(n154) );
  AOI2BB2XLM U267 ( .B0(n142), .B1(n247), .A0N(\reg_file[14][1] ), .A1N(n142), 
        .Y(n153) );
  AOI2BB2XLM U268 ( .B0(n142), .B1(n248), .A0N(\reg_file[14][0] ), .A1N(n142), 
        .Y(n152) );
  AOI2BB2XLM U269 ( .B0(n249), .B1(n241), .A0N(\reg_file[15][7] ), .A1N(n249), 
        .Y(n151) );
  AOI2BB2XLM U270 ( .B0(n249), .B1(n242), .A0N(\reg_file[15][6] ), .A1N(n249), 
        .Y(n150) );
  AOI2BB2XLM U271 ( .B0(n249), .B1(n243), .A0N(\reg_file[15][5] ), .A1N(n249), 
        .Y(n149) );
  AOI2BB2XLM U272 ( .B0(n249), .B1(n244), .A0N(\reg_file[15][4] ), .A1N(n249), 
        .Y(n148) );
  AOI2BB2XLM U273 ( .B0(n249), .B1(n245), .A0N(\reg_file[15][3] ), .A1N(n249), 
        .Y(n147) );
  AOI2BB2XLM U274 ( .B0(n249), .B1(n246), .A0N(\reg_file[15][2] ), .A1N(n249), 
        .Y(n146) );
  AOI2BB2XLM U275 ( .B0(n249), .B1(n247), .A0N(\reg_file[15][1] ), .A1N(n249), 
        .Y(n145) );
  AOI2BB2XLM U276 ( .B0(n249), .B1(n248), .A0N(\reg_file[15][0] ), .A1N(n249), 
        .Y(n144) );
endmodule


module ALU_00000008_00000004 ( CLK, RST_n, A, B, ALU_FUN, Enable, ALU_OUT, 
        OUT_VALID );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input CLK, RST_n, Enable;
  output OUT_VALID;
  wire   \C7/DATA15_0 , \C7/DATA15_1 , \C7/DATA15_2 , \C7/DATA15_3 ,
         \C7/DATA15_4 , \C7/DATA15_5 , \C7/DATA15_6 , \C7/DATA15_7 , n173,
         n174, n175, n176, n177, n178, n179, n180, \DP_OP_29J1_123_2578/n43 ,
         \DP_OP_29J1_123_2578/n29 , \DP_OP_29J1_123_2578/n28 ,
         \DP_OP_29J1_123_2578/n27 , \DP_OP_29J1_123_2578/n26 ,
         \DP_OP_29J1_123_2578/n25 , \DP_OP_29J1_123_2578/n24 ,
         \DP_OP_29J1_123_2578/n23 , \DP_OP_29J1_123_2578/n22 ,
         \DP_OP_29J1_123_2578/n16 , \DP_OP_29J1_123_2578/n15 ,
         \DP_OP_29J1_123_2578/n14 , \DP_OP_29J1_123_2578/n13 ,
         \DP_OP_29J1_123_2578/n12 , \DP_OP_29J1_123_2578/n11 ,
         \DP_OP_29J1_123_2578/n10 , \intadd_0/A[2] , \intadd_0/A[1] ,
         \intadd_0/A[0] , \intadd_0/B[2] , \intadd_0/B[1] , \intadd_0/B[0] ,
         \intadd_0/CI , \intadd_0/SUM[2] , \intadd_0/SUM[1] ,
         \intadd_0/SUM[0] , \intadd_0/n3 , \intadd_0/n2 , \intadd_0/n1 , n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n394,
         n395, n396, n397, n398, n399, n400, n401, n402, n403, n404, n405,
         n406, n407, n408, n409, n410, n411, n412, n413, n414, n415, n416,
         n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, n427,
         n428, n429, n430, n431, n432, n433, n434, n435, n436, n437, n438,
         n439, n440, n441, n442, n443, n444, n445, n446, n447, n448, n449,
         n450, n451, n452, n453, n454, n455, n456, n457, n458;

  DFFRQX1M \ALU_OUT_reg[7]  ( .D(n180), .CK(CLK), .RN(RST_n), .Q(ALU_OUT[7])
         );
  DFFRQX1M \ALU_OUT_reg[6]  ( .D(n179), .CK(CLK), .RN(RST_n), .Q(ALU_OUT[6])
         );
  DFFRQX1M \ALU_OUT_reg[5]  ( .D(n178), .CK(CLK), .RN(RST_n), .Q(ALU_OUT[5])
         );
  DFFRQX1M \ALU_OUT_reg[4]  ( .D(n177), .CK(CLK), .RN(RST_n), .Q(ALU_OUT[4])
         );
  DFFRQX1M \ALU_OUT_reg[3]  ( .D(n176), .CK(CLK), .RN(RST_n), .Q(ALU_OUT[3])
         );
  DFFRQX1M \ALU_OUT_reg[2]  ( .D(n175), .CK(CLK), .RN(RST_n), .Q(ALU_OUT[2])
         );
  DFFRQX1M \ALU_OUT_reg[1]  ( .D(n174), .CK(CLK), .RN(RST_n), .Q(ALU_OUT[1])
         );
  ADDFX1M \intadd_0/U3  ( .A(\intadd_0/A[1] ), .B(\intadd_0/B[1] ), .CI(
        \intadd_0/n3 ), .CO(\intadd_0/n2 ), .S(\intadd_0/SUM[1] ) );
  ADDFX1M \DP_OP_29J1_123_2578/U21  ( .A(A[0]), .B(\DP_OP_29J1_123_2578/n43 ), 
        .CI(\DP_OP_29J1_123_2578/n29 ), .CO(\DP_OP_29J1_123_2578/n16 ), .S(
        \C7/DATA15_0 ) );
  ADDFX1M \DP_OP_29J1_123_2578/U20  ( .A(\DP_OP_29J1_123_2578/n28 ), .B(A[1]), 
        .CI(\DP_OP_29J1_123_2578/n16 ), .CO(\DP_OP_29J1_123_2578/n15 ), .S(
        \C7/DATA15_1 ) );
  ADDFX1M \DP_OP_29J1_123_2578/U19  ( .A(\DP_OP_29J1_123_2578/n27 ), .B(A[2]), 
        .CI(\DP_OP_29J1_123_2578/n15 ), .CO(\DP_OP_29J1_123_2578/n14 ), .S(
        \C7/DATA15_2 ) );
  ADDFX1M \DP_OP_29J1_123_2578/U18  ( .A(\DP_OP_29J1_123_2578/n26 ), .B(A[3]), 
        .CI(\DP_OP_29J1_123_2578/n14 ), .CO(\DP_OP_29J1_123_2578/n13 ), .S(
        \C7/DATA15_3 ) );
  ADDFX1M \DP_OP_29J1_123_2578/U17  ( .A(\DP_OP_29J1_123_2578/n25 ), .B(A[4]), 
        .CI(\DP_OP_29J1_123_2578/n13 ), .CO(\DP_OP_29J1_123_2578/n12 ), .S(
        \C7/DATA15_4 ) );
  ADDFX1M \DP_OP_29J1_123_2578/U16  ( .A(\DP_OP_29J1_123_2578/n24 ), .B(A[5]), 
        .CI(\DP_OP_29J1_123_2578/n12 ), .CO(\DP_OP_29J1_123_2578/n11 ), .S(
        \C7/DATA15_5 ) );
  ADDFX1M \DP_OP_29J1_123_2578/U15  ( .A(\DP_OP_29J1_123_2578/n23 ), .B(A[6]), 
        .CI(\DP_OP_29J1_123_2578/n11 ), .CO(\DP_OP_29J1_123_2578/n10 ), .S(
        \C7/DATA15_6 ) );
  ADDFX1M \intadd_0/U4  ( .A(\intadd_0/A[0] ), .B(\intadd_0/B[0] ), .CI(
        \intadd_0/CI ), .CO(\intadd_0/n3 ), .S(\intadd_0/SUM[0] ) );
  ADDFX1M \intadd_0/U2  ( .A(\intadd_0/A[2] ), .B(\intadd_0/B[2] ), .CI(
        \intadd_0/n2 ), .CO(\intadd_0/n1 ), .S(\intadd_0/SUM[2] ) );
  DFFSQX2M OUT_VALID_reg ( .D(n457), .CK(CLK), .SN(RST_n), .Q(n458) );
  XOR3XLM \DP_OP_29J1_123_2578/U14  ( .A(\DP_OP_29J1_123_2578/n22 ), .B(A[7]), 
        .C(\DP_OP_29J1_123_2578/n10 ), .Y(\C7/DATA15_7 ) );
  DFFRHQX1M \ALU_OUT_reg[0]  ( .D(n173), .CK(CLK), .RN(RST_n), .Q(ALU_OUT[0])
         );
  OAI22X2M U3 ( .A0(n67), .A1(n61), .B0(n60), .B1(n308), .Y(n65) );
  OAI22X1M U4 ( .A0(n55), .A1(n39), .B0(n58), .B1(n338), .Y(n40) );
  NOR2XLM U5 ( .A(n152), .B(n338), .Y(n169) );
  OAI21XLM U6 ( .A0(n427), .A1(n49), .B0(n51), .Y(n32) );
  NOR2XLM U7 ( .A(n124), .B(n144), .Y(n208) );
  OAI21XLM U8 ( .A0(B[1]), .A1(n33), .B0(n32), .Y(n55) );
  OAI21XLM U9 ( .A0(n185), .A1(n142), .B0(n141), .Y(n145) );
  AOI21XLM U10 ( .A0(n207), .A1(n2), .B0(n206), .Y(n211) );
  NOR2XLM U11 ( .A(n301), .B(n251), .Y(\DP_OP_29J1_123_2578/n43 ) );
  AOI21XLM U12 ( .A0(n249), .A1(n248), .B0(n422), .Y(n250) );
  NAND2XLM U13 ( .A(n212), .B(n377), .Y(n249) );
  AOI21XLM U14 ( .A0(n166), .A1(n165), .B0(n164), .Y(n197) );
  OAI21XLM U15 ( .A0(n5), .A1(n158), .B0(n157), .Y(n165) );
  NOR2XLM U16 ( .A(n153), .B(n163), .Y(n166) );
  OAI21XLM U17 ( .A0(n163), .A1(n162), .B0(n161), .Y(n164) );
  AND2X1M U18 ( .A(n205), .B(n433), .Y(n206) );
  MX2XLM U19 ( .A(n189), .B(n188), .S0(n378), .Y(n192) );
  NOR2BX1M U20 ( .AN(n208), .B(n378), .Y(n209) );
  XNOR2XLM U21 ( .A(n199), .B(n187), .Y(n188) );
  AOI21X1M U22 ( .A0(n4), .A1(n198), .B0(n140), .Y(n141) );
  AOI21X1M U23 ( .A0(n131), .A1(n149), .B0(n130), .Y(n185) );
  OAI21X1M U24 ( .A0(n170), .A1(n167), .B0(n171), .Y(n130) );
  CLKINVX1M U25 ( .A(n200), .Y(n140) );
  NOR2XLM U26 ( .A(n170), .B(n169), .Y(n131) );
  NAND2XLM U27 ( .A(n1), .B(n186), .Y(n187) );
  AND2X1M U28 ( .A(n208), .B(n433), .Y(n6) );
  OAI21X2M U29 ( .A0(n94), .A1(n93), .B0(n92), .Y(n124) );
  OAI21BX1M U30 ( .A0(n91), .A1(n143), .B0N(n90), .Y(n92) );
  AO21X2M U31 ( .A0(n81), .A1(n427), .B0(n79), .Y(n48) );
  NAND2XLM U32 ( .A(n46), .B(n45), .Y(n66) );
  NOR2XLM U33 ( .A(n38), .B(B[2]), .Y(n39) );
  OAI21X1M U34 ( .A0(n27), .A1(n26), .B0(n25), .Y(n275) );
  AOI211XLM U35 ( .A0(\C7/DATA15_0 ), .A1(n452), .B0(n247), .C0(n246), .Y(n248) );
  NAND2XLM U36 ( .A(n16), .B(n15), .Y(n447) );
  NAND2XLM U37 ( .A(n14), .B(B[1]), .Y(n16) );
  NOR2XLM U38 ( .A(n23), .B(n12), .Y(n298) );
  NAND2BX1M U39 ( .AN(n90), .B(n379), .Y(n62) );
  OAI21XLM U40 ( .A0(A[7]), .A1(n408), .B0(n427), .Y(n12) );
  AO21XLM U41 ( .A0(ALU_OUT[0]), .A1(n422), .B0(n250), .Y(n173) );
  OAI21X1M U42 ( .A0(n211), .A1(n395), .B0(n210), .Y(n212) );
  OAI21X1M U43 ( .A0(n197), .A1(n196), .B0(n195), .Y(n207) );
  OA21XLM U44 ( .A0(n156), .A1(n155), .B0(n154), .Y(n5) );
  AND2X1M U45 ( .A(n192), .B(n317), .Y(n193) );
  NOR2XLM U46 ( .A(n159), .B(n338), .Y(n153) );
  NAND2XLM U47 ( .A(n159), .B(n338), .Y(n162) );
  AND2X1M U48 ( .A(n191), .B(n379), .Y(n194) );
  OR2X1M U49 ( .A(n192), .B(n317), .Y(n190) );
  NOR2X1M U50 ( .A(n184), .B(n308), .Y(n170) );
  CLKINVX1M U51 ( .A(n120), .Y(n83) );
  NAND2XLM U52 ( .A(n138), .B(B[4]), .Y(n87) );
  OAI21X1M U53 ( .A0(n270), .A1(n408), .B0(A[4]), .Y(n47) );
  NAND2X1M U54 ( .A(n41), .B(n308), .Y(n42) );
  OAI2BB1X1M U55 ( .A0N(n427), .A1N(n36), .B0(n21), .Y(n22) );
  NOR2X1M U56 ( .A(ALU_FUN[2]), .B(n107), .Y(n452) );
  INVX1M U57 ( .A(Enable), .Y(n422) );
  INVX1M U58 ( .A(B[1]), .Y(n427) );
  INVX1M U59 ( .A(B[2]), .Y(n338) );
  CLKINVX1M U60 ( .A(n77), .Y(n125) );
  OAI21XLM U61 ( .A0(n77), .A1(n427), .B0(n122), .Y(n78) );
  XOR2XLM U62 ( .A(n59), .B(n58), .Y(n69) );
  NAND2XLM U63 ( .A(n57), .B(n56), .Y(n59) );
  XNOR2XLM U64 ( .A(n55), .B(B[2]), .Y(n56) );
  MX2XLM U65 ( .A(n152), .B(n151), .S0(n378), .Y(n160) );
  NAND2XLM U66 ( .A(n148), .B(n167), .Y(n150) );
  CLKINVX1M U67 ( .A(n169), .Y(n148) );
  CLKINVX1M U68 ( .A(n378), .Y(n155) );
  MX2XLM U69 ( .A(n147), .B(n146), .S0(n378), .Y(n159) );
  XNOR2XLM U70 ( .A(n147), .B(n117), .Y(n146) );
  NOR2XLM U71 ( .A(n160), .B(n308), .Y(n163) );
  MX2XLM U72 ( .A(n204), .B(n203), .S0(n378), .Y(n205) );
  XOR2XLM U73 ( .A(n202), .B(n201), .Y(n203) );
  NAND2XLM U74 ( .A(n4), .B(n200), .Y(n201) );
  AOI21XLM U75 ( .A0(n199), .A1(n1), .B0(n198), .Y(n202) );
  NAND3BXLM U76 ( .AN(B[6]), .B(n143), .C(n303), .Y(n93) );
  CLKINVX1M U77 ( .A(n91), .Y(n94) );
  CLKINVX1M U78 ( .A(B[7]), .Y(n303) );
  XOR2XLM U79 ( .A(n82), .B(n81), .Y(n120) );
  OAI2BB1XLM U80 ( .A0N(n115), .A1N(n124), .B0(n114), .Y(n147) );
  OAI2BB1XLM U81 ( .A0N(B[0]), .A1N(n124), .B0(A[2]), .Y(n114) );
  XOR2XLM U82 ( .A(n126), .B(n125), .Y(n152) );
  XNOR2XLM U83 ( .A(n122), .B(B[1]), .Y(n123) );
  XOR2XLM U84 ( .A(n53), .B(n52), .Y(n71) );
  NAND2XLM U85 ( .A(n57), .B(n50), .Y(n53) );
  XNOR2XLM U86 ( .A(n49), .B(B[1]), .Y(n50) );
  OAI21XLM U87 ( .A0(n155), .A1(n408), .B0(A[1]), .Y(n154) );
  NAND2XLM U88 ( .A(n124), .B(n133), .Y(n135) );
  XOR2XLM U89 ( .A(n139), .B(n138), .Y(n204) );
  NAND2XLM U90 ( .A(n124), .B(n137), .Y(n139) );
  NAND2BXLM U91 ( .AN(A[5]), .B(B[0]), .Y(n34) );
  NAND2XLM U92 ( .A(n7), .B(n190), .Y(n196) );
  AOI21XLM U93 ( .A0(n190), .A1(n194), .B0(n193), .Y(n195) );
  OR2X1M U94 ( .A(n205), .B(n433), .Y(n2) );
  CLKINVX1M U95 ( .A(B[5]), .Y(n317) );
  OR2X1M U96 ( .A(ALU_FUN[3]), .B(ALU_FUN[1]), .Y(n107) );
  AOI21XLM U97 ( .A0(B[0]), .A1(n20), .B0(n23), .Y(n15) );
  AND2X2M U98 ( .A(n8), .B(n303), .Y(n378) );
  OR2X1M U99 ( .A(n208), .B(n433), .Y(n3) );
  OAI2B11XLM U100 ( .A1N(\C7/DATA15_7 ), .A0(n301), .B0(n300), .C0(n299), .Y(
        n307) );
  OAI21XLM U101 ( .A0(n360), .A1(n79), .B0(n76), .Y(n77) );
  NAND2BXLM U102 ( .AN(A[2]), .B(B[0]), .Y(n122) );
  NAND2BXLM U103 ( .AN(A[3]), .B(B[0]), .Y(n79) );
  CLKINVX1M U104 ( .A(n270), .Y(n57) );
  CLKINVX1M U105 ( .A(n170), .Y(n172) );
  NAND2XLM U106 ( .A(n156), .B(n427), .Y(n127) );
  XOR2XLM U107 ( .A(n121), .B(n120), .Y(n184) );
  MXI2XLM U108 ( .A(n75), .B(n74), .S0(n89), .Y(n85) );
  CLKINVX1M U109 ( .A(n71), .Y(n75) );
  XNOR2XLM U110 ( .A(n73), .B(n72), .Y(n74) );
  CLKINVX1M U111 ( .A(n85), .Y(n134) );
  OAI21XLM U112 ( .A0(n31), .A1(n34), .B0(n30), .Y(n51) );
  CLKINVX1M U113 ( .A(n275), .Y(n31) );
  NAND2XLM U114 ( .A(n29), .B(A[5]), .Y(n30) );
  NAND2BXLM U115 ( .AN(A[4]), .B(B[0]), .Y(n49) );
  MX2XLM U116 ( .A(n184), .B(n183), .S0(n378), .Y(n191) );
  XNOR2XLM U117 ( .A(n182), .B(n181), .Y(n183) );
  NAND2XLM U118 ( .A(n172), .B(n171), .Y(n181) );
  OAI21XLM U119 ( .A0(n169), .A1(n168), .B0(n167), .Y(n182) );
  CLKINVX1M U120 ( .A(n185), .Y(n199) );
  CLKINVX1M U121 ( .A(n147), .Y(n129) );
  NAND2XLM U122 ( .A(n152), .B(n338), .Y(n167) );
  NAND2XLM U123 ( .A(n184), .B(n308), .Y(n171) );
  NAND2XLM U124 ( .A(n189), .B(n379), .Y(n186) );
  XNOR2XLM U125 ( .A(n70), .B(n69), .Y(n138) );
  XNOR2XLM U126 ( .A(n67), .B(B[3]), .Y(n68) );
  CLKINVX1M U127 ( .A(n69), .Y(n60) );
  NOR2XLM U128 ( .A(n69), .B(B[3]), .Y(n61) );
  NAND2XLM U129 ( .A(n44), .B(n270), .Y(n88) );
  CLKINVX1M U130 ( .A(n62), .Y(n63) );
  CLKINVX1M U131 ( .A(n88), .Y(n46) );
  XOR2XLM U132 ( .A(n37), .B(n36), .Y(n38) );
  NAND2XLM U133 ( .A(n275), .B(n35), .Y(n37) );
  XNOR2XLM U134 ( .A(n34), .B(B[1]), .Y(n35) );
  CLKINVX1M U135 ( .A(n38), .Y(n58) );
  NOR4XLM U136 ( .A(n340), .B(n427), .C(n408), .D(n359), .Y(n320) );
  NAND2XLM U137 ( .A(n160), .B(n308), .Y(n161) );
  NAND2XLM U138 ( .A(n223), .B(n427), .Y(n157) );
  OR2X1M U139 ( .A(n191), .B(n379), .Y(n7) );
  NAND2BXLM U140 ( .AN(A[0]), .B(B[0]), .Y(n223) );
  NAND2XLM U141 ( .A(n204), .B(n317), .Y(n200) );
  OR2X1M U142 ( .A(n189), .B(n379), .Y(n1) );
  OR2X1M U143 ( .A(n204), .B(n317), .Y(n4) );
  CLKINVX1M U144 ( .A(n186), .Y(n198) );
  NAND3XLM U145 ( .A(n303), .B(n433), .C(n317), .Y(n90) );
  NOR2XLM U146 ( .A(n89), .B(n88), .Y(n143) );
  NOR4XLM U147 ( .A(n427), .B(n315), .C(n408), .D(n429), .Y(n283) );
  NOR2XLM U148 ( .A(n275), .B(n28), .Y(n44) );
  CLKINVX1M U149 ( .A(n34), .Y(n21) );
  NOR2XLM U150 ( .A(n62), .B(B[3]), .Y(n18) );
  CLKINVX1M U151 ( .A(n28), .Y(n19) );
  CLKINVX1M U152 ( .A(A[7]), .Y(n13) );
  NAND2XLM U153 ( .A(n18), .B(n338), .Y(n23) );
  NAND2BXLM U154 ( .AN(ALU_FUN[1]), .B(ALU_FUN[3]), .Y(n226) );
  NOR2BXLM U155 ( .AN(n285), .B(n286), .Y(n432) );
  NOR2BXLM U156 ( .AN(n286), .B(n285), .Y(n430) );
  NAND2XLM U157 ( .A(ALU_FUN[0]), .B(ALU_FUN[2]), .Y(n102) );
  NAND2BXLM U158 ( .AN(ALU_FUN[3]), .B(ALU_FUN[1]), .Y(n99) );
  NOR2XLM U159 ( .A(A[7]), .B(n303), .Y(n395) );
  NAND2BXLM U160 ( .AN(ALU_FUN[2]), .B(ALU_FUN[0]), .Y(n397) );
  CLKINVX1M U161 ( .A(A[1]), .Y(n415) );
  CLKINVX1M U162 ( .A(A[2]), .Y(n315) );
  CLKINVX1M U163 ( .A(n89), .Y(n360) );
  CLKINVX1M U164 ( .A(B[3]), .Y(n308) );
  CLKINVX1M U165 ( .A(A[3]), .Y(n429) );
  NOR4XLM U166 ( .A(n427), .B(n408), .C(n429), .D(n359), .Y(n426) );
  NOR2XLM U167 ( .A(n226), .B(n102), .Y(n443) );
  CLKINVX1M U168 ( .A(A[4]), .Y(n359) );
  CLKINVX1M U169 ( .A(ALU_FUN[0]), .Y(n251) );
  NOR2XLM U170 ( .A(n397), .B(n226), .Y(n98) );
  CLKINVX1M U171 ( .A(n344), .Y(n450) );
  CLKINVX1M U172 ( .A(n452), .Y(n301) );
  CLKINVX1M U173 ( .A(n442), .Y(n410) );
  OAI21BXLM U174 ( .A0(n102), .A1(n99), .B0N(n98), .Y(n356) );
  NOR2XLM U175 ( .A(n101), .B(n226), .Y(n442) );
  CLKINVX1M U176 ( .A(n436), .Y(n302) );
  NOR2XLM U177 ( .A(n225), .B(n99), .Y(n402) );
  NAND2BXLM U178 ( .AN(ALU_FUN[0]), .B(ALU_FUN[2]), .Y(n225) );
  OAI21BXLM U179 ( .A0(n432), .A1(n431), .B0N(n430), .Y(\intadd_0/B[2] ) );
  OAI31XLM U180 ( .A0(n317), .A1(n316), .A2(n315), .B0(n314), .Y(n318) );
  OAI31XLM U181 ( .A0(n427), .A1(n328), .A2(n20), .B0(n327), .Y(n330) );
  OAI21XLM U182 ( .A0(n427), .A1(n20), .B0(n328), .Y(n327) );
  NAND2XLM U183 ( .A(n96), .B(n95), .Y(n344) );
  NAND2XLM U184 ( .A(n209), .B(n303), .Y(n210) );
  AOI21XLM U185 ( .A0(n245), .A1(n436), .B0(n381), .Y(n246) );
  NAND4XLM U186 ( .A(n243), .B(n242), .C(n241), .D(n405), .Y(n247) );
  CLKINVX1M U187 ( .A(n102), .Y(n10) );
  NOR2XLM U188 ( .A(n397), .B(n99), .Y(n377) );
  NOR3BXLM U189 ( .AN(n399), .B(n398), .C(n397), .Y(n418) );
  NAND2XLM U190 ( .A(\C7/DATA15_2 ), .B(n452), .Y(n108) );
  AOI21XLM U191 ( .A0(n450), .A1(n106), .B0(n105), .Y(n109) );
  OAI211XLM U192 ( .A0(n415), .A1(n278), .B0(n104), .C0(n103), .Y(n105) );
  OAI2BB2XLM U193 ( .B0(n357), .B1(n410), .A0N(n356), .A1N(n369), .Y(n363) );
  AOI211XLM U194 ( .A0(n442), .A1(n388), .B0(n264), .C0(n263), .Y(n269) );
  CLKINVX1M U195 ( .A(n402), .Y(n437) );
  CLKINVX1M U196 ( .A(B[6]), .Y(n433) );
  NOR2XLM U197 ( .A(n97), .B(n98), .Y(n434) );
  NAND2XLM U198 ( .A(n11), .B(n10), .Y(n436) );
  OAI2BB1XLM U199 ( .A0N(n452), .A1N(\C7/DATA15_6 ), .B0(n451), .Y(n453) );
  AOI211XLM U200 ( .A0(\intadd_0/SUM[2] ), .A1(n450), .B0(n449), .C0(n448), 
        .Y(n451) );
  NOR2XLM U201 ( .A(n225), .B(n398), .Y(n440) );
  AOI21XLM U202 ( .A0(n347), .A1(n346), .B0(n344), .Y(n345) );
  NOR4XLM U203 ( .A(n340), .B(n427), .C(n408), .D(n20), .Y(n347) );
  AOI21XLM U204 ( .A0(n420), .A1(n419), .B0(n422), .Y(n421) );
  AOI211XLM U205 ( .A0(\C7/DATA15_1 ), .A1(n452), .B0(n418), .C0(n417), .Y(
        n419) );
  NAND2XLM U206 ( .A(n378), .B(n377), .Y(n420) );
  CLKINVX1M U207 ( .A(n113), .Y(n175) );
  OAI32XLM U208 ( .A0(n422), .A1(n112), .A2(n111), .B0(ALU_OUT[2]), .B1(Enable), .Y(n113) );
  OAI22XLM U209 ( .A0(n100), .A1(n436), .B0(\intadd_0/A[0] ), .B1(n437), .Y(
        n112) );
  OAI211XLM U210 ( .A0(n110), .A1(n446), .B0(n109), .C0(n108), .Y(n111) );
  AOI32XLM U211 ( .A0(n376), .A1(Enable), .A2(n375), .B0(n374), .B1(n422), .Y(
        n176) );
  AOI211XLM U212 ( .A0(A[2]), .A1(n440), .B0(n363), .C0(n362), .Y(n376) );
  OAI21XLM U213 ( .A0(n274), .A1(n422), .B0(n273), .Y(n177) );
  AOI211XLM U214 ( .A0(\C7/DATA15_4 ), .A1(n452), .B0(n272), .C0(n271), .Y(
        n274) );
  AOI21XLM U215 ( .A0(\intadd_0/SUM[0] ), .A1(n262), .B0(n261), .Y(n272) );
  OAI21XLM U216 ( .A0(n297), .A1(n422), .B0(n296), .Y(n178) );
  AOI21XLM U217 ( .A0(\C7/DATA15_5 ), .A1(n452), .B0(n295), .Y(n297) );
  NAND3BXLM U218 ( .AN(n294), .B(n293), .C(n292), .Y(n295) );
  OAI21XLM U219 ( .A0(n347), .A1(n346), .B0(n345), .Y(n349) );
  CLKINVX1M U220 ( .A(n458), .Y(OUT_VALID) );
  AO21XLM U221 ( .A0(n145), .A1(n3), .B0(n6), .Y(n8) );
  OAI2BB1XLM U222 ( .A0N(B[0]), .A1N(n89), .B0(A[3]), .Y(n76) );
  XNOR2XLM U223 ( .A(n79), .B(B[1]), .Y(n80) );
  XNOR2XLM U224 ( .A(n132), .B(B[3]), .Y(n133) );
  CLKINVX1M U225 ( .A(n149), .Y(n168) );
  XOR2XLM U226 ( .A(n150), .B(n168), .Y(n151) );
  CLKINVX1M U227 ( .A(n387), .Y(n232) );
  XOR2XLM U228 ( .A(n135), .B(n134), .Y(n189) );
  NOR2XLM U229 ( .A(n156), .B(n427), .Y(n128) );
  OAI2B11XLM U230 ( .A1N(n388), .A0(n393), .B0(n233), .C0(n232), .Y(n234) );
  OAI21XLM U231 ( .A0(n129), .A1(n128), .B0(n127), .Y(n149) );
  CLKINVX1M U232 ( .A(n143), .Y(n144) );
  NAND2XLM U233 ( .A(n1), .B(n4), .Y(n142) );
  CLKINVX1M U234 ( .A(n49), .Y(n33) );
  CLKINVX1M U235 ( .A(n395), .Y(n236) );
  AOI211XLM U236 ( .A0(n390), .A1(n389), .B0(n388), .C0(n387), .Y(n392) );
  NAND2XLM U237 ( .A(n17), .B(n447), .Y(n28) );
  XNOR2XLM U238 ( .A(n326), .B(n325), .Y(n328) );
  OAI211XLM U239 ( .A0(n410), .A1(A[1]), .B0(n436), .C0(n409), .Y(n411) );
  AOI21XLM U240 ( .A0(B[3]), .A1(n253), .B0(n259), .Y(n255) );
  NOR2XLM U241 ( .A(B[5]), .B(n340), .Y(n393) );
  NAND3XLM U242 ( .A(n240), .B(n239), .C(n238), .Y(n405) );
  OAI21XLM U243 ( .A0(n434), .A1(n317), .B0(n436), .Y(n291) );
  OAI21XLM U244 ( .A0(n340), .A1(n338), .B0(n339), .Y(n337) );
  OAI211XLM U245 ( .A0(n416), .A1(n415), .B0(n414), .C0(n413), .Y(n417) );
  OAI22XLM U246 ( .A0(n360), .A1(n446), .B0(n359), .B1(n358), .Y(n361) );
  OAI211XLM U247 ( .A0(n359), .A1(n278), .B0(n277), .C0(n276), .Y(n294) );
  CLKINVX1M U248 ( .A(B[0]), .Y(n408) );
  OAI22XLM U249 ( .A0(A[7]), .A1(n305), .B0(n304), .B1(n303), .Y(n306) );
  AOI211XLM U250 ( .A0(n373), .A1(n372), .B0(n371), .C0(n370), .Y(n375) );
  AOI32XLM U251 ( .A0(n350), .A1(Enable), .A2(n349), .B0(n348), .B1(n422), .Y(
        n180) );
  NAND2XLM U252 ( .A(ALU_FUN[1]), .B(ALU_FUN[3]), .Y(n398) );
  CLKINVX1M U253 ( .A(n398), .Y(n220) );
  AOI32XLM U254 ( .A0(n10), .A1(Enable), .A2(n220), .B0(n458), .B1(n422), .Y(
        n9) );
  CLKINVX1M U255 ( .A(n9), .Y(n457) );
  NOR2XLM U256 ( .A(n315), .B(n338), .Y(\intadd_0/A[0] ) );
  NOR2XLM U257 ( .A(A[2]), .B(B[2]), .Y(n100) );
  CLKINVX1M U258 ( .A(n107), .Y(n11) );
  INVX2M U259 ( .A(B[4]), .Y(n379) );
  OR2X1M U260 ( .A(n13), .B(n298), .Y(n14) );
  CLKINVX1M U261 ( .A(n14), .Y(n17) );
  CLKINVX1M U262 ( .A(A[6]), .Y(n20) );
  NAND2XLM U263 ( .A(n19), .B(n18), .Y(n27) );
  AOI2BB1X2M U264 ( .A0N(n447), .A1N(n408), .B0(n20), .Y(n36) );
  OAI21X2M U265 ( .A0(n36), .A1(n427), .B0(n22), .Y(n26) );
  CLKINVX1M U266 ( .A(n23), .Y(n24) );
  OAI2BB1X2M U267 ( .A0N(n28), .A1N(n26), .B0(n24), .Y(n25) );
  NAND2XLM U268 ( .A(n275), .B(B[0]), .Y(n29) );
  OAI2BB1X2M U269 ( .A0N(B[3]), .A1N(n40), .B0(n44), .Y(n43) );
  CLKINVX1M U270 ( .A(n40), .Y(n41) );
  AO21X2M U271 ( .A0(n43), .A1(n42), .B0(n62), .Y(n270) );
  CLKINVX1M U272 ( .A(n90), .Y(n45) );
  OAI21X2M U273 ( .A0(n270), .A1(n49), .B0(n47), .Y(n81) );
  OAI21X2M U274 ( .A0(n81), .A1(n427), .B0(n48), .Y(n73) );
  CLKINVX1M U275 ( .A(n51), .Y(n52) );
  OAI2BB1X2M U276 ( .A0N(B[2]), .A1N(n73), .B0(n71), .Y(n54) );
  OAI21X2M U277 ( .A0(B[2]), .A1(n73), .B0(n54), .Y(n67) );
  OAI2BB1X2M U278 ( .A0N(n88), .A1N(n65), .B0(n63), .Y(n64) );
  OAI21X2M U279 ( .A0(n66), .A1(n65), .B0(n64), .Y(n89) );
  NAND2XLM U280 ( .A(n89), .B(n68), .Y(n70) );
  XOR2XLM U281 ( .A(n71), .B(B[2]), .Y(n72) );
  OAI21X2M U282 ( .A0(B[1]), .A1(n125), .B0(n78), .Y(n118) );
  NAND2XLM U283 ( .A(n89), .B(n80), .Y(n82) );
  NAND2XLM U284 ( .A(n120), .B(B[2]), .Y(n84) );
  AO22X4M U285 ( .A0(n118), .A1(n84), .B0(n338), .B1(n83), .Y(n132) );
  OAI21X2M U286 ( .A0(n85), .A1(n308), .B0(n132), .Y(n86) );
  OAI21X2M U287 ( .A0(B[3]), .A1(n134), .B0(n86), .Y(n136) );
  OAI2BB2X4M U288 ( .B0(B[4]), .B1(n138), .A0N(n87), .A1N(n136), .Y(n91) );
  CLKINVX1M U289 ( .A(n124), .Y(n110) );
  CLKINVX1M U290 ( .A(n377), .Y(n446) );
  OR2X1M U291 ( .A(ALU_FUN[2]), .B(ALU_FUN[0]), .Y(n101) );
  CLKINVX1M U292 ( .A(n101), .Y(n96) );
  CLKINVX1M U293 ( .A(n99), .Y(n95) );
  NAND2XLM U294 ( .A(A[1]), .B(B[1]), .Y(n404) );
  CLKINVX1M U295 ( .A(A[0]), .Y(n381) );
  NOR3XLM U296 ( .A(n338), .B(n404), .C(n381), .Y(n253) );
  AOI221XLM U297 ( .A0(n338), .A1(n404), .B0(n381), .B1(n404), .C0(n253), .Y(
        n258) );
  NAND2XLM U298 ( .A(B[1]), .B(A[0]), .Y(n401) );
  NOR3XLM U299 ( .A(n408), .B(n415), .C(n401), .Y(n257) );
  NOR2XLM U300 ( .A(n315), .B(n408), .Y(n256) );
  CLKINVX1M U301 ( .A(n440), .Y(n278) );
  NOR2XLM U302 ( .A(n107), .B(n225), .Y(n97) );
  CLKINVX1M U303 ( .A(n434), .Y(n372) );
  AOI22XLM U304 ( .A0(n372), .A1(\intadd_0/A[0] ), .B0(n100), .B1(n356), .Y(
        n104) );
  NAND2XLM U305 ( .A(B[2]), .B(n315), .Y(n385) );
  OAI21XLM U306 ( .A0(B[2]), .A1(n315), .B0(n385), .Y(n216) );
  AOI22XLM U307 ( .A0(n442), .A1(n216), .B0(n443), .B1(A[3]), .Y(n103) );
  CLKINVX1M U308 ( .A(n122), .Y(n115) );
  NAND2XLM U309 ( .A(n415), .B(B[0]), .Y(n156) );
  CLKINVX1M U310 ( .A(n128), .Y(n116) );
  NAND2XLM U311 ( .A(n116), .B(n127), .Y(n117) );
  XOR2XLM U312 ( .A(n118), .B(n338), .Y(n119) );
  NAND2XLM U313 ( .A(n124), .B(n119), .Y(n121) );
  NAND2XLM U314 ( .A(n124), .B(n123), .Y(n126) );
  XOR2XLM U315 ( .A(n136), .B(n379), .Y(n137) );
  NOR2XLM U316 ( .A(n223), .B(n427), .Y(n158) );
  NOR2XLM U317 ( .A(A[5]), .B(n317), .Y(n387) );
  NOR2XLM U318 ( .A(A[4]), .B(n379), .Y(n388) );
  CLKINVX1M U319 ( .A(A[5]), .Y(n340) );
  AOI21XLM U320 ( .A0(A[4]), .A1(n379), .B0(n393), .Y(n230) );
  NOR2XLM U321 ( .A(ALU_FUN[0]), .B(ALU_FUN[2]), .Y(n214) );
  NAND2XLM U322 ( .A(B[3]), .B(n429), .Y(n386) );
  CLKINVX1M U323 ( .A(n386), .Y(n228) );
  NOR2XLM U324 ( .A(B[3]), .B(n429), .Y(n383) );
  NOR2XLM U325 ( .A(n228), .B(n383), .Y(n357) );
  NAND2XLM U326 ( .A(A[0]), .B(n408), .Y(n213) );
  NAND4XLM U327 ( .A(n230), .B(n214), .C(n357), .D(n213), .Y(n215) );
  NOR4XLM U328 ( .A(n387), .B(n388), .C(n216), .D(n215), .Y(n221) );
  AOI22XLM U329 ( .A0(B[1]), .A1(n415), .B0(B[0]), .B1(n381), .Y(n227) );
  NOR2XLM U330 ( .A(B[6]), .B(n20), .Y(n391) );
  CLKINVX1M U331 ( .A(n391), .Y(n438) );
  NAND2XLM U332 ( .A(B[6]), .B(n20), .Y(n439) );
  NAND2XLM U333 ( .A(A[7]), .B(n303), .Y(n394) );
  NAND2XLM U334 ( .A(A[1]), .B(n427), .Y(n217) );
  NAND4XLM U335 ( .A(n438), .B(n439), .C(n394), .D(n217), .Y(n218) );
  NOR2XLM U336 ( .A(n395), .B(n218), .Y(n219) );
  NAND4XLM U337 ( .A(n221), .B(n220), .C(n227), .D(n219), .Y(n243) );
  AOI22XLM U338 ( .A0(n302), .A1(B[0]), .B0(A[1]), .B1(n443), .Y(n242) );
  OAI2BB1XLM U339 ( .A0N(B[0]), .A1N(A[0]), .B0(n402), .Y(n222) );
  OAI21XLM U340 ( .A0(n410), .A1(n223), .B0(n222), .Y(n224) );
  AOI31XLM U341 ( .A0(n408), .A1(n381), .A2(n356), .B0(n224), .Y(n241) );
  CLKINVX1M U342 ( .A(n225), .Y(n240) );
  CLKINVX1M U343 ( .A(n226), .Y(n239) );
  CLKINVX1M U344 ( .A(n383), .Y(n231) );
  AOI22XLM U345 ( .A0(A[2]), .A1(n338), .B0(A[1]), .B1(n427), .Y(n380) );
  OAI2B2XLM U346 ( .A1N(n380), .A0(n227), .B0(A[2]), .B1(n338), .Y(n229) );
  AOI32XLM U347 ( .A0(n231), .A1(n230), .A2(n229), .B0(n228), .B1(n230), .Y(
        n233) );
  OAI2BB1XLM U348 ( .A0N(n438), .A1N(n234), .B0(n439), .Y(n235) );
  NAND2XLM U349 ( .A(n235), .B(n394), .Y(n237) );
  NAND2XLM U350 ( .A(n237), .B(n236), .Y(n238) );
  NAND2XLM U351 ( .A(n434), .B(n344), .Y(n244) );
  MXI2XLM U352 ( .A(n442), .B(n244), .S0(B[0]), .Y(n245) );
  XOR2XLM U353 ( .A(\DP_OP_29J1_123_2578/n43 ), .B(B[0]), .Y(
        \DP_OP_29J1_123_2578/n29 ) );
  NAND2XLM U354 ( .A(B[0]), .B(A[3]), .Y(n252) );
  AOI221XLM U355 ( .A0(n315), .A1(n252), .B0(n427), .B1(n252), .C0(n283), .Y(
        n368) );
  AOI21XLM U356 ( .A0(A[0]), .A1(B[3]), .B0(n253), .Y(n259) );
  OAI21XLM U357 ( .A0(n415), .A1(n338), .B0(n255), .Y(n254) );
  OAI31XLM U358 ( .A0(n415), .A1(n255), .A2(n338), .B0(n254), .Y(n365) );
  ADDFX1M U359 ( .A(n258), .B(n257), .CI(n256), .CO(n364), .S(n106) );
  AOI222XLM U360 ( .A0(n368), .A1(n365), .B0(n368), .B1(n364), .C0(n365), .C1(
        n364), .Y(n280) );
  NOR3XLM U361 ( .A(n259), .B(n338), .C(n415), .Y(n284) );
  NOR2XLM U362 ( .A(n415), .B(n308), .Y(n282) );
  CLKINVX1M U363 ( .A(n281), .Y(n260) );
  AOI2BB2XLM U364 ( .B0(n280), .B1(n260), .A0N(n260), .A1N(n280), .Y(n262) );
  OAI21XLM U365 ( .A0(\intadd_0/SUM[0] ), .A1(n262), .B0(n450), .Y(n261) );
  MXI2XLM U366 ( .A(n437), .B(n436), .S0(B[4]), .Y(n264) );
  AO22XLM U367 ( .A0(n440), .A1(A[3]), .B0(n443), .B1(A[5]), .Y(n263) );
  CLKINVX1M U368 ( .A(n356), .Y(n435) );
  OAI21XLM U369 ( .A0(n435), .A1(B[4]), .B0(n437), .Y(n267) );
  AOI22XLM U370 ( .A0(B[4]), .A1(n434), .B0(n410), .B1(n379), .Y(n265) );
  OR3X1M U371 ( .A(n302), .B(n359), .C(n265), .Y(n266) );
  OAI21XLM U372 ( .A0(n267), .A1(A[4]), .B0(n266), .Y(n268) );
  OAI211XLM U373 ( .A0(n270), .A1(n446), .B0(n269), .C0(n268), .Y(n271) );
  NAND2XLM U374 ( .A(n422), .B(ALU_OUT[4]), .Y(n273) );
  AOI22XLM U375 ( .A0(n275), .A1(n377), .B0(n443), .B1(A[6]), .Y(n277) );
  OAI21XLM U376 ( .A0(n393), .A1(n387), .B0(n442), .Y(n276) );
  OAI21XLM U377 ( .A0(B[5]), .A1(n435), .B0(n437), .Y(n290) );
  NOR2XLM U378 ( .A(n281), .B(\intadd_0/SUM[0] ), .Y(n279) );
  AOI2BB2XLM U379 ( .B0(n281), .B1(\intadd_0/SUM[0] ), .A0N(n280), .A1N(n279), 
        .Y(n285) );
  ADDFX1M U380 ( .A(n284), .B(n283), .CI(n282), .CO(n286), .S(n281) );
  NOR2XLM U381 ( .A(n432), .B(n430), .Y(n288) );
  OAI21XLM U382 ( .A0(n288), .A1(\intadd_0/SUM[1] ), .B0(n450), .Y(n287) );
  AOI21XLM U383 ( .A0(n288), .A1(\intadd_0/SUM[1] ), .B0(n287), .Y(n289) );
  AOI221XLM U384 ( .A0(A[5]), .A1(n291), .B0(n340), .B1(n290), .C0(n289), .Y(
        n293) );
  MXI2XLM U385 ( .A(n302), .B(n402), .S0(n317), .Y(n292) );
  NAND2XLM U386 ( .A(n422), .B(ALU_OUT[5]), .Y(n296) );
  AOI22XLM U387 ( .A0(n402), .A1(n303), .B0(n377), .B1(n298), .Y(n300) );
  AOI2BB2XLM U388 ( .B0(n302), .B1(A[7]), .A0N(n410), .A1N(n394), .Y(n299) );
  AOI221XLM U389 ( .A0(n442), .A1(B[7]), .B0(n356), .B1(n303), .C0(n402), .Y(
        n305) );
  AOI21XLM U390 ( .A0(A[7]), .A1(n372), .B0(n302), .Y(n304) );
  AOI211XLM U391 ( .A0(A[6]), .A1(n440), .B0(n307), .C0(n306), .Y(n350) );
  NOR2XLM U392 ( .A(n429), .B(n308), .Y(n373) );
  NOR2XLM U393 ( .A(n317), .B(n415), .Y(n321) );
  NOR2XLM U394 ( .A(n315), .B(n308), .Y(n355) );
  NOR2XLM U395 ( .A(n415), .B(n379), .Y(n354) );
  NOR2XLM U396 ( .A(n315), .B(n379), .Y(n323) );
  NAND2XLM U397 ( .A(B[1]), .B(A[4]), .Y(n309) );
  AOI221XLM U398 ( .A0(n408), .A1(n309), .B0(n340), .B1(n309), .C0(n320), .Y(
        n353) );
  NOR2XLM U399 ( .A(n429), .B(n338), .Y(n352) );
  NOR2XLM U400 ( .A(n317), .B(n381), .Y(n351) );
  NAND2XLM U401 ( .A(B[0]), .B(A[6]), .Y(n310) );
  AOI221XLM U402 ( .A0(n427), .A1(n310), .B0(n340), .B1(n310), .C0(n347), .Y(
        n313) );
  NOR2XLM U403 ( .A(n338), .B(n359), .Y(n312) );
  NOR2XLM U404 ( .A(n381), .B(n433), .Y(n311) );
  ADDFX1M U405 ( .A(n313), .B(n312), .CI(n311), .CO(n316), .S(n423) );
  OAI21XLM U406 ( .A0(n317), .A1(n315), .B0(n316), .Y(n314) );
  XOR3XLM U407 ( .A(n319), .B(\intadd_0/n1 ), .C(n318), .Y(n343) );
  ADDFX1M U408 ( .A(n373), .B(n321), .CI(n320), .CO(n326), .S(n425) );
  ADDFX1M U409 ( .A(n324), .B(n323), .CI(n322), .CO(n325), .S(n424) );
  AOI21XLM U410 ( .A0(B[0]), .A1(A[7]), .B0(n330), .Y(n329) );
  AOI31XLM U411 ( .A0(B[0]), .A1(n330), .A2(A[7]), .B0(n329), .Y(n332) );
  AOI21XLM U412 ( .A0(A[1]), .A1(B[6]), .B0(n332), .Y(n331) );
  AOI31XLM U413 ( .A0(A[1]), .A1(n332), .A2(B[6]), .B0(n331), .Y(n342) );
  NAND2XLM U414 ( .A(B[7]), .B(A[0]), .Y(n334) );
  OAI21XLM U415 ( .A0(n379), .A1(n429), .B0(n334), .Y(n333) );
  OAI31XLM U416 ( .A0(n379), .A1(n334), .A2(n429), .B0(n333), .Y(n336) );
  AOI21XLM U417 ( .A0(B[3]), .A1(A[4]), .B0(n336), .Y(n335) );
  AOI31XLM U418 ( .A0(B[3]), .A1(n336), .A2(A[4]), .B0(n335), .Y(n339) );
  OAI31XLM U419 ( .A0(n340), .A1(n339), .A2(n338), .B0(n337), .Y(n341) );
  XOR3XLM U420 ( .A(n343), .B(n342), .C(n341), .Y(n346) );
  CLKINVX1M U421 ( .A(ALU_OUT[7]), .Y(n348) );
  NOR2XLM U422 ( .A(n381), .B(n379), .Y(\intadd_0/CI ) );
  ADDFX1M U423 ( .A(n353), .B(n352), .CI(n351), .CO(n322), .S(\intadd_0/B[1] )
         );
  ADDFX1M U424 ( .A(n426), .B(n355), .CI(n354), .CO(n324), .S(\intadd_0/A[1] )
         );
  NOR2XLM U425 ( .A(A[3]), .B(B[3]), .Y(n369) );
  CLKINVX1M U426 ( .A(n443), .Y(n358) );
  AO21XLM U427 ( .A0(n452), .A1(\C7/DATA15_3 ), .B0(n361), .Y(n362) );
  AOI2BB2XLM U428 ( .B0(n365), .B1(n364), .A0N(n364), .A1N(n365), .Y(n367) );
  OAI21XLM U429 ( .A0(n368), .A1(n367), .B0(n450), .Y(n366) );
  AOI21XLM U430 ( .A0(n368), .A1(n367), .B0(n366), .Y(n371) );
  OAI22XLM U431 ( .A0(n369), .A1(n436), .B0(n373), .B1(n437), .Y(n370) );
  CLKINVX1M U432 ( .A(ALU_OUT[3]), .Y(n374) );
  XOR2XLM U433 ( .A(\DP_OP_29J1_123_2578/n43 ), .B(B[4]), .Y(
        \DP_OP_29J1_123_2578/n25 ) );
  XOR2XLM U434 ( .A(\DP_OP_29J1_123_2578/n43 ), .B(B[7]), .Y(
        \DP_OP_29J1_123_2578/n22 ) );
  XOR2XLM U435 ( .A(\DP_OP_29J1_123_2578/n43 ), .B(B[6]), .Y(
        \DP_OP_29J1_123_2578/n23 ) );
  XOR2XLM U436 ( .A(\DP_OP_29J1_123_2578/n43 ), .B(B[5]), .Y(
        \DP_OP_29J1_123_2578/n24 ) );
  XOR2XLM U437 ( .A(\DP_OP_29J1_123_2578/n43 ), .B(B[3]), .Y(
        \DP_OP_29J1_123_2578/n26 ) );
  XOR2XLM U438 ( .A(\DP_OP_29J1_123_2578/n43 ), .B(B[2]), .Y(
        \DP_OP_29J1_123_2578/n27 ) );
  XOR2XLM U439 ( .A(\DP_OP_29J1_123_2578/n43 ), .B(B[1]), .Y(
        \DP_OP_29J1_123_2578/n28 ) );
  NAND2XLM U440 ( .A(A[4]), .B(n379), .Y(n390) );
  NOR2XLM U441 ( .A(A[1]), .B(n427), .Y(n382) );
  OAI31XLM U442 ( .A0(B[0]), .A1(n382), .A2(n381), .B0(n380), .Y(n384) );
  AOI31XLM U443 ( .A0(n386), .A1(n385), .A2(n384), .B0(n383), .Y(n389) );
  AOI221XLM U444 ( .A0(n393), .A1(n439), .B0(n392), .B1(n439), .C0(n391), .Y(
        n396) );
  OAI21XLM U445 ( .A0(n396), .A1(n395), .B0(n394), .Y(n399) );
  OAI21XLM U446 ( .A0(n410), .A1(B[1]), .B0(n436), .Y(n400) );
  AOI31XLM U447 ( .A0(n450), .A1(B[0]), .A2(n401), .B0(n400), .Y(n416) );
  AOI22XLM U448 ( .A0(n402), .A1(n404), .B0(n443), .B1(A[2]), .Y(n403) );
  OAI21XLM U449 ( .A0(n434), .A1(n404), .B0(n403), .Y(n407) );
  CLKINVX1M U450 ( .A(n405), .Y(n406) );
  AOI211XLM U451 ( .A0(A[0]), .A1(n440), .B0(n407), .C0(n406), .Y(n414) );
  NOR2XLM U452 ( .A(n435), .B(A[1]), .Y(n412) );
  OAI211XLM U453 ( .A0(n415), .A1(n408), .B0(n450), .C0(A[0]), .Y(n409) );
  MXI2XLM U454 ( .A(n412), .B(n411), .S0(B[1]), .Y(n413) );
  AO21XLM U455 ( .A0(ALU_OUT[1]), .A1(n422), .B0(n421), .Y(n174) );
  ADDFX1M U456 ( .A(n425), .B(n424), .CI(n423), .CO(n319), .S(\intadd_0/A[2] )
         );
  NAND2XLM U457 ( .A(B[0]), .B(A[4]), .Y(n428) );
  AOI221XLM U458 ( .A0(n429), .A1(n428), .B0(n427), .B1(n428), .C0(n426), .Y(
        \intadd_0/B[0] ) );
  CLKINVX1M U459 ( .A(\intadd_0/SUM[1] ), .Y(n431) );
  OAI21XLM U460 ( .A0(n434), .A1(n433), .B0(n436), .Y(n455) );
  OAI21XLM U461 ( .A0(n435), .A1(B[6]), .B0(n437), .Y(n454) );
  MXI2XLM U462 ( .A(n437), .B(n436), .S0(B[6]), .Y(n449) );
  NAND2XLM U463 ( .A(n439), .B(n438), .Y(n441) );
  AOI22XLM U464 ( .A0(n442), .A1(n441), .B0(n440), .B1(A[5]), .Y(n445) );
  NAND2XLM U465 ( .A(n443), .B(A[7]), .Y(n444) );
  OAI211XLM U466 ( .A0(n447), .A1(n446), .B0(n445), .C0(n444), .Y(n448) );
  AOI221XLM U467 ( .A0(A[6]), .A1(n455), .B0(n20), .B1(n454), .C0(n453), .Y(
        n456) );
  AOI2BB2XLM U468 ( .B0(Enable), .B1(n456), .A0N(ALU_OUT[6]), .A1N(Enable), 
        .Y(n179) );
endmodule


module UART_TX ( CLK, RST_n, P_DATA, PAR_EN, PAR_TYP, DATA_VALID, TX_OUT, Busy
 );
  input [7:0] P_DATA;
  input CLK, RST_n, PAR_EN, PAR_TYP, DATA_VALID;
  output TX_OUT, Busy;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n11, n12, n13, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n10;
  wire   [2:0] current_state;
  wire   [2:0] Counter;
  wire   [2:0] next_state;

  DFFRQX1M \Counter_reg[0]  ( .D(n37), .CK(CLK), .RN(RST_n), .Q(Counter[0]) );
  DFFRQX1M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(RST_n), 
        .Q(current_state[2]) );
  DFFRQX1M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(RST_n), 
        .Q(current_state[1]) );
  DFFRQX1M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(RST_n), 
        .Q(current_state[0]) );
  DFFRQX1M \Counter_reg[1]  ( .D(n35), .CK(CLK), .RN(RST_n), .Q(Counter[1]) );
  DFFRQX1M \Counter_reg[2]  ( .D(n36), .CK(CLK), .RN(RST_n), .Q(Counter[2]) );
  AOI221XLM U18 ( .A0(n25), .A1(n2), .B0(n26), .B1(n2), .C0(n11), .Y(n3) );
  AO21XLM U20 ( .A0(n11), .A1(Counter[0]), .B0(n5), .Y(n37) );
  AOI31XLM U28 ( .A0(current_state[0]), .A1(current_state[2]), .A2(
        current_state[1]), .B0(n11), .Y(n13) );
  XOR3XLM U31 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n15), .Y(n16) );
  XOR3XLM U32 ( .A(P_DATA[7]), .B(P_DATA[6]), .C(n16), .Y(n21) );
  AOI2BB2XLM U34 ( .B0(P_DATA[0]), .B1(n17), .A0N(n17), .A1N(P_DATA[0]), .Y(
        n20) );
  AOI33XLM U37 ( .A0(Counter[0]), .A1(P_DATA[1]), .A2(n26), .B0(Counter[1]), 
        .B1(P_DATA[2]), .B2(n25), .Y(n30) );
  AOI33XLM U38 ( .A0(Counter[0]), .A1(P_DATA[3]), .A2(Counter[1]), .B0(n26), 
        .B1(P_DATA[0]), .B2(n25), .Y(n28) );
  AOI33XLM U39 ( .A0(Counter[0]), .A1(P_DATA[5]), .A2(n26), .B0(Counter[1]), 
        .B1(P_DATA[6]), .B2(n25), .Y(n22) );
  OAI21XLM U43 ( .A0(current_state[0]), .A1(n31), .B0(current_state[1]), .Y(
        n32) );
  OAI211XLM U24 ( .A0(current_state[0]), .A1(n11), .B0(n33), .C0(n6), .Y(n7)
         );
  OAI211X8M U44 ( .A0(n34), .A1(n33), .B0(n32), .C0(Busy), .Y(TX_OUT) );
  NOR2XLM U6 ( .A(DATA_VALID), .B(Busy), .Y(n11) );
  OAI32XLM U19 ( .A0(Counter[2]), .A1(n26), .A2(n4), .B0(n3), .B1(n29), .Y(n36) );
  AOI22XLM U17 ( .A0(Counter[1]), .A1(n1), .B0(n4), .B1(n26), .Y(n35) );
  CLKINVX1M U33 ( .A(P_DATA[1]), .Y(n17) );
  OAI21XLM U35 ( .A0(n21), .A1(n20), .B0(n18), .Y(n19) );
  OAI2B11XLM U26 ( .A1N(n9), .A0(n8), .B0(n7), .C0(n12), .Y(next_state[1]) );
  AO21XLM U23 ( .A0(n9), .A1(n8), .B0(n11), .Y(next_state[2]) );
  OAI2B1XLM U3 ( .A1N(P_DATA[7]), .A0(n23), .B0(n22), .Y(n24) );
  AOI31XLM U4 ( .A0(P_DATA[4]), .A1(n26), .A2(n25), .B0(n24), .Y(n27) );
  CLKINVX1M U5 ( .A(n9), .Y(n10) );
  AOI32XLM U7 ( .A0(n30), .A1(n29), .A2(n28), .B0(Counter[2]), .B1(n27), .Y(
        n31) );
  NOR2XLM U8 ( .A(n11), .B(n5), .Y(n1) );
  AOI21XLM U9 ( .A0(n21), .A1(n20), .B0(n19), .Y(n34) );
  CLKINVX1M U10 ( .A(current_state[1]), .Y(n6) );
  NOR3XLM U11 ( .A(current_state[2]), .B(current_state[0]), .C(n6), .Y(n9) );
  NOR2XLM U12 ( .A(Counter[0]), .B(n10), .Y(n5) );
  CLKINVX1M U13 ( .A(Counter[2]), .Y(n29) );
  NAND2XLM U14 ( .A(Counter[0]), .B(Counter[1]), .Y(n23) );
  NOR2XLM U15 ( .A(n29), .B(n23), .Y(n8) );
  NOR2XLM U16 ( .A(n8), .B(n10), .Y(n2) );
  NAND2XLM U21 ( .A(Counter[0]), .B(n2), .Y(n4) );
  CLKINVX1M U22 ( .A(Counter[1]), .Y(n26) );
  CLKINVX1M U25 ( .A(current_state[2]), .Y(n33) );
  NOR2XLM U27 ( .A(current_state[1]), .B(current_state[0]), .Y(n18) );
  NAND2XLM U29 ( .A(n18), .B(n33), .Y(Busy) );
  NAND2XLM U30 ( .A(current_state[2]), .B(n18), .Y(n12) );
  CLKINVX1M U36 ( .A(Counter[0]), .Y(n25) );
  NAND2XLM U40 ( .A(n13), .B(n12), .Y(next_state[0]) );
  XOR2XLM U41 ( .A(P_DATA[2]), .B(P_DATA[3]), .Y(n15) );
endmodule


module data_sampling_10 ( CLK, RST_n, RX_IN, Prescale, data_samp_en, edge_cnt, 
        sampled_bit );
  input [5:0] Prescale;
  input [3:0] edge_cnt;
  input CLK, RST_n, RX_IN, data_samp_en;
  output sampled_bit;
  wire   first_value, second_value, third_value, out_next_1, out_next_2,
         out_next_3, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;

  DFFRQX1M out_next_2_reg ( .D(second_value), .CK(CLK), .RN(RST_n), .Q(
        out_next_2) );
  DFFRQX1M out_next_3_reg ( .D(third_value), .CK(CLK), .RN(RST_n), .Q(
        out_next_3) );
  NAND4BXLM U4 ( .AN(edge_cnt[3]), .B(edge_cnt[0]), .C(edge_cnt[1]), .D(
        edge_cnt[2]), .Y(n2) );
  OAI21XLM U6 ( .A0(n9), .A1(n2), .B0(n1), .Y(first_value) );
  NOR3BXLM U7 ( .AN(edge_cnt[3]), .B(edge_cnt[1]), .C(edge_cnt[2]), .Y(n5) );
  OAI21XLM U11 ( .A0(n9), .A1(n4), .B0(n3), .Y(third_value) );
  NAND2BXLM U12 ( .AN(edge_cnt[0]), .B(n5), .Y(n8) );
  OAI21XLM U13 ( .A0(n6), .A1(n8), .B0(out_next_2), .Y(n7) );
  OAI2BB1XLM U16 ( .A0N(first_value), .A1N(third_value), .B0(n10), .Y(
        sampled_bit) );
  OAI2B1XLM U5 ( .A1N(data_samp_en), .A0(n2), .B0(out_next_1), .Y(n1) );
  NAND2XLM U8 ( .A(edge_cnt[0]), .B(n5), .Y(n4) );
  OAI21XLM U10 ( .A0(n6), .A1(n4), .B0(out_next_3), .Y(n3) );
  OAI21XLM U15 ( .A0(first_value), .A1(third_value), .B0(second_value), .Y(n10) );
  NAND2XLM U9 ( .A(data_samp_en), .B(n2), .Y(n6) );
  NAND2XLM U3 ( .A(data_samp_en), .B(RX_IN), .Y(n9) );
  DFFSRHQX1M out_next_1_reg ( .D(first_value), .CK(CLK), .SN(1'b1), .RN(RST_n), 
        .Q(out_next_1) );
  OAI21XLM U14 ( .A0(n9), .A1(n8), .B0(n7), .Y(second_value) );
endmodule


module edge_bit_counter_10 ( CLK, RST_n, parity_en, enable, bit_cnt, edge_cnt
 );
  output [3:0] bit_cnt;
  output [3:0] edge_cnt;
  input CLK, RST_n, parity_en, enable;
  wire   N16, N17, N18, N19, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n1, n2, n3, n34;
  wire   [3:0] Bit_Counter;
  wire   [4:0] Edge_Counter;

  DFFRQX1M \Bit_Counter_reg[0]  ( .D(n33), .CK(CLK), .RN(RST_n), .Q(
        Bit_Counter[0]) );
  DFFRQX1M \Edge_Counter_reg[0]  ( .D(n29), .CK(CLK), .RN(RST_n), .Q(
        Edge_Counter[0]) );
  DFFRQX1M \Edge_Counter_reg[1]  ( .D(n28), .CK(CLK), .RN(RST_n), .Q(
        Edge_Counter[1]) );
  DFFRQX1M \Edge_Counter_reg[2]  ( .D(n27), .CK(CLK), .RN(RST_n), .Q(
        Edge_Counter[2]) );
  DFFRQX1M \Edge_Counter_reg[3]  ( .D(n26), .CK(CLK), .RN(RST_n), .Q(
        Edge_Counter[3]) );
  DFFRQX1M \Edge_Counter_reg[4]  ( .D(n25), .CK(CLK), .RN(RST_n), .Q(
        Edge_Counter[4]) );
  DFFRQX1M \Bit_Counter_reg[1]  ( .D(n31), .CK(CLK), .RN(RST_n), .Q(
        Bit_Counter[1]) );
  DFFRQX1M \Bit_Counter_reg[2]  ( .D(n30), .CK(CLK), .RN(RST_n), .Q(
        Bit_Counter[2]) );
  DFFRQX1M \Bit_Counter_reg[3]  ( .D(n32), .CK(CLK), .RN(RST_n), .Q(
        Bit_Counter[3]) );
  OAI2BB2XLM U11 ( .B0(n20), .B1(n5), .A0N(n4), .A1N(N18), .Y(n26) );
  OAI2BB2XLM U13 ( .B0(n5), .B1(n21), .A0N(n4), .A1N(N17), .Y(n27) );
  OAI2BB2XLM U15 ( .B0(n5), .B1(n22), .A0N(n4), .A1N(N16), .Y(n28) );
  AOI22XLM U18 ( .A0(Edge_Counter[0]), .A1(n5), .B0(n15), .B1(n24), .Y(n29) );
  NOR2XLM U42 ( .A(n22), .B(n23), .Y(edge_cnt[1]) );
  NOR2XLM U40 ( .A(n20), .B(n23), .Y(edge_cnt[3]) );
  NAND2XLM U23 ( .A(Edge_Counter[4]), .B(enable), .Y(n6) );
  OAI21XLM U28 ( .A0(Bit_Counter[0]), .A1(Bit_Counter[1]), .B0(n11), .Y(n9) );
  OAI211XLM U26 ( .A0(Bit_Counter[2]), .A1(n10), .B0(n11), .C0(n12), .Y(n8) );
  NOR2XLM U43 ( .A(n24), .B(n23), .Y(edge_cnt[0]) );
  NOR2XLM U41 ( .A(n21), .B(n23), .Y(edge_cnt[2]) );
  NOR2XLM U37 ( .A(n17), .B(n23), .Y(bit_cnt[2]) );
  CLKINVX1M U16 ( .A(n4), .Y(n15) );
  NOR2XLM U24 ( .A(n7), .B(n6), .Y(n11) );
  CLKINVX1M U31 ( .A(n11), .Y(n14) );
  OAI22XLM U33 ( .A0(n15), .A1(n16), .B0(n14), .B1(n13), .Y(n32) );
  OAI22XLM U29 ( .A0(n10), .A1(n9), .B0(n15), .B1(n18), .Y(n31) );
  OAI21XLM U27 ( .A0(n17), .A1(n15), .B0(n8), .Y(n30) );
  AOI22XLM U34 ( .A0(Bit_Counter[0]), .A1(n15), .B0(n14), .B1(n19), .Y(n33) );
  OAI2BB1XLM U9 ( .A0N(n4), .A1N(N19), .B0(n5), .Y(n25) );
  NOR2BXLM U3 ( .AN(enable), .B(Edge_Counter[4]), .Y(n4) );
  NAND3XLM U8 ( .A(Edge_Counter[4]), .B(enable), .C(n7), .Y(n5) );
  CLKINVX1M U4 ( .A(RST_n), .Y(n23) );
  NOR2XLM U5 ( .A(n19), .B(n23), .Y(bit_cnt[0]) );
  NOR2XLM U6 ( .A(n16), .B(n23), .Y(bit_cnt[3]) );
  CLKINVX1M U7 ( .A(n2), .Y(n3) );
  NOR2XLM U10 ( .A(n18), .B(n23), .Y(bit_cnt[1]) );
  AOI21XLM U12 ( .A0(n22), .A1(n24), .B0(n34), .Y(N16) );
  CLKINVX1M U14 ( .A(Edge_Counter[3]), .Y(n20) );
  NAND3XLM U17 ( .A(Edge_Counter[2]), .B(Edge_Counter[1]), .C(Edge_Counter[0]), 
        .Y(n2) );
  OAI21XLM U19 ( .A0(n20), .A1(n2), .B0(Edge_Counter[4]), .Y(n1) );
  OAI31XLM U20 ( .A0(n20), .A1(Edge_Counter[4]), .A2(n2), .B0(n1), .Y(N19) );
  AOI22XLM U21 ( .A0(Edge_Counter[3]), .A1(n3), .B0(n2), .B1(n20), .Y(N18) );
  CLKINVX1M U22 ( .A(Edge_Counter[1]), .Y(n22) );
  CLKINVX1M U25 ( .A(Edge_Counter[0]), .Y(n24) );
  NOR2XLM U30 ( .A(n22), .B(n24), .Y(n34) );
  CLKINVX1M U32 ( .A(Bit_Counter[3]), .Y(n16) );
  CLKINVX1M U35 ( .A(Bit_Counter[2]), .Y(n17) );
  CLKINVX1M U36 ( .A(Bit_Counter[0]), .Y(n19) );
  CLKINVX1M U38 ( .A(Bit_Counter[1]), .Y(n18) );
  CLKINVX1M U39 ( .A(Edge_Counter[2]), .Y(n21) );
  AOI2BB1XLM U44 ( .A0N(n34), .A1N(Edge_Counter[2]), .B0(n3), .Y(N17) );
  NOR2XLM U45 ( .A(n18), .B(n19), .Y(n10) );
  AOI21XLM U46 ( .A0(n17), .A1(n18), .B0(n16), .Y(n7) );
  NAND2XLM U47 ( .A(Bit_Counter[2]), .B(n10), .Y(n12) );
  AOI2BB2XLM U48 ( .B0(Bit_Counter[3]), .B1(n12), .A0N(n12), .A1N(
        Bit_Counter[3]), .Y(n13) );
endmodule


module Parity_Check ( par_typ, par_chk_en, sampled_bit, p_data, par_err );
  input [7:0] p_data;
  input par_typ, par_chk_en, sampled_bit;
  output par_err;
  wire   n2, n3, n4, n5, n6;

  OAI21XLM U7 ( .A0(n6), .A1(n5), .B0(par_chk_en), .Y(n4) );
  AOI21XLM U8 ( .A0(n6), .A1(n5), .B0(n4), .Y(par_err) );
  XOR3XLM U5 ( .A(sampled_bit), .B(p_data[0]), .C(n2), .Y(n3) );
  XOR3XLM U6 ( .A(p_data[4]), .B(p_data[5]), .C(n3), .Y(n5) );
  XOR2XLM U2 ( .A(p_data[6]), .B(p_data[7]), .Y(n2) );
  XOR3XLM U3 ( .A(p_data[3]), .B(p_data[1]), .C(p_data[2]), .Y(n6) );
endmodule


module Start_Check ( CLK, RST_n, strt_chk_en, sampled_bit, strt_glitch );
  input CLK, RST_n, strt_chk_en, sampled_bit;
  output strt_glitch;
  wire   n1;

  DFFRQX1M strt_glitch_reg ( .D(n1), .CK(CLK), .RN(RST_n), .Q(strt_glitch) );
  AO2B2XLM U2 ( .B0(strt_chk_en), .B1(sampled_bit), .A0(strt_glitch), .A1N(
        strt_chk_en), .Y(n1) );
endmodule


module Stop_Check ( CLK, RST_n, stp_chk_en, sampled_bit, stp_err );
  input CLK, RST_n, stp_chk_en, sampled_bit;
  output stp_err;
  wire   N5;

  DFFRQX1M stp_err_reg ( .D(N5), .CK(CLK), .RN(RST_n), .Q(stp_err) );
  NOR2BXLM U3 ( .AN(stp_chk_en), .B(sampled_bit), .Y(N5) );
endmodule


module deserializer ( CLK, RST_n, deser_en, bit_cnt, sampled_bit, P_DATA );
  input [3:0] bit_cnt;
  output [7:0] P_DATA;
  input CLK, RST_n, deser_en, sampled_bit;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2M \sub_x_1/U10  ( .A(bit_cnt[1]) );
  INVX2M \sub_x_1/U9  ( .A(bit_cnt[2]) );
  INVX2M \sub_x_1/U8  ( .A(bit_cnt[3]) );
  INVX10M \sub_x_1/U6  ( .A(bit_cnt[0]) );
  DFFRQX1M \P_DATA_reg[7]  ( .D(n36), .CK(CLK), .RN(RST_n), .Q(P_DATA[7]) );
  DFFRQX1M \P_DATA_reg[6]  ( .D(n35), .CK(CLK), .RN(RST_n), .Q(P_DATA[6]) );
  DFFRQX1M \P_DATA_reg[5]  ( .D(n34), .CK(CLK), .RN(RST_n), .Q(P_DATA[5]) );
  DFFRQX1M \P_DATA_reg[4]  ( .D(n33), .CK(CLK), .RN(RST_n), .Q(P_DATA[4]) );
  DFFRQX1M \P_DATA_reg[3]  ( .D(n32), .CK(CLK), .RN(RST_n), .Q(P_DATA[3]) );
  DFFRQX1M \P_DATA_reg[2]  ( .D(n31), .CK(CLK), .RN(RST_n), .Q(P_DATA[2]) );
  DFFRQX1M \P_DATA_reg[1]  ( .D(n30), .CK(CLK), .RN(RST_n), .Q(P_DATA[1]) );
  DFFRQX1M \P_DATA_reg[0]  ( .D(n29), .CK(CLK), .RN(RST_n), .Q(P_DATA[0]) );
  CLKINVX1M U4 ( .A(bit_cnt[0]), .Y(n20) );
  NAND3BXLM U6 ( .AN(bit_cnt[1]), .B(n20), .C(n19), .Y(n2) );
  AOI21XLM U8 ( .A0(bit_cnt[3]), .A1(n2), .B0(n1), .Y(n21) );
  CLKINVX1M U10 ( .A(sampled_bit), .Y(n27) );
  NAND2XLM U17 ( .A(n9), .B(n16), .Y(n6) );
  OAI21XLM U19 ( .A0(n6), .A1(n27), .B0(n5), .Y(n30) );
  CLKINVX1M U5 ( .A(bit_cnt[2]), .Y(n19) );
  OAI21XLM U7 ( .A0(bit_cnt[3]), .A1(n2), .B0(deser_en), .Y(n1) );
  NAND4XLM U33 ( .A(bit_cnt[1]), .B(n21), .C(n20), .D(n19), .Y(n23) );
  NAND2XLM U34 ( .A(n23), .B(P_DATA[6]), .Y(n22) );
  OAI21XLM U35 ( .A0(n23), .A1(n27), .B0(n22), .Y(n35) );
  NAND2XLM U13 ( .A(bit_cnt[0]), .B(n21), .Y(n15) );
  NOR2XLM U29 ( .A(bit_cnt[2]), .B(n15), .Y(n24) );
  NOR2XLM U3 ( .A(bit_cnt[0]), .B(bit_cnt[1]), .Y(n12) );
  AOI21XLM U15 ( .A0(bit_cnt[1]), .A1(bit_cnt[0]), .B0(n12), .Y(n25) );
  CLKINVX1M U16 ( .A(n25), .Y(n16) );
  NAND2XLM U30 ( .A(n24), .B(n16), .Y(n18) );
  NAND2XLM U31 ( .A(n18), .B(P_DATA[5]), .Y(n17) );
  OAI21XLM U32 ( .A0(n18), .A1(n27), .B0(n17), .Y(n34) );
  NAND4XLM U20 ( .A(bit_cnt[1]), .B(bit_cnt[2]), .C(n21), .D(n20), .Y(n8) );
  NAND2XLM U21 ( .A(n8), .B(P_DATA[2]), .Y(n7) );
  OAI21XLM U22 ( .A0(n8), .A1(n27), .B0(n7), .Y(n31) );
  NAND4XLM U9 ( .A(n12), .B(n21), .C(n20), .D(n19), .Y(n4) );
  NAND2XLM U11 ( .A(n4), .B(P_DATA[0]), .Y(n3) );
  OAI21XLM U12 ( .A0(n4), .A1(n27), .B0(n3), .Y(n29) );
  NAND4XLM U26 ( .A(n12), .B(bit_cnt[2]), .C(n21), .D(n20), .Y(n14) );
  NAND2XLM U27 ( .A(n14), .B(P_DATA[4]), .Y(n13) );
  OAI21XLM U28 ( .A0(n14), .A1(n27), .B0(n13), .Y(n33) );
  NAND2XLM U36 ( .A(n25), .B(n24), .Y(n28) );
  NAND2XLM U37 ( .A(n28), .B(P_DATA[7]), .Y(n26) );
  NAND2XLM U23 ( .A(n25), .B(n9), .Y(n11) );
  NAND2XLM U24 ( .A(n11), .B(P_DATA[3]), .Y(n10) );
  OAI21XLM U25 ( .A0(n11), .A1(n27), .B0(n10), .Y(n32) );
  NOR2XLM U14 ( .A(n19), .B(n15), .Y(n9) );
  NAND2XLM U18 ( .A(n6), .B(P_DATA[1]), .Y(n5) );
  OAI21XLM U38 ( .A0(n28), .A1(n27), .B0(n26), .Y(n36) );
endmodule


module UART_RX_10 ( CLK, RST_n, PAR_TYP, PAR_EN, Prescale, RX_IN, P_DATA, 
        DATA_Valid );
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, RST_n, PAR_TYP, PAR_EN, RX_IN;
  output DATA_Valid;
  wire   sampled_bit, enable, par_chk_en, par_err, strt_chk_en, strt_glitch,
         stp_chk_en, stp_err, deser_en, N75, N102, n5, n6, n7, n8, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n34, n35, n36, n2, n3, n4, n9, n33,
         n37, n38, n39, n40, n42, n43, n44, n45, n46, n47;
  wire   [3:0] edge_cnt;
  wire   [3:0] bit_cnt;
  wire   [7:0] p_data;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  wire   [7:0] out_next;

  data_sampling_10 dut_sample ( .CLK(CLK), .RST_n(RST_n), .RX_IN(RX_IN), 
        .Prescale({1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0}), .data_samp_en(enable), 
        .edge_cnt(edge_cnt), .sampled_bit(sampled_bit) );
  edge_bit_counter_10 edge_bit_dut ( .CLK(CLK), .RST_n(RST_n), .parity_en(1'b1), .enable(enable), .bit_cnt(bit_cnt), .edge_cnt(edge_cnt) );
  Parity_Check parity_dut ( .par_typ(1'b0), .par_chk_en(par_chk_en), 
        .sampled_bit(sampled_bit), .p_data(p_data), .par_err(par_err) );
  Start_Check srt_dut ( .CLK(CLK), .RST_n(RST_n), .strt_chk_en(strt_chk_en), 
        .sampled_bit(sampled_bit), .strt_glitch(strt_glitch) );
  Stop_Check stp_dut ( .CLK(CLK), .RST_n(RST_n), .stp_chk_en(stp_chk_en), 
        .sampled_bit(sampled_bit), .stp_err(stp_err) );
  deserializer deser_dut ( .CLK(CLK), .RST_n(RST_n), .deser_en(deser_en), 
        .bit_cnt(bit_cnt), .sampled_bit(sampled_bit), .P_DATA(p_data) );
  DFFRQX1M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(RST_n), 
        .Q(current_state[0]) );
  DFFRQX1M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(RST_n), 
        .Q(current_state[2]) );
  AOI31XLM U24 ( .A0(current_state[2]), .A1(n26), .A2(n19), .B0(par_chk_en), 
        .Y(n5) );
  NAND4BXLM U27 ( .AN(bit_cnt[1]), .B(n14), .C(n15), .D(n6), .Y(n12) );
  AOI2B1XLM U33 ( .A1N(n13), .A0(n12), .B0(n11), .Y(n22) );
  AOI21XLM U48 ( .A0(current_state[0]), .A1(N102), .B0(n28), .Y(n27) );
  AO22XLM U51 ( .A0(p_data[7]), .A1(DATA_Valid), .B0(out_next[7]), .B1(n32), 
        .Y(P_DATA[7]) );
  AO22XLM U52 ( .A0(p_data[6]), .A1(DATA_Valid), .B0(out_next[6]), .B1(n32), 
        .Y(P_DATA[6]) );
  AO22XLM U53 ( .A0(p_data[5]), .A1(DATA_Valid), .B0(out_next[5]), .B1(n32), 
        .Y(P_DATA[5]) );
  AO22XLM U54 ( .A0(p_data[4]), .A1(DATA_Valid), .B0(out_next[4]), .B1(n32), 
        .Y(P_DATA[4]) );
  AO22XLM U55 ( .A0(p_data[3]), .A1(DATA_Valid), .B0(out_next[3]), .B1(n32), 
        .Y(P_DATA[3]) );
  AO22XLM U56 ( .A0(p_data[2]), .A1(DATA_Valid), .B0(out_next[2]), .B1(n32), 
        .Y(P_DATA[2]) );
  AO22XLM U57 ( .A0(p_data[1]), .A1(DATA_Valid), .B0(out_next[1]), .B1(n32), 
        .Y(P_DATA[1]) );
  AO22XLM U58 ( .A0(p_data[0]), .A1(DATA_Valid), .B0(out_next[0]), .B1(n32), 
        .Y(P_DATA[0]) );
  AOI211XLM U42 ( .A0(current_state[0]), .A1(N102), .B0(current_state[1]), 
        .C0(n28), .Y(n23) );
  NOR2BXLM U47 ( .AN(n31), .B(n30), .Y(DATA_Valid) );
  AOI211XLM U49 ( .A0(current_state[0]), .A1(n28), .B0(current_state[1]), .C0(
        n27), .Y(n29) );
  NAND4XLM U39 ( .A(n19), .B(current_state[2]), .C(current_state[0]), .D(n26), 
        .Y(n20) );
  NAND2XLM U44 ( .A(n25), .B(n24), .Y(enable) );
  NOR2BXLM U23 ( .AN(n8), .B(n7), .Y(par_chk_en) );
  OAI21XLM U50 ( .A0(n31), .A1(n30), .B0(n29), .Y(n32) );
  NOR2XLM U29 ( .A(n12), .B(n13), .Y(strt_chk_en) );
  NOR2XLM U30 ( .A(n8), .B(n7), .Y(n11) );
  CLKINVX1M U17 ( .A(N102), .Y(n19) );
  OAI31XLM U32 ( .A0(strt_glitch), .A1(n12), .A2(n13), .B0(n10), .Y(
        next_state[1]) );
  AOI211XLM U43 ( .A0(current_state[0]), .A1(n28), .B0(deser_en), .C0(n23), 
        .Y(n25) );
  CLKINVX1M U18 ( .A(bit_cnt[0]), .Y(n14) );
  NOR2XLM U13 ( .A(N75), .B(bit_cnt[2]), .Y(n6) );
  NAND2XLM U19 ( .A(n6), .B(bit_cnt[3]), .Y(n35) );
  NOR3XLM U20 ( .A(bit_cnt[1]), .B(n14), .C(n35), .Y(n8) );
  NAND4XLM U46 ( .A(current_state[2]), .B(current_state[0]), .C(N102), .D(n26), 
        .Y(n30) );
  CLKINVX1M U14 ( .A(bit_cnt[3]), .Y(n15) );
  NOR4XLM U37 ( .A(bit_cnt[2]), .B(n16), .C(n34), .D(n15), .Y(n17) );
  NOR4BXLM U15 ( .AN(n6), .B(bit_cnt[1]), .C(bit_cnt[0]), .D(n15), .Y(n18) );
  DFFSRHQX1M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .SN(1'b1), 
        .RN(RST_n), .Q(current_state[1]) );
  DFFRQX1M \out_next_reg[6]  ( .D(P_DATA[6]), .CK(CLK), .RN(RST_n), .Q(
        out_next[6]) );
  DFFRQX1M \out_next_reg[0]  ( .D(P_DATA[0]), .CK(CLK), .RN(RST_n), .Q(
        out_next[0]) );
  DFFRQX1M \out_next_reg[7]  ( .D(P_DATA[7]), .CK(CLK), .RN(RST_n), .Q(
        out_next[7]) );
  DFFRQX1M \out_next_reg[5]  ( .D(P_DATA[5]), .CK(CLK), .RN(RST_n), .Q(
        out_next[5]) );
  DFFRQX1M \out_next_reg[4]  ( .D(P_DATA[4]), .CK(CLK), .RN(RST_n), .Q(
        out_next[4]) );
  DFFRQX1M \out_next_reg[3]  ( .D(P_DATA[3]), .CK(CLK), .RN(RST_n), .Q(
        out_next[3]) );
  DFFRQX1M \out_next_reg[2]  ( .D(P_DATA[2]), .CK(CLK), .RN(RST_n), .Q(
        out_next[2]) );
  DFFRQX1M \out_next_reg[1]  ( .D(P_DATA[1]), .CK(CLK), .RN(RST_n), .Q(
        out_next[1]) );
  CLKINVX1M U3 ( .A(edge_cnt[3]), .Y(n37) );
  NOR2XLM U4 ( .A(n37), .B(edge_cnt[2]), .Y(n38) );
  CLKINVX1M U5 ( .A(n38), .Y(n39) );
  NOR2XLM U6 ( .A(edge_cnt[1]), .B(n39), .Y(n40) );
  CLKINVX1M U7 ( .A(edge_cnt[1]), .Y(n2) );
  NOR3XLM U8 ( .A(n34), .B(n36), .C(n35), .Y(stp_chk_en) );
  NOR2XLM U9 ( .A(deser_en), .B(n11), .Y(n10) );
  NAND4XLM U10 ( .A(n22), .B(n21), .C(n20), .D(n24), .Y(next_state[0]) );
  OR4X1M U12 ( .A(current_state[0]), .B(current_state[1]), .C(current_state[2]), .D(RX_IN), .Y(n24) );
  CLKINVX1M U16 ( .A(current_state[1]), .Y(n26) );
  NAND3BXLM U21 ( .AN(current_state[0]), .B(current_state[2]), .C(n26), .Y(n34) );
  NOR3XLM U22 ( .A(current_state[0]), .B(current_state[2]), .C(n26), .Y(
        deser_en) );
  CLKINVX1M U25 ( .A(current_state[2]), .Y(n28) );
  NAND3XLM U26 ( .A(current_state[0]), .B(n26), .C(n28), .Y(n13) );
  NAND3XLM U28 ( .A(current_state[1]), .B(current_state[0]), .C(n28), .Y(n7)
         );
  NAND2XLM U35 ( .A(n5), .B(n34), .Y(next_state[2]) );
  OAI21XLM U36 ( .A0(deser_en), .A1(n17), .B0(n47), .Y(n21) );
  NAND2XLM U38 ( .A(bit_cnt[1]), .B(n14), .Y(n36) );
  CLKINVX1M U40 ( .A(edge_cnt[2]), .Y(n33) );
  NAND2XLM U41 ( .A(edge_cnt[3]), .B(n3), .Y(n4) );
  NOR2XLM U45 ( .A(edge_cnt[0]), .B(n2), .Y(n3) );
  CLKINVX1M U59 ( .A(edge_cnt[3]), .Y(n44) );
  NAND2XLM U60 ( .A(edge_cnt[0]), .B(n43), .Y(n45) );
  NAND2XLM U61 ( .A(edge_cnt[2]), .B(edge_cnt[1]), .Y(n42) );
  CLKINVX1M U62 ( .A(n46), .Y(n31) );
  NAND2XLM U63 ( .A(n9), .B(n33), .Y(N75) );
  CLKINVX1M U64 ( .A(n4), .Y(n9) );
  NOR2XLM U65 ( .A(n45), .B(n44), .Y(N102) );
  CLKINVX1M U66 ( .A(n42), .Y(n43) );
  OR2X1M U67 ( .A(n18), .B(n17), .Y(n47) );
  OR2X1M U68 ( .A(n36), .B(N75), .Y(n16) );
  OR3X1M U69 ( .A(strt_glitch), .B(par_err), .C(stp_err), .Y(n46) );
  NAND2XLM U70 ( .A(edge_cnt[0]), .B(n40) );
endmodule


module Bit_Sync_00000002_00000005_0 ( RST_n, CLK, ASYNC, SYNC );
  input [4:0] ASYNC;
  output [4:0] SYNC;
  input RST_n, CLK;
  wire   \FF_Stage[1][3] , \FF_Stage[1][2] , \FF_Stage[1][1] ,
         \FF_Stage[1][0] , \FF_Stage[0][3] , \FF_Stage[0][2] ,
         \FF_Stage[0][1] , \FF_Stage[0][0] , n1, n2;

  DFFRQX1M \FF_Stage_reg[0][3]  ( .D(ASYNC[3]), .CK(CLK), .RN(RST_n), .Q(
        \FF_Stage[0][3] ) );
  DFFRQX1M \FF_Stage_reg[0][2]  ( .D(ASYNC[2]), .CK(CLK), .RN(RST_n), .Q(
        \FF_Stage[0][2] ) );
  DFFRQX1M \FF_Stage_reg[0][1]  ( .D(ASYNC[1]), .CK(CLK), .RN(RST_n), .Q(
        \FF_Stage[0][1] ) );
  DFFRQX1M \FF_Stage_reg[0][0]  ( .D(ASYNC[0]), .CK(CLK), .RN(RST_n), .Q(
        \FF_Stage[0][0] ) );
  DFFRQX1M \FF_Stage_reg[1][2]  ( .D(\FF_Stage[0][2] ), .CK(CLK), .RN(RST_n), 
        .Q(\FF_Stage[1][2] ) );
  DFFRQX1M \FF_Stage_reg[1][1]  ( .D(\FF_Stage[0][1] ), .CK(CLK), .RN(RST_n), 
        .Q(\FF_Stage[1][1] ) );
  DFFRQX1M \FF_Stage_reg[1][0]  ( .D(\FF_Stage[0][0] ), .CK(CLK), .RN(RST_n), 
        .Q(\FF_Stage[1][0] ) );
  DFFSQX2M \FF_Stage_reg[1][3]  ( .D(n1), .CK(CLK), .SN(RST_n), .Q(n2) );
  AND2X1M U7 ( .A(RST_n), .B(\FF_Stage[1][0] ), .Y(SYNC[0]) );
  AND2X1M U5 ( .A(RST_n), .B(\FF_Stage[1][2] ), .Y(SYNC[2]) );
  AND2X1M U6 ( .A(RST_n), .B(\FF_Stage[1][1] ), .Y(SYNC[1]) );
  AND2X1M U4 ( .A(RST_n), .B(\FF_Stage[1][3] ), .Y(SYNC[3]) );
  CLKINVX1M U3 ( .A(n2), .Y(\FF_Stage[1][3] ) );
  CLKINVX1M U8 ( .A(\FF_Stage[0][3] ), .Y(n1) );
endmodule


module fifo_wrptr_full_00000008_00000010 ( W_CLK, W_RST, W_INC, gray_Rptr, 
        WFULL, Waddr, gray_Wptr );
  input [4:0] gray_Rptr;
  output [3:0] Waddr;
  output [4:0] gray_Wptr;
  input W_CLK, W_RST, W_INC;
  output WFULL;
  wire   N42, N43, N44, N45, N116, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n1, n2, n3, n4, n5, n31;
  wire   [4:0] Wptr;

  DFFRQX1M \Wptr_reg[0]  ( .D(n30), .CK(W_CLK), .RN(W_RST), .Q(Wptr[0]) );
  DFFRQX1M \Wptr_reg[1]  ( .D(n29), .CK(W_CLK), .RN(W_RST), .Q(Wptr[1]) );
  DFFRQX1M \Wptr_reg[2]  ( .D(n28), .CK(W_CLK), .RN(W_RST), .Q(Wptr[2]) );
  DFFRQX1M \Wptr_reg[3]  ( .D(n27), .CK(W_CLK), .RN(W_RST), .Q(N116) );
  DFFRQX1M \Wptr_reg[4]  ( .D(n26), .CK(W_CLK), .RN(W_RST), .Q(Wptr[4]) );
  DFFRQX1M \gray_Wptr_reg[3]  ( .D(n25), .CK(W_CLK), .RN(W_RST), .Q(
        gray_Wptr[3]) );
  DFFRQX1M \gray_Wptr_reg[2]  ( .D(n24), .CK(W_CLK), .RN(W_RST), .Q(
        gray_Wptr[2]) );
  DFFRQX1M \gray_Wptr_reg[1]  ( .D(n23), .CK(W_CLK), .RN(W_RST), .Q(
        gray_Wptr[1]) );
  DFFRQX1M \gray_Wptr_reg[0]  ( .D(n22), .CK(W_CLK), .RN(W_RST), .Q(
        gray_Wptr[0]) );
  AOI2BB2XLM U32 ( .B0(Wptr[0]), .B1(n16), .A0N(n16), .A1N(Wptr[0]), .Y(n30)
         );
  NOR2BXLM U27 ( .AN(W_INC), .B(WFULL), .Y(n16) );
  NOR4XLM U3 ( .A(n15), .B(n14), .C(n13), .D(n12), .Y(WFULL) );
  NOR2X1M U4 ( .A(n19), .B(n20), .Y(Waddr[1]) );
  NOR2X1M U5 ( .A(n17), .B(n20), .Y(Waddr[3]) );
  NOR2X1M U6 ( .A(n21), .B(n20), .Y(Waddr[0]) );
  NOR2X1M U7 ( .A(n18), .B(n20), .Y(Waddr[2]) );
  CLKINVX1M U8 ( .A(W_RST), .Y(n20) );
  AOI21XLM U9 ( .A0(n11), .A1(n21), .B0(n9), .Y(n10) );
  OAI2BB1XLM U10 ( .A0N(n19), .A1N(n8), .B0(n7), .Y(n9) );
  AOI22XLM U11 ( .A0(gray_Rptr[3]), .A1(n17), .B0(n6), .B1(n18), .Y(n7) );
  XOR2XLM U12 ( .A(gray_Rptr[0]), .B(n8), .Y(n11) );
  XOR2XLM U13 ( .A(gray_Rptr[1]), .B(n6), .Y(n8) );
  XOR2XLM U14 ( .A(gray_Rptr[3]), .B(gray_Rptr[2]), .Y(n6) );
  OAI22XLM U15 ( .A0(n6), .A1(n18), .B0(gray_Rptr[3]), .B1(n17), .Y(n13) );
  NOR2XLM U16 ( .A(n8), .B(n19), .Y(n14) );
  OAI21XLM U17 ( .A0(n21), .A1(n11), .B0(n10), .Y(n12) );
  OAI2BB2XLM U18 ( .B0(n16), .B1(n15), .A0N(n16), .A1N(N45), .Y(n26) );
  OAI2BB2XLM U19 ( .B0(n16), .B1(n17), .A0N(n16), .A1N(N44), .Y(n27) );
  OAI2BB2XLM U20 ( .B0(n16), .B1(n18), .A0N(n16), .A1N(N43), .Y(n28) );
  OAI2BB2XLM U21 ( .B0(n16), .B1(n19), .A0N(n16), .A1N(N42), .Y(n29) );
  OAI211XLM U22 ( .A0(n17), .A1(n18), .B0(n15), .C0(n1), .Y(n2) );
  CLKINVX1M U23 ( .A(N116), .Y(n17) );
  CLKINVX1M U24 ( .A(Wptr[2]), .Y(n18) );
  CLKINVX1M U25 ( .A(Wptr[4]), .Y(n15) );
  NAND3XLM U26 ( .A(Wptr[0]), .B(Wptr[1]), .C(Wptr[2]), .Y(n5) );
  NOR2XLM U28 ( .A(n17), .B(n5), .Y(n4) );
  AOI21XLM U29 ( .A0(n17), .A1(n5), .B0(n4), .Y(N44) );
  CLKINVX1M U30 ( .A(Wptr[1]), .Y(n19) );
  CLKINVX1M U31 ( .A(Wptr[0]), .Y(n21) );
  NAND2XLM U33 ( .A(n17), .B(n18), .Y(n1) );
  OAI2BB1XLM U34 ( .A0N(gray_Wptr[2]), .A1N(Wptr[4]), .B0(n2), .Y(n24) );
  NAND2XLM U35 ( .A(Wptr[0]), .B(Wptr[1]), .Y(n3) );
  AOI21BXLM U36 ( .A0(n3), .A1(n18), .B0N(n5), .Y(N43) );
  OAI32XLM U37 ( .A0(Wptr[4]), .A1(n17), .A2(n5), .B0(n4), .B1(n15), .Y(N45)
         );
  AOI22XLM U38 ( .A0(Wptr[0]), .A1(Wptr[1]), .B0(n19), .B1(n21), .Y(N42) );
  AOI2BB2XLM U39 ( .B0(n17), .B1(n15), .A0N(n15), .A1N(gray_Wptr[3]), .Y(n25)
         );
  AOI221XLM U40 ( .A0(Wptr[1]), .A1(Wptr[2]), .B0(n19), .B1(n18), .C0(Wptr[4]), 
        .Y(n31) );
  AO21XLM U41 ( .A0(gray_Wptr[1]), .A1(Wptr[4]), .B0(n31), .Y(n23) );
  AO22XLM U42 ( .A0(Wptr[4]), .A1(gray_Wptr[0]), .B0(n15), .B1(N42), .Y(n22)
         );
endmodule


module fifo_rdptr_empty_00000008_00000010 ( R_CLK, R_RST, R_INC, gray_Wptr, 
        REMPTY, Raddr, gray_Rptr );
  input [4:0] gray_Wptr;
  output [3:0] Raddr;
  output [4:0] gray_Rptr;
  input R_CLK, R_RST, R_INC;
  output REMPTY;
  wire   N41, N42, N43, N44, N115, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n1, n2, n3, n4, n31, n32;
  wire   [4:0] Rptr;

  DFFRQX1M \Rptr_reg[0]  ( .D(n30), .CK(R_CLK), .RN(R_RST), .Q(Rptr[0]) );
  DFFRQX1M \Rptr_reg[4]  ( .D(n29), .CK(R_CLK), .RN(R_RST), .Q(Rptr[4]) );
  DFFRQX1M \Rptr_reg[1]  ( .D(n28), .CK(R_CLK), .RN(R_RST), .Q(Rptr[1]) );
  DFFRQX1M \Rptr_reg[2]  ( .D(n27), .CK(R_CLK), .RN(R_RST), .Q(Rptr[2]) );
  DFFRQX1M \Rptr_reg[3]  ( .D(n26), .CK(R_CLK), .RN(R_RST), .Q(N115) );
  DFFRQX1M \gray_Rptr_reg[3]  ( .D(n25), .CK(R_CLK), .RN(R_RST), .Q(
        gray_Rptr[3]) );
  DFFRQX1M \gray_Rptr_reg[2]  ( .D(n24), .CK(R_CLK), .RN(R_RST), .Q(
        gray_Rptr[2]) );
  DFFRQX1M \gray_Rptr_reg[1]  ( .D(n23), .CK(R_CLK), .RN(R_RST), .Q(
        gray_Rptr[1]) );
  DFFRQX1M \gray_Rptr_reg[0]  ( .D(n22), .CK(R_CLK), .RN(R_RST), .Q(
        gray_Rptr[0]) );
  OAI2BB2XLM U21 ( .B0(Rptr[2]), .B1(n11), .A0N(n17), .A1N(gray_Wptr[3]), .Y(
        n6) );
  OAI2BB2XLM U28 ( .B0(n16), .B1(n17), .A0N(n16), .A1N(N43), .Y(n26) );
  OAI2BB2XLM U29 ( .B0(n16), .B1(n18), .A0N(n16), .A1N(N42), .Y(n27) );
  OAI2BB2XLM U30 ( .B0(n16), .B1(n19), .A0N(n16), .A1N(N41), .Y(n28) );
  OAI2BB2XLM U31 ( .B0(R_INC), .B1(n15), .A0N(n16), .A1N(N44), .Y(n29) );
  AOI2BB2XLM U32 ( .B0(Rptr[0]), .B1(n16), .A0N(n16), .A1N(Rptr[0]), .Y(n30)
         );
  AOI21XLM U26 ( .A0(n19), .A1(n14), .B0(n13), .Y(REMPTY) );
  NOR2XLM U37 ( .A(n19), .B(n20), .Y(Raddr[1]) );
  NOR2XLM U38 ( .A(n21), .B(n20), .Y(Raddr[0]) );
  NOR2XLM U35 ( .A(n17), .B(n20), .Y(Raddr[3]) );
  NOR2XLM U36 ( .A(n18), .B(n20), .Y(Raddr[2]) );
  XNOR2XLM U15 ( .A(gray_Wptr[3]), .B(gray_Wptr[2]), .Y(n11) );
  AOI21XLM U22 ( .A0(n8), .A1(n21), .B0(n6), .Y(n7) );
  OAI21XLM U25 ( .A0(n19), .A1(n14), .B0(n12), .Y(n13) );
  XNOR2XLM U20 ( .A(gray_Wptr[0]), .B(n5), .Y(n8) );
  XOR2XLM U16 ( .A(gray_Wptr[1]), .B(n11), .Y(n5) );
  AOI211XLM U24 ( .A0(Rptr[2]), .A1(n11), .B0(n10), .C0(n9), .Y(n12) );
  NOR2BXLM U27 ( .AN(R_INC), .B(REMPTY), .Y(n16) );
  CLKINVX1M U3 ( .A(R_RST), .Y(n20) );
  OAI21XLM U4 ( .A0(gray_Wptr[3]), .A1(n17), .B0(n15), .Y(n10) );
  CLKINVX1M U5 ( .A(N115), .Y(n17) );
  CLKINVX1M U6 ( .A(Rptr[4]), .Y(n15) );
  NAND3XLM U7 ( .A(Rptr[0]), .B(Rptr[1]), .C(Rptr[2]), .Y(n2) );
  NOR2XLM U8 ( .A(n17), .B(n2), .Y(n1) );
  OAI32XLM U9 ( .A0(Rptr[4]), .A1(n17), .A2(n2), .B0(n1), .B1(n15), .Y(N44) );
  AOI21XLM U10 ( .A0(n17), .A1(n2), .B0(n1), .Y(N43) );
  CLKINVX1M U11 ( .A(Rptr[2]), .Y(n18) );
  CLKINVX1M U12 ( .A(Rptr[1]), .Y(n19) );
  NAND2XLM U13 ( .A(Rptr[0]), .B(Rptr[1]), .Y(n3) );
  AOI21BXLM U14 ( .A0(n3), .A1(n18), .B0N(n2), .Y(N42) );
  CLKINVX1M U17 ( .A(Rptr[0]), .Y(n21) );
  AOI22XLM U18 ( .A0(Rptr[0]), .A1(Rptr[1]), .B0(n19), .B1(n21), .Y(N41) );
  NOR2XLM U19 ( .A(Rptr[4]), .B(n17), .Y(n4) );
  AO21XLM U23 ( .A0(Rptr[4]), .A1(gray_Rptr[3]), .B0(n4), .Y(n25) );
  AOI221XLM U33 ( .A0(N115), .A1(Rptr[2]), .B0(n17), .B1(n18), .C0(Rptr[4]), 
        .Y(n31) );
  AO21XLM U34 ( .A0(Rptr[4]), .A1(gray_Rptr[2]), .B0(n31), .Y(n24) );
  AOI221XLM U39 ( .A0(Rptr[1]), .A1(Rptr[2]), .B0(n19), .B1(n18), .C0(Rptr[4]), 
        .Y(n32) );
  AO21XLM U40 ( .A0(gray_Rptr[1]), .A1(Rptr[4]), .B0(n32), .Y(n23) );
  AO22XLM U41 ( .A0(Rptr[4]), .A1(gray_Rptr[0]), .B0(n15), .B1(N41), .Y(n22)
         );
  CLKINVX1M U42 ( .A(n5), .Y(n14) );
  OAI21XLM U43 ( .A0(n21), .A1(n8), .B0(n7), .Y(n9) );
endmodule


module FIFO_MEMORY_00000008_00000010 ( WCLK, WRST, R_CLK, R_RST, wdata, 
        wclk_en, rclk_en, waddr, raddr, rdata );
  input [7:0] wdata;
  input [3:0] waddr;
  input [3:0] raddr;
  output [7:0] rdata;
  input WCLK, WRST, R_CLK, R_RST, wclk_en, rclk_en;
  wire   \FIFO_MEM[15][7] , \FIFO_MEM[15][6] , \FIFO_MEM[15][5] ,
         \FIFO_MEM[15][4] , \FIFO_MEM[15][3] , \FIFO_MEM[15][2] ,
         \FIFO_MEM[15][1] , \FIFO_MEM[15][0] , \FIFO_MEM[14][7] ,
         \FIFO_MEM[14][6] , \FIFO_MEM[14][5] , \FIFO_MEM[14][4] ,
         \FIFO_MEM[14][3] , \FIFO_MEM[14][2] , \FIFO_MEM[14][1] ,
         \FIFO_MEM[14][0] , \FIFO_MEM[13][7] , \FIFO_MEM[13][6] ,
         \FIFO_MEM[13][5] , \FIFO_MEM[13][4] , \FIFO_MEM[13][3] ,
         \FIFO_MEM[13][2] , \FIFO_MEM[13][1] , \FIFO_MEM[13][0] ,
         \FIFO_MEM[12][7] , \FIFO_MEM[12][6] , \FIFO_MEM[12][5] ,
         \FIFO_MEM[12][4] , \FIFO_MEM[12][3] , \FIFO_MEM[12][2] ,
         \FIFO_MEM[12][1] , \FIFO_MEM[12][0] , \FIFO_MEM[11][7] ,
         \FIFO_MEM[11][6] , \FIFO_MEM[11][5] , \FIFO_MEM[11][4] ,
         \FIFO_MEM[11][3] , \FIFO_MEM[11][2] , \FIFO_MEM[11][1] ,
         \FIFO_MEM[11][0] , \FIFO_MEM[10][7] , \FIFO_MEM[10][6] ,
         \FIFO_MEM[10][5] , \FIFO_MEM[10][4] , \FIFO_MEM[10][3] ,
         \FIFO_MEM[10][2] , \FIFO_MEM[10][1] , \FIFO_MEM[10][0] ,
         \FIFO_MEM[9][7] , \FIFO_MEM[9][6] , \FIFO_MEM[9][5] ,
         \FIFO_MEM[9][4] , \FIFO_MEM[9][3] , \FIFO_MEM[9][2] ,
         \FIFO_MEM[9][1] , \FIFO_MEM[9][0] , \FIFO_MEM[8][7] ,
         \FIFO_MEM[8][6] , \FIFO_MEM[8][5] , \FIFO_MEM[8][4] ,
         \FIFO_MEM[8][3] , \FIFO_MEM[8][2] , \FIFO_MEM[8][1] ,
         \FIFO_MEM[8][0] , \FIFO_MEM[7][7] , \FIFO_MEM[7][6] ,
         \FIFO_MEM[7][5] , \FIFO_MEM[7][4] , \FIFO_MEM[7][3] ,
         \FIFO_MEM[7][2] , \FIFO_MEM[7][1] , \FIFO_MEM[7][0] ,
         \FIFO_MEM[6][7] , \FIFO_MEM[6][6] , \FIFO_MEM[6][5] ,
         \FIFO_MEM[6][4] , \FIFO_MEM[6][3] , \FIFO_MEM[6][2] ,
         \FIFO_MEM[6][1] , \FIFO_MEM[6][0] , \FIFO_MEM[5][7] ,
         \FIFO_MEM[5][6] , \FIFO_MEM[5][5] , \FIFO_MEM[5][4] ,
         \FIFO_MEM[5][3] , \FIFO_MEM[5][2] , \FIFO_MEM[5][1] ,
         \FIFO_MEM[5][0] , \FIFO_MEM[4][7] , \FIFO_MEM[4][6] ,
         \FIFO_MEM[4][5] , \FIFO_MEM[4][4] , \FIFO_MEM[4][3] ,
         \FIFO_MEM[4][2] , \FIFO_MEM[4][1] , \FIFO_MEM[4][0] ,
         \FIFO_MEM[3][7] , \FIFO_MEM[3][6] , \FIFO_MEM[3][5] ,
         \FIFO_MEM[3][4] , \FIFO_MEM[3][3] , \FIFO_MEM[3][2] ,
         \FIFO_MEM[3][1] , \FIFO_MEM[3][0] , \FIFO_MEM[2][7] ,
         \FIFO_MEM[2][6] , \FIFO_MEM[2][5] , \FIFO_MEM[2][4] ,
         \FIFO_MEM[2][3] , \FIFO_MEM[2][2] , \FIFO_MEM[2][1] ,
         \FIFO_MEM[2][0] , \FIFO_MEM[1][7] , \FIFO_MEM[1][6] ,
         \FIFO_MEM[1][5] , \FIFO_MEM[1][4] , \FIFO_MEM[1][3] ,
         \FIFO_MEM[1][2] , \FIFO_MEM[1][1] , \FIFO_MEM[1][0] ,
         \FIFO_MEM[0][7] , \FIFO_MEM[0][6] , \FIFO_MEM[0][5] ,
         \FIFO_MEM[0][4] , \FIFO_MEM[0][3] , \FIFO_MEM[0][2] ,
         \FIFO_MEM[0][1] , \FIFO_MEM[0][0] , N57, N58, N59, N60, N61, N62, N63,
         N64, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351;
  wire   [7:0] out_next;
  wire   [7:0] read_next;

  EDFFHQX1M \read_next_reg[6]  ( .D(rdata[6]), .E(WRST), .CK(WCLK), .Q(
        read_next[6]) );
  EDFFHQX1M \read_next_reg[5]  ( .D(rdata[5]), .E(WRST), .CK(WCLK), .Q(
        read_next[5]) );
  EDFFHQX1M \read_next_reg[4]  ( .D(rdata[4]), .E(WRST), .CK(WCLK), .Q(
        read_next[4]) );
  EDFFHQX1M \read_next_reg[2]  ( .D(rdata[2]), .E(WRST), .CK(WCLK), .Q(
        read_next[2]) );
  EDFFHQX1M \read_next_reg[1]  ( .D(rdata[1]), .E(WRST), .CK(WCLK), .Q(
        read_next[1]) );
  EDFFHQX1M \read_next_reg[0]  ( .D(rdata[0]), .E(WRST), .CK(WCLK), .Q(
        read_next[0]) );
  DFFRQX1M \out_next_reg[7]  ( .D(N57), .CK(WCLK), .RN(WRST), .Q(out_next[7])
         );
  DFFRQX1M \out_next_reg[6]  ( .D(N58), .CK(WCLK), .RN(WRST), .Q(out_next[6])
         );
  DFFRQX1M \out_next_reg[5]  ( .D(N59), .CK(WCLK), .RN(WRST), .Q(out_next[5])
         );
  DFFRQX1M \out_next_reg[4]  ( .D(N60), .CK(WCLK), .RN(WRST), .Q(out_next[4])
         );
  DFFRQX1M \out_next_reg[3]  ( .D(N61), .CK(WCLK), .RN(WRST), .Q(out_next[3])
         );
  DFFRQX1M \out_next_reg[2]  ( .D(N62), .CK(WCLK), .RN(WRST), .Q(out_next[2])
         );
  DFFRQX1M \out_next_reg[1]  ( .D(N63), .CK(WCLK), .RN(WRST), .Q(out_next[1])
         );
  DFFRQX1M \out_next_reg[0]  ( .D(N64), .CK(WCLK), .RN(WRST), .Q(out_next[0])
         );
  DFFRQX1M \FIFO_MEM_reg[15][7]  ( .D(n351), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[15][7] ) );
  DFFRQX1M \FIFO_MEM_reg[14][7]  ( .D(n350), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[14][7] ) );
  DFFRQX1M \FIFO_MEM_reg[13][7]  ( .D(n349), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[13][7] ) );
  DFFRQX1M \FIFO_MEM_reg[12][7]  ( .D(n348), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[12][7] ) );
  DFFRQX1M \FIFO_MEM_reg[11][7]  ( .D(n347), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[11][7] ) );
  DFFRQX1M \FIFO_MEM_reg[10][7]  ( .D(n346), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[10][7] ) );
  DFFRQX1M \FIFO_MEM_reg[9][7]  ( .D(n345), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[9][7] ) );
  DFFRQX1M \FIFO_MEM_reg[8][7]  ( .D(n344), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[8][7] ) );
  DFFRQX1M \FIFO_MEM_reg[7][7]  ( .D(n343), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[7][7] ) );
  DFFRQX1M \FIFO_MEM_reg[6][7]  ( .D(n342), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[6][7] ) );
  DFFRQX1M \FIFO_MEM_reg[5][7]  ( .D(n341), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[5][7] ) );
  DFFRQX1M \FIFO_MEM_reg[4][7]  ( .D(n340), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[4][7] ) );
  DFFRQX1M \FIFO_MEM_reg[3][7]  ( .D(n339), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[3][7] ) );
  DFFRQX1M \FIFO_MEM_reg[2][7]  ( .D(n338), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[2][7] ) );
  DFFRQX1M \FIFO_MEM_reg[1][7]  ( .D(n337), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[1][7] ) );
  DFFRQX1M \FIFO_MEM_reg[0][7]  ( .D(n336), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[0][7] ) );
  DFFRQX1M \FIFO_MEM_reg[15][6]  ( .D(n335), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[15][6] ) );
  DFFRQX1M \FIFO_MEM_reg[14][6]  ( .D(n334), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[14][6] ) );
  DFFRQX1M \FIFO_MEM_reg[13][6]  ( .D(n333), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[13][6] ) );
  DFFRQX1M \FIFO_MEM_reg[12][6]  ( .D(n332), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[12][6] ) );
  DFFRQX1M \FIFO_MEM_reg[11][6]  ( .D(n331), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[11][6] ) );
  DFFRQX1M \FIFO_MEM_reg[10][6]  ( .D(n330), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[10][6] ) );
  DFFRQX1M \FIFO_MEM_reg[9][6]  ( .D(n329), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[9][6] ) );
  DFFRQX1M \FIFO_MEM_reg[8][6]  ( .D(n328), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[8][6] ) );
  DFFRQX1M \FIFO_MEM_reg[7][6]  ( .D(n327), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[7][6] ) );
  DFFRQX1M \FIFO_MEM_reg[6][6]  ( .D(n326), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[6][6] ) );
  DFFRQX1M \FIFO_MEM_reg[5][6]  ( .D(n325), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[5][6] ) );
  DFFRQX1M \FIFO_MEM_reg[4][6]  ( .D(n324), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[4][6] ) );
  DFFRQX1M \FIFO_MEM_reg[3][6]  ( .D(n323), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[3][6] ) );
  DFFRQX1M \FIFO_MEM_reg[2][6]  ( .D(n322), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[2][6] ) );
  DFFRQX1M \FIFO_MEM_reg[1][6]  ( .D(n321), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[1][6] ) );
  DFFRQX1M \FIFO_MEM_reg[0][6]  ( .D(n320), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[0][6] ) );
  DFFRQX1M \FIFO_MEM_reg[15][5]  ( .D(n319), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[15][5] ) );
  DFFRQX1M \FIFO_MEM_reg[14][5]  ( .D(n318), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[14][5] ) );
  DFFRQX1M \FIFO_MEM_reg[13][5]  ( .D(n317), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[13][5] ) );
  DFFRQX1M \FIFO_MEM_reg[12][5]  ( .D(n316), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[12][5] ) );
  DFFRQX1M \FIFO_MEM_reg[11][5]  ( .D(n315), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[11][5] ) );
  DFFRQX1M \FIFO_MEM_reg[10][5]  ( .D(n314), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[10][5] ) );
  DFFRQX1M \FIFO_MEM_reg[9][5]  ( .D(n313), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[9][5] ) );
  DFFRQX1M \FIFO_MEM_reg[8][5]  ( .D(n312), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[8][5] ) );
  DFFRQX1M \FIFO_MEM_reg[7][5]  ( .D(n311), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[7][5] ) );
  DFFRQX1M \FIFO_MEM_reg[6][5]  ( .D(n310), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[6][5] ) );
  DFFRQX1M \FIFO_MEM_reg[5][5]  ( .D(n309), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[5][5] ) );
  DFFRQX1M \FIFO_MEM_reg[4][5]  ( .D(n308), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[4][5] ) );
  DFFRQX1M \FIFO_MEM_reg[3][5]  ( .D(n307), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[3][5] ) );
  DFFRQX1M \FIFO_MEM_reg[2][5]  ( .D(n306), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[2][5] ) );
  DFFRQX1M \FIFO_MEM_reg[1][5]  ( .D(n305), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[1][5] ) );
  DFFRQX1M \FIFO_MEM_reg[0][5]  ( .D(n304), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[0][5] ) );
  DFFRQX1M \FIFO_MEM_reg[15][4]  ( .D(n303), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[15][4] ) );
  DFFRQX1M \FIFO_MEM_reg[14][4]  ( .D(n302), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[14][4] ) );
  DFFRQX1M \FIFO_MEM_reg[13][4]  ( .D(n301), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[13][4] ) );
  DFFRQX1M \FIFO_MEM_reg[12][4]  ( .D(n300), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[12][4] ) );
  DFFRQX1M \FIFO_MEM_reg[11][4]  ( .D(n299), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[11][4] ) );
  DFFRQX1M \FIFO_MEM_reg[10][4]  ( .D(n298), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[10][4] ) );
  DFFRQX1M \FIFO_MEM_reg[9][4]  ( .D(n297), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[9][4] ) );
  DFFRQX1M \FIFO_MEM_reg[8][4]  ( .D(n296), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[8][4] ) );
  DFFRQX1M \FIFO_MEM_reg[7][4]  ( .D(n295), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[7][4] ) );
  DFFRQX1M \FIFO_MEM_reg[6][4]  ( .D(n294), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[6][4] ) );
  DFFRQX1M \FIFO_MEM_reg[5][4]  ( .D(n293), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[5][4] ) );
  DFFRQX1M \FIFO_MEM_reg[4][4]  ( .D(n292), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[4][4] ) );
  DFFRQX1M \FIFO_MEM_reg[3][4]  ( .D(n291), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[3][4] ) );
  DFFRQX1M \FIFO_MEM_reg[2][4]  ( .D(n290), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[2][4] ) );
  DFFRQX1M \FIFO_MEM_reg[1][4]  ( .D(n289), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[1][4] ) );
  DFFRQX1M \FIFO_MEM_reg[0][4]  ( .D(n288), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[0][4] ) );
  DFFRQX1M \FIFO_MEM_reg[15][3]  ( .D(n287), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[15][3] ) );
  DFFRQX1M \FIFO_MEM_reg[14][3]  ( .D(n286), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[14][3] ) );
  DFFRQX1M \FIFO_MEM_reg[13][3]  ( .D(n285), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[13][3] ) );
  DFFRQX1M \FIFO_MEM_reg[12][3]  ( .D(n284), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[12][3] ) );
  DFFRQX1M \FIFO_MEM_reg[11][3]  ( .D(n283), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[11][3] ) );
  DFFRQX1M \FIFO_MEM_reg[10][3]  ( .D(n282), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[10][3] ) );
  DFFRQX1M \FIFO_MEM_reg[9][3]  ( .D(n281), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[9][3] ) );
  DFFRQX1M \FIFO_MEM_reg[8][3]  ( .D(n280), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[8][3] ) );
  DFFRQX1M \FIFO_MEM_reg[7][3]  ( .D(n279), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[7][3] ) );
  DFFRQX1M \FIFO_MEM_reg[6][3]  ( .D(n278), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[6][3] ) );
  DFFRQX1M \FIFO_MEM_reg[5][3]  ( .D(n277), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[5][3] ) );
  DFFRQX1M \FIFO_MEM_reg[4][3]  ( .D(n276), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[4][3] ) );
  DFFRQX1M \FIFO_MEM_reg[3][3]  ( .D(n275), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[3][3] ) );
  DFFRQX1M \FIFO_MEM_reg[2][3]  ( .D(n274), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[2][3] ) );
  DFFRQX1M \FIFO_MEM_reg[1][3]  ( .D(n273), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[1][3] ) );
  DFFRQX1M \FIFO_MEM_reg[0][3]  ( .D(n272), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[0][3] ) );
  DFFRQX1M \FIFO_MEM_reg[15][2]  ( .D(n271), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[15][2] ) );
  DFFRQX1M \FIFO_MEM_reg[14][2]  ( .D(n270), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[14][2] ) );
  DFFRQX1M \FIFO_MEM_reg[13][2]  ( .D(n269), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[13][2] ) );
  DFFRQX1M \FIFO_MEM_reg[12][2]  ( .D(n268), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[12][2] ) );
  DFFRQX1M \FIFO_MEM_reg[11][2]  ( .D(n267), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[11][2] ) );
  DFFRQX1M \FIFO_MEM_reg[10][2]  ( .D(n266), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[10][2] ) );
  DFFRQX1M \FIFO_MEM_reg[9][2]  ( .D(n265), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[9][2] ) );
  DFFRQX1M \FIFO_MEM_reg[8][2]  ( .D(n264), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[8][2] ) );
  DFFRQX1M \FIFO_MEM_reg[7][2]  ( .D(n263), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[7][2] ) );
  DFFRQX1M \FIFO_MEM_reg[6][2]  ( .D(n262), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[6][2] ) );
  DFFRQX1M \FIFO_MEM_reg[5][2]  ( .D(n261), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[5][2] ) );
  DFFRQX1M \FIFO_MEM_reg[4][2]  ( .D(n260), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[4][2] ) );
  DFFRQX1M \FIFO_MEM_reg[3][2]  ( .D(n259), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[3][2] ) );
  DFFRQX1M \FIFO_MEM_reg[2][2]  ( .D(n258), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[2][2] ) );
  DFFRQX1M \FIFO_MEM_reg[1][2]  ( .D(n257), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[1][2] ) );
  DFFRQX1M \FIFO_MEM_reg[0][2]  ( .D(n256), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[0][2] ) );
  DFFRQX1M \FIFO_MEM_reg[15][1]  ( .D(n255), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[15][1] ) );
  DFFRQX1M \FIFO_MEM_reg[14][1]  ( .D(n254), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[14][1] ) );
  DFFRQX1M \FIFO_MEM_reg[13][1]  ( .D(n253), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[13][1] ) );
  DFFRQX1M \FIFO_MEM_reg[12][1]  ( .D(n252), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[12][1] ) );
  DFFRQX1M \FIFO_MEM_reg[11][1]  ( .D(n251), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[11][1] ) );
  DFFRQX1M \FIFO_MEM_reg[10][1]  ( .D(n250), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[10][1] ) );
  DFFRQX1M \FIFO_MEM_reg[9][1]  ( .D(n249), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[9][1] ) );
  DFFRQX1M \FIFO_MEM_reg[8][1]  ( .D(n248), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[8][1] ) );
  DFFRQX1M \FIFO_MEM_reg[7][1]  ( .D(n247), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[7][1] ) );
  DFFRQX1M \FIFO_MEM_reg[6][1]  ( .D(n246), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[6][1] ) );
  DFFRQX1M \FIFO_MEM_reg[5][1]  ( .D(n245), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[5][1] ) );
  DFFRQX1M \FIFO_MEM_reg[4][1]  ( .D(n244), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[4][1] ) );
  DFFRQX1M \FIFO_MEM_reg[3][1]  ( .D(n243), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[3][1] ) );
  DFFRQX1M \FIFO_MEM_reg[2][1]  ( .D(n242), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[2][1] ) );
  DFFRQX1M \FIFO_MEM_reg[1][1]  ( .D(n241), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[1][1] ) );
  DFFRQX1M \FIFO_MEM_reg[0][1]  ( .D(n240), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[0][1] ) );
  DFFRQX1M \FIFO_MEM_reg[15][0]  ( .D(n239), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[15][0] ) );
  DFFRQX1M \FIFO_MEM_reg[14][0]  ( .D(n238), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[14][0] ) );
  DFFRQX1M \FIFO_MEM_reg[13][0]  ( .D(n237), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[13][0] ) );
  DFFRQX1M \FIFO_MEM_reg[12][0]  ( .D(n236), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[12][0] ) );
  DFFRQX1M \FIFO_MEM_reg[11][0]  ( .D(n235), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[11][0] ) );
  DFFRQX1M \FIFO_MEM_reg[10][0]  ( .D(n234), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[10][0] ) );
  DFFRQX1M \FIFO_MEM_reg[9][0]  ( .D(n233), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[9][0] ) );
  DFFRQX1M \FIFO_MEM_reg[8][0]  ( .D(n232), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[8][0] ) );
  DFFRQX1M \FIFO_MEM_reg[7][0]  ( .D(n231), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[7][0] ) );
  DFFRQX1M \FIFO_MEM_reg[6][0]  ( .D(n230), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[6][0] ) );
  DFFRQX1M \FIFO_MEM_reg[5][0]  ( .D(n229), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[5][0] ) );
  DFFRQX1M \FIFO_MEM_reg[4][0]  ( .D(n228), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[4][0] ) );
  DFFRQX1M \FIFO_MEM_reg[3][0]  ( .D(n227), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[3][0] ) );
  DFFRQX1M \FIFO_MEM_reg[2][0]  ( .D(n226), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[2][0] ) );
  DFFRQX1M \FIFO_MEM_reg[1][0]  ( .D(n225), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[1][0] ) );
  DFFRQX1M \FIFO_MEM_reg[0][0]  ( .D(n224), .CK(WCLK), .RN(WRST), .Q(
        \FIFO_MEM[0][0] ) );
  OAI2BB2XLM U148 ( .B0(n103), .B1(n197), .A0N(n196), .A1N(read_next[0]), .Y(
        rdata[0]) );
  OAI2BB2XLM U160 ( .B0(n114), .B1(n197), .A0N(n196), .A1N(read_next[1]), .Y(
        rdata[1]) );
  OAI2BB2XLM U172 ( .B0(n125), .B1(n197), .A0N(n196), .A1N(read_next[2]), .Y(
        rdata[2]) );
  OAI2BB2XLM U184 ( .B0(n136), .B1(n197), .A0N(n196), .A1N(read_next[3]), .Y(
        rdata[3]) );
  OAI2BB2XLM U196 ( .B0(n147), .B1(n197), .A0N(n196), .A1N(read_next[4]), .Y(
        rdata[4]) );
  OAI2BB2XLM U208 ( .B0(n158), .B1(n197), .A0N(n196), .A1N(read_next[5]), .Y(
        rdata[5]) );
  OAI2BB2XLM U220 ( .B0(n169), .B1(n197), .A0N(n196), .A1N(read_next[6]), .Y(
        rdata[6]) );
  OAI2BB2XLM U232 ( .B0(n198), .B1(n197), .A0N(n196), .A1N(read_next[7]), .Y(
        rdata[7]) );
  AOI2BB2XLM U235 ( .B0(n207), .B1(n199), .A0N(\FIFO_MEM[0][0] ), .A1N(n207), 
        .Y(n224) );
  AOI2BB2XLM U236 ( .B0(n208), .B1(n199), .A0N(\FIFO_MEM[1][0] ), .A1N(n208), 
        .Y(n225) );
  AOI2BB2XLM U237 ( .B0(n209), .B1(n199), .A0N(\FIFO_MEM[2][0] ), .A1N(n209), 
        .Y(n226) );
  AOI2BB2XLM U238 ( .B0(n210), .B1(n199), .A0N(\FIFO_MEM[3][0] ), .A1N(n210), 
        .Y(n227) );
  AOI2BB2XLM U239 ( .B0(n211), .B1(n199), .A0N(\FIFO_MEM[4][0] ), .A1N(n211), 
        .Y(n228) );
  AOI2BB2XLM U240 ( .B0(n212), .B1(n199), .A0N(\FIFO_MEM[5][0] ), .A1N(n212), 
        .Y(n229) );
  AOI2BB2XLM U241 ( .B0(n213), .B1(n199), .A0N(\FIFO_MEM[6][0] ), .A1N(n213), 
        .Y(n230) );
  AOI2BB2XLM U242 ( .B0(n214), .B1(n199), .A0N(\FIFO_MEM[7][0] ), .A1N(n214), 
        .Y(n231) );
  AOI2BB2XLM U243 ( .B0(n215), .B1(n199), .A0N(\FIFO_MEM[8][0] ), .A1N(n215), 
        .Y(n232) );
  AOI2BB2XLM U244 ( .B0(n216), .B1(n199), .A0N(\FIFO_MEM[9][0] ), .A1N(n216), 
        .Y(n233) );
  AOI2BB2XLM U245 ( .B0(n217), .B1(n199), .A0N(\FIFO_MEM[10][0] ), .A1N(n217), 
        .Y(n234) );
  AOI2BB2XLM U246 ( .B0(n218), .B1(n199), .A0N(\FIFO_MEM[11][0] ), .A1N(n218), 
        .Y(n235) );
  AOI2BB2XLM U247 ( .B0(n219), .B1(n199), .A0N(\FIFO_MEM[12][0] ), .A1N(n219), 
        .Y(n236) );
  AOI2BB2XLM U248 ( .B0(n220), .B1(n199), .A0N(\FIFO_MEM[13][0] ), .A1N(n220), 
        .Y(n237) );
  AOI2BB2XLM U249 ( .B0(n221), .B1(n199), .A0N(\FIFO_MEM[14][0] ), .A1N(n221), 
        .Y(n238) );
  AOI2BB2XLM U250 ( .B0(n223), .B1(n199), .A0N(\FIFO_MEM[15][0] ), .A1N(n223), 
        .Y(n239) );
  AOI2BB2XLM U252 ( .B0(n207), .B1(n200), .A0N(\FIFO_MEM[0][1] ), .A1N(n207), 
        .Y(n240) );
  AOI2BB2XLM U253 ( .B0(n208), .B1(n200), .A0N(\FIFO_MEM[1][1] ), .A1N(n208), 
        .Y(n241) );
  AOI2BB2XLM U254 ( .B0(n209), .B1(n200), .A0N(\FIFO_MEM[2][1] ), .A1N(n209), 
        .Y(n242) );
  AOI2BB2XLM U255 ( .B0(n210), .B1(n200), .A0N(\FIFO_MEM[3][1] ), .A1N(n210), 
        .Y(n243) );
  AOI2BB2XLM U256 ( .B0(n211), .B1(n200), .A0N(\FIFO_MEM[4][1] ), .A1N(n211), 
        .Y(n244) );
  AOI2BB2XLM U257 ( .B0(n212), .B1(n200), .A0N(\FIFO_MEM[5][1] ), .A1N(n212), 
        .Y(n245) );
  AOI2BB2XLM U258 ( .B0(n213), .B1(n200), .A0N(\FIFO_MEM[6][1] ), .A1N(n213), 
        .Y(n246) );
  AOI2BB2XLM U259 ( .B0(n214), .B1(n200), .A0N(\FIFO_MEM[7][1] ), .A1N(n214), 
        .Y(n247) );
  AOI2BB2XLM U260 ( .B0(n215), .B1(n200), .A0N(\FIFO_MEM[8][1] ), .A1N(n215), 
        .Y(n248) );
  AOI2BB2XLM U261 ( .B0(n216), .B1(n200), .A0N(\FIFO_MEM[9][1] ), .A1N(n216), 
        .Y(n249) );
  AOI2BB2XLM U262 ( .B0(n217), .B1(n200), .A0N(\FIFO_MEM[10][1] ), .A1N(n217), 
        .Y(n250) );
  AOI2BB2XLM U263 ( .B0(n218), .B1(n200), .A0N(\FIFO_MEM[11][1] ), .A1N(n218), 
        .Y(n251) );
  AOI2BB2XLM U264 ( .B0(n219), .B1(n200), .A0N(\FIFO_MEM[12][1] ), .A1N(n219), 
        .Y(n252) );
  AOI2BB2XLM U265 ( .B0(n220), .B1(n200), .A0N(\FIFO_MEM[13][1] ), .A1N(n220), 
        .Y(n253) );
  AOI2BB2XLM U266 ( .B0(n221), .B1(n200), .A0N(\FIFO_MEM[14][1] ), .A1N(n221), 
        .Y(n254) );
  AOI2BB2XLM U267 ( .B0(n223), .B1(n200), .A0N(\FIFO_MEM[15][1] ), .A1N(n223), 
        .Y(n255) );
  AOI2BB2XLM U269 ( .B0(n207), .B1(n201), .A0N(\FIFO_MEM[0][2] ), .A1N(n207), 
        .Y(n256) );
  AOI2BB2XLM U270 ( .B0(n208), .B1(n201), .A0N(\FIFO_MEM[1][2] ), .A1N(n208), 
        .Y(n257) );
  AOI2BB2XLM U271 ( .B0(n209), .B1(n201), .A0N(\FIFO_MEM[2][2] ), .A1N(n209), 
        .Y(n258) );
  AOI2BB2XLM U272 ( .B0(n210), .B1(n201), .A0N(\FIFO_MEM[3][2] ), .A1N(n210), 
        .Y(n259) );
  AOI2BB2XLM U273 ( .B0(n211), .B1(n201), .A0N(\FIFO_MEM[4][2] ), .A1N(n211), 
        .Y(n260) );
  AOI2BB2XLM U274 ( .B0(n212), .B1(n201), .A0N(\FIFO_MEM[5][2] ), .A1N(n212), 
        .Y(n261) );
  AOI2BB2XLM U275 ( .B0(n213), .B1(n201), .A0N(\FIFO_MEM[6][2] ), .A1N(n213), 
        .Y(n262) );
  AOI2BB2XLM U276 ( .B0(n214), .B1(n201), .A0N(\FIFO_MEM[7][2] ), .A1N(n214), 
        .Y(n263) );
  AOI2BB2XLM U277 ( .B0(n215), .B1(n201), .A0N(\FIFO_MEM[8][2] ), .A1N(n215), 
        .Y(n264) );
  AOI2BB2XLM U278 ( .B0(n216), .B1(n201), .A0N(\FIFO_MEM[9][2] ), .A1N(n216), 
        .Y(n265) );
  AOI2BB2XLM U279 ( .B0(n217), .B1(n201), .A0N(\FIFO_MEM[10][2] ), .A1N(n217), 
        .Y(n266) );
  AOI2BB2XLM U280 ( .B0(n218), .B1(n201), .A0N(\FIFO_MEM[11][2] ), .A1N(n218), 
        .Y(n267) );
  AOI2BB2XLM U281 ( .B0(n219), .B1(n201), .A0N(\FIFO_MEM[12][2] ), .A1N(n219), 
        .Y(n268) );
  AOI2BB2XLM U282 ( .B0(n220), .B1(n201), .A0N(\FIFO_MEM[13][2] ), .A1N(n220), 
        .Y(n269) );
  AOI2BB2XLM U283 ( .B0(n221), .B1(n201), .A0N(\FIFO_MEM[14][2] ), .A1N(n221), 
        .Y(n270) );
  AOI2BB2XLM U284 ( .B0(n223), .B1(n201), .A0N(\FIFO_MEM[15][2] ), .A1N(n223), 
        .Y(n271) );
  AOI2BB2XLM U286 ( .B0(n207), .B1(n202), .A0N(\FIFO_MEM[0][3] ), .A1N(n207), 
        .Y(n272) );
  AOI2BB2XLM U287 ( .B0(n208), .B1(n202), .A0N(\FIFO_MEM[1][3] ), .A1N(n208), 
        .Y(n273) );
  AOI2BB2XLM U288 ( .B0(n209), .B1(n202), .A0N(\FIFO_MEM[2][3] ), .A1N(n209), 
        .Y(n274) );
  AOI2BB2XLM U289 ( .B0(n210), .B1(n202), .A0N(\FIFO_MEM[3][3] ), .A1N(n210), 
        .Y(n275) );
  AOI2BB2XLM U290 ( .B0(n211), .B1(n202), .A0N(\FIFO_MEM[4][3] ), .A1N(n211), 
        .Y(n276) );
  AOI2BB2XLM U291 ( .B0(n212), .B1(n202), .A0N(\FIFO_MEM[5][3] ), .A1N(n212), 
        .Y(n277) );
  AOI2BB2XLM U292 ( .B0(n213), .B1(n202), .A0N(\FIFO_MEM[6][3] ), .A1N(n213), 
        .Y(n278) );
  AOI2BB2XLM U293 ( .B0(n214), .B1(n202), .A0N(\FIFO_MEM[7][3] ), .A1N(n214), 
        .Y(n279) );
  AOI2BB2XLM U294 ( .B0(n215), .B1(n202), .A0N(\FIFO_MEM[8][3] ), .A1N(n215), 
        .Y(n280) );
  AOI2BB2XLM U295 ( .B0(n216), .B1(n202), .A0N(\FIFO_MEM[9][3] ), .A1N(n216), 
        .Y(n281) );
  AOI2BB2XLM U296 ( .B0(n217), .B1(n202), .A0N(\FIFO_MEM[10][3] ), .A1N(n217), 
        .Y(n282) );
  AOI2BB2XLM U297 ( .B0(n218), .B1(n202), .A0N(\FIFO_MEM[11][3] ), .A1N(n218), 
        .Y(n283) );
  AOI2BB2XLM U298 ( .B0(n219), .B1(n202), .A0N(\FIFO_MEM[12][3] ), .A1N(n219), 
        .Y(n284) );
  AOI2BB2XLM U299 ( .B0(n220), .B1(n202), .A0N(\FIFO_MEM[13][3] ), .A1N(n220), 
        .Y(n285) );
  AOI2BB2XLM U300 ( .B0(n221), .B1(n202), .A0N(\FIFO_MEM[14][3] ), .A1N(n221), 
        .Y(n286) );
  AOI2BB2XLM U301 ( .B0(n223), .B1(n202), .A0N(\FIFO_MEM[15][3] ), .A1N(n223), 
        .Y(n287) );
  AOI2BB2XLM U303 ( .B0(n207), .B1(n203), .A0N(\FIFO_MEM[0][4] ), .A1N(n207), 
        .Y(n288) );
  AOI2BB2XLM U304 ( .B0(n208), .B1(n203), .A0N(\FIFO_MEM[1][4] ), .A1N(n208), 
        .Y(n289) );
  AOI2BB2XLM U305 ( .B0(n209), .B1(n203), .A0N(\FIFO_MEM[2][4] ), .A1N(n209), 
        .Y(n290) );
  AOI2BB2XLM U306 ( .B0(n210), .B1(n203), .A0N(\FIFO_MEM[3][4] ), .A1N(n210), 
        .Y(n291) );
  AOI2BB2XLM U307 ( .B0(n211), .B1(n203), .A0N(\FIFO_MEM[4][4] ), .A1N(n211), 
        .Y(n292) );
  AOI2BB2XLM U308 ( .B0(n212), .B1(n203), .A0N(\FIFO_MEM[5][4] ), .A1N(n212), 
        .Y(n293) );
  AOI2BB2XLM U309 ( .B0(n213), .B1(n203), .A0N(\FIFO_MEM[6][4] ), .A1N(n213), 
        .Y(n294) );
  AOI2BB2XLM U310 ( .B0(n214), .B1(n203), .A0N(\FIFO_MEM[7][4] ), .A1N(n214), 
        .Y(n295) );
  AOI2BB2XLM U311 ( .B0(n215), .B1(n203), .A0N(\FIFO_MEM[8][4] ), .A1N(n215), 
        .Y(n296) );
  AOI2BB2XLM U312 ( .B0(n216), .B1(n203), .A0N(\FIFO_MEM[9][4] ), .A1N(n216), 
        .Y(n297) );
  AOI2BB2XLM U313 ( .B0(n217), .B1(n203), .A0N(\FIFO_MEM[10][4] ), .A1N(n217), 
        .Y(n298) );
  AOI2BB2XLM U314 ( .B0(n218), .B1(n203), .A0N(\FIFO_MEM[11][4] ), .A1N(n218), 
        .Y(n299) );
  AOI2BB2XLM U315 ( .B0(n219), .B1(n203), .A0N(\FIFO_MEM[12][4] ), .A1N(n219), 
        .Y(n300) );
  AOI2BB2XLM U316 ( .B0(n220), .B1(n203), .A0N(\FIFO_MEM[13][4] ), .A1N(n220), 
        .Y(n301) );
  AOI2BB2XLM U317 ( .B0(n221), .B1(n203), .A0N(\FIFO_MEM[14][4] ), .A1N(n221), 
        .Y(n302) );
  AOI2BB2XLM U318 ( .B0(n223), .B1(n203), .A0N(\FIFO_MEM[15][4] ), .A1N(n223), 
        .Y(n303) );
  AOI2BB2XLM U320 ( .B0(n207), .B1(n204), .A0N(\FIFO_MEM[0][5] ), .A1N(n207), 
        .Y(n304) );
  AOI2BB2XLM U321 ( .B0(n208), .B1(n204), .A0N(\FIFO_MEM[1][5] ), .A1N(n208), 
        .Y(n305) );
  AOI2BB2XLM U322 ( .B0(n209), .B1(n204), .A0N(\FIFO_MEM[2][5] ), .A1N(n209), 
        .Y(n306) );
  AOI2BB2XLM U323 ( .B0(n210), .B1(n204), .A0N(\FIFO_MEM[3][5] ), .A1N(n210), 
        .Y(n307) );
  AOI2BB2XLM U324 ( .B0(n211), .B1(n204), .A0N(\FIFO_MEM[4][5] ), .A1N(n211), 
        .Y(n308) );
  AOI2BB2XLM U325 ( .B0(n212), .B1(n204), .A0N(\FIFO_MEM[5][5] ), .A1N(n212), 
        .Y(n309) );
  AOI2BB2XLM U326 ( .B0(n213), .B1(n204), .A0N(\FIFO_MEM[6][5] ), .A1N(n213), 
        .Y(n310) );
  AOI2BB2XLM U327 ( .B0(n214), .B1(n204), .A0N(\FIFO_MEM[7][5] ), .A1N(n214), 
        .Y(n311) );
  AOI2BB2XLM U328 ( .B0(n215), .B1(n204), .A0N(\FIFO_MEM[8][5] ), .A1N(n215), 
        .Y(n312) );
  AOI2BB2XLM U329 ( .B0(n216), .B1(n204), .A0N(\FIFO_MEM[9][5] ), .A1N(n216), 
        .Y(n313) );
  AOI2BB2XLM U330 ( .B0(n217), .B1(n204), .A0N(\FIFO_MEM[10][5] ), .A1N(n217), 
        .Y(n314) );
  AOI2BB2XLM U331 ( .B0(n218), .B1(n204), .A0N(\FIFO_MEM[11][5] ), .A1N(n218), 
        .Y(n315) );
  AOI2BB2XLM U332 ( .B0(n219), .B1(n204), .A0N(\FIFO_MEM[12][5] ), .A1N(n219), 
        .Y(n316) );
  AOI2BB2XLM U333 ( .B0(n220), .B1(n204), .A0N(\FIFO_MEM[13][5] ), .A1N(n220), 
        .Y(n317) );
  AOI2BB2XLM U334 ( .B0(n221), .B1(n204), .A0N(\FIFO_MEM[14][5] ), .A1N(n221), 
        .Y(n318) );
  AOI2BB2XLM U335 ( .B0(n223), .B1(n204), .A0N(\FIFO_MEM[15][5] ), .A1N(n223), 
        .Y(n319) );
  AOI2BB2XLM U337 ( .B0(n207), .B1(n205), .A0N(\FIFO_MEM[0][6] ), .A1N(n207), 
        .Y(n320) );
  AOI2BB2XLM U338 ( .B0(n208), .B1(n205), .A0N(\FIFO_MEM[1][6] ), .A1N(n208), 
        .Y(n321) );
  AOI2BB2XLM U339 ( .B0(n209), .B1(n205), .A0N(\FIFO_MEM[2][6] ), .A1N(n209), 
        .Y(n322) );
  AOI2BB2XLM U340 ( .B0(n210), .B1(n205), .A0N(\FIFO_MEM[3][6] ), .A1N(n210), 
        .Y(n323) );
  AOI2BB2XLM U341 ( .B0(n211), .B1(n205), .A0N(\FIFO_MEM[4][6] ), .A1N(n211), 
        .Y(n324) );
  AOI2BB2XLM U342 ( .B0(n212), .B1(n205), .A0N(\FIFO_MEM[5][6] ), .A1N(n212), 
        .Y(n325) );
  AOI2BB2XLM U343 ( .B0(n213), .B1(n205), .A0N(\FIFO_MEM[6][6] ), .A1N(n213), 
        .Y(n326) );
  AOI2BB2XLM U344 ( .B0(n214), .B1(n205), .A0N(\FIFO_MEM[7][6] ), .A1N(n214), 
        .Y(n327) );
  AOI2BB2XLM U345 ( .B0(n215), .B1(n205), .A0N(\FIFO_MEM[8][6] ), .A1N(n215), 
        .Y(n328) );
  AOI2BB2XLM U346 ( .B0(n216), .B1(n205), .A0N(\FIFO_MEM[9][6] ), .A1N(n216), 
        .Y(n329) );
  AOI2BB2XLM U347 ( .B0(n217), .B1(n205), .A0N(\FIFO_MEM[10][6] ), .A1N(n217), 
        .Y(n330) );
  AOI2BB2XLM U348 ( .B0(n218), .B1(n205), .A0N(\FIFO_MEM[11][6] ), .A1N(n218), 
        .Y(n331) );
  AOI2BB2XLM U349 ( .B0(n219), .B1(n205), .A0N(\FIFO_MEM[12][6] ), .A1N(n219), 
        .Y(n332) );
  AOI2BB2XLM U350 ( .B0(n220), .B1(n205), .A0N(\FIFO_MEM[13][6] ), .A1N(n220), 
        .Y(n333) );
  AOI2BB2XLM U351 ( .B0(n221), .B1(n205), .A0N(\FIFO_MEM[14][6] ), .A1N(n221), 
        .Y(n334) );
  AOI2BB2XLM U352 ( .B0(n223), .B1(n205), .A0N(\FIFO_MEM[15][6] ), .A1N(n223), 
        .Y(n335) );
  AOI2BB2XLM U354 ( .B0(n207), .B1(n222), .A0N(\FIFO_MEM[0][7] ), .A1N(n207), 
        .Y(n336) );
  AOI2BB2XLM U355 ( .B0(n208), .B1(n222), .A0N(\FIFO_MEM[1][7] ), .A1N(n208), 
        .Y(n337) );
  AOI2BB2XLM U356 ( .B0(n209), .B1(n222), .A0N(\FIFO_MEM[2][7] ), .A1N(n209), 
        .Y(n338) );
  AOI2BB2XLM U357 ( .B0(n210), .B1(n222), .A0N(\FIFO_MEM[3][7] ), .A1N(n210), 
        .Y(n339) );
  AOI2BB2XLM U358 ( .B0(n211), .B1(n222), .A0N(\FIFO_MEM[4][7] ), .A1N(n211), 
        .Y(n340) );
  AOI2BB2XLM U359 ( .B0(n212), .B1(n222), .A0N(\FIFO_MEM[5][7] ), .A1N(n212), 
        .Y(n341) );
  AOI2BB2XLM U360 ( .B0(n213), .B1(n222), .A0N(\FIFO_MEM[6][7] ), .A1N(n213), 
        .Y(n342) );
  AOI2BB2XLM U361 ( .B0(n214), .B1(n222), .A0N(\FIFO_MEM[7][7] ), .A1N(n214), 
        .Y(n343) );
  AOI2BB2XLM U362 ( .B0(n215), .B1(n222), .A0N(\FIFO_MEM[8][7] ), .A1N(n215), 
        .Y(n344) );
  AOI2BB2XLM U363 ( .B0(n216), .B1(n222), .A0N(\FIFO_MEM[9][7] ), .A1N(n216), 
        .Y(n345) );
  AOI2BB2XLM U364 ( .B0(n217), .B1(n222), .A0N(\FIFO_MEM[10][7] ), .A1N(n217), 
        .Y(n346) );
  AOI2BB2XLM U365 ( .B0(n218), .B1(n222), .A0N(\FIFO_MEM[11][7] ), .A1N(n218), 
        .Y(n347) );
  AOI2BB2XLM U366 ( .B0(n219), .B1(n222), .A0N(\FIFO_MEM[12][7] ), .A1N(n219), 
        .Y(n348) );
  AOI2BB2XLM U367 ( .B0(n220), .B1(n222), .A0N(\FIFO_MEM[13][7] ), .A1N(n220), 
        .Y(n349) );
  AOI2BB2XLM U368 ( .B0(n221), .B1(n222), .A0N(\FIFO_MEM[14][7] ), .A1N(n221), 
        .Y(n350) );
  AOI2BB2XLM U369 ( .B0(n223), .B1(n222), .A0N(\FIFO_MEM[15][7] ), .A1N(n223), 
        .Y(n351) );
  OR2X1M U35 ( .A(n16), .B(n15), .Y(N57) );
  OR2X1M U46 ( .A(n26), .B(n25), .Y(N58) );
  OR2X1M U57 ( .A(n36), .B(n35), .Y(N59) );
  OR2X1M U68 ( .A(n46), .B(n45), .Y(N60) );
  OR2X1M U79 ( .A(n56), .B(n55), .Y(N61) );
  OR2X1M U90 ( .A(n66), .B(n65), .Y(N62) );
  OR2X1M U101 ( .A(n76), .B(n75), .Y(N63) );
  OR2X1M U112 ( .A(n86), .B(n85), .Y(N64) );
  NAND2BXLM U113 ( .AN(raddr[1]), .B(raddr[0]), .Y(n93) );
  NAND2BXLM U114 ( .AN(raddr[3]), .B(raddr[2]), .Y(n87) );
  NOR2XLM U115 ( .A(n93), .B(n87), .Y(n171) );
  NOR3XLM U116 ( .A(raddr[0]), .B(raddr[1]), .C(n87), .Y(n170) );
  AOI22XLM U173 ( .A0(n171), .A1(\FIFO_MEM[5][3] ), .B0(n170), .B1(
        \FIFO_MEM[4][3] ), .Y(n129) );
  NAND2XLM U118 ( .A(raddr[0]), .B(raddr[1]), .Y(n94) );
  NOR2XLM U119 ( .A(n94), .B(n87), .Y(n173) );
  NAND2BXLM U120 ( .AN(raddr[0]), .B(raddr[1]), .Y(n96) );
  NOR2XLM U121 ( .A(n96), .B(n87), .Y(n172) );
  AOI22XLM U174 ( .A0(n173), .A1(\FIFO_MEM[7][3] ), .B0(n172), .B1(
        \FIFO_MEM[6][3] ), .Y(n128) );
  NOR3XLM U123 ( .A(raddr[2]), .B(raddr[3]), .C(n93), .Y(n175) );
  NOR4XLM U124 ( .A(raddr[0]), .B(raddr[1]), .C(raddr[2]), .D(raddr[3]), .Y(
        n174) );
  NOR3XLM U126 ( .A(raddr[2]), .B(raddr[3]), .C(n94), .Y(n177) );
  NOR3XLM U127 ( .A(raddr[2]), .B(raddr[3]), .C(n96), .Y(n176) );
  NAND4XLM U177 ( .A(n129), .B(n128), .C(n127), .D(n126), .Y(n135) );
  NAND2XLM U130 ( .A(raddr[2]), .B(raddr[3]), .Y(n92) );
  NOR2XLM U131 ( .A(n92), .B(n93), .Y(n183) );
  NOR3XLM U132 ( .A(raddr[0]), .B(raddr[1]), .C(n92), .Y(n182) );
  AOI22XLM U178 ( .A0(n183), .A1(\FIFO_MEM[13][3] ), .B0(n182), .B1(
        \FIFO_MEM[12][3] ), .Y(n133) );
  NOR2XLM U134 ( .A(n94), .B(n92), .Y(n185) );
  NOR2XLM U135 ( .A(n92), .B(n96), .Y(n184) );
  AOI22XLM U179 ( .A0(n185), .A1(\FIFO_MEM[15][3] ), .B0(n184), .B1(
        \FIFO_MEM[14][3] ), .Y(n132) );
  NOR2XLM U138 ( .A(n93), .B(n95), .Y(n187) );
  NOR3XLM U139 ( .A(raddr[0]), .B(raddr[1]), .C(n95), .Y(n186) );
  AOI22XLM U180 ( .A0(n187), .A1(\FIFO_MEM[9][3] ), .B0(n186), .B1(
        \FIFO_MEM[8][3] ), .Y(n131) );
  NOR2XLM U141 ( .A(n94), .B(n95), .Y(n189) );
  AOI22XLM U181 ( .A0(n189), .A1(\FIFO_MEM[11][3] ), .B0(n188), .B1(
        \FIFO_MEM[10][3] ), .Y(n130) );
  NAND4XLM U182 ( .A(n133), .B(n132), .C(n131), .D(n130), .Y(n134) );
  AOI22XLM U161 ( .A0(n171), .A1(\FIFO_MEM[5][2] ), .B0(n170), .B1(
        \FIFO_MEM[4][2] ), .Y(n118) );
  AOI22XLM U162 ( .A0(n173), .A1(\FIFO_MEM[7][2] ), .B0(n172), .B1(
        \FIFO_MEM[6][2] ), .Y(n117) );
  NAND4XLM U165 ( .A(n118), .B(n117), .C(n116), .D(n115), .Y(n124) );
  AOI22XLM U166 ( .A0(n183), .A1(\FIFO_MEM[13][2] ), .B0(n182), .B1(
        \FIFO_MEM[12][2] ), .Y(n122) );
  AOI22XLM U167 ( .A0(n185), .A1(\FIFO_MEM[15][2] ), .B0(n184), .B1(
        \FIFO_MEM[14][2] ), .Y(n121) );
  AOI22XLM U168 ( .A0(n187), .A1(\FIFO_MEM[9][2] ), .B0(n186), .B1(
        \FIFO_MEM[8][2] ), .Y(n120) );
  AOI22XLM U169 ( .A0(n189), .A1(\FIFO_MEM[11][2] ), .B0(n188), .B1(
        \FIFO_MEM[10][2] ), .Y(n119) );
  NAND4XLM U170 ( .A(n122), .B(n121), .C(n120), .D(n119), .Y(n123) );
  NOR2XLM U171 ( .A(n124), .B(n123), .Y(n125) );
  AOI22XLM U209 ( .A0(n171), .A1(\FIFO_MEM[5][6] ), .B0(n170), .B1(
        \FIFO_MEM[4][6] ), .Y(n162) );
  AOI22XLM U210 ( .A0(n173), .A1(\FIFO_MEM[7][6] ), .B0(n172), .B1(
        \FIFO_MEM[6][6] ), .Y(n161) );
  NAND4XLM U213 ( .A(n162), .B(n161), .C(n160), .D(n159), .Y(n168) );
  AOI22XLM U214 ( .A0(n183), .A1(\FIFO_MEM[13][6] ), .B0(n182), .B1(
        \FIFO_MEM[12][6] ), .Y(n166) );
  AOI22XLM U215 ( .A0(n185), .A1(\FIFO_MEM[15][6] ), .B0(n184), .B1(
        \FIFO_MEM[14][6] ), .Y(n165) );
  AOI22XLM U216 ( .A0(n187), .A1(\FIFO_MEM[9][6] ), .B0(n186), .B1(
        \FIFO_MEM[8][6] ), .Y(n164) );
  AOI22XLM U217 ( .A0(n189), .A1(\FIFO_MEM[11][6] ), .B0(n188), .B1(
        \FIFO_MEM[10][6] ), .Y(n163) );
  NAND4XLM U218 ( .A(n166), .B(n165), .C(n164), .D(n163), .Y(n167) );
  NOR2XLM U219 ( .A(n168), .B(n167), .Y(n169) );
  AOI22XLM U197 ( .A0(n171), .A1(\FIFO_MEM[5][5] ), .B0(n170), .B1(
        \FIFO_MEM[4][5] ), .Y(n151) );
  AOI22XLM U198 ( .A0(n173), .A1(\FIFO_MEM[7][5] ), .B0(n172), .B1(
        \FIFO_MEM[6][5] ), .Y(n150) );
  NAND4XLM U201 ( .A(n151), .B(n150), .C(n149), .D(n148), .Y(n157) );
  AOI22XLM U202 ( .A0(n183), .A1(\FIFO_MEM[13][5] ), .B0(n182), .B1(
        \FIFO_MEM[12][5] ), .Y(n155) );
  AOI22XLM U203 ( .A0(n185), .A1(\FIFO_MEM[15][5] ), .B0(n184), .B1(
        \FIFO_MEM[14][5] ), .Y(n154) );
  AOI22XLM U204 ( .A0(n187), .A1(\FIFO_MEM[9][5] ), .B0(n186), .B1(
        \FIFO_MEM[8][5] ), .Y(n153) );
  AOI22XLM U205 ( .A0(n189), .A1(\FIFO_MEM[11][5] ), .B0(n188), .B1(
        \FIFO_MEM[10][5] ), .Y(n152) );
  NOR2XLM U207 ( .A(n157), .B(n156), .Y(n158) );
  AOI22XLM U117 ( .A0(\FIFO_MEM[5][0] ), .A1(n171), .B0(\FIFO_MEM[4][0] ), 
        .B1(n170), .Y(n91) );
  AOI22XLM U122 ( .A0(\FIFO_MEM[7][0] ), .A1(n173), .B0(\FIFO_MEM[6][0] ), 
        .B1(n172), .Y(n90) );
  AOI22XLM U125 ( .A0(\FIFO_MEM[1][0] ), .A1(n175), .B0(\FIFO_MEM[0][0] ), 
        .B1(n174), .Y(n89) );
  AOI22XLM U128 ( .A0(\FIFO_MEM[3][0] ), .A1(n177), .B0(\FIFO_MEM[2][0] ), 
        .B1(n176), .Y(n88) );
  NAND4XLM U129 ( .A(n91), .B(n90), .C(n89), .D(n88), .Y(n102) );
  AOI22XLM U133 ( .A0(\FIFO_MEM[13][0] ), .A1(n183), .B0(\FIFO_MEM[12][0] ), 
        .B1(n182), .Y(n100) );
  AOI22XLM U136 ( .A0(\FIFO_MEM[15][0] ), .A1(n185), .B0(\FIFO_MEM[14][0] ), 
        .B1(n184), .Y(n99) );
  AOI22XLM U140 ( .A0(\FIFO_MEM[9][0] ), .A1(n187), .B0(\FIFO_MEM[8][0] ), 
        .B1(n186), .Y(n98) );
  AOI22XLM U143 ( .A0(\FIFO_MEM[11][0] ), .A1(n189), .B0(\FIFO_MEM[10][0] ), 
        .B1(n188), .Y(n97) );
  NAND4XLM U144 ( .A(n100), .B(n99), .C(n98), .D(n97), .Y(n101) );
  NOR2XLM U145 ( .A(n102), .B(n101), .Y(n103) );
  AOI22XLM U185 ( .A0(n171), .A1(\FIFO_MEM[5][4] ), .B0(n170), .B1(
        \FIFO_MEM[4][4] ), .Y(n140) );
  AOI22XLM U186 ( .A0(n173), .A1(\FIFO_MEM[7][4] ), .B0(n172), .B1(
        \FIFO_MEM[6][4] ), .Y(n139) );
  NAND4XLM U189 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n146) );
  AOI22XLM U190 ( .A0(n183), .A1(\FIFO_MEM[13][4] ), .B0(n182), .B1(
        \FIFO_MEM[12][4] ), .Y(n144) );
  AOI22XLM U191 ( .A0(n185), .A1(\FIFO_MEM[15][4] ), .B0(n184), .B1(
        \FIFO_MEM[14][4] ), .Y(n143) );
  AOI22XLM U193 ( .A0(n189), .A1(\FIFO_MEM[11][4] ), .B0(n188), .B1(
        \FIFO_MEM[10][4] ), .Y(n141) );
  NAND4XLM U194 ( .A(n144), .B(n143), .C(n142), .D(n141), .Y(n145) );
  AOI22XLM U149 ( .A0(n171), .A1(\FIFO_MEM[5][1] ), .B0(n170), .B1(
        \FIFO_MEM[4][1] ), .Y(n107) );
  AOI22XLM U150 ( .A0(n173), .A1(\FIFO_MEM[7][1] ), .B0(n172), .B1(
        \FIFO_MEM[6][1] ), .Y(n106) );
  NAND4XLM U153 ( .A(n107), .B(n106), .C(n105), .D(n104), .Y(n113) );
  AOI22XLM U154 ( .A0(n183), .A1(\FIFO_MEM[13][1] ), .B0(n182), .B1(
        \FIFO_MEM[12][1] ), .Y(n111) );
  AOI22XLM U156 ( .A0(n187), .A1(\FIFO_MEM[9][1] ), .B0(n186), .B1(
        \FIFO_MEM[8][1] ), .Y(n109) );
  AOI22XLM U157 ( .A0(n189), .A1(\FIFO_MEM[11][1] ), .B0(n188), .B1(
        \FIFO_MEM[10][1] ), .Y(n108) );
  NAND4XLM U158 ( .A(n111), .B(n110), .C(n109), .D(n108), .Y(n112) );
  NOR2XLM U159 ( .A(n113), .B(n112), .Y(n114) );
  AOI22XLM U221 ( .A0(n171), .A1(\FIFO_MEM[5][7] ), .B0(n170), .B1(
        \FIFO_MEM[4][7] ), .Y(n181) );
  AOI22XLM U222 ( .A0(n173), .A1(\FIFO_MEM[7][7] ), .B0(n172), .B1(
        \FIFO_MEM[6][7] ), .Y(n180) );
  NAND4XLM U225 ( .A(n181), .B(n180), .C(n179), .D(n178), .Y(n195) );
  AOI22XLM U226 ( .A0(n183), .A1(\FIFO_MEM[13][7] ), .B0(n182), .B1(
        \FIFO_MEM[12][7] ), .Y(n193) );
  AOI22XLM U227 ( .A0(n185), .A1(\FIFO_MEM[15][7] ), .B0(n184), .B1(
        \FIFO_MEM[14][7] ), .Y(n192) );
  AOI22XLM U228 ( .A0(n187), .A1(\FIFO_MEM[9][7] ), .B0(n186), .B1(
        \FIFO_MEM[8][7] ), .Y(n191) );
  AOI22XLM U229 ( .A0(n189), .A1(\FIFO_MEM[11][7] ), .B0(n188), .B1(
        \FIFO_MEM[10][7] ), .Y(n190) );
  NAND4XLM U230 ( .A(n193), .B(n192), .C(n191), .D(n190), .Y(n194) );
  NOR2XLM U231 ( .A(n195), .B(n194), .Y(n198) );
  AOI22XLM U175 ( .A0(n175), .A1(\FIFO_MEM[1][3] ), .B0(n174), .B1(
        \FIFO_MEM[0][3] ), .Y(n127) );
  AOI22XLM U176 ( .A0(n177), .A1(\FIFO_MEM[3][3] ), .B0(n176), .B1(
        \FIFO_MEM[2][3] ), .Y(n126) );
  AOI22XLM U163 ( .A0(n175), .A1(\FIFO_MEM[1][2] ), .B0(n174), .B1(
        \FIFO_MEM[0][2] ), .Y(n116) );
  AOI22XLM U164 ( .A0(n177), .A1(\FIFO_MEM[3][2] ), .B0(n176), .B1(
        \FIFO_MEM[2][2] ), .Y(n115) );
  AOI22XLM U211 ( .A0(n175), .A1(\FIFO_MEM[1][6] ), .B0(n174), .B1(
        \FIFO_MEM[0][6] ), .Y(n160) );
  AOI22XLM U212 ( .A0(n177), .A1(\FIFO_MEM[3][6] ), .B0(n176), .B1(
        \FIFO_MEM[2][6] ), .Y(n159) );
  AOI22XLM U199 ( .A0(n175), .A1(\FIFO_MEM[1][5] ), .B0(n174), .B1(
        \FIFO_MEM[0][5] ), .Y(n149) );
  AOI22XLM U200 ( .A0(n177), .A1(\FIFO_MEM[3][5] ), .B0(n176), .B1(
        \FIFO_MEM[2][5] ), .Y(n148) );
  AOI22XLM U187 ( .A0(n175), .A1(\FIFO_MEM[1][4] ), .B0(n174), .B1(
        \FIFO_MEM[0][4] ), .Y(n138) );
  AOI22XLM U188 ( .A0(n177), .A1(\FIFO_MEM[3][4] ), .B0(n176), .B1(
        \FIFO_MEM[2][4] ), .Y(n137) );
  AOI22XLM U151 ( .A0(n175), .A1(\FIFO_MEM[1][1] ), .B0(n174), .B1(
        \FIFO_MEM[0][1] ), .Y(n105) );
  AOI22XLM U152 ( .A0(n177), .A1(\FIFO_MEM[3][1] ), .B0(n176), .B1(
        \FIFO_MEM[2][1] ), .Y(n104) );
  AOI22XLM U224 ( .A0(n177), .A1(\FIFO_MEM[3][7] ), .B0(n176), .B1(
        \FIFO_MEM[2][7] ), .Y(n178) );
  NOR3X2M U22 ( .A(waddr[0]), .B(waddr[1]), .C(n6), .Y(n219) );
  NOR3X2M U29 ( .A(waddr[0]), .B(waddr[1]), .C(n9), .Y(n215) );
  NOR3X2M U6 ( .A(waddr[0]), .B(waddr[1]), .C(n1), .Y(n211) );
  NOR3X2M U16 ( .A(waddr[2]), .B(waddr[3]), .C(n8), .Y(n210) );
  NOR3X2M U17 ( .A(waddr[2]), .B(waddr[3]), .C(n10), .Y(n209) );
  NOR3X2M U13 ( .A(waddr[2]), .B(waddr[3]), .C(n7), .Y(n208) );
  NOR4X1M U14 ( .A(waddr[2]), .B(waddr[3]), .C(waddr[0]), .D(waddr[1]), .Y(
        n207) );
  AOI22XLM U12 ( .A0(\FIFO_MEM[7][7] ), .A1(n214), .B0(\FIFO_MEM[6][7] ), .B1(
        n213), .Y(n4) );
  AOI22XLM U26 ( .A0(\FIFO_MEM[15][7] ), .A1(n223), .B0(\FIFO_MEM[14][7] ), 
        .B1(n221), .Y(n13) );
  AOI22XLM U33 ( .A0(\FIFO_MEM[11][7] ), .A1(n218), .B0(\FIFO_MEM[10][7] ), 
        .B1(n217), .Y(n11) );
  AOI22XLM U37 ( .A0(\FIFO_MEM[7][6] ), .A1(n214), .B0(\FIFO_MEM[6][6] ), .B1(
        n213), .Y(n19) );
  AOI22XLM U42 ( .A0(\FIFO_MEM[15][6] ), .A1(n223), .B0(\FIFO_MEM[14][6] ), 
        .B1(n221), .Y(n23) );
  AOI22XLM U44 ( .A0(\FIFO_MEM[11][6] ), .A1(n218), .B0(\FIFO_MEM[10][6] ), 
        .B1(n217), .Y(n21) );
  AOI22XLM U48 ( .A0(\FIFO_MEM[7][5] ), .A1(n214), .B0(\FIFO_MEM[6][5] ), .B1(
        n213), .Y(n29) );
  AOI22XLM U55 ( .A0(\FIFO_MEM[11][5] ), .A1(n218), .B0(\FIFO_MEM[10][5] ), 
        .B1(n217), .Y(n31) );
  AOI22XLM U59 ( .A0(\FIFO_MEM[7][4] ), .A1(n214), .B0(\FIFO_MEM[6][4] ), .B1(
        n213), .Y(n39) );
  AOI22XLM U64 ( .A0(\FIFO_MEM[15][4] ), .A1(n223), .B0(\FIFO_MEM[14][4] ), 
        .B1(n221), .Y(n43) );
  AOI22XLM U66 ( .A0(\FIFO_MEM[11][4] ), .A1(n218), .B0(\FIFO_MEM[10][4] ), 
        .B1(n217), .Y(n41) );
  AOI22XLM U70 ( .A0(\FIFO_MEM[7][3] ), .A1(n214), .B0(\FIFO_MEM[6][3] ), .B1(
        n213), .Y(n49) );
  AOI22XLM U75 ( .A0(\FIFO_MEM[15][3] ), .A1(n223), .B0(\FIFO_MEM[14][3] ), 
        .B1(n221), .Y(n53) );
  AOI22XLM U77 ( .A0(\FIFO_MEM[11][3] ), .A1(n218), .B0(\FIFO_MEM[10][3] ), 
        .B1(n217), .Y(n51) );
  AOI22XLM U81 ( .A0(\FIFO_MEM[7][2] ), .A1(n214), .B0(\FIFO_MEM[6][2] ), .B1(
        n213), .Y(n59) );
  AOI22XLM U86 ( .A0(\FIFO_MEM[15][2] ), .A1(n223), .B0(\FIFO_MEM[14][2] ), 
        .B1(n221), .Y(n63) );
  AOI22XLM U88 ( .A0(\FIFO_MEM[11][2] ), .A1(n218), .B0(\FIFO_MEM[10][2] ), 
        .B1(n217), .Y(n61) );
  AOI22XLM U92 ( .A0(\FIFO_MEM[7][1] ), .A1(n214), .B0(\FIFO_MEM[6][1] ), .B1(
        n213), .Y(n69) );
  AOI22XLM U97 ( .A0(\FIFO_MEM[15][1] ), .A1(n223), .B0(\FIFO_MEM[14][1] ), 
        .B1(n221), .Y(n73) );
  AOI22XLM U99 ( .A0(\FIFO_MEM[11][1] ), .A1(n218), .B0(\FIFO_MEM[10][1] ), 
        .B1(n217), .Y(n71) );
  AOI22XLM U103 ( .A0(\FIFO_MEM[7][0] ), .A1(n214), .B0(\FIFO_MEM[6][0] ), 
        .B1(n213), .Y(n79) );
  AOI22XLM U108 ( .A0(\FIFO_MEM[15][0] ), .A1(n223), .B0(\FIFO_MEM[14][0] ), 
        .B1(n221), .Y(n83) );
  AOI22XLM U110 ( .A0(\FIFO_MEM[11][0] ), .A1(n218), .B0(\FIFO_MEM[10][0] ), 
        .B1(n217), .Y(n81) );
  AOI22XLM U7 ( .A0(\FIFO_MEM[5][7] ), .A1(n212), .B0(\FIFO_MEM[4][7] ), .B1(
        n211), .Y(n5) );
  AOI22XLM U23 ( .A0(\FIFO_MEM[13][7] ), .A1(n220), .B0(\FIFO_MEM[12][7] ), 
        .B1(n219), .Y(n14) );
  AOI22XLM U36 ( .A0(\FIFO_MEM[5][6] ), .A1(n212), .B0(\FIFO_MEM[4][6] ), .B1(
        n211), .Y(n20) );
  AOI22XLM U41 ( .A0(\FIFO_MEM[13][6] ), .A1(n220), .B0(\FIFO_MEM[12][6] ), 
        .B1(n219), .Y(n24) );
  AOI22XLM U43 ( .A0(\FIFO_MEM[9][6] ), .A1(n216), .B0(\FIFO_MEM[8][6] ), .B1(
        n215), .Y(n22) );
  AOI22XLM U47 ( .A0(\FIFO_MEM[5][5] ), .A1(n212), .B0(\FIFO_MEM[4][5] ), .B1(
        n211), .Y(n30) );
  AOI22XLM U52 ( .A0(\FIFO_MEM[13][5] ), .A1(n220), .B0(\FIFO_MEM[12][5] ), 
        .B1(n219), .Y(n34) );
  AOI22XLM U54 ( .A0(\FIFO_MEM[9][5] ), .A1(n216), .B0(\FIFO_MEM[8][5] ), .B1(
        n215), .Y(n32) );
  AOI22XLM U58 ( .A0(\FIFO_MEM[5][4] ), .A1(n212), .B0(\FIFO_MEM[4][4] ), .B1(
        n211), .Y(n40) );
  AOI22XLM U63 ( .A0(\FIFO_MEM[13][4] ), .A1(n220), .B0(\FIFO_MEM[12][4] ), 
        .B1(n219), .Y(n44) );
  AOI22XLM U65 ( .A0(\FIFO_MEM[9][4] ), .A1(n216), .B0(\FIFO_MEM[8][4] ), .B1(
        n215), .Y(n42) );
  AOI22XLM U69 ( .A0(\FIFO_MEM[5][3] ), .A1(n212), .B0(\FIFO_MEM[4][3] ), .B1(
        n211), .Y(n50) );
  AOI22XLM U76 ( .A0(\FIFO_MEM[9][3] ), .A1(n216), .B0(\FIFO_MEM[8][3] ), .B1(
        n215), .Y(n52) );
  AOI22XLM U80 ( .A0(\FIFO_MEM[5][2] ), .A1(n212), .B0(\FIFO_MEM[4][2] ), .B1(
        n211), .Y(n60) );
  AOI22XLM U85 ( .A0(\FIFO_MEM[13][2] ), .A1(n220), .B0(\FIFO_MEM[12][2] ), 
        .B1(n219), .Y(n64) );
  AOI22XLM U87 ( .A0(\FIFO_MEM[9][2] ), .A1(n216), .B0(\FIFO_MEM[8][2] ), .B1(
        n215), .Y(n62) );
  AOI22XLM U91 ( .A0(\FIFO_MEM[5][1] ), .A1(n212), .B0(\FIFO_MEM[4][1] ), .B1(
        n211), .Y(n70) );
  AOI22XLM U96 ( .A0(\FIFO_MEM[13][1] ), .A1(n220), .B0(\FIFO_MEM[12][1] ), 
        .B1(n219), .Y(n74) );
  AOI22XLM U98 ( .A0(\FIFO_MEM[9][1] ), .A1(n216), .B0(\FIFO_MEM[8][1] ), .B1(
        n215), .Y(n72) );
  AOI22XLM U102 ( .A0(\FIFO_MEM[5][0] ), .A1(n212), .B0(\FIFO_MEM[4][0] ), 
        .B1(n211), .Y(n80) );
  AOI22XLM U107 ( .A0(\FIFO_MEM[13][0] ), .A1(n220), .B0(\FIFO_MEM[12][0] ), 
        .B1(n219), .Y(n84) );
  AOI22XLM U109 ( .A0(\FIFO_MEM[9][0] ), .A1(n216), .B0(\FIFO_MEM[8][0] ), 
        .B1(n215), .Y(n82) );
  AOI22XLM U15 ( .A0(\FIFO_MEM[1][7] ), .A1(n208), .B0(\FIFO_MEM[0][7] ), .B1(
        n207), .Y(n3) );
  AOI22XLM U18 ( .A0(\FIFO_MEM[3][7] ), .A1(n210), .B0(\FIFO_MEM[2][7] ), .B1(
        n209), .Y(n2) );
  AOI22XLM U38 ( .A0(\FIFO_MEM[1][6] ), .A1(n208), .B0(\FIFO_MEM[0][6] ), .B1(
        n207), .Y(n18) );
  AOI22XLM U39 ( .A0(\FIFO_MEM[3][6] ), .A1(n210), .B0(\FIFO_MEM[2][6] ), .B1(
        n209), .Y(n17) );
  AOI22XLM U49 ( .A0(\FIFO_MEM[1][5] ), .A1(n208), .B0(\FIFO_MEM[0][5] ), .B1(
        n207), .Y(n28) );
  AOI22XLM U50 ( .A0(\FIFO_MEM[3][5] ), .A1(n210), .B0(\FIFO_MEM[2][5] ), .B1(
        n209), .Y(n27) );
  AOI22XLM U60 ( .A0(\FIFO_MEM[1][4] ), .A1(n208), .B0(\FIFO_MEM[0][4] ), .B1(
        n207), .Y(n38) );
  AOI22XLM U61 ( .A0(\FIFO_MEM[3][4] ), .A1(n210), .B0(\FIFO_MEM[2][4] ), .B1(
        n209), .Y(n37) );
  AOI22XLM U71 ( .A0(\FIFO_MEM[1][3] ), .A1(n208), .B0(\FIFO_MEM[0][3] ), .B1(
        n207), .Y(n48) );
  AOI22XLM U72 ( .A0(\FIFO_MEM[3][3] ), .A1(n210), .B0(\FIFO_MEM[2][3] ), .B1(
        n209), .Y(n47) );
  AOI22XLM U82 ( .A0(\FIFO_MEM[1][2] ), .A1(n208), .B0(\FIFO_MEM[0][2] ), .B1(
        n207), .Y(n58) );
  AOI22XLM U83 ( .A0(\FIFO_MEM[3][2] ), .A1(n210), .B0(\FIFO_MEM[2][2] ), .B1(
        n209), .Y(n57) );
  AOI22XLM U93 ( .A0(\FIFO_MEM[1][1] ), .A1(n208), .B0(\FIFO_MEM[0][1] ), .B1(
        n207), .Y(n68) );
  AOI22XLM U104 ( .A0(\FIFO_MEM[1][0] ), .A1(n208), .B0(\FIFO_MEM[0][0] ), 
        .B1(n207), .Y(n78) );
  AOI22XLM U105 ( .A0(\FIFO_MEM[3][0] ), .A1(n210), .B0(\FIFO_MEM[2][0] ), 
        .B1(n209), .Y(n77) );
  EDFFTRX1M \read_next_reg[7]  ( .RN(1'b1), .D(rdata[7]), .E(WRST), .CK(WCLK), 
        .Q(read_next[7]) );
  EDFFX1M \read_next_reg[3]  ( .D(rdata[3]), .E(WRST), .CK(WCLK), .Q(
        read_next[3]) );
  NOR2X1M U25 ( .A(n6), .B(n10), .Y(n221) );
  NOR2X1M U28 ( .A(n7), .B(n9), .Y(n216) );
  NOR2X1M U31 ( .A(n8), .B(n9), .Y(n218) );
  NOR2X1M U32 ( .A(n10), .B(n9), .Y(n217) );
  NOR2X1M U5 ( .A(n7), .B(n1), .Y(n212) );
  NOR2X1M U24 ( .A(n6), .B(n8), .Y(n223) );
  NOR2X1M U11 ( .A(n10), .B(n1), .Y(n213) );
  NOR2X1M U21 ( .A(n6), .B(n7), .Y(n220) );
  NOR2X1M U9 ( .A(n8), .B(n1), .Y(n214) );
  INVX1M U3 ( .A(wclk_en), .Y(n206) );
  NAND2BXLM U4 ( .AN(waddr[3]), .B(waddr[2]), .Y(n1) );
  NAND2BXLM U8 ( .AN(waddr[2]), .B(waddr[3]), .Y(n9) );
  NAND2BXLM U10 ( .AN(waddr[1]), .B(waddr[0]), .Y(n7) );
  NAND2BXLM U19 ( .AN(waddr[0]), .B(waddr[1]), .Y(n10) );
  NAND2XLM U20 ( .A(waddr[2]), .B(waddr[3]), .Y(n6) );
  NAND2XLM U27 ( .A(waddr[0]), .B(waddr[1]), .Y(n8) );
  AOI22XLM U30 ( .A0(wclk_en), .A1(wdata[0]), .B0(out_next[0]), .B1(n206), .Y(
        n199) );
  AOI22XLM U34 ( .A0(wclk_en), .A1(wdata[1]), .B0(out_next[1]), .B1(n206), .Y(
        n200) );
  AOI22XLM U40 ( .A0(wclk_en), .A1(wdata[2]), .B0(out_next[2]), .B1(n206), .Y(
        n201) );
  AOI22XLM U45 ( .A0(wclk_en), .A1(wdata[3]), .B0(out_next[3]), .B1(n206), .Y(
        n202) );
  AOI22XLM U51 ( .A0(wclk_en), .A1(wdata[4]), .B0(out_next[4]), .B1(n206), .Y(
        n203) );
  AOI22XLM U53 ( .A0(wclk_en), .A1(wdata[5]), .B0(out_next[5]), .B1(n206), .Y(
        n204) );
  AOI22XLM U56 ( .A0(wclk_en), .A1(wdata[6]), .B0(out_next[6]), .B1(n206), .Y(
        n205) );
  AOI22XLM U62 ( .A0(wclk_en), .A1(wdata[7]), .B0(out_next[7]), .B1(n206), .Y(
        n222) );
  NOR2BXLM U67 ( .AN(R_RST), .B(rclk_en), .Y(n196) );
  NAND2XLM U73 ( .A(R_RST), .B(rclk_en), .Y(n197) );
  NAND4XLM U74 ( .A(n84), .B(n83), .C(n82), .D(n81), .Y(n85) );
  NAND4XLM U78 ( .A(n80), .B(n79), .C(n78), .D(n77), .Y(n86) );
  NAND4XLM U84 ( .A(n74), .B(n73), .C(n72), .D(n71), .Y(n75) );
  NAND4XLM U89 ( .A(n70), .B(n69), .C(n68), .D(n67), .Y(n76) );
  NAND4XLM U94 ( .A(n60), .B(n59), .C(n58), .D(n57), .Y(n66) );
  NAND4XLM U95 ( .A(n54), .B(n53), .C(n52), .D(n51), .Y(n55) );
  NAND4XLM U100 ( .A(n50), .B(n49), .C(n48), .D(n47), .Y(n56) );
  NAND4XLM U106 ( .A(n44), .B(n43), .C(n42), .D(n41), .Y(n45) );
  NAND4XLM U111 ( .A(n40), .B(n39), .C(n38), .D(n37), .Y(n46) );
  NAND4XLM U137 ( .A(n34), .B(n33), .C(n32), .D(n31), .Y(n35) );
  NAND4XLM U142 ( .A(n30), .B(n29), .C(n28), .D(n27), .Y(n36) );
  NAND4XLM U146 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n25) );
  NAND4XLM U147 ( .A(n20), .B(n19), .C(n18), .D(n17), .Y(n26) );
  NAND4XLM U155 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n15) );
  NAND4XLM U183 ( .A(n5), .B(n4), .C(n3), .D(n2), .Y(n16) );
  NAND2BXLM U192 ( .AN(raddr[2]), .B(raddr[3]), .Y(n95) );
  NOR2XLM U195 ( .A(n96), .B(n95), .Y(n188) );
  AOI22XLM U206 ( .A0(n175), .A1(\FIFO_MEM[1][7] ), .B0(n174), .B1(
        \FIFO_MEM[0][7] ), .Y(n179) );
  AOI22XLM U223 ( .A0(n185), .A1(\FIFO_MEM[15][1] ), .B0(n184), .B1(
        \FIFO_MEM[14][1] ), .Y(n110) );
  AOI22XLM U233 ( .A0(n187), .A1(\FIFO_MEM[9][4] ), .B0(n186), .B1(
        \FIFO_MEM[8][4] ), .Y(n142) );
  AOI22XLM U234 ( .A0(\FIFO_MEM[3][1] ), .A1(n210), .B0(\FIFO_MEM[2][1] ), 
        .B1(n209), .Y(n67) );
  AOI22XLM U251 ( .A0(\FIFO_MEM[13][3] ), .A1(n220), .B0(\FIFO_MEM[12][3] ), 
        .B1(n219), .Y(n54) );
  AOI22XLM U268 ( .A0(\FIFO_MEM[15][5] ), .A1(n223), .B0(\FIFO_MEM[14][5] ), 
        .B1(n221), .Y(n33) );
  AOI22XLM U285 ( .A0(\FIFO_MEM[9][7] ), .A1(n216), .B0(\FIFO_MEM[8][7] ), 
        .B1(n215), .Y(n12) );
  NAND4XLM U302 ( .A(n155), .B(n154), .C(n153), .D(n152), .Y(n156) );
  NOR2XLM U319 ( .A(n135), .B(n134), .Y(n136) );
  NAND4XLM U336 ( .A(n64), .B(n63), .C(n62), .D(n61), .Y(n65) );
  NOR2XLM U353 ( .A(n146), .B(n145), .Y(n147) );
endmodule


module Bit_Sync_00000002_00000005_1 ( RST_n, CLK, ASYNC, SYNC );
  input [4:0] ASYNC;
  output [4:0] SYNC;
  input RST_n, CLK;
  wire   \FF_Stage[1][3] , \FF_Stage[1][2] , \FF_Stage[1][1] ,
         \FF_Stage[1][0] , \FF_Stage[0][3] , \FF_Stage[0][2] ,
         \FF_Stage[0][1] , \FF_Stage[0][0] ;

  DFFRQX1M \FF_Stage_reg[0][3]  ( .D(ASYNC[3]), .CK(CLK), .RN(RST_n), .Q(
        \FF_Stage[0][3] ) );
  DFFRQX1M \FF_Stage_reg[0][2]  ( .D(ASYNC[2]), .CK(CLK), .RN(RST_n), .Q(
        \FF_Stage[0][2] ) );
  DFFRQX1M \FF_Stage_reg[0][1]  ( .D(ASYNC[1]), .CK(CLK), .RN(RST_n), .Q(
        \FF_Stage[0][1] ) );
  DFFRQX1M \FF_Stage_reg[0][0]  ( .D(ASYNC[0]), .CK(CLK), .RN(RST_n), .Q(
        \FF_Stage[0][0] ) );
  DFFRQX1M \FF_Stage_reg[1][3]  ( .D(\FF_Stage[0][3] ), .CK(CLK), .RN(RST_n), 
        .Q(\FF_Stage[1][3] ) );
  DFFRQX1M \FF_Stage_reg[1][2]  ( .D(\FF_Stage[0][2] ), .CK(CLK), .RN(RST_n), 
        .Q(\FF_Stage[1][2] ) );
  DFFRQX1M \FF_Stage_reg[1][1]  ( .D(\FF_Stage[0][1] ), .CK(CLK), .RN(RST_n), 
        .Q(\FF_Stage[1][1] ) );
  DFFRQX1M \FF_Stage_reg[1][0]  ( .D(\FF_Stage[0][0] ), .CK(CLK), .RN(RST_n), 
        .Q(\FF_Stage[1][0] ) );
  AND2X1M U5 ( .A(RST_n), .B(\FF_Stage[1][2] ), .Y(SYNC[2]) );
  AND2X1M U4 ( .A(RST_n), .B(\FF_Stage[1][3] ), .Y(SYNC[3]) );
  AND2X1M U6 ( .A(RST_n), .B(\FF_Stage[1][1] ), .Y(SYNC[1]) );
  AND2X1M U7 ( .A(RST_n), .B(\FF_Stage[1][0] ), .Y(SYNC[0]) );
endmodule


module ASYNC_FIFO ( W_CLK, W_RST, W_INC, R_CLK, R_RST, R_INC, WR_DATA, FULL, 
        EMPTY, RD_DATA );
  input [7:0] WR_DATA;
  output [7:0] RD_DATA;
  input W_CLK, W_RST, W_INC, R_CLK, R_RST, R_INC;
  output FULL, EMPTY;
  wire   wclk_en, rclk_en, n1, n2;
  wire   [4:0] Wptr;
  wire   [4:0] Wptr_sync;
  wire   [4:0] Rptr;
  wire   [4:0] Rptr_sync;
  wire   [3:0] Waddr;
  wire   [3:0] raddr;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;

  Bit_Sync_00000002_00000005_0 sync_w2r ( .RST_n(R_RST), .CLK(R_CLK), .ASYNC({
        1'b0, Wptr[3:0]}), .SYNC({SYNOPSYS_UNCONNECTED__0, Wptr_sync[3:0]}) );
  Bit_Sync_00000002_00000005_1 sync_r2w ( .RST_n(W_RST), .CLK(W_CLK), .ASYNC({
        1'b0, Rptr[3:0]}), .SYNC({SYNOPSYS_UNCONNECTED__1, Rptr_sync[3:0]}) );
  fifo_wrptr_full_00000008_00000010 fifo_wrptr_full_dut ( .W_CLK(W_CLK), 
        .W_RST(W_RST), .W_INC(W_INC), .gray_Rptr({1'b0, Rptr_sync[3:0]}), 
        .WFULL(FULL), .Waddr(Waddr), .gray_Wptr({SYNOPSYS_UNCONNECTED__2, 
        Wptr[3:0]}) );
  fifo_rdptr_empty_00000008_00000010 fifo_rdptr_empty_dut ( .R_CLK(R_CLK), 
        .R_RST(R_RST), .R_INC(R_INC), .gray_Wptr({1'b0, Wptr_sync[3:0]}), 
        .REMPTY(EMPTY), .Raddr(raddr), .gray_Rptr({SYNOPSYS_UNCONNECTED__3, 
        Rptr[3:0]}) );
  FIFO_MEMORY_00000008_00000010 FIFO_MEMORY_dut ( .WCLK(W_CLK), .WRST(W_RST), 
        .R_CLK(R_CLK), .R_RST(R_RST), .wdata(WR_DATA), .wclk_en(wclk_en), 
        .rclk_en(rclk_en), .waddr(Waddr), .raddr(raddr), .rdata(RD_DATA) );
  AND3XLM U5 ( .A(n2), .B(R_INC), .C(R_RST), .Y(rclk_en) );
  CLKINVX1M U2 ( .A(FULL), .Y(n1) );
  CLKINVX1M U3 ( .A(EMPTY), .Y(n2) );
  AND3XLM U4 ( .A(n1), .B(W_INC), .C(W_RST), .Y(wclk_en) );
endmodule


module PULSE_GENERATOR ( CLK, RST_n, in, out );
  input CLK, RST_n, in;
  output out;
  wire   Q_in, N1;

  DFFRQX1M Q_in_reg ( .D(in), .CK(CLK), .RN(RST_n), .Q(Q_in) );
  DFFRQX1M out_reg ( .D(N1), .CK(CLK), .RN(RST_n), .Q(out) );
  NOR2BXLM U3 ( .AN(in), .B(Q_in), .Y(N1) );
endmodule


module ClkDiv___1 ( i_ref_clk, i_rst_n, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n;
  output o_div_clk;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n34,
         n35, n36, n37, n38, n39, n40, n41, n42;
  wire   [9:0] Counter_2;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  DFFRQX1M \Counter_2_reg[0]  ( .D(n25), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_2[0]) );
  DFFRQX1M \Counter_2_reg[1]  ( .D(n26), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_2[1]) );
  DFFRQX1M \Counter_2_reg[2]  ( .D(n27), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_2[2]) );
  DFFRQX1M \Counter_2_reg[3]  ( .D(n28), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_2[3]) );
  DFFRQX1M \Counter_2_reg[4]  ( .D(n29), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_2[4]) );
  DFFRQX1M \Counter_2_reg[5]  ( .D(n34), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_2[5]) );
  DFFRQX1M \Counter_2_reg[6]  ( .D(n35), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_2[6]) );
  DFFRQX1M \Counter_2_reg[7]  ( .D(n36), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_2[7]) );
  DFFRQX1M \Counter_2_reg[8]  ( .D(n37), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_2[8]) );
  DFFRQX1M \Counter_2_reg[9]  ( .D(n38), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        Counter_2[9]) );
  CLKINVX1M U79 ( .A(n39), .Y(o_div_clk) );
  DFFRQX1M \current_state_reg[2]  ( .D(next_state[2]), .CK(i_ref_clk), .RN(
        i_rst_n), .Q(current_state[2]) );
  DFFRQX1M \current_state_reg[0]  ( .D(next_state[0]), .CK(i_ref_clk), .RN(
        i_rst_n), .Q(current_state[0]) );
  DFFRQX1M \current_state_reg[1]  ( .D(next_state[1]), .CK(i_ref_clk), .RN(
        i_rst_n), .Q(current_state[1]) );
  AOI31XLM U78 ( .A0(n40), .A1(n41), .A2(i_ref_clk), .B0(n42), .Y(n39) );
  NOR2XLM U3 ( .A(n16), .B(n15), .Y(n14) );
  AOI211XLM U4 ( .A0(n18), .A1(n17), .B0(n24), .C0(n19), .Y(n37) );
  NOR2BXLM U5 ( .AN(current_state[0]), .B(current_state[2]), .Y(n42) );
  CLKINVX1M U6 ( .A(current_state[1]), .Y(n41) );
  CLKINVX1M U7 ( .A(current_state[2]), .Y(n40) );
  CLKINVX1M U8 ( .A(Counter_2[0]), .Y(n21) );
  NOR4XLM U9 ( .A(n21), .B(Counter_2[3]), .C(Counter_2[9]), .D(Counter_2[1]), 
        .Y(n2) );
  OR4X1M U10 ( .A(Counter_2[5]), .B(Counter_2[8]), .C(Counter_2[6]), .D(
        Counter_2[7]), .Y(n1) );
  NOR4BXLM U11 ( .AN(n2), .B(Counter_2[2]), .C(Counter_2[4]), .D(n1), .Y(n4)
         );
  NOR3XLM U12 ( .A(current_state[0]), .B(current_state[1]), .C(n40), .Y(n3) );
  AO22XLM U13 ( .A0(n4), .A1(n3), .B0(n42), .B1(n41), .Y(next_state[1]) );
  CLKINVX1M U14 ( .A(Counter_2[4]), .Y(n10) );
  CLKINVX1M U15 ( .A(Counter_2[2]), .Y(n13) );
  CLKINVX1M U16 ( .A(Counter_2[1]), .Y(n20) );
  NOR3XLM U17 ( .A(n13), .B(n20), .C(n21), .Y(n11) );
  NAND2XLM U18 ( .A(Counter_2[3]), .B(n11), .Y(n9) );
  NOR2XLM U19 ( .A(n10), .B(n9), .Y(n8) );
  NOR4XLM U20 ( .A(current_state[1]), .B(current_state[0]), .C(n4), .D(n40), 
        .Y(n22) );
  NAND2XLM U21 ( .A(Counter_2[5]), .B(n8), .Y(n15) );
  OAI211XLM U22 ( .A0(Counter_2[5]), .A1(n8), .B0(n22), .C0(n15), .Y(n5) );
  CLKINVX1M U23 ( .A(n5), .Y(n34) );
  OAI211XLM U24 ( .A0(Counter_2[3]), .A1(n11), .B0(n22), .C0(n9), .Y(n6) );
  CLKINVX1M U25 ( .A(n6), .Y(n28) );
  CLKINVX1M U26 ( .A(n22), .Y(n19) );
  NOR2XLM U27 ( .A(Counter_2[0]), .B(n19), .Y(n25) );
  CLKINVX1M U28 ( .A(Counter_2[6]), .Y(n16) );
  NAND2XLM U29 ( .A(Counter_2[7]), .B(n14), .Y(n17) );
  OAI211XLM U30 ( .A0(Counter_2[7]), .A1(n14), .B0(n22), .C0(n17), .Y(n7) );
  CLKINVX1M U31 ( .A(n7), .Y(n36) );
  NOR2BXLM U32 ( .AN(n42), .B(n41), .Y(next_state[2]) );
  AOI211XLM U33 ( .A0(n10), .A1(n9), .B0(n8), .C0(n19), .Y(n29) );
  NAND2XLM U34 ( .A(Counter_2[1]), .B(Counter_2[0]), .Y(n12) );
  AOI211XLM U35 ( .A0(n13), .A1(n12), .B0(n11), .C0(n19), .Y(n27) );
  AOI211XLM U36 ( .A0(n16), .A1(n15), .B0(n14), .C0(n19), .Y(n35) );
  CLKINVX1M U37 ( .A(Counter_2[8]), .Y(n18) );
  NOR2XLM U38 ( .A(n18), .B(n17), .Y(n24) );
  AOI221XLM U39 ( .A0(Counter_2[0]), .A1(Counter_2[1]), .B0(n21), .B1(n20), 
        .C0(n19), .Y(n26) );
  OAI21XLM U40 ( .A0(Counter_2[9]), .A1(n24), .B0(n22), .Y(n23) );
  AOI21XLM U41 ( .A0(Counter_2[9]), .A1(n24), .B0(n23), .Y(n38) );
  AOI21XLM U42 ( .A0(current_state[2]), .A1(current_state[1]), .B0(
        current_state[0]), .Y(next_state[0]) );
endmodule


module Rst_Sync_NUM_STAGES2_ACTIVE_TYPLOW_1 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;

  wire   [1:0] FF_Stage;

  DFFRQX1M \FF_Stage_reg[1]  ( .D(FF_Stage[0]), .CK(CLK), .RN(RST), .Q(
        FF_Stage[1]) );
  DFFRQX1M \FF_Stage_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(FF_Stage[0])
         );
  CLKAND2X6M U4 ( .A(FF_Stage[1]), .B(RST), .Y(SYNC_RST) );
endmodule


module SYS_TOP ( REF_CLK, UART_CLK, RST, RX_IN, TX_OUT );
  input REF_CLK, UART_CLK, RST, RX_IN;
  output TX_OUT;
  wire   Gate_En, ALU_CLK, RST_D2, TX_CLK, RX_CLK, RST_D1, in_Data_Sys_en,
         enable_pulse, F_Full, Rd_Valid, OUT_VALID, WR_INC, Enable, RdEn, WrEn,
         F_Empty, busy, R_INC;
  wire   [7:0] in_Data_Sys;
  wire   [7:0] SYNC_bus;
  wire   [7:0] RdData;
  wire   [15:0] ALU_OUT;
  wire   [7:0] WR_DATA;
  wire   [3:0] ALU_FUN;
  wire   [7:0] Wr_D;
  wire   [7:0] Addr;
  wire   [7:0] REG0;
  wire   [7:0] REG1;
  wire   [7:0] in_DATA_tx;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11;

  CLK_GATE CLK_GATE_dut ( .E(Gate_En), .CK(REF_CLK), .ECK(ALU_CLK) );
  ClkDiv___0 CLK_DIV_TX_dut ( .i_ref_clk(UART_CLK), .i_rst_n(RST_D2), 
        .i_div_ratio({1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .o_div_clk(TX_CLK) );
  ClkDiv___1 CLK_DIV_RX_dut ( .i_ref_clk(UART_CLK), .i_rst_n(RST_D2), 
        .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0}), 
        .o_div_clk(RX_CLK) );
  Rst_Sync_NUM_STAGES2_ACTIVE_TYPLOW_0 Rst_Sync_D1_dut ( .RST(RST), .CLK(
        REF_CLK), .SYNC_RST(RST_D1) );
  Rst_Sync_NUM_STAGES2_ACTIVE_TYPLOW_1 Rst_Sync_D2_dut ( .RST(RST), .CLK(
        UART_CLK), .SYNC_RST(RST_D2) );
  Data_Sync_NUM_STAGES2_BUS_WIDTH8 Data_Sync_dut ( .CLK(REF_CLK), .RST_n(
        RST_D1), .bus_enable(in_Data_Sys_en), .UNSYNC_bus(in_Data_Sys), 
        .enable_pulse(enable_pulse), .SYNC_bus(SYNC_bus) );
  SYS_CTRL SYS_CTRL_dut ( .CLK(REF_CLK), .RST(RST_D1), .Data_sync(SYNC_bus), 
        .enable_pulse(enable_pulse), .FIFO_FULL(F_Full), .Rd_DATA(RdData), 
        .Rd_Valid(Rd_Valid), .ALU_OUT({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, ALU_OUT[7:0]}), .OUT_VALID(OUT_VALID), .WR_DATA(WR_DATA), 
        .WR_INC(WR_INC), .FUN(ALU_FUN), .EN(Enable), .Gate_En(Gate_En), .Wr_D(
        Wr_D), .Addr({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, Addr[3:0]}), .RdEn(
        RdEn), .WrEn(WrEn) );
  Register_File_10_0_1 Reg_file_dut ( .CLK(REF_CLK), .RST_n(RST_D1), .RdEn(
        RdEn), .WrEn(WrEn), .Address(Addr[3:0]), .WrData(Wr_D), .RdData(RdData), .RdData_Valid(Rd_Valid), .REG0(REG0), .REG1(REG1) );
  ALU_00000008_00000004 ALU_dut ( .CLK(ALU_CLK), .RST_n(RST_D1), .A(REG0), .B(
        REG1), .ALU_FUN(ALU_FUN), .Enable(Enable), .ALU_OUT({
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, ALU_OUT[7:0]}), 
        .OUT_VALID(OUT_VALID) );
  UART_TX UART_TX_dut ( .CLK(TX_CLK), .RST_n(RST_D2), .P_DATA(in_DATA_tx), 
        .PAR_EN(1'b1), .PAR_TYP(1'b0), .DATA_VALID(F_Empty), .TX_OUT(TX_OUT), 
        .Busy(busy) );
  UART_RX_10 UART_RX_dut ( .CLK(RX_CLK), .RST_n(RST_D2), .PAR_TYP(1'b0), 
        .PAR_EN(1'b1), .Prescale({1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .RX_IN(RX_IN), .P_DATA(in_Data_Sys), .DATA_Valid(in_Data_Sys_en) );
  ASYNC_FIFO ASYNC_FIFO_dut ( .W_CLK(REF_CLK), .W_RST(RST_D1), .W_INC(WR_INC), 
        .R_CLK(TX_CLK), .R_RST(RST_D2), .R_INC(R_INC), .WR_DATA(WR_DATA), 
        .FULL(F_Full), .EMPTY(F_Empty), .RD_DATA(in_DATA_tx) );
  PULSE_GENERATOR pulse_gen_dut ( .CLK(TX_CLK), .RST_n(RST_D2), .in(busy), 
        .out(R_INC) );
endmodule

