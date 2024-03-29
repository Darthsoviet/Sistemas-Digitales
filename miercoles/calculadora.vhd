library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity calculadora is
  port (a, b : in std_logic_vector (1 downto 0);
 		seleccion : in std_logic_vector (3 downto 0);
 		m,ci,clk:in std_logic;
    o : out std_logic_vector(6 downto 0)


  );
end entity;

architecture comportamiento of calculadora is

component decodificador is
  port(entrada: in std_logic_vector(3 downto 0);
  salida: out std_logic_vector(3 downto 0);clk
  in std_logic);
end component;

component ALU192CIK is
  port(a, b : in std_logic_vector (1 downto 0);
 		seleccion : in std_logic_vector (3 downto 0);
 		m,ci,clk:in std_logic;
 		o:out std_logic_vector(1 downto 0);
 		co:out std_logic);
end component;
signal pa,pb: in std_logic_vector(1 downto 0);
signal pseleccion : in std_logic_vector(3 downto 0);
signal pm,pci,clk: in std_logic;

begin
conexionALU : ALU192CIK port map (a,b,seleccion,m,ci,clk,o,co);


end architecture;
