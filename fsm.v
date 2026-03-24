module fsm(
    input wire clk,
    input wire rst,
    input wire in,
    output reg out
);

always@(posedge clk or posedge rst) begin
    if (rst) begin
        out <= 0;
    end else begin
        case (out)
            0: out <= in; // Transition from state 0 to state 1 if input is 1
            1: out <= in; // Stay in state 1 if input is 1, transition to state 0 if input is 0
            default: out <= 0; // Default case to reset output  this should never be hit
        endcase
    end
end

endmodule