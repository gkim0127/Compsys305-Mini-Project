LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;
use ieee.numeric_std.all;

entity gameover_display is
	port(	pixel_row, pixel_col: IN std_logic_vector(9 downto 0);
			clk : in std_logic;
			state : IN std_logic_vector(1 downto 0);
			char_text_out2 : out std_logic);
end entity gameover_display;



architecture arc of gameover_display is 
--begin
	component char_rom is
			port(
					character_address	:	in std_logic_vector (5 downto 0);
					font_row, font_col	:	in std_logic_vector (2 downto 0);
					clock				: 	in std_logic ;
					rom_mux_output		:	out std_logic);
	end component char_rom;
	

	signal character_address : std_logic_vector (5 downto 0);

	
	begin
	-- assign components
	text_on2 : char_rom port map (character_address, pixel_row(4 downto 2), pixel_col(4 downto 2), clk, char_text_out2);
	


	text_display: process(pixel_col, pixel_row, state)
		begin
				-- G
				if 
					pixel_col >= std_logic_vector(to_unsigned(185, 10)) and
					pixel_col <= std_logic_vector(to_unsigned(225, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(225, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(255, 10)) then
				   character_address <="000111" ; 
				-- A
				elsif 
					pixel_col >= std_logic_vector(to_unsigned(225, 10)) and
					pixel_col <= std_logic_vector(to_unsigned(265, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(225, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(255, 10)) then
				   character_address <="000001" ; 
				-- M
				elsif 
					pixel_col >= std_logic_vector(to_unsigned(265, 10)) and
					pixel_col <= std_logic_vector(to_unsigned(305, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(225, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(255, 10)) then
				   character_address <="001101" ;
				-- E
				elsif 
					pixel_col >= std_logic_vector(to_unsigned(305, 10)) and
					pixel_col <= std_logic_vector(to_unsigned(345, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(225, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(255, 10)) then
				   character_address <="000101" ;
				-- space	
				-- O
				elsif 
					pixel_col >= std_logic_vector(to_unsigned(345, 10)) and
					pixel_col <= std_logic_vector(to_unsigned(385, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(225, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(255, 10)) then
				   character_address <="001111" ; 
				-- V
				elsif 
					pixel_col >= std_logic_vector(to_unsigned(385, 10)) and
					pixel_col <= std_logic_vector(to_unsigned(425, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(225, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(255, 10)) then
				   character_address <="010110" ; 
				-- E
				elsif 
					pixel_col >= std_logic_vector(to_unsigned(425, 10)) and
					pixel_col <= std_logic_vector(to_unsigned(465, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(225, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(255, 10)) then
				   character_address <="000101" ; 
				-- R
				elsif 
					pixel_col >= std_logic_vector(to_unsigned(465, 10)) and
					pixel_col <= std_logic_vector(to_unsigned(505, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(225, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(255, 10)) then
				   character_address <="010010" ; 
				--P
				elsif 
					pixel_col >= std_logic_vector(to_unsigned(350, 10)) and
					pixel_col <= std_logic_vector(to_unsigned(380, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(350, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(380, 10)) then
				   character_address <="010000" ; 
				--B
				elsif
					pixel_col >= std_logic_vector(to_unsigned(380, 10)) and
					pixel_col <= std_logic_vector(to_unsigned(410, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(350, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(380, 10)) then
				   character_address <="000010" ; 
				--3
				elsif
					pixel_col >= std_logic_vector(to_unsigned(410, 10)) and
					pixel_col <= std_logic_vector(to_unsigned(440, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(350, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(380, 10)) then
				   character_address <="110011" ; 
				else
					character_address <="100000" ;
			end if;

		end process text_display;

end architecture arc;
