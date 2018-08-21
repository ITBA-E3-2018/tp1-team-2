module shiftLeft(x0,x1,x2,x3,o0,o1,o2,o3,carry);
    input x0,x1,x2,x3;
    output reg o0,o1,o2,o3,carry;

    always @(x0 or x1 or x2 or x3) begin
        assign o0 = x1;
        assign o1 = x2;
        assign o2 = x3;
        assign o3 = 0;
        assign carry = x0;
    end
endmodule
