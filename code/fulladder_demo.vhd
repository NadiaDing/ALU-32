library ieee;
use ieee.std_logic_1164.all;

entity full_adder_demo is
  port (

    cout  : out std_logic;
    z     : out std_logic
  );
end full_adder_demo;

architecture structural of full_adder_demo is
component full_adder is

  port (
    c   : in std_logic;
    x     : in std_logic;
    y     : in std_logic;
    cout  : out std_logic;
    z     : out std_logic
  );
end component full_adder;

signal xin: std_logic;
signal yin: std_logic;
signal cin: std_logic;
signal inbus: std_logic_vector(2 downto 0);
begin

 fulladder_map: full_adder port map ( 
    x=> xin,
    y=>yin,
    c=>cin,
    z=>z,
    cout=>cout
  );
    
    cin<=inbus(2);
    yin<= inbus(1);
    xin<=inbus(0);
    
    test_proc: process
    begin
        
        inbus <="000";
        wait for 5ns;
        inbus <="001";
        wait for 5ns;
        inbus <="010";
        wait for 5ns;
        inbus <="011";
        wait for 5ns;
        inbus <="100";
        wait for 5ns;
        inbus <="101";
        wait for 5ns;
        inbus <="110";
        wait for 5ns;
        inbus <="111";
        wait for 5ns;
        wait;
    end process;
end architecture structural;
        