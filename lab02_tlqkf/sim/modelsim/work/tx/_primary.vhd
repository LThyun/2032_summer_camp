library verilog;
use verilog.vl_types.all;
entity tx is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        txen            : in     vl_logic;
        tx_data_32      : in     vl_logic_vector(31 downto 0);
        load            : in     vl_logic;
        txd             : out    vl_logic;
        led_idle        : out    vl_logic;
        led_blink1      : out    vl_logic;
        led_blink2      : out    vl_logic;
        led_blink3      : out    vl_logic
    );
end tx;
