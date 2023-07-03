library verilog;
use verilog.vl_types.all;
entity rx_price is
    port(
        din             : in     vl_logic_vector(3 downto 0);
        din_rx          : in     vl_logic_vector(7 downto 0);
        price_out       : out    vl_logic_vector(31 downto 0)
    );
end rx_price;
