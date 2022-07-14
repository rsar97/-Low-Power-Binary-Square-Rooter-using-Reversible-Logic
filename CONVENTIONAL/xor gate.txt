Library ieee;
Use ieee.std_logic_1164.all; 
Entity xor_gate is
 Port(A, B: in std_logic; 
      C: out std_logic); 
 end xor_gate; 
architecture ckt of xor_gate is  
begin
 C<= A XOR B; 
 End ckt;
