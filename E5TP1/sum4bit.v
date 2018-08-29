module sum4bit(
    x0, //Addend 0 (4-bit)
    x1, //Addend 1 (4-bit)
    o   //Result (5-bit)
);

//Defining Inputs
input [3:0] x0, x1; //Addends

//Defining Outputs
output [4:0] o;   //Result

//Defining Data types
wire [3:0] x0, x1;
wire [4:0] o;

assign o = x0 + x1;

endmodule