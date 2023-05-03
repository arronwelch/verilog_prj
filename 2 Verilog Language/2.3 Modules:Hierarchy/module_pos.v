module mod_a ( 
    output o1, 
    output o2, 
    input i1, 
    input i2, 
    input i3, 
    input i4
);
    assign o1 = ~(i1 ^ i2);
    assign o2 =  (i3 ^ i4);

endmodule

module top_module ( 
    input a, 
    input b, 
    input c,
    input d,
    output out1,
    output out2
);
    mod_a instance1(out1,out2,a,b,c,d);

endmodule
