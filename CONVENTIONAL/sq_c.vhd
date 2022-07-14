Library ieee;
Use ieee.std_logic_1164.all; 
Entity sq_c is
 Port(N0,N1,N2,N3,N4,N5,N6,N7: in std_logic
      ); 
 end sq_c; 
architecture arch of sq_c is
component and_gate
    Port(F, G: in std_logic; 
      H : out std_logic);
end component; 
component xor_gate
    Port(A, B: in std_logic; 
      C : out std_logic);
end component;
component not_gate
    Port(D: in std_logic; 
      E : out std_logic);
end component;
component or_gate  
Port(I,J: in std_logic; 
      K: out std_logic);
end component;
signal R56,R57,R58,R59,R60,R61,R62,R63,R64,R65,R66,R77,R78,R79,R80,R81,R82,R83,R84,R85,R86,R87,W1,W2,DI1,E1,R1,E2,R2,R3,W3,W4,W5,BO1,DI2,E3,E4,R4,R5,R6,W6,BO2,U3,R7,R8,W8,E5,DI3,W9,W10,E6,E7,R9,R10,R11,W11,BO3,DI4,W12,W13,E8,E9,R12,R13,R14,BO4,W14:std_logic;
signal W54,W55,W56,W57,W58,W59,W60,W61,W62,W63,W64,W65,W66,W67,W68,W69,W70,W71,W72,W73,W74,W75,W76,W77,W78,W79,W80,W81,W82,W83,W84,W85,W86,W87,W88,W89,W90,W91,W16,E10,W15,DI5,U2,R15,R16,E11,R17,W17,BO5,W18,DI6,BO6,W19,E12,R18,R19,R20,E13,W20,W21,W22,E14,E15,R23,R24,R21,R22,T2,T3,DI7,E16,BO7,W23,W24:std_logic;
signal R25,R26,E17,R27,W25,W26,W27,DI8,BO8,DI9,BO9,E18,E19,E20,E21,R28,R29,R30,W28,W29,W30,R31,R32,R33,W31,W32,W33,W34,DI10,E22,R34,E23,W35,BO10,R35,R36,R67,R68,R69,R70,R71,R72,R73,R74,R75,R76,DI12,BO12,DI15,BO17:std_logic;
signal E100,W100,E36,E37,E38,E39,E40,E41,E42,E43,E44,E45,E46,E47,E48,E49,E50,E51,E52,E53,E54,E55,E56,E57,E58,E59,E60,E61,E62,E63,E64,E65,E66,E67,E68,E69,E70,E71,E72,E73,E74,E75,E76,E77,E78,E79,E80,W36,W37,DI11,E24,R37,E25,R38,BO11,R39,W38,E26,U1,W39,W40,R40,R41,T4,R42,E27,R43,T5,W41,W42,DI13,E28,R44,E29,R45,R46,W43,W44,W45,BO13,DI14:std_logic;
signal W101,DI18,BO18,DI19,BO19,DI20,BO20,L1,L2,s,s1,s2,s3,L3,L4,L5,L6,L7,L8,L9,L10,L11,L12,E30,R47,R48,R49,E31,W46,W47,BO14,W49,W48,R50,E32,E33,R51,R52,BO15,W51,W50,W52,DI16,E34,R53,E35,R54,R55,W53,BO16:std_logic;
begin
--srL2 DI---
xor_gate1:xor_gate port map(A=>N6,B=>'1',C=>W1);
xor_gate2:xor_gate port map(A=>W1,B=>'0',C=>DI1);


--SRL2 BO---
not_gate1 :not_gate port map(D=>N6,E=>E1);
and_gate1 :and_gate port map(F=>E1,G=>'1',H=>R1);

not_gate2 :not_gate port map(D=>N6,E=>E2);
and_gate2 :and_gate port map(F=>E2,G=>'0',H=>R2);

and_gate3 :and_gate port map(F=>'1',G=>'0',H=>R3);

xor_gate4:xor_gate port map(A=>R1,B=>R2,C=>W3);
xor_gate5:xor_gate port map(A=>W3,B=>R3,C=>BO1);


--SRT2 DI-


xor_gate6:xor_gate port map(A=>N7,B=>'0',C=>W4);
xor_gate7:xor_gate port map(A=>W4,B=>BO1,C=>DI2);

--SRT2--BO
not_gate3 :not_gate port map(D=>N7,E=>E3);
and_gate4 :and_gate port map(F=>E3,G=>'0',H=>R4);



