module Substraction(x0,x1,x2,x3,y0,y1,y2,y3,o0,o1,o2,o3);
    input x0,x1,x2,x3,y0,y1,y2,y3;
    output reg o0,o1,o2,o3;
    wire a0,a1,a2,a3,c0,c1,c2,c3,trash;

    twosComplement FF(y0,y1,y2,y3,a0,a1,a2,a3);
    sum SF(x0,x1,x2,x3,a0,a1,a2,a3,c0,c1,c2,c3,trash);

    always @(x0 or x1 or x2 or x3 or y0 or y1 or y2 or y3) begin
      assign o0 = c0;
      assign o1 = c1;
      assign o2 = c2;
      assign o3 = c3;
    end
endmodule
//Works perfectly