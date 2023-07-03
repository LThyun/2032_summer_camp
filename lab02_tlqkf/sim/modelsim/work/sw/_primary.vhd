library verilog;
use verilog.vl_types.all;
entity sw is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        din             : in     vl_logic_vector(7 downto 0);
        bit_out         : out    vl_logic_vector(31 downto 0)
    );
end sw;
