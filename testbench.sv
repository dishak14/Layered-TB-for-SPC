`include "interface.sv"
`include "test.sv"
module tbench_top;
  bit clk;
  bit reset;
  bit preset;
  
  always #5 clk = ~clk;
  
  intf i_intf(clk);
  
  test t1(i_intf);
  
  parity par(
    .x(i_intf.x),
    .clk(i_intf.clk),
    .y(i_intf.y)
    );
  
endmodule