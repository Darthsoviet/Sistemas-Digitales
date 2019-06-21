library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity calculadora is
  port (
  a,
  b : in std_logic_vector (3 downto 0);
  seleccion : in std_logic_vector (3 downto 0);
  m,
  ci,
  clk:in std_logic;
  salida_alu,
  salida_a,
  salida_b,
  salida_seleccion  : out std_logic_vector(6 downto 0);
  co : out std_logic;
  o : inout std_logic_vector(3 downto 0)

  );
end calculadora;

architecture comportamiento of calculadora is
------------------------------------------------
--aqui se instancia el decodificador
component decodificador is
  port(entrada: in std_logic_vector(3 downto 0);
  o: out std_logic_vector(6 downto 0);
  clk: in std_logic);
end component;
--------------------------------------------
--aqui se instancia la ALU192CIK
component ALU192CIK is
  port(a,
		b : in std_logic_vector (3 downto 0);
 		seleccion : in std_logic_vector (3 downto 0);
 		m,
		ci,
		clk:in std_logic ;
 		o: out std_logic_vector(3 downto 0);
 		co: out std_logic);
end component;
--------------------------------
--aqui se inicialisan los cables dx
signal pa,pb,po:  std_logic_vector(1 downto 0);
signal pseleccion,psalida,pentrada,psalida2 :  std_logic_vector(3 downto 0);
signal pm,pci,pclk,pco: std_logic;

begin
conexionALU : ALU192CIK port map (a ,b,seleccion,m,ci,clk,o,co);
deco_entrada_a: decodificador port map(a,salida_a,clk);
deco_entrada_b: decodificador port map(b,salida_b,clk);
deco_salida_alu: decodificador port map(o,salida_alu,clk);
deco_seleccion: decodificador port map(seleccion,salida_seleccion,clk);




end comportamiento;
