// /verilog_prj/2_Verilog_Language/2_4_Procedures/33_alwayscase.v
// synthesis verilog_input_version verilog_2001

module top_module (
    input [2:0] sel,
    input [3:0] data0,
    input [3:0] data1,
    input [3:0] data2,
    input [3:0] data3,
    input [3:0] data4,
    input [3:0] data5,
    output reg [3:0] out
);
    always @(*) begin // This is a combinational circuit
        case (sel)
            3'b0 : begin
                out = data0;
            end
            3'b1 : begin
                out = data1;
            end
            3'b2 : begin
                out = data2;
            end
            3'b3 : begin
                out = data3;
            end
            3'b4 : begin
                out = data4;
            end
            3'b5 : begin
                out = data5;
            end
            default : begin
                out = data4;
            end
        endcase
    end
endmodule