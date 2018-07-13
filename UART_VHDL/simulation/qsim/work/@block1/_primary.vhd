library verilog;
use verilog.vl_types.all;
entity Block1 is
    port(
        output          : out    vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        Rx              : in     vl_logic;
        reset           : in     vl_logic
    );
end Block1;
