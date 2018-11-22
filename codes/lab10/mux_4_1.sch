DSCH 3.5
VERSION 11/16/2018 3:32:10 PM
BB(91,-5,314,85)
SYM  #mux_2_1
BB(160,-5,200,35)
TITLE 170 -12  #mux_2_1_1
MODEL 6000
PROP                                                                                                                                   
REC(165,0,30,30,r)
VIS 5
PIN(160,15,0.000,0.000)B
PIN(160,5,0.000,0.000)enable
PIN(160,25,0.000,0.000)A
PIN(200,5,0.006,0.009)out1
LIG(160,15,165,15)
LIG(160,5,165,5)
LIG(160,25,165,25)
LIG(195,5,200,5)
LIG(165,0,165,30)
LIG(165,0,195,0)
LIG(195,0,195,30)
LIG(195,30,165,30)
VLG module mux_2_1( B,enable,A,out1);
VLG input B,enable,A;
VLG output out1;
VLG wire w6,w7,w8;
VLG not #(1) inv_1(w6,enable);
VLG not #(1) not1_2(w7,enable);
VLG nmos #(2) nmos1_3(out1,A,enable); //  
VLG pmos #(2) pmos1_4(out1,A,w7); //  
VLG not #(1) not1_5(w8,w6);
VLG nmos #(2) nmos1_6(out1,B,w6); //  
VLG pmos #(2) pmos1_7(out1,B,w8); //  
VLG endmodule
FSYM
SYM  #light
BB(308,15,314,29)
TITLE 310 29  #light3
MODEL 49
PROP                                                                                                                                   
REC(309,16,4,4,r)
VIS 1
PIN(310,30,0.000,0.000)out3
LIG(313,21,313,16)
LIG(313,16,312,15)
LIG(309,16,309,21)
LIG(312,26,312,23)
LIG(311,26,314,26)
LIG(311,28,313,26)
LIG(312,28,314,26)
LIG(308,23,314,23)
LIG(310,23,310,30)
LIG(308,21,308,23)
LIG(314,21,308,21)
LIG(314,23,314,21)
LIG(310,15,309,16)
LIG(312,15,310,15)
FSYM
SYM  #button
BB(226,21,235,29)
TITLE 230 25  #s1
MODEL 59
PROP                                                                                                                                   
REC(227,22,6,6,r)
VIS 1
PIN(235,25,0.000,0.000)s1
LIG(234,25,235,25)
LIG(226,29,226,21)
LIG(234,29,226,29)
LIG(234,21,234,29)
LIG(226,21,234,21)
LIG(227,28,227,22)
LIG(233,28,227,28)
LIG(233,22,233,28)
LIG(227,22,233,22)
FSYM
SYM  #mux_2_1
BB(245,15,285,55)
TITLE 255 8  #mux_2_1_2
MODEL 6000
PROP                                                                                                                                   
REC(250,20,30,30,r)
VIS 5
PIN(245,35,0.000,0.000)B
PIN(245,25,0.000,0.000)enable
PIN(245,45,0.000,0.000)A
PIN(285,25,0.006,0.008)out1
LIG(245,35,250,35)
LIG(245,25,250,25)
LIG(245,45,250,45)
LIG(280,25,285,25)
LIG(250,20,250,50)
LIG(250,20,280,20)
LIG(280,20,280,50)
LIG(280,50,250,50)
VLG module mux_2_1( B,enable,A,out1);
VLG input B,enable,A;
VLG output out1;
VLG wire w6,w7,w8;
VLG not #(1) inv_1(w6,enable);
VLG not #(1) not1_2(w7,enable);
VLG nmos #(2) nmos1_3(out1,A,enable); //  
VLG pmos #(2) pmos1_4(out1,A,w7); //  
VLG not #(1) not1_5(w8,w6);
VLG nmos #(2) nmos1_6(out1,B,w6); //  
VLG pmos #(2) pmos1_7(out1,B,w8); //  
VLG endmodule
FSYM
SYM  #button
BB(91,36,100,44)
TITLE 95 40  #s0
MODEL 59
PROP                                                                                                                                   
REC(92,37,6,6,r)
VIS 1
PIN(100,40,0.000,0.000)s0
LIG(99,40,100,40)
LIG(91,44,91,36)
LIG(99,44,91,44)
LIG(99,36,99,44)
LIG(91,36,99,36)
LIG(92,43,92,37)
LIG(98,43,92,43)
LIG(98,37,98,43)
LIG(92,37,98,37)
FSYM
SYM  #button
BB(146,71,155,79)
TITLE 150 75  #x3
MODEL 59
PROP                                                                                                                                   
REC(147,72,6,6,r)
VIS 1
PIN(155,75,0.000,0.000)x3
LIG(154,75,155,75)
LIG(146,79,146,71)
LIG(154,79,146,79)
LIG(154,71,154,79)
LIG(146,71,154,71)
LIG(147,78,147,72)
LIG(153,78,147,78)
LIG(153,72,153,78)
LIG(147,72,153,72)
FSYM
SYM  #button
BB(146,61,155,69)
TITLE 150 65  #x2
MODEL 59
PROP                                                                                                                                   
REC(147,62,6,6,r)
VIS 1
PIN(155,65,0.000,0.000)x2
LIG(154,65,155,65)
LIG(146,69,146,61)
LIG(154,69,146,69)
LIG(154,61,154,69)
LIG(146,61,154,61)
LIG(147,68,147,62)
LIG(153,68,147,68)
LIG(153,62,153,68)
LIG(147,62,153,62)
FSYM
SYM  #button
BB(141,21,150,29)
TITLE 145 25  #x1
MODEL 59
PROP                                                                                                                                   
REC(142,22,6,6,r)
VIS 1
PIN(150,25,0.000,0.000)x1
LIG(149,25,150,25)
LIG(141,29,141,21)
LIG(149,29,141,29)
LIG(149,21,149,29)
LIG(141,21,149,21)
LIG(142,28,142,22)
LIG(148,28,142,28)
LIG(148,22,148,28)
LIG(142,22,148,22)
FSYM
SYM  #button
BB(141,11,150,19)
TITLE 145 15  #x0
MODEL 59
PROP                                                                                                                                   
REC(142,12,6,6,r)
VIS 1
PIN(150,15,0.000,0.000)x0
LIG(149,15,150,15)
LIG(141,19,141,11)
LIG(149,19,141,19)
LIG(149,11,149,19)
LIG(141,11,149,11)
LIG(142,18,142,12)
LIG(148,18,142,18)
LIG(148,12,148,18)
LIG(142,12,148,12)
FSYM
SYM  #mux_2_1
BB(165,45,205,85)
TITLE 175 38  #mux_2_1_3
MODEL 6000
PROP                                                                                                                                   
REC(170,50,30,30,r)
VIS 5
PIN(165,65,0.000,0.000)B
PIN(165,55,0.000,0.000)enable
PIN(165,75,0.000,0.000)A
PIN(205,55,0.006,0.009)out1
LIG(165,65,170,65)
LIG(165,55,170,55)
LIG(165,75,170,75)
LIG(200,55,205,55)
LIG(170,50,170,80)
LIG(170,50,200,50)
LIG(200,50,200,80)
LIG(200,80,170,80)
VLG module mux_2_1( B,enable,A,out1);
VLG input B,enable,A;
VLG output out1;
VLG wire w6,w7,w8;
VLG not #(1) inv_1(w6,enable);
VLG not #(1) not1_2(w7,enable);
VLG nmos #(2) nmos1_3(out1,A,enable); //  
VLG pmos #(2) pmos1_4(out1,A,w7); //  
VLG not #(1) not1_5(w8,w6);
VLG nmos #(2) nmos1_6(out1,B,w6); //  
VLG pmos #(2) pmos1_7(out1,B,w8); //  
VLG endmodule
FSYM
CNC(130 40)
LIG(295,30,310,30)
LIG(295,25,295,30)
LIG(285,25,295,25)
LIG(225,45,245,45)
LIG(225,55,225,45)
LIG(205,55,225,55)
LIG(150,15,160,15)
LIG(150,25,160,25)
LIG(100,40,130,40)
LIG(130,40,130,5)
LIG(130,5,160,5)
LIG(200,35,245,35)
LIG(200,5,200,35)
LIG(130,40,130,55)
LIG(130,55,165,55)
LIG(155,65,165,65)
LIG(155,75,165,75)
LIG(235,25,245,25)
FFIG D:\17UCC072\mux_4_1.sch
