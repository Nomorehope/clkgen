library verilog;
use verilog.vl_types.all;
entity clkgen_vlg_check_tst is
    port(
        \exit\          : in     vl_logic;
        exitbutton      : in     vl_logic;
        ledbutton       : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end clkgen_vlg_check_tst;
