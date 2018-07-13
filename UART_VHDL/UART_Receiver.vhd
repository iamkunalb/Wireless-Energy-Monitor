--FSM of the UART Receiver in CPLD
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

--Entity Declaration------------------------
entity UART_Receiver is
	port (	clk, Rx, s_cmp7, n_cmp7, s_cmp15: in std_logic;	--FSM Inputs
				s_reset, n_reset, s_count_en, store_data, n_count_en, store : out std_logic	--FSM Outputs
			);
end entity UART_Receiver;


--Architecture Logic Start------------------
architecture behaviour of UART_Receiver is

--FSM State Variables
type fsm_states is (idle, start, data, stop);
signal CS, NS : fsm_states;

begin

	Synchronous_process: process(clk) 
	begin
		if clk'event and clk = '1' then
			CS <= NS;
		end if;
	end process;


	NextState_logic: process (CS, Rx, s_cmp7, n_cmp7, s_cmp15)
	begin 
		case CS is
			when idle =>
				if Rx = '0' then	
					NS <= start;
				else
					NS <= idle;
				end if;
			when start =>
				if s_cmp7 = '1' then
					NS <= data;
				else 
					NS <= start;
				end if;
			when data =>
				if s_cmp15 = '0' then
					NS <= data;
				elsif n_cmp7 = '0' and s_cmp15 = '1' then
					NS <= data;
				elsif n_cmp7 = '1' and s_cmp15 = '1' then
					NS <= stop;
				end if;
			when stop =>
				if s_cmp15 = '1' then
					NS <= idle;
				else
					NS <= stop;
				end if;
		end case;
	end process;

	Output_logic: process(CS, Rx, s_cmp7, s_cmp15, n_cmp7)
	begin
		s_reset <= '0';
		store_data <= '0';
		s_count_en <= '0';
		n_reset <= '0';
		n_count_en <= '0';
		case CS is	
			when idle =>
				if Rx = '0' then	
					s_reset <= '1';
				else
					s_reset <= '0';
				end if;
			when start =>
				if s_cmp7 = '0' then
					s_reset <= '0';
					s_count_en <= '1';
				else
					s_reset <= '1';
					n_reset <= '1';
					s_count_en <= '0';
				end if;
			when data =>
				if n_cmp7 = '0' and s_cmp15 = '1' then
					s_reset <= '1';
					store_data <= '1';
					n_count_en <= '1';
				elsif n_cmp7 = '1' and s_cmp15 = '1' then
					s_reset <= '1';
					store_data <= '1';
					s_count_en <= '0';
				else
					s_count_en <= '1';
					store_data <= '0';
				end if;
			when stop =>
				if s_cmp15 = '0' then	
					s_count_en <= '1';
					else
					store <= '1';
				end if;
		end case;
	end process;

end behaviour; --End of Architecture Logic