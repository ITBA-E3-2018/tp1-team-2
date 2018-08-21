module notBitwise(x0,x1,x2,x3,o0,o1,o2,o3);
    input x0,x1,x2,x3;
    output reg o0,o1,o2,o3;
    wire a0,a1,a2,a3;
    not(a0,x0);
    not(a1,x1);
    not(a2,x2);
    not(a3,x3);

    always @(x0 or x1 or x2 or x3 ) begin
        
        assign o0 = a0;
        assign o1 = a1;
        assign o2 = a2;
        assign o3 = a3;
    end
endmodule