module sum3Bit(x1,x2,x3,o,carry);
    input x1,x2,x3;
    output reg o, carry;
    wire c1,r1,c2,r2;
    
    sumBit2Bit One(x1,x2,c1,r1);
    sumBit2Bit Two(x3,r1,c2,r2);
    always @* begin
      if(r1 == 0)
      begin
        assign o = x3;
        assign carry = c1;
        end
      else
      begin
        assign o = r2;
        assign carry = c2;
        end
    end
endmodule
//Works Perfectly