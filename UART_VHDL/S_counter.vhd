--S Variable Counter for the UART Receiver Datapath
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

--Entity Declaration-------------------------------
entity S_counter is
	port (	clk, s_reset, s_count_en: in std_logic;
				s_cmp7, s_cmp15: out std_logic 	
			);
end entity S_counter;


--Architecture Logic Start-------------------------
architecture s_count_en_behaviour of S_counter is

signal s_counter: std_logic_vector(3 downto 0);	--Creating a 4-bit register to store the s counter value

begin	
	CountingProcess: Process(clk)
	begin
		if clk'event and clk = '1' then
			if s_reset = '1' then
				s_counter <= "0000";
			elsif s_count_en = '1' then
				s_counter <= s_counter + 1;
			end if;
		end if;
	end process;
	
	s_cmp15 <= '1' when s_counter = "1111" else '0';
	s_cmp7 <= '1' when s_counter = "0111" else '0';
	
end s_count_en_behaviour; --End of Architecture Logic