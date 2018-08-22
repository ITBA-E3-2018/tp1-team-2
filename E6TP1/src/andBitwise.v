module andBitwise(x0,x1,x2,x3,y0,y1,y2,y3,o0,o1,o2,o3);
    input x0,x1,x2,x3,y0,y1,y2,y3;
    output reg o0,o1,o2,o3;
    wire a0,a1,a2,a3;
    and(a0,x0,y0);
    and(a1,x1,y1);
    and(a2,x2,y2);
    and(a3,x3,y3);

    always @(x0 or x1 or x2 or x3 or y0 or y1 or y2 or y3) begin
        
        assign o0 = a0;
        assign o1 = a1;
        assign o2 = a2;
        assign o3 = a3;
    end
endmodule
//Works perfectly