not_gate4 :not_gate port map(D=>N7,E=>E4);
and_gate5 :and_gate port map(F=>E4,G=>BO1,H=>R5);

and_gate6 :and_gate port map(F=>'0',G=>BO1,H=>R6);

xor_gate8:xor_gate port map(A=>R4,B=>R5,C=>W6);
xor_gate9:xor_gate port map(A=>W6,B=>R6,C=>BO2);


--QUO NOT---
not_gate5 :not_gate port map(D=>BO2,E=>U3);


--SRT 1 MUX--
and_gate7 :and_gate port map(F=>U3,G=>DI1,H=>R7);
s<=not(U3);

and_gate8 :and_gate port map(F=>N6,G=>s,H=>R8);


or_gate1:or_gate port map(I=>R7,J=>R8,K=>L1);
---SRT2-----MUX

and_gate9 :and_gate port map(F=>U3,G=>DI2,H=>R9);

and_gate10 :and_gate port map(F=>N7,G=>s,H=>R10);

or_gate2:or_gate port map(I=>R9,J=>R10,K=>L2);

------SRT3-----

----SRT3 DI------


xor_gate10:xor_gate port map (A=>N4,B=>'1',C=>W10);
xor_gate11:xor_gate port map (A=>W10,B=>'0',C=>DI10);

---SRT3--------BO


not_gate6:not_gate port map(D=>N4,E=>E6);
and_gate11 :and_gate port map(F=>E6,G=>'1',H=>R11);

not_gate7:not_gate port map(D=>N4,E=>E7);
and_gate12 :and_gate port map(F=>E7,G=>'0',H=>R12);


and_gate13 :and_gate port map(F=>'1',G=>'0',H=>R13);


xor_gate12:xor_gate port map (A=>R11,B=>R12,C=>W12);
xor_gate13:xor_gate port map (A=>W12,B=>R13,C=>BO3);




--SRT4---DI


xor_gate14:xor_gate port map (A=>N3,B=>'0',C=>W14);
xor_gate15:xor_gate port map (A=>W14,B=>BO3,C=>DI4);


---SRT4--BO

not_gate8:not_gate port map(D=>N5,E=>E8);
and_gate14:and_gate port map(F=>E8,G=>'0',H=>R14);

not_gate9:not_gate port map(D=>N5,E=>E9);
and_gate15 :and_gate port map(F=>E9,G=>BO3,H=>R15);


and_gate16:and_gate port map(F=>BO3,G=>'0',H=>R16);


xor_gate16:xor_gate port map (A=>R14,B=>R15,C=>W16);
xor_gate17:xor_gate port map (A=>W16,B=>R16,C=>BO4);



---SRT5------
xor_gate18:xor_gate port map (A=>L1,B=>U3,C=>W18);
xor_gate19:xor_gate port map (A=>W18,B=>BO4,C=>DI5);

----ST5 BO---

not_gate10:not_gate port map(D=>L1,E=>E10);
and_gate17:and_gate port map(F=>E10,G=>U3,H=>R17);

not_gate11:not_gate port map(D=>L1,E=>E11);
and_gate18:and_gate port map(F=>E11,G=>BO4,H=>R18);


and_gate19:and_gate port map(F=>U3,G=>BO4,H=>R19);


xor_gate20:xor_gate port map (A=>R17,B=>R18,C=>W20);
xor_gate21:xor_gate port map (A=>W20,B=>R19,C=>BO5);

---SRT6---


xor_gate22:xor_gate port map (A=>L2,B=>'0',C=>W22);
xor_gate23:xor_gate port map (A=>W22,B=>BO5,C=>DI6);


----BO---
not_gate12:not_gate port map(D=>L2,E=>E12);
and_gate20:and_gate port map(F=>E12,G=>'0',H=>R20);



not_gate13:not_gate port map(D=>L2,E=>E13);
and_gate21:and_gate port map(F=>E13,G=>BO5,H=>R21);


and_gate22:and_gate port map(F=>'0',G=>BO5,H=>R22);

xor_gate24:xor_gate port map (A=>R20,B=>R21,C=>W24);
xor_gate25:xor_gate port map (A=>W24,B=>R22,C=>BO6);


not_gate14 :not_gate port map(D=>BO6,E=>U2);



------SERT3MUX----

and_gate23:and_gate port map(F=>U2,G=>DI3,H=>R23);
s1<=not(U2);

and_gate24:and_gate port map(F=>N4,G=>s1,H=>R24);


or_gate3:or_gate port map(I=>R23,J=>R24,K=>L3);

