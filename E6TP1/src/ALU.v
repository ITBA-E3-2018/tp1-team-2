module ALU (x0,x1,x2,x3,y0,y1,y2,y3,op0,op1,op2,o0,o1,o2,o3,carry);
    
    
    input x0,x1,x2,x3,y0,y1,y2,y3,op0,op1,op2;
    output reg o0,o1,o2,o3,carry;
    wire s0,s1,s2,s3,q0,q1,q2,q3,w0,w1,w2,w3,e0,e1,e2,e3,carryShift,
    r0,r1,r2,r3,t0,t1,t2,t3,carrySum,a0,a1,a2,a3,d0,d1,d2,d3;

    andBitwise andModule(x0,x1,x2,x3,y0,y1,y2,y3,s0,s1,s2,s3);
    notBitwise notModule(x0,x1,x2,x3,q0,q1,q2,q3);
    orBitwise orModule(x0,x1,x2,x3,y0,y1,y2,y3,w0,w1,w2,w3);
    shiftLeft shiftLeftModule(x0,x1,x2,x3,e0,e1,e2,e3,carryShift);
    Substraction subsModule(x0,x1,x2,x3,y0,y1,y2,y3,r0,r1,r2,r3);
    sum sumModule(x0,x1,x2,x3,y0,y1,y2,y3,t0,t1,t2,t3,carrySum);
    twosComplement tcModule(x0,x1,x2,x3,a0,a1,a2,a3);
    xorBitwise xorModule(x0,x1,x2,x3,y0,y1,y2,y3,d0,d1,d2,d3);

    //Defino las operaciones como 0 = and; 1 = not; 2 = or; 3 = xor; 4 = shiftLeft; 5 = sum
    // 6 = Substraction; 7 = complemento a 2;

    always @(x0 or x1 or x2 or x3 or y0 or y1 or y2 or y3 or op0 or op1 or op2) begin
        if(op0 == 0) begin
            if(op1 == 0) begin
                if(op2 == 0) begin
                    assign o0 = s0;
                    assign o1 = s1;
                    assign o2 = s2;
                    assign o3 = s3;
                    assign carry = 0;
                end
                else begin
                    assign o0 = q0;
                    assign o1 = q1;
                    assign o2 = q2;
                    assign o3 = q3;
                    assign carry = 0;
                end
            end
            else begin
                if(op2 == 0) begin
                    assign o0 = w0;
                    assign o1 = w1;
                    assign o2 = w2;
                    assign o3 = w3;
                    assign carry = 0;
                end
                else begin
                    assign o0 = d0;
                    assign o1 = d1;
                    assign o2 = d2;
                    assign o3 = d3;
                    assign carry = 0;
                end
            end
        end
        else begin
            if (op1 == 0) begin
                if(op2 == 0) begin
                    assign o0 = e0;
                    assign o1 = e1;
                    assign o2 = e2;
                    assign o3 = e3;
                    assign carry = carryShift;
                end
                else begin
                    assign o0 = t0;
                    assign o1 = t1;
                    assign o2 = t2;
                    assign o3 = t3;
                    assign carry = carrySum;
                end
            end
            else begin
                if (op2 == 0) begin
                    assign o0 = r0;
                    assign o1 = r1;
                    assign o2 = r2;
                    assign o3 = r3;
                    assign carry = 1;
                end
                else begin
                    assign o0 = a0;
                    assign o1 = a1;
                    assign o2 = a2;
                    assign o3 = a3;
                    assign carry = 0;
                end
            end
        end
    end
endmodule