// DSCH 3.5
// 11/16/2018 3:32:12 PM
// D:\17UCC072\mux_4_1.sch

module mux_4_1( s1,s0,x3,x2,x1,x0,out3);
 input s1,s0,x3,x2,x1,x0;
 output out3;
 wire w5,w8,w11,w12,w13,w14,w15,w16;
 wire w17,w18,w19;
 mux #(3) mux_2_1_1(w5,x0,s0,x1);
 mux #(3) mux_2_1_2(out3,w5,s1,w8);
 mux #(3) mux_2_1_3(w8,x2,s0,x3);
 not #(1) inv_1_4(w11,s0);
 not #(1) not1_2_5(w12,s0);
 nmos #(2) nmos1_3_6(w5,x1,s0); //  
 pmos #(2) pmos1_4_7(w5,x1,w12); //  
 not #(1) not1_5_8(w13,w11);
 nmos #(2) nmos1_6_9(w5,x0,w11); //  
 pmos #(2) pmos1_7_10(w5,x0,w13); //  
 not #(1) inv_1_11(w14,s1);
 not #(1) not1_2_12(w15,s1);
 nmos #(2) nmos1_3_13(out3,w8,s1); //  
 pmos #(2) pmos1_4_14(out3,w8,w15); //  
 not #(1) not1_5_15(w16,w14);
 nmos #(2) nmos1_6_16(out3,w5,w14); //  
 pmos #(2) pmos1_7_17(out3,w5,w16); //  
 not #(1) inv_1_18(w17,s0);
 not #(1) not1_2_19(w18,s0);
 nmos #(2) nmos1_3_20(w8,x3,s0); //  
 pmos #(2) pmos1_4_21(w8,x3,w18); //  
 not #(1) not1_5_22(w19,w17);
 nmos #(2) nmos1_6_23(w8,x2,w17); //  
 pmos #(2) pmos1_7_24(w8,x2,w19); //  
endmodule

// Simulation parameters in Verilog Format
always
#200 s1=~s1;
#400 s0=~s0;
#800 x3=~x3;
#1600 x2=~x2;
#3200 x1=~x1;
#6400 x0=~x0;

// Simulation parameters
// s1 CLK 1 1
// s0 CLK 2 2
// x3 CLK 4 4
// x2 CLK 8 8
// x1 CLK 16 16
// x0 CLK 32 32
