library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Seven_seg is
	port (	b: in std_logic_vector(7 downto 0);
				displayOutput: out std_logic_vector(5 downto 0)
			);
end entity Seven_seg;

architecture description of Seven_seg is

--Sectioning Input data
signal data: std_logic_vector(5 downto 0);
signal param: std_logic_vector(1 downto 0);

--Registers for storing different parameters
signal voltage: std_logic_vector(5 downto 0);
signal current: std_logic_vector(5 downto 0);
signal power: std_logic_vector(5 downto 0);
signal groupid: std_logic_vector(5 downto 0);
begin
	StoreRegisterValues: process(b)
	begin
		data <= b(5 downto 0);
		param <= b(7 downto 6);
		groupid <= "001010";
		case param is
			when "00" => voltage <= data;
			when "01" => current <= data;
			when "10" => power <= data;	
			when others => null;
		end case;
	displayOutput <= voltage;
	end process;
end architecture description;