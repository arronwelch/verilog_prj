//a carry-select adder

module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    reg cout1,cout2,cout3;
    reg[15:0] sum_h0,sum_h1;
    add16 add16_l(a[15:0],b[15:0],0,sum[15:0],cout1);
    add16 add16_ci0(a[31:16],b[31:16],0,sum_h0,cout2);
    add16 add16_ci1(a[31:16],b[31:16],1,sum_h1,cout3);
    always @(*) begin
        case(cout1)
            1'b0:sum[31:16] = sum_h0;
            1'b1:sum[31:16] = sum_h1;
            default:
                sum[31:16] = 16'hxx; 
        endcase
    end

endmodule
