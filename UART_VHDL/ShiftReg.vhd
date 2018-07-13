--Shift Register to store the Recieved Byte in the Datapath
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

--Entity Declaration---------------------------------------
entity ShiftReg is
	port (	clk, Rx, store_data, display_num: in std_logic;	--Inputs
				b: out std_logic_vector(7 downto 0) 				--Outputs
			);
end entity ShiftReg;


--Architecture Logic Start---------------------------------
architecture shiftreg_behaviour of ShiftReg is

signal temp: std_logic_vector(7 downto 0); --Create a temporary register to store the current register value

begin
	shiftRegister: process(clk)
	begin
		if clk'event and clk = '1' THEN
			if store_data = '1' then
				temp(7) <= Rx;
				temp(6) <= temp(7);
				temp(5) <= temp(6);
				temp(4) <= temp(5);
				temp(3) <= temp(4);
				temp(2) <= temp(3);
				temp(1) <= temp(2);
				temp(0) <= temp(1);
			end if;
		end if;
	end process;
	
	b <= temp;	--Store the recieved data into the output byte
	
end shiftreg_behaviour;	--End of Architecture Logic
