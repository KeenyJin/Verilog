module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    
    logic [98:0] carries;
    bcd_fadd w [99:0](
        .a(a), .b(b), .cin({carries, cin}),
        .cout({cout, carries}), .sum(sum));
  // How to use instance array (array of modules)
endmodule
