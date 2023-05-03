module top_module (
    input in,       // Declare an input wire named "in"
    output out      // Declare an output wire named "out"
);

    wire not_in;    // Declare a wire named "not_in"

    assign out = ~not_in;   // Assign a value to out (create a NOT gate).
    assign not_in = ~in;    // Assign a value to not_in (create another NOT gate).

endmodule       // End of module "top_module"

`default_nettype none
module top_module (
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n
); 

    // Declare two wires (named and_ab and and_cd)
    wire and_ab;
    wire and_cd;
    // wire and_ab, and_cd;

    assign and_ab = a&b;    // First AND gate
    assign and_cd = c&d;    // Second AND gate
    assign out = and_ab|and_cd;    // OR gate : Feeds both 'out' and the NOT gate
    assign out_n = ~out;    // NOT gate

endmodule
