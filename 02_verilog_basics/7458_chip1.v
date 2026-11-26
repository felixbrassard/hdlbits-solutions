module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );

    wire and1a, and1d, and2a, and2c;
    assign and1a = (p1a & p1b & p1c);
    assign and1d = (p1d & p1e & p1f);
    assign and2a = (p2a & p2b);
    assign and2c = (p2c & p2d);
    assign p1y = (and1a | and1d);
    assign p2y = (and2a | and2c);
    
endmodule
