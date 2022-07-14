Library ieee; 
Use ieee.std_logic_1164.all; 
Entity srt is 
Port(A,B,C,D: in std_logic; 
     P,Q,Bo,di: out std_logic); 
end srt; 
architecture ckt of srt is 
begin
P <= A xor C;
Q <= A xor B;
Bo <= (not A and B) xor (not A and C) xor (B and C);
di <= A xor B xor C xor D;
 
end ckt;
