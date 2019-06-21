library ieee;
 use ieee.std_logic_1164.all;
 use ieee.std_logic_arith.all;
 use ieee.std_logic_unsigned.all;

 entity ALU192CIK is
 port(a, b : in std_logic_vector (3 downto 0);
		seleccion : in std_logic_vector (3 downto 0);
		m,ci,clk:in std_logic;
		o:out std_logic_vector(3 downto 0);
		co:out std_logic);
	end ALU192CIK;

	architecture funcionamiento of ALU192CIK is
	begin

	process(clk)
	begin
    -----------------cuando se seleccionan operaciones logicas ---------------
	if (m='1') then
		case seleccion is
			when "0000" => o <= NOT(a);
			when "0001" => o <= NOT(a OR b);
			when "0010" => o <= (NOT(a)) AND b;
			when "0011" => o <= "0000";
			when "0100" => o <= NOT(a AND b);
			when "0101" => o <= NOT(b);
			when "0110" => o <= (a XOR b );
			when "0111" => o <= a AND (NOT(b));
			when "1000" => o <= (NOT(a)) OR b;
			when "1001" => o <= NOT (a XOR b);
			when "1010" => o <= b;
			when "1011" => o <= a AND b;
			when "1100" => o <= "1111";
			when "1101" => o <= a AND (NOT(b));
			when "1110" => o <= a OR b;
			when "1111" => o <= a;
			when others  => o <= "0000";
			end case;
      -------------------------para cuando m=0 y se ejecutan operaciones
      --aritmeticas---------------------------------------------------

	elsif (m='0') then
    ------------------------cuando se quiere acareo-----------------------
		if(ci='1') then
			case seleccion is
				when "0000" => o <= a;
				when "0001" => o <= a+b;
				when "0010" => o <= a+(NOT(b));
				when "0011" => o <= "1111";
				when "0100" => o <= a+(a AND(NOT(b)));
				when "0101" => o <= (a+b)+(NOT(a AND b));
				when "0110" => o <= a-b-1 ;
				when "0111" => o <= (a AND (NOT(b))-1);
				when "1000" => o <= a+(a AND b);
				when "1001" => o <= a+b;
				when "1010" => o <= (a+(NOT(b))+(a AND b));
				when "1011" => o <= (a AND b)-1;
				when "1100" => o <= a+a;
				when "1101" => o <= (a+b)+a;
				when "1110" => o <= (a+(NOT(b))+a);
				when "1111" => o <= a-1;
				when others => o<="0000";
			end case;
      ----------------cuando no se quiere acarreo 
		elsif (ci='0') then
			case seleccion is
				when "0000" => o <= a+1;
				when "0001" => o <= (a+b)+1;
				when "0010" => o <= (a+(NOT(b))+1);
				when "0011" => o <= "0000";
				when "0100" => o <= a+(a AND(NOT(b)))+1;
				when "0101" => o <= (a+b)+(NOT(a AND b))+1;
				when "0110" => o <= a-b ;
				when "0111" => o <= (a AND (NOT(b)));
				when "1000" => o <= a+(a AND b)+1;
				when "1001" => o <= a+b+1;
				when "1010" => o <= (a+(NOT(b))+(a AND b)+1);
				when "1011" => o <= (a AND b);
				when "1100" => o <= a+a+1;
				when "1101" => o <= (a+b)+a+1;
				when "1110" => o <= (a+(NOT(b))+a+1);
				when "1111" => o <= a;
				when others  => o<="0000";
			end case;
		end if;
	end if;

	end process;


end funcionamiento;