---SRT4MUX---
and_gate25:and_gate port map(F=>U2,G=>DI4,H=>R25);
s1<=not(U2);

and_gate26:and_gate port map(F=>N5,G=>s1,H=>R26);


or_gate4:or_gate port map(I=>R25,J=>R26,K=>L4);


---SRT5---MUX


and_gate27:and_gate port map(F=>U2,G=>DI5,H=>R27);
s1<=not(U2);

and_gate28:and_gate port map(F=>L1,G=>s1,H=>R28);


or_gate5:or_gate port map(I=>R27,J=>R28,K=>L5);

----SRT6---MUX


and_gate29:and_gate port map(F=>U2,G=>DI6,H=>R29);
s1<=not(U2);

and_gate30:and_gate port map(F=>L2,G=>s1,H=>R30);


or_gate6:or_gate port map(I=>R29,J=>R30,K=>L5);



------SRT7---DI

xor_gate26:xor_gate port map (A=>N2,B=>'1',C=>W26);
xor_gate27:xor_gate port map (A=>W26,B=>'0',C=>DI7);


-----SRT7----BO


not_gate15:not_gate port map(D=>N2,E=>E15);
and_gate31:and_gate port map(F=>E15,G=>'0',H=>R31);



not_gate16:not_gate port map(D=>N2,E=>E16);
and_gate32:and_gate port map(F=>E16,G=>'1',H=>R32);


and_gate33:and_gate port map(F=>'1',G=>'0',H=>R33);

xor_gate28:xor_gate port map (A=>R31,B=>R32,C=>W28);
xor_gate29:xor_gate port map (A=>W28,B=>R33,C=>BO7);



----SRT8---BO


not_gate17:not_gate port map(D=>N3,E=>E17);
and_gate34:and_gate port map(F=>E17,G=>'0',H=>R34);



not_gate18:not_gate port map(D=>N3,E=>E18);
and_gate35:and_gate port map(F=>E18,G=>BO7,H=>R35);


and_gate36:and_gate port map(F=>'0',G=>BO7,H=>R36);

xor_gate30:xor_gate port map (A=>R34,B=>R35,C=>W30);
xor_gate31:xor_gate port map (A=>W30,B=>R36,C=>BO8);


------SRT8 DI-----

xor_gate32:xor_gate port map (A=>N3,B=>'0',C=>W32);
xor_gate33:xor_gate port map (A=>W32,B=>BO7,C=>DI8);


---SRR9---DI


xor_gate34:xor_gate port map (A=>L3,B=>U2,C=>W34);
xor_gate35:xor_gate port map (A=>W34,B=>BO8,C=>DI9);


---SRTTBO---9


not_gate19:not_gate port map(D=>L3,E=>E19);
and_gate37:and_gate port map(F=>E19,G=>U2,H=>R37);



not_gate20:not_gate port map(D=>L3,E=>E20);
and_gate38:and_gate port map(F=>E20,G=>BO8,H=>R38);


and_gate39:and_gate port map(F=>U2,G=>BO8,H=>R39);

xor_gate36:xor_gate port map (A=>R37,B=>R38,C=>W36);
xor_gate37:xor_gate port map (A=>W36,B=>R39,C=>BO9);




----SRT10-------

xor_gate38:xor_gate port map (A=>L4,B=>U3,C=>W38);
xor_gate39:xor_gate port map (A=>W38,B=>BO9,C=>DI10);


---SRTBO10----

not_gate21:not_gate port map(D=>L4,E=>E21);
and_gate40:and_gate port map(F=>E21,G=>BO9,H=>R40);



not_gate22:not_gate port map(D=>L4,E=>E22);
and_gate41:and_gate port map(F=>E22,G=>U3,H=>R41);


and_gate42:and_gate port map(F=>U3,G=>BO9,H=>R42);

xor_gate40:xor_gate port map (A=>R40,B=>R41,C=>W40);
xor_gate41:xor_gate port map (A=>W40,B=>R42,C=>BO10);



---SRT11----DI

xor_gate42:xor_gate port map (A=>L5,B=>'0',C=>W42);
xor_gate43:xor_gate port map (A=>W42,B=>BO10,C=>DI11);

------SRRT BO -=----111
not_gate23:not_gate port map(D=>L5,E=>E23);
and_gate43:and_gate port map(F=>E23,G=>BO10,H=>R43);



not_gate24:not_gate port map(D=>L5,E=>E24);
and_gate44:and_gate port map(F=>E24,G=>'0',H=>R44);


and_gate45:and_gate port map(F=>'0',G=>BO10,H=>R45);

