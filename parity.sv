module parity (
    input logic x,
    input logic clk,
    output logic y
);


    localparam EVEN = 1'b0, ODD = 1'b1;

    reg e_o;


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
