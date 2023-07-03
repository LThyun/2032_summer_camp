library verilog;
use verilog.vl_types.all;
entity gen_ex is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        speed           : in     vl_logic;
        txen            : out    vl_logic;
        rxen            : out    vl_logic
    );
end gen_ex;
