----------------------------------------------------------------------------------
-- Company:        USAFA
-- Engineer: 		 C3C Jasper Arneberg 
-- 
-- Create Date:    14:13:03 01/21/2014 
-- Design Name: 
-- Module Name:    Lab1_Module - Behavioral 
-- Project Name: 	 Lab 1
-- Target Devices: Nexys 2
-- Tool versions:  14.1
-- Description:    Lab 1 uses an FPGA to give the Twos Complement ouput.
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

entity Lab1_Module is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           X : out  STD_LOGIC;
           Y : out  STD_LOGIC;
           Z : out  STD_LOGIC);
end Lab1_Module;

architecture Behavioral of Lab1_Module is
		--put signals here (connections between gates)
	signal A_NOT: STD_LOGIC;
	signal B_AND_C: STD_LOGIC;
	signal B_NOT_C_NOT: STD_LOGIC;
	signal D: STD_LOGIC;
	signal E: STD_LOGIC;
	
begin
	--put VHDL code here
	A_NOT <= not A;
	B_AND_C <= B and C;
	B_NOT_C_NOT <= not B_AND_C;
	D <= A_NOT and B_AND_C;
	E <= A and B_NOT_C_NOT;
	X <= D and E;
	Y <= B xor C;
	Z <= C;
	
end Behavioral;

