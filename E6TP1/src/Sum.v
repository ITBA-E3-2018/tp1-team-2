module sum (x0,x1,x2,x3,y0,y1,y2,y3,o0,o1,o2,o3,carry);
    input x0,x1,x2,x3,y0,y1,y2,y3;
    output reg o0,o1,o2,o3, carry;
    wire out0,out1,out2,out3,c1,c2,c3,cC;

    sumBit2Bit FS(x3,y3,c1,out3);
    sum3Bit SS(x2,y2,c1,out2,c2);
    sum3Bit TS(x1,y1,c2,out1,c3);
    sum3Bit FrthS(x0,y0,c3,out0,cC);

    always @(x0 or x1 or x2 or x3 or y0 or y1 or y2 or y3) begin
        assign o3 = out3;
        assign o2 = out2;
        assign o1 = out1;
        assign o0 = out0;
        assign carry = cC;
    end

    /*wire c3,w;   
    wire c2b,r,c2a, temp; 
    wire c1a,c1b,c1aa,c1bb,ps1,m1, ps2, m2;
    wire carryA, carryAA, carryBB,carryB, pS1,pS2, f1,f2;  

    sumBit2Bit FS1 (x3, y3, c3, w);
    
    sumBit2Bit FS2 (y2,c3,c2a,r);
    sumBit2Bit FS3 (x2,r,c2b,temp);

    sumBit2Bit FS4(y1,c2b,c1a,ps1);
    sumBit2Bit FS5(x1,ps1,c1b,m1);
    sumBit2Bit FS6(y1,c2a,c1aa,ps2);
    sumBit2Bit FS7(x1,ps2,c1bb,m2);

    sumBit2Bit FS8(y0,c1b,carryA,pS1);
    sumBit2Bit FS9(x0,pS1,carryB,f1);
    sumBit2Bit FS10(y0,c1a,carryAA,pS2);
    sumBit2Bit FS11(x0,pS2,carryBB,f2);
    
    sumBit2Bit FS8(y0,c1bb,carryA,pS1);
    sumBit2Bit FS9(x0,pS1,carryB,f1);
    sumBit2Bit FS10(y0,c1aa,carryAA,pS2);
    sumBit2Bit FS11(x0,pS2,carryBB,f2);

    
always @* begin
    assign o3 = w;                     //Sumo bits X3 y Y3, el output es w y el carry es c3
    assign o2 = temp;                  //Sumo X2, Y2 y C3 y me quedan 2 posibles carrys c2a y c2b
    if (c2a == 0) begin
        assign o1 = m1;
        if(c1a == 0) 
            assign o0 = f1;
        else
            assign o0 = f2;                //Sumo X0, Y0 y el carry pertinente de la suma anterior
    end
    else begin
        assign o1 = m2;                //Sumo X1, Y1 y el carry anterior fijandome cual quedo en 1 y descatando el otro
        if(c1aa == 0) 
            assign o0 = f1;
        else
            assign o0 = f2;                //Sumo X0, Y0 y el carry pertinente de la suma anterior
    end

    

    if ((carryA == 1) || (carryB == 1)||(carryAA == 1) || (carryBB == 1))
        assign carry = 1;
    else
        assign carry = 0;       //Me fijo si alguno de los carrys quedo encendido, y si es asi, enciendo el bit del carry
end*/

endmodule

//Works Perfectly