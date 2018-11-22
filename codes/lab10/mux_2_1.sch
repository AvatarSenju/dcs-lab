DSCH 3.5
VERSION 11/16/2018 3:23:24 PM
BB(121,-15,284,55)
SYM  #tgate
BB(200,-10,220,10)
TITLE 215 5  #tgate
MODEL 6000
PROP   2.4 1.2                                                                                                                                
REC(120,-20,0,0, )
VIS 5
PIN(200,0,0.000,0.000)in
PIN(210,-10,0.000,0.000)en
PIN(220,0,0.006,0.008)out
LIG(200,0,205,0)
LIG(210,-10,210,0)
LIG(215,0,220,0)
LIG(205,5,205,-5)
LIG(215,5,215,-5)
LIG(205,5,215,-5)
LIG(205,-5,215,5)
VLG // transmission gate description
VLG module tgate(in,en,out);
VLG input in,en;
VLG output out;
VLG wire nEn;
VLG not  not1(nEn,en);
VLG nmos nmos1(out,in,en);
VLG pmos pmos1(out,in,nEn);
VLG endmodule
FSYM
SYM  #button
BB(181,31,190,39)
TITLE 185 35  #B
MODEL 59
PROP                                                                                                                                    
REC(182,32,6,6,r)
VIS 1
PIN(190,35,0.000,0.000)B
LIG(189,35,190,35)
LIG(181,39,181,31)
LIG(189,39,181,39)
LIG(189,31,189,39)
LIG(181,31,189,31)
LIG(182,38,182,32)
LIG(188,38,182,38)
LIG(188,32,188,38)
LIG(182,32,188,32)
FSYM
SYM  #button
BB(121,41,130,49)
TITLE 125 45  #enable
MODEL 59
PROP                                                                                                                                    
REC(122,42,6,6,r)
VIS 1
PIN(130,45,0.000,0.000)enable
LIG(129,45,130,45)
LIG(121,49,121,41)
LIG(129,49,121,49)
LIG(129,41,129,49)
LIG(121,41,129,41)
LIG(122,48,122,42)
LIG(128,48,122,48)
LIG(128,42,128,48)
LIG(122,42,128,42)
FSYM
SYM  #inv
BB(145,35,180,55)
TITLE 160 45  #inv_1
MODEL 101
PROP                                                                                                                                    
REC(120,-20,0,0, )
VIS 0
PIN(145,45,0.000,0.000)in
PIN(180,45,0.003,0.003)out
LIG(145,45,155,45)
LIG(155,35,155,55)
LIG(155,35,170,45)
LIG(155,55,170,45)
LIG(172,45,172,45)
LIG(174,45,180,45)
VLG not not1(out,in);
FSYM
SYM  #light
BB(278,-10,284,4)
TITLE 280 4  #light1
MODEL 49
PROP                                                                                                                                    
REC(279,-9,4,4,r)
VIS 1
PIN(280,5,0.000,0.000)out1
LIG(283,-4,283,-9)
LIG(283,-9,282,-10)
LIG(279,-9,279,-4)
LIG(282,1,282,-2)
LIG(281,1,284,1)
LIG(281,3,283,1)
LIG(282,3,284,1)
LIG(278,-2,284,-2)
LIG(280,-2,280,5)
LIG(278,-4,278,-2)
LIG(284,-4,278,-4)
LIG(284,-2,284,-4)
LIG(280,-10,279,-9)
LIG(282,-10,280,-10)
FSYM
SYM  #tgate
BB(200,25,220,45)
TITLE 215 40  #tgate
MODEL 6000
PROP   2.4 1.2                                                                                                                                
REC(120,-20,0,0, )
VIS 5
PIN(200,35,0.000,0.000)in
PIN(210,25,0.000,0.000)en
PIN(220,35,0.006,0.008)out
LIG(200,35,205,35)
LIG(210,25,210,35)
LIG(215,35,220,35)
LIG(205,40,205,30)
LIG(215,40,215,30)
LIG(205,40,215,30)
LIG(205,30,215,40)
VLG // transmission gate description
VLG module tgate(in,en,out);
VLG input in,en;
VLG output out;
VLG wire nEn;
VLG not  not1(nEn,en);
VLG nmos nmos1(out,in,en);
VLG pmos pmos1(out,in,nEn);
VLG endmodule
FSYM
SYM  #button
BB(181,-4,190,4)
TITLE 185 0  #A
MODEL 59
PROP                                                                                                                                    
REC(182,-3,6,6,r)
VIS 1
PIN(190,0,0.000,0.000)A
LIG(189,0,190,0)
LIG(181,4,181,-4)
LIG(189,4,181,4)
LIG(189,-4,189,4)
LIG(181,-4,189,-4)
LIG(182,3,182,-3)
LIG(188,3,182,3)
LIG(188,-3,188,3)
LIG(182,-3,188,-3)
FSYM
CNC(145 45)
CNC(220 15)
LIG(190,0,200,0)
LIG(280,15,280,5)
LIG(220,15,220,35)
LIG(220,0,220,15)
LIG(220,15,280,15)
LIG(145,45,145,20)
LIG(190,35,200,35)
LIG(175,20,175,-15)
LIG(175,-15,210,-15)
LIG(210,-15,210,-10)
LIG(210,20,210,25)
LIG(180,20,210,20)
LIG(180,20,180,45)
LIG(145,45,150,45)
LIG(130,45,145,45)
LIG(145,20,175,20)
FFIG D:\17UCC072\mux_2_1.sch
