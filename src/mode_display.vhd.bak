LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;

entity mode_display is
	port(	pixel_row, pixel_col: IN std_logic_vector(9 downto 0);
			state : IN std_logic_vector(2 downto 0);
			character_address: OUT std_logic_vector(5 downto 0);
			font_row, font_col: OUT std_logic_vector(2 downto 0));
end entity;

-- if state is 00 main menu
-- if state is 01 training mode
-- if state is 10 game mode (play)
-- if state is 11 game over

architecture mode_display is 
 begin
	component char_rom 
			port(
					character_address	:	in std_logic_vector (5 downto 0);
					font_row, font_col	:	in std_logic_vector (2 downto 0);
					clock				: 	in std_logic ;
					rom_mux_output		:	out std_logic);
	end component;

	text_display: process(pixel_col, pixel_row, state)
		begin
			-- menu display training and game options 
			if state = "00" then 
				-- T
				if 
					pixel_col >= std_logic_vector(to_unsigned(200, 10)) and
					pixel_col >= std_logic_vector(to_unsigned(230, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(300, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(330, 10)) then
				   character_address <="010100" ; 
				-- R
				elsif 
					pixel_col >= std_logic_vector(to_unsigned(230, 10)) and
					pixel_col >= std_logic_vector(to_unsigned(260, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(300, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(330, 10)) then
				   character_address <="010010" ; 
				-- A
				elsif 
				   pixel_col >= std_logic_vector(to_unsigned(260, 10)) and
					pixel_col >= std_logic_vector(to_unsigned(290, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(300, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(330, 10)) then
				   character_address <="000001" ; 
				-- I
				elsif 
				   pixel_col >= std_logic_vector(to_unsigned(290, 10)) and
					pixel_col >= std_logic_vector(to_unsigned(320, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(300, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(330, 10)) then
				   character_address <="001001" ; 
				-- N
				elsif 
				   pixel_col >= std_logic_vector(to_unsigned(320, 10)) and
					pixel_col >= std_logic_vector(to_unsigned(350, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(300, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(330, 10)) then
				   character_address <="001110" ; 
				-- I
				elsif 
				   pixel_col >= std_logic_vector(to_unsigned(350, 10)) and
					pixel_col >= std_logic_vector(to_unsigned(380, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(300, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(330, 10)) then
				   character_address <="001001" ; 
				-- N
				elsif 
				   pixel_col >= std_logic_vector(to_unsigned(380, 10)) and
					pixel_col >= std_logic_vector(to_unsigned(410, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(300, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(330, 10)) then
				   character_address <="001110" ;
				-- G
				elsif 
				   pixel_col >= std_logic_vector(to_unsigned(410, 10)) and
					pixel_col >= std_logic_vector(to_unsigned(440, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(300, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(330, 10)) then
				   character_address <="000111" ; 
				
				----------------------------------------------------
				
				-- P
				elsif 
				   pixel_col >= std_logic_vector(to_unsigned(260, 10)) and
					pixel_col >= std_logic_vector(to_unsigned(290, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(350, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(380, 10)) then
				   character_address <="010000" ; 
				-- L
				elsif 
				   pixel_col >= std_logic_vector(to_unsigned(290, 10)) and
					pixel_col >= std_logic_vector(to_unsigned(320, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(350, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(380, 10)) then
				   character_address <="001100" ; 
				-- A
				elsif 
				   pixel_col >= std_logic_vector(to_unsigned(320, 10)) and
					pixel_col >= std_logic_vector(to_unsigned(350, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(350, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(380, 10)) then
				   character_address <="000001" ; 
				-- Y
				elsif 
				   pixel_col >= std_logic_vector(to_unsigned(350, 10)) and
					pixel_col >= std_logic_vector(to_unsigned(380, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(350, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(380, 10)) then
				   character_address <="011001" ; 
		
				else
					character_address <="100000" ; 
				end if; 
			
			-- game over
			elsif state = "11" then
				-- G
				if 
					pixel_col >= std_logic_vector(to_unsigned(95, 10)) and
					pixel_col >= std_logic_vector(to_unsigned(145, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(215, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(265, 10)) then
				   character_address <="000111" ; 
				-- A
				elsif 
					pixel_col >= std_logic_vector(to_unsigned(145, 10)) and
					pixel_col >= std_logic_vector(to_unsigned(195, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(215, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(265, 10)) then
				   character_address <="000001" ; 
				-- M
				elsif 
					pixel_col >= std_logic_vector(to_unsigned(195, 10)) and
					pixel_col >= std_logic_vector(to_unsigned(245, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(215, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(265, 10)) then
				   character_address <="001101" ;
				-- E
				elsif 
					pixel_col >= std_logic_vector(to_unsigned(245, 10)) and
					pixel_col >= std_logic_vector(to_unsigned(295, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(215, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(265, 10)) then
				   character_address <="000101" ;
				-- space	
				-- O
				elsif 
					pixel_col >= std_logic_vector(to_unsigned(345, 10)) and
					pixel_col >= std_logic_vector(to_unsigned(395, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(215, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(265, 10)) then
				   character_address <="001111" ; 
				-- V
				elsif 
					pixel_col >= std_logic_vector(to_unsigned(395, 10)) and
					pixel_col >= std_logic_vector(to_unsigned(445, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(215, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(265, 10)) then
				   character_address <="010110" ; 
				-- E
				elsif 
					pixel_col >= std_logic_vector(to_unsigned(445, 10)) and
					pixel_col >= std_logic_vector(to_unsigned(495, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(215, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(265, 10)) then
				   character_address <="000101" ; 
				-- R
				elsif 
					pixel_col >= std_logic_vector(to_unsigned(495, 10)) and
					pixel_col >= std_logic_vector(to_unsigned(545, 10)) and
					pixel_row >= std_logic_vector(to_unsigned(215, 10)) and
					pixel_row <= std_logic_vector(to_unsigned(265, 10)) then
				   character_address <="010010" ; 
				else
					character_address <="100000" ;
			end if;
		end text_display;
					
					
font_row<=pixel_row(4 downto 2);
font_col<=pixel_col(4 downto 2);

end architecture mode_display;
