/* 16_vector3.v
 * concatenation operator
 * {3'b111, 3'b000} => 6'b111000
 * {1'b1, 1'b0, 3'b101} => 5'b10101
 * {4'ha, 4'd10} => 8'b10101010 // 4'ba and 4'b10 are both 4'b1010 in binary
 * Concatenation needs to know the width of every component
 * (or how would you know the length of the result?)
 * The concatenation operator can be used on both the left and right sides of assignments.
 * input [15:0] in;
 * output [23:0] out;
 * assign {out[7:0], out[15:8]} = in;   // Swap two bytes. Right and left
 *                                      // side are both 16-bit vectors.
 * assign out[15:0] = {in[7:0], in[15:8]};  // This is the same thing.
 * assign out = {in[7:0], in[15:8]};    // This is different. The 16-bit vector
 *                                      // on the right is extended to match the
 *                                      // 24-bit vector on the left, so out[23:16]
 *                                      // are zero.
 * // In the first two examples, out[23:16] are not assigned.
 */

module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );

    assign {w[7:0],x[7:0],y[7:0],z[7:0]} = {a[4:0],b[4:0],c[4:0],d[4:0],e[4:0],f[4:0],2'b11};

endmodule
