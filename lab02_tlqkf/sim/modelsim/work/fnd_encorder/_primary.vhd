library verilog;
use verilog.vl_types.all;
entity fnd_encorder is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        din             : in     vl_logic_vector(7 downto 0);
        fnd_out         : out    vl_logic_vector(6 downto 0)
    );
end fnd_encorder;
