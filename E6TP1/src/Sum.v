module sum (x0,x1,x2,x3,y0,y1,y2,y3,o0,o1,o2,o3,carry);
    input x0,x1,x2,x3,y0,y1,y2,y3;
    output reg o0,o1,o2,o3, carry;

    wire c3,w;      
    sumBit2Bit FS1 (x3, y3, c3, w);
    assign o3 = w;                     //Sumo bits X3 y Y3, el output es w y el carry es c3

    reg c2b,r,c2a, temp;
    sumBit2Bit FS2 (y2,c0,c2a,r);
    sumBit2Bit FS3 (x2,r,c2b,temp);
    assign o2 = temp;                  //Sumo X2, Y2 y C3 y me quedan 2 posibles carrys c2a y c2b

    reg c1a,c1b,ps1,m1, ps2, m2;
    if (c2a == 0) 
    begin
        sumBit2Bit FS4(y1,c2b,c1a,ps1);
        sumBit2Bit FS5(x1,ps1,c1b,m1);
        assign o1 = m1;
    end
    else
    begin
        sumBit2Bit FS6(y1,c2a,c1a,ps2);
        sumBit2Bit FS7(x1,ps2,c1b,m2);
        assign o1 = m2;
    end                         //Sumo X1, Y1 y el carry anterior fijandome cual quedo en 1 y descatando el otro


    wire carryA,carryB, pS1,pS2, f1,f2;
    if(c1a == 0) 
    begin
        sumBit2Bit FS8(y0,c1b,carryA,pS1);
        sumBit2Bit FS9(x0,pS1,carryB,f1);
        assign o0 = f1;
    end
    else
    begin
        sumBit2Bit FS10(y0,c1a,carryA,pS2);
        sumBit2Bit FS11(x0,pS2,carryB,f2);
        assign o0 = f2;
    end                         //Sumo X0, Y0 y el carry pertinente de la suma anterior

    if (carryA == 1)
        assign carry = 1;
    else if (carryB == 1)
        assign carry = 1;
    else
        assign carry = 0;          //Me fijo si alguno de los carrys quedo encendido, y si es asi, enciendo el bit del carry

endmodule