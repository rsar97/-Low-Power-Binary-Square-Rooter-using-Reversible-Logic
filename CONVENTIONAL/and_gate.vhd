Library ieee;
Use ieee.std_logic_1164.all; 
Entity and_gate is
 Port(F,G: in std_logic; 
      H: out std_logic); 
 end and_gate; 
architecture ckt of and_gate is  
begin
 H<= F and G;
 End ckt;
