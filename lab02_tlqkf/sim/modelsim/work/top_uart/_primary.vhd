library verilog;
use verilog.vl_types.all;
entity top_uart is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        tx_data         : in     vl_logic_vector(3 downto 0);
        load            : in     vl_logic;
        sw9             : in     vl_logic;
        txd             : out    vl_logic;
        rxd             : in     vl_logic;
        fnd_rxd_top     : out    vl_logic_vector(6 downto 0);
        fnd_rxd_1       : out    vl_logic_vector(6 downto 0);
        fnd_rxd_2       : out    vl_logic_vector(6 downto 0);
        fnd_rxd_3       : out    vl_logic_vector(6 downto 0);
        led_idle        : out    vl_logic;
        led_blink1      : out    vl_logic;
        led_blink2      : out    vl_logic;
        led_blink3      : out    vl_logic;
        led_no          : out    vl_logic
    );
end top_uart;
