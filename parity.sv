module parity (
    input logic x,
    input logic clk,
    output logic y
);

    // Parameter values must be declared using 'localparam'
    localparam EVEN = 1'b0, ODD = 1'b1;

    // State variable should be declared as a reg
    reg e_o;

    // Synchronous reset for clarity and best practices
    always_ff @(posedge clk) begin
            // State transition logic
            case (e_o)
                EVEN: begin
                    y <= x ? 1'b1 : 1'b0;
                    e_o <= x ? ODD : EVEN;
                end
                ODD: begin
                    y <= x ? 1'b0 : 1'b1;
                    e_o <= x ? EVEN : ODD;
                end
                default: e_o <= EVEN; // Default state
            endcase
        end

endmodule
