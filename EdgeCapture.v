module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out
);
    
    reg [31:0] q;
    always @(posedge clk) begin
        q <= in;
        if(reset)
            out <= 0;
        else begin
            for(int i=0;i<32;i++) begin
                if(~in[i]&q[i])
                    out[i] <= 1;
            end
        end
    end

endmodule
