-- activates LED when left and right button is clicked
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.std_logic_unsigned.all; 

entity mouseLED is
	port (vert_sync : in std_logic;
			left_click_in, right_click_in : in std_logic;
			left_led_out, right_led_out : out std_logic);
end entity mouseLED;

architecture arc of mouseLED is

signal Q_left_led : std_logic := '0' ;
signal Q_right_led : std_logic := '0';

begin
	process (vert_sync, left_click_in, right_click_in)
	begin
	if(rising_edge(vert_sync)) then
		if (left_click_in = '1') then
			Q_left_led <= '1';
			Q_right_led <= '0';
		elsif (right_click_in = '1') then
			Q_right_led <= '1';
			Q_left_led <= '0';
		else
			Q_left_led <= '0';
			Q_right_led <= '0';
		end if;
	end if;
	end process;
left_led_out <= Q_left_led;
right_led_out <= Q_right_led;

end architecture arc;