module top_module( zero );
    output zero;
    // Verilog-1995
	assign zero = 1'b0;
endmodule

// HDLBits uses Verilog-2001 ANSI-style port declaration syntax because 
// it's easier to read and reduces typos. You may use the older Verilog-1995
// syntax if you wish. For example, the two module declarations below are
// acceptable and equivalent:
module top_module(output zero);
    // Verilog-2001
	assign zero = 1'b0;
endmodule