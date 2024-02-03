interface intf(input bit clk);
  bit x;
  bit y;
  clocking cb@(posedge clk);
    
    output x;
    input y;
  endclocking
  
  clocking monitor_cb@(posedge clk);
    
    input x;
    input y;
    
  endclocking
  
  
  modport DRIVER  (clocking cb,input clk);
    modport MONITOR (clocking monitor_cb,input clk);
  
 
endinterface