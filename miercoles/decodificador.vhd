library ieee;
 use ieee.std_logic_1164.all;
 use ieee.std_logic_arith.all;
 use ieee.std_logic_unsigned.all;

 entity decodificador is
 port(entrada: in std_logic_vector(3 downto 0) ;o : out std_logic_vector(6 downto 0);
 clk:in std_logic);
 end decodificador;

 architecture comportamiento of decodificador is
   -- se declaran todas las señales antes del begin de architecture
   ------------------------------------------------------------------
   signal a : std_logic_vector(6 downto 0):= "0001000";
   signal b : std_logic_vector(6 downto 0):= "1100000";
   signal c : std_logic_vector(6 downto 0):= "0110001";
   signal d : std_logic_vector(6 downto 0):= "1000010";
   signal e : std_logic_vector(6 downto 0):= "0110000";
   signal f : std_logic_vector(6 downto 0):= "0111000";
   signal n0: std_logic_vector(6 downto 0):= "0000001";
   signal n1 : std_logic_vector(6 downto 0):= "1001111";
   signal n2 : std_logic_vector(6 downto 0):= "0010010";
   signal n3 : std_logic_vector(6 downto 0):= "0000110";
   signal n4 : std_logic_vector(6 downto 0):= "1001100";
   signal n5 : std_logic_vector(6 downto 0):= "0100100";
   signal n6 : std_logic_vector(6 downto 0):= "0100000";
   signal n7 : std_logic_vector(6 downto 0):= "0001111";
   signal n8 : std_logic_vector(6 downto 0):= "0000000";
   signal n9 : std_logic_vector(6 downto 0):= "0001100";
begin
process(clk)
begin
  case entrada is
  				when "0000" => o <=n0;
  				when "0001" => o <=n1;
  				when "0010" => o <=n2;
  				when "0011" => o <=n3;
  				when "0100" => o <=n4;
  				when "0101" => o <=n5;
  				when "0110" => o <=n6;
  				when "0111" => o <=n7;
  				when "1000" => o <=n8;
  				when "1001" => o <=n9;
  				when "1010" => o <=a;
  				when "1011" => o <=b;
  				when "1100" => o <=c;
  				when "1101" => o <=d;
  				when "1110" => o <=e;
  				when "1111" => o <=f;
  				when others => o <="1111111";
  end case;
end process;

 end  comportamiento;