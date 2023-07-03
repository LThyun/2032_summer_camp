library verilog;
use verilog.vl_types.all;
entity rx is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        rxen            : in     vl_logic;
        rxd             : in     vl_logic;
        led_idle1       : out    vl_logic;
        fnd_rxd         : out    vl_logic_vector(7 downto 0)
    );
end rx;
