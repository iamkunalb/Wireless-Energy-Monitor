--N Variable Counter for the UART Receiver Datapath
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

--Entity Declaration----------------------------------
entity N_counter is
	port (	clk, n_count_en, n_reset: in std_logic;
				n_cmp7: out std_logic 	
			);
end entity N_counter;

--Architecture Logic Start----------------------------
architecture n_count_en_behaviour of n_counter is

signal n_counter: std_logic_vector(2 downto 0);	--Temporary 3-bit signal to hold the n counter value

begin

	NCounting: Process(clk)
		begin
		
		if clk'event and clk = '1' THEN
			if n_reset= '1'  then
				n_counter <= "000";
			
			elsif n_count_en = '1' then
					n_counter <= n_counter + 1;
			end if;
		end if;
		
	end process;
	
	n_cmp7 <= '1' when n_counter = "111" else '0';	--Output the comparison based on the N counter value
	
end n_count_en_behaviour;	--End of Architecture Logic