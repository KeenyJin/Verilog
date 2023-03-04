module top_module (
    input d, 
    input ena,
    output q);
    always @(d)
        if(ena)
            q <= d;
endmodule
