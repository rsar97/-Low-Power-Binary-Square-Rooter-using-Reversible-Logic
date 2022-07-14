Library ieee;
Use ieee.std_logic_1164.all; 
Entity not_gate is
 Port(D: in std_logic; 
      E: out std_logic); 
 end not_gate; 
architecture ckt of not_gate is  
begin
 E<= not(D);
 End ckt;
