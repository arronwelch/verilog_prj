// 2_Verilog_Language/2_3_Modules_Hierarchy/25_module_add.v

module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    // reg cout1,cout2;
    wire cout1,cout2;
    add16 add16_1(a[15:0],b[15:0],0,sum[15:0],cout1);
    add16 add16_2(a[31:16],b[31:16],cout1,sum[31:16],cout2);

endmodule
