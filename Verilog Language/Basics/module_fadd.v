module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
    reg cout1,cout2;
    add16 add16_1(a[15:0],b[15:0],0,sum[15:0],cout1);
    add16 add16_2(a[31:16],b[31:16],cout1,sum[31:16],cout2);

endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

// Full adder module here
    wire[1:0] result;
    assign result = a + b + cin;
    assign cout = result[1];
    assign sum = result[0];

endmodule
