// DSCH 3.5
// 11/16/2018 3:23:30 PM
// D:\17UCC072\mux_2_1.sch

module mux_2_1( B,enable,A,out1);
 input B,enable,A;
 output out1;
 wire w6,w7,w8;
 not #(1) inv_1(w6,enable);
 not #(1) not1_2(w7,enable);
 nmos #(2) nmos1_3(out1,A,enable); //  
 pmos #(2) pmos1_4(out1,A,w7); //  
 not #(1) not1_5(w8,w6);
 nmos #(2) nmos1_6(out1,B,w6); //  
 pmos #(2) pmos1_7(out1,B,w8); //  
endmodule

// Simulation parameters in Verilog Format
always
#200 B=~B;
#400 enable=~enable;
#800 A=~A;

// Simulation parameters
// B CLK 1 1
// enable CLK 2 2
// A CLK 4 4
