--Seven Segment Decoder to output the received byte from datapath to the displays
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

--Entity Declaration----------------------------------
entity sevensegDecoder is
	port (u7
	
		displayIn: in std_logic_vector(7 downto 0);	--Input
		PB, clk, store: in std_logic;
		ledsegment: out std_logic_vector(6 downto 0);	--Output
		ledsel: out std_logic_vector(3 downto 0)			--Output
			);
end entity sevensegDecoder;

--Architecture Logic Start----------------------------
architecture description of sevensegDecoder is

--Segementation of input byte-------------------------
signal digit_sel: std_logic_vector(1 downto 0);	--Temporary signal to store the LED select section in the sent data
signal bcd: std_logic_vector(3 downto 0); 		--Temporary signal to store the LED Value to display in the sent data
signal param: std_logic_vector(1 downto 0);		--Select the input parameter i.e. voltage, current etc.
signal digit_pos: std_logic_vector(1 downto 0);

--Store values based on params-----------------------
signal voltage: std_logic_vector(15 downto 0);
signal current: std_logic_vector(15 downto 0);
signal power: std_logic_vector(15 downto 0);
signal groupid: std_logic_vector(15 downto 0);
signal parametertodisplay: std_logic_vector(15 downto 0);

-------PB switch signals------------------------------
signal switchState: std_logic_vector(1 downto 0);
signal debounce, debounce_prev: std_logic;
signal counter: std_logic_vector(3 downto 0);
signal s_counter: std_logic_vector(10 downto 0);
signal digittodisplay: std_logic_vector(3 downto 0);
begin
	
	groupid <= "1111111011001011";
	param <= displayIn(7 downto 6);
	digit_pos <= displayIn(5 downto 4);
	
	ParamStorage: process(param, displayIn)
	begin
	if clk'event and clk = '1' then 
		if store = '1' then
		case param is
			when "00" =>
				case digit_pos is 
				when "00" =>
				voltage(15 downto 12) <= displayIn(3 downto 0);
				when "01" =>
				voltage(11 downto 8) <= displayIn(3 downto 0);
				when "10" =>
				voltage(7 downto 4) <= displayIn(3 downto 0);
				when "11" =>
				voltage(3 downto 0) <= displayIn(3 downto 0);
				end case;
			when "01" =>
				case digit_pos is
				when "00" =>
				current(15 downto 12) <= displayIn(3 downto 0);
				when "01" =>
				current(11 downto 8) <= displayIn(3 downto 0);
				when "10" =>
				current(7 downto 4) <= displayIn(3 downto 0);
				when "11" =>
				current(3 downto 0) <= displayIn(3 downto 0);
				end case;
			when "10" =>
				case digit_pos is
				when "00" =>
				power(15 downto 12) <= displayIn(3 downto 0);
				when "01" =>
				power(11 downto 8) <= displayIn(3 downto 0);
				when "10" =>
				power(7 downto 4) <= displayIn(3 downto 0);
				when "11" =>
				power(3 downto 0) <= displayIn(3 downto 0);
				end case;
			when others =>
				null;
		end case;
		end if;
	end if;
	end process;
	
	parametertodisplay <= voltage when switchstate = "00" else
								current when switchstate = "01" else
								power when switchstate = "10" else
								groupid;
								
	digittodisplay <= parametertodisplay(3 downto 0) when digit_sel = "00" else
								parametertodisplay(7 downto 4) when digit_sel = "01" else
								parametertodisplay(11 downto 8) when digit_sel = "10" else
								parametertodisplay(15 downto 12);
								
	displaycount: Process(clk)
	begin
		if clk'event and clk = '1' then
			 if s_counter = "10001000000" then
			   s_counter <= "00000000000";
				digit_sel <= digit_sel +1;
			else
				s_counter <= s_counter + 1;
			end if;
		end if;
	end process;					
	
	
	
	debouncer: process(clk, PB)
	begin
		if rising_edge(clk) then
			debounce <= '0';
			if PB = '1' then
				if counter = x"F" then
					debounce <= '1';
				else
					counter <= counter + 1;
				end if;
			else
				counter <= (others => '0');
			end if;
		end if;
	end process;
	
	strober: process(clk, debounce, switchState)
	begin
		if rising_edge(clk) then
			debounce_prev <= debounce;
			if debounce_prev = '0' and debounce = '1' then
				if switchState = "11" then
					switchState <= "00";
				else
					switchState <= switchState + 1;
				end if;
			else
				switchState <= switchState;
			end if;
		end if;
	end process;

	DisplaySel: process(digit_sel)	--LED Select Process
	begin
		case digit_sel is
			when "00" => 
				ledsel <= "0001";
			when "01" => 
				ledsel <= "0010";
			when "10" => 
				ledsel <= "0100";
			when "11" => 
				ledsel <= "1000";
			when others =>
				null;
		end case;
	end process;
	
	DisplayVal: process(digittodisplay)	--LED Value to display process
	begin
		case digittodisplay is 
			when "0000" => ledsegment <= "0111111";
			when "0001" => ledsegment <= "0000110";
			when "0010" => ledsegment <= "1011011";
			when "0011" => ledsegment <= "1001111";
			when "0100" => ledsegment <= "1100110";
			when "0101" => ledsegment <= "1101101";
			when "0110" => ledsegment <= "1111101";
			when "0111" => ledsegment <= "0000111";
			when "1000" => ledsegment <= "1111111";
			when "1001" => ledsegment <= "1100111";
			when "1011" => ledsegment <= "1101101";
			when "1100" => ledsegment <= "0111111";
			when "1110" => ledsegment <= "1110011";
			when "1111" => ledsegment <= "1101111";
			when others => ledsegment <= "0000000";
		end case;
	end process;
	
end description;	--End of Architecture Logic
