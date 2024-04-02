library verilog;
use verilog.vl_types.all;
entity clkgen_vlg_sample_tst is
    port(
        button          : in     vl_logic;
        clk             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end clkgen_vlg_sample_tst;
