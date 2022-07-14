library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity sqrt_srt_n is
  port(N0,N1,N2,N3,N4,N5,N6,N7 :in std_logic;
       G1,G2,G3,G4,G5,G6,G7,G8,G9,G10,G11,G12,G13,G14,G15,G16,G17,G18,G19,G20,G21,G22,G23,G24,G25,G26,G27,G28,G29,G30,G31,G32,G33,G34,G35,G36 :out std_logic);
end sqrt_srt_n;

architecture bhevar of sqrt_srt_n is 


component srt 
  Port(A,B,C,D: in std_logic; 
     P,Q,Bo,di: out std_logic); 
end component;
component mulx
  Port(I1,I2,I3:in std_logic;
      O1,O2,O3:out std_logic);
end component;


signal DI1,BO1,DI2,BO2,S1,U2,S2,Z1,Z3,Z4,Z5,Z6,S6,S7,S8,S9,S10,Z7,Z8,Z9,Z10,H34,H36,G37,BO19,DI19,H35,G38,G39,BO20,DI20:std_logic; 
signal BO3,DI3,BO4,DI4,BO5,DI5,BO6,DI6,V1,V2,S3,U1,S4,Z2:std_logic;
signal V3,V4,V5,V6,V7,V8,V9,V10,BO7,BO8,BO9,BO10,BO11,DI7,DI8,DI9,DI10,DI11,BO12,DI12,U0,U3,S5:std_logic;
signal DI13,DI14,DI15,DI16,DI17,DI18,BO13,BO14,BO15,BO16,BO17,BO18:std_logic;
signal H1,H2,H3,H4,H5,H6,H7,H8,H9,H10,H11,H12,M1,M2,M3,M4,M5,M6,M7,H13,H14,H15,H16,H17,H18,H19,H20,H21,H22,H23,H24,H25,H26,H27,H28,H29,H30,H31,H32,H33:std_logic;
begin
  
  srt1: srt port map(A=>N6,B=>'1',C=>'0',D=>'0',P=>G1,Q=>G2,Bo=>BO1,di=>DI1);
  srt2: srt port map(A=>N7, B=>'0',C=>BO1,D=>'0',P=>G3,Q=>G4,Bo=>BO2,di=>DI2);
  U3<=not(BO2);

  mulx1:mulx port map(I1=>N7,I2=>U3,I3=>DI1,O1=>H1,O2=>H2,O3=>H3); 
  mulx2:mulx port map(I1=>N6,I2=>U3,I3=>DI2,O1=>H4,O2=>H5,O3=>H6); 

  srt3: srt port map(A=>N4,B=>'1',C=>'0',D=>'0',P=>G5,Q=>G6,Bo=>BO3,di=>DI3);
  srt4: srt port map(A=>N5,B=>'0',C=>BO3,D=>'0',P=>G7,Q=>G8,Bo=>BO4,di=>DI4);
  srt5: srt port map(A=>H2,B=>U3,C=>BO4,D=>'0',P=>G9,Q=>G10,Bo=>BO5,di=>DI5);
  srt6: srt port map(A=>H5,B=>'0',C=>BO5,D=>'0',P=>G11,Q=>G12,Bo=>BO6,di=>DI6);
    
  U2<=not(BO6);

   mulx3:mulx port map(I1=>N4,I2=>U2,I3=>DI3,O1=>H7,O2=>H8,O3=>H9); 
   mulx4:mulx port map(I1=>N5,I2=>U2,I3=>DI4,O1=>H10,O2=>H11,O3=>H12);  
   mulx5:mulx port map(I1=>H2,I2=>U2,I3=>DI5,O1=>H13,O2=>H14,O3=>H15); 
   mulx6:mulx port map(I1=>H5,I2=>U2,I3=>DI6,O1=>H16,O2=>H17,O3=>H18); 
  

  srt7:srt port map(A=>N2,B=>'1',C=>'0',D=>'0',P=>G13,Q=>G14,Bo=>BO7,di=>DI7);
  srt8:srt port map(A=>N3,B=>'0',C=>BO7,D=>'0',P=>G15,Q=>G16,Bo=>BO8,di=>DI8);
  srt9:srt port map(A=>H8,B=>U2,C=>BO8,D=>'0',P=>G17,Q=>G18,Bo=>BO9,di=>DI9);
  srt10:srt port map(A=>H11,B=>U3,C=>BO9,D=>'0',P=>G19,Q=>G20,Bo=>BO10,di=>DI10);
  srt11:srt port map(A=>H14,B=>'0',C=>BO10,D=>'0',P=>G21,Q=>G22,Bo=>BO11,di=>DI11);
  srt12:srt port map(A=>H17,B=>'0',C=>BO11,D=>'0',P=>G23,Q=>G24,Bo=>BO12,di=>DI12);
  
  

  
   U1<=not(BO12);    
  
  
  mulx7:mulx port map(I1=>N2,I2=>U1,I3=>DI7,O1=>H19,O2=>H20,O3=>H21);
  mulx8:mulx port map(I1=>N3,I2=>U1,I3=>DI8,O1=>H22,O2=>H23,O3=>H24);
  mulx9:mulx port map(I1=>H8,I2=>U1,I3=>DI9,O1=>H25,O2=>H26,O3=>H27);
  mulx10:mulx port map(I1=>H11,I2=>U1,I3=>DI10,O1=>H28,O2=>H29,O3=>H30);
  mulx11:mulx port map(I1=>H14,I2=>U1,I3=>DI11,O1=>H31,O2=>H32,O3=>H33);
  mulx12:mulx port map(I1=>H17,I2=>U1,I3=>DI12,O1=>H34,O2=>H35,O3=>H36);



  srt13:srt port map(A=>N0,B=>'1',C=>'0',D=>'0',P=>G25,Q=>G26,Bo=>BO13,di=>DI13);
  srt14:srt port map(A=>N1,B=>'0',C=>BO13,D=>'0',P=>G27,Q=>G28,Bo=>BO14,di=>DI14);
  srt15:srt port map(A=>H20,B=>U1,C=>BO14,D=>'0',P=>G29,Q=>G30,Bo=>BO15,di=>DI15);
  srt16:srt port map (A=>H23,B=>U2,C=>BO15,D=>'0',P=>G31,Q=>G32,Bo=>BO16,di=>DI16);
  srt17:srt port map(A=>H26,B=>U3,C=>BO16,D=>'0',P=>G33,Q=>G34,Bo=>BO17,di=>DI17);
  srt18:srt port map(A=>H29,B=>'0',C=>'0',D=>BO17,P=>G34,Q=>G35,Bo=>BO18,di=>DI18);

  srt19:srt port map(A=>H32,B=>'0',C=>'0',D=>BO18,P=>G36,Q=>G37,Bo=>BO19,di=>DI19);
  srt20:srt port map(A=>H35,B=>'0',C=>'0',D=>BO19,P=>G38,Q=>G39,Bo=>BO20,di=>DI20);
 
  
  U0<= not(BO20);
   
 end bhevar;   