xor_gate44:xor_gate port map (A=>R43,B=>R44,C=>W42);
xor_gate45:xor_gate port map (A=>W42,B=>R44,C=>BO11);


-------SRT12-----DI

xor_gate46:xor_gate port map (A=>L6,B=>'0',C=>W46);
xor_gate47:xor_gate port map (A=>W46,B=>BO11,C=>DI12);


----SRT12BO-----


not_gate25:not_gate port map(D=>L6,E=>E25);
and_gate46:and_gate port map(F=>E25,G=>BO11,H=>R46);



not_gate26:not_gate port map(D=>L5,E=>E26);
and_gate47:and_gate port map(F=>E26,G=>'0',H=>R47);


and_gate48:and_gate port map(F=>'0',G=>BO11,H=>R48);

xor_gate48:xor_gate port map (A=>R46,B=>R47,C=>W48);
xor_gate49:xor_gate port map (A=>W48,B=>R48,C=>BO12);





not_gate27 :not_gate port map(D=>BO12,E=>U1);






------SRT7 MUX-------


and_gate49:and_gate port map(F=>U1,G=>DI7,H=>R49);
s2<=not(U1);

and_gate50:and_gate port map(F=>N2,G=>s2,H=>R50);


or_gate7:or_gate port map(I=>R49,J=>R50,K=>L7);


-----SRT8MUX---

and_gate51:and_gate port map(F=>U1,G=>DI8,H=>R51);
s2<=not(U1);

and_gate52:and_gate port map(F=>N3,G=>s2,H=>R52);


or_gate8:or_gate port map(I=>R51,J=>R52,K=>L8);



---SRT9MUX------

and_gate53:and_gate port map(F=>U1,G=>DI9,H=>R53);
s2<=not(U1);

and_gate54:and_gate port map(F=>L3,G=>s2,H=>R54);


or_gate9:or_gate port map(I=>R53,J=>R54,K=>L9);


------SRT10--MUX


and_gate55:and_gate port map(F=>U1,G=>DI10,H=>R55);
s2<=not(U1);

and_gate56:and_gate port map(F=>L4,G=>s2,H=>R56);


or_gate10:or_gate port map(I=>R55,J=>R56,K=>L10);


----SRT11MUX---


and_gate57:and_gate port map(F=>U1,G=>DI11,H=>R57);
s2<=not(U1);

and_gate58:and_gate port map(F=>L5,G=>s2,H=>R58);


or_gate11:or_gate port map(I=>R57,J=>R58,K=>L11);

---SRT12--MUX

and_gate59:and_gate port map(F=>U1,G=>DI12,H=>R59);
s2<=not(U1);

and_gate60:and_gate port map(F=>L4,G=>s2,H=>R60);


or_gate12:or_gate port map(I=>R59,J=>R60,K=>L12);


------SRT13---------

xor_gate50:xor_gate port map (A=>N0,B=>'1',C=>W50);
xor_gate51:xor_gate port map (A=>W50,B=>'0',C=>DI13);

-----SRT13BO------

not_gate100:not_gate port map(D=>N0,E=>E100);
and_gate61:and_gate port map(F=>E100,G=>'1',H=>R61);



not_gate28:not_gate port map(D=>L5,E=>E28);
and_gate62:and_gate port map(F=>E28,G=>'0',H=>R62);


and_gate63:and_gate port map(F=>'0',G=>'1',H=>R63);

xor_gate52:xor_gate port map (A=>R61,B=>R62,C=>W52);
xor_gate53:xor_gate port map (A=>W52,B=>R63,C=>BO13);

-------SRT14DI------


xor_gate54:xor_gate port map (A=>N1,B=>'0',C=>W54);
xor_gate55:xor_gate port map (A=>W54,B=>BO13,C=>DI14);


----SRT 14 BO----

not_gate29:not_gate port map(D=>N1,E=>E29);
and_gate64:and_gate port map(F=>E29,G=>'0',H=>R64);



not_gate30:not_gate port map(D=>N1,E=>E30);
and_gate65:and_gate port map(F=>E30,G=>BO13,H=>R65);


and_gate66:and_gate port map(F=>'0',G=>BO13,H=>R66);

xor_gate100:xor_gate port map (A=>R64,B=>R65,C=>W100);
xor_gate56:xor_gate port map (A=>W100,B=>R66,C=>BO14);


---SRT15---DI

xor_gate57:xor_gate port map (A=>L7,B=>U1,C=>W57);
xor_gate58:xor_gate port map (A=>W57,B=>BO14,C=>DI15);


