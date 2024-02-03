`define MON_IF vif.MONITOR.monitor_cb

class monitor;
  
  virtual intf vif;
  mailbox mon2scb;
  transaction trans;
    

  
  
  function new(virtual intf vif,mailbox mon2scb);
    this.vif     = vif;
    this.mon2scb = mon2scb;
  endfunction
 
  
  task main;
    repeat(1)
      #25;
      begin
      //transaction trans;
      trans = new();
      
        
        
        @(posedge vif.MONITOR.clk);
        begin
      	trans.x  = `MON_IF.x;
    	trans.y  = `MON_IF.y;
      	mon2scb.put(trans);
          
          
        end
        
    end
  endtask
  
endclass