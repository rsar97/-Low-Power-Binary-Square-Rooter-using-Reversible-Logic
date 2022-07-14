Library ieee; 
Use ieee.std_logic_1164.all; 
Entity mulx is 
Port(I1,I2,I3: in std_logic; 
     O1,O2,O3: out std_logic); 
end mulx; 
architecture ckt of mulx is 
begin
O1<= I2;
O2 <= (I1 and (not(I2))) or (I2 and I3);
O3<=I3;
 
end ckt;