-----SRT15-----BO


not_gate31:not_gate port map(D=>L7,E=>E31);
and_gate67:and_gate port map(F=>E31,G=>U1,H=>R67);



not_gate32:not_gate port map(D=>L7,E=>E32);
and_gate68:and_gate port map(F=>E32,G=>BO14,H=>R68);


and_gate69:and_gate port map(F=>U1,G=>BO14,H=>R69);

xor_gate59:xor_gate port map (A=>R67,B=>R68,C=>W59);
xor_gate60:xor_gate port map (A=>W69,B=>R59,C=>BO15);



----SRT16----


xor_gate61:xor_gate port map (A=>L8,B=>U2,C=>W61);
xor_gate62:xor_gate port map (A=>W61,B=>BO15,C=>DI16);


----SRT16 BO-----


not_gate33:not_gate port map(D=>L8,E=>E33);
and_gate70:and_gate port map(F=>E33,G=>U2,H=>R70);



not_gate34:not_gate port map(D=>L8,E=>E34);
and_gate71:and_gate port map(F=>E34,G=>BO15,H=>R71);


and_gate72:and_gate port map(F=>U2,G=>BO15,H=>R72);

xor_gate63:xor_gate port map (A=>R70,B=>R71,C=>W63);
xor_gate64:xor_gate port map (A=>W63,B=>R72,C=>BO16);

-----SRT17-----

xor_gate65:xor_gate port map (A=>L9,B=>U3,C=>W65);
xor_gate66:xor_gate port map (A=>W65,B=>BO16,C=>DI16);

-----SRTY17 BO----


not_gate35:not_gate port map(D=>L9,E=>E35);
and_gate73:and_gate port map(F=>E35,G=>U3,H=>R73);



not_gate36:not_gate port map(D=>L9,E=>E36);
and_gate74:and_gate port map(F=>E36,G=>BO16,H=>R74);


and_gate75:and_gate port map(F=>U3,G=>BO16,H=>R75);

xor_gate67:xor_gate port map (A=>R73,B=>R74,C=>W63);
xor_gate68:xor_gate port map (A=>W63,B=>R75,C=>BO17);




----SRT18----



xor_gate69:xor_gate port map (A=>L10,B=>'0',C=>W69);
xor_gate70:xor_gate port map (A=>W69,B=>BO17,C=>DI18);

----SRTBO18----



not_gate37:not_gate port map(D=>L10,E=>E37);
and_gate76:and_gate port map(F=>E37,G=>'0',H=>R76);



not_gate38:not_gate port map(D=>L10,E=>E38);
and_gate77:and_gate port map(F=>E38,G=>BO17,H=>R77);


and_gate78:and_gate port map(F=>'0',G=>BO17,H=>R78);

xor_gate71:xor_gate port map (A=>R76,B=>R77,C=>W71);
xor_gate72:xor_gate port map (A=>W71,B=>R78,C=>BO18);
------SRR19---DI



xor_gate73:xor_gate port map (A=>L11,B=>'0',C=>W73);
xor_gate74:xor_gate port map (A=>W73,B=>BO18,C=>DI19);

----SRTBO19----



not_gate39:not_gate port map(D=>L11,E=>E39);
and_gate79:and_gate port map(F=>E39,G=>'0',H=>R79);



not_gate40:not_gate port map(D=>L11,E=>E40);
and_gate80:and_gate port map(F=>E40,G=>BO17,H=>R80);


and_gate81:and_gate port map(F=>'0',G=>BO18,H=>R81);

xor_gate75:xor_gate port map (A=>R79,B=>R80,C=>W75);
xor_gate76:xor_gate port map (A=>W75,B=>R81,C=>BO19);



----SRT20----

xor_gate101:xor_gate port map (A=>L12,B=>'0',C=>W101);
xor_gate78:xor_gate port map (A=>W101,B=>BO19,C=>DI19);

not_gate41:not_gate port map(D=>L12,E=>E41);
and_gate82:and_gate port map(F=>E41,G=>'0',H=>R82);



not_gate42:not_gate port map(D=>L12,E=>E42);
and_gate83:and_gate port map(F=>E42,G=>BO19,H=>R83);


and_gate84:and_gate port map(F=>'0',G=>BO19,H=>R84);

xor_gate79:xor_gate port map (A=>R82,B=>R83,C=>W79);
xor_gate80:xor_gate port map (A=>W79,B=>R84,C=>BO20);


not_gate43:not_gate port map(D=>BO20,E=>E43);








end arch;
