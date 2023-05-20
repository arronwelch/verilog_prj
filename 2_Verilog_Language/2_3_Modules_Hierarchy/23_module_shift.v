// 2 Verilog Language/2.3 Modules:Hierarchy/23_module_shift.v

module my_dff ( 
    input clk, 
    input d, 
    output q 
);
    // Module body
    always @(posedge clk) begin	
        assign q <= d;
    end
endmodule

module top_module ( input clk, input d, output q );
    reg a, b;
    my_dff dff1(clk, d, a);
    my_dff dff2(clk, a, b);
    my_dff dff3(clk, b, q);
endmodule

module top_module ( input clk, input d, output q );
    wire a, b;  // Create two wires. I called them a and b.

    // Create three instances of my_dff, with three different ins
    // Connect ports by position: ( input clk, input d, output q)
    my_dff d1(clk, d, a);
    my_dff d2(clk, a, b);
    my_dff d3(clk, b, q);
endmodule
