module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire[31:0] invert_b;
    reg cout1,cout2;
    
    always @(*) begin
        for(int i=0;i<32;i++)
            invert_b[i]= sub ^ b[i];
    end    
    
    add16 add16_l(a[15:0],invert_b[15:0],sub,sum[15:0],cout1);
    add16 add16_h(a[31:16],invert_b[31:16],cout1,sum[31:16],cout2);

endmodule
