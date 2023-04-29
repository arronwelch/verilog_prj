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
	reg q1,q2;
    my_dff dff1(clk,d,q1);
    my_dff dff2(clk,q1,q2);
    my_dff dff3(clk,q2,q);
endmodule
