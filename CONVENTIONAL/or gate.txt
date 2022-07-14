Library ieee;
Use ieee.std_logic_1164.all; 
Entity or_gate is
 Port(I,J: in std_logic; 
      K: out std_logic); 
 end or_gate; 
architecture ckt of or_gate is  
begin
 K<= I or J;
 End ckt;
