----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:59:10 12/04/2017 
-- Design Name: 
-- Module Name:    Barra3 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Barra3 is
    Port ( Reset : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           
           a18in : in  STD_LOGIC_VECTOR (31 downto 0);
           aluresultin : in  STD_LOGIC_VECTOR (31 downto 0);
           wrenmenin : in  STD_LOGIC;
			  PCCin : in  STD_LOGIC_VECTOR (31 downto 0);
			  PCCout : out  STD_LOGIC_VECTOR (31 downto 0);
           rfsource : in  STD_LOGIC_VECTOR (1 downto 0);
			  
			  RD : in STD_LOGIC_VECTOR (5 downto 0);
			  RDout : out  STD_LOGIC_VECTOR (5 downto 0);
           
           a18inout : out  STD_LOGIC_VECTOR (31 downto 0);
           aluresultout : out  STD_LOGIC_VECTOR (31 downto 0);
           wrenmeninout : out  STD_LOGIC;
           rfsourceout : out  STD_LOGIC_VECTOR (1 downto 0));
end Barra3;

architecture Behavioral of Barra3 is

begin
	process(Clk,Reset,a18in,aluresultin,wrenmenin,PCCin,rfsource,RD )
	begin
		if reset='1' then
			 
          a18inout <= "00000000000000000000000000000000";	
			 aluresultout <= "00000000000000000000000000000000";
			 wrenmeninout <= '0';
			 rfsourceout <= "00";
			 PCCout<= "00000000000000000000000000000000";
			 
			 RDout <= "000000";
			 
		elsif(rising_edge(Clk)) then
			 RDout<= RD;
          a18inout <= a18in;	
			 aluresultout <= aluresultin;
			 wrenmeninout <= wrenmenin;
			 rfsourceout <=  rfsource;
			 PCCout<=PCCin;
		end if;
	
	end process;


end Behavioral;

