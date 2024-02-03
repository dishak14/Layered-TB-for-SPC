`define DRIV_IF vif.DRIVER.cb
class driver;
  
  virtual intf vif;
  
  mailbox gen2driv;
  
  transaction trans;
  
  covergroup cover1;
    coverpoint trans.x;
  endgroup
  
  function new(virtual intf vif,mailbox gen2driv); 
    this.vif = vif;
    this.gen2driv = gen2driv;
    cover1=new();
  endfunction
  
 task main;
    
    repeat(1) 
      begin
       gen2driv.get(trans);
        @(posedge vif.DRIVER.clk);
        begin
       `DRIV_IF.x <= trans.x;
        trans.y = `DRIV_IF.y;
          cover1.sample();
        end
        $display("coverage of covergroup = %0f", cover1.get_coverage());
        
    end
  endtask
  
endclass