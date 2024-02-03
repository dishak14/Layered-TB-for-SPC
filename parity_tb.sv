module test_parity;
    reg clk, x;
    wire y;
    parity PAR(x, clk, y);
    
    // Declare test_parity module
    initial begin
        //$dumpfile("parity.vcd");
        //$dumpvars(0, test_parity);
        clk = 1'b0;
    end

    // Clock generation
    always #5 clk =~ clk;

    // Stimulus generation
    initial begin
        x = 1'b0; #10; 
        x = 1'b1; #10; 
        x = 1'b1; #10; 
        x = 1'b1; #10; 
        x = 1'b0; #10; 
        x = 1'b1; #10; 
        x = 1'b1; #10; 
        x = 1'b0; #10; 
        x = 1'b0; #10; 
        x = 1'b1; #10; 
        x = 1'b1; #10; 
        x = 1'b0; #10; 
        #10 $finish;
    end
endmodule