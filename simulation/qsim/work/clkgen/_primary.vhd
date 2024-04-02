library verilog;
use verilog.vl_types.all;
entity clkgen is
    port(
        clk             : in     vl_logic;
        button          : in     vl_logic;
        \exit\          : out    vl_logic;
        exitbutton      : out    vl_logic;
        ledbutton       : out    vl_logic
    );
end clkgen;
