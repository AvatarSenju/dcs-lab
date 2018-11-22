// DSCH 3.5
// 11/16/2018 3:59:56 PM
// D:\17UCC072\xor.sch

module xor( C,B,D,A,out5);
 input C,B,D,A;
 output out5;
 wire w3,w4,w5,w8,w9,;
 nmos #(2) nmos_1(w4,vss,w3); // 0.3u 0.05u
 nmos #(2) nmos_2(w4,vss,w5); // 0.3u 0.05u
 nmos #(2) nmos_3(out5,w4,D); // 0.3u 0.05u
 nmos #(2) nmos_4(out5,w4,B); // 0.3u 0.05u
 not #(1) inv_5(w5,B);
 not #(1) inv_6(w3,D);
 pmos #(2) pmos_7(out5,w8,w3); // 0.5u 0.05u
 pmos #(1) pmos_8(w8,vdd,w5); // 0.5u 0.05u
 pmos #(2) pmos_9(out5,w9,D); // 0.5u 0.05u
 pmos #(1) pmos_10(w9,vdd,B); // 0.5u 0.05u
endmodule

// Simulation parameters in Verilog Format
always
#200 C=~C;
#400 B=~B;
#800 D=~D;
#1600 A=~A;

// Simulation parameters
// C CLK 1 1
// B CLK 2 2
// D CLK 4 4
// A CLK 8 8
