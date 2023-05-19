module dff (
    din,clk,q
);
input din,clk;
output q;
reg q;
always @(posedge clk) begin
    q <= din;
end
    
endmodule