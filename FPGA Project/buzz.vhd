library ieee;
use ieee.std_logic_1164.all;
entity buzz is
port( A,B,C: in std_logic; V: out std_logic; LED1,LED2,LED3,LED4,LED5,LED6: out std_logic_vector(7 downto 0));
end buzz;
architecture arch of buzz is
Signal X:  std_logic_vector(2 downto 0);
begin
X <= A & B & C;
V <=  A OR (B AND C);

With X select 
	LED6 <=  "10001110" when "100",
				"10000110" when "011",
			   "11111111" when others; 
			
With X select 
	LED5 <=  "11001111" when "100",
				"10100011" when "011",
			   "11111111" when others; 
With X select 
	LED4 <=  "11001110" when "100",
				"10001111" when "011",
			   "11111111" when others; 
				
With X select 
	LED3 <=  "10000110" when "100",
				"10111111" when "011",
			   "11111111" when others; 
				
				
With X select 
	LED2 <=  "01111001" when "100",
				"10100011" when "011",
			   "11111111" when others; 
				
With X select 
	LED1 <=  "01111001" when "100",
				"10100111" when "011",
			   "11111111" when others; 

end arch;