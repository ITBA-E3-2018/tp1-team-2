module sum4bit(
    x0, //Sumando 0 (4-bit)
    x1, //Sumando 1 (4-bit)
    o   //Resultado (5-bit)
);

//Definiendo Inputs
input [3:0] x0, x1; //Sumandos

//Definiendo Outputs
output [4:0] o;   //Resultado

//Definiendo los tipos de dato
wire [3:0] x0, x1;
wire [4:0] o;

assign o = x0 + x1;

endmodule