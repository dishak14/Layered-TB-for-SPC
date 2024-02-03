class transaction;
  rand bit x;
  bit y;
  
  function void display(string name);
    $display("-------------------------");
    $display(" %s ",name);
    $display("-------------------------");
    $display("  x= %0b",x);
    $display(" y= %0b",y);
    $display("-------------------------");
  endfunction
  
  
  
  

  
endclass