module filterBCD
(
    in,     //Entrada de datos
    out,    //Salida de datos
    error   //Flag de error o invalido
);

//Defining Input
input [3:0] in;

//Defining Outputs
output[3:0] out;
output error;

//Defining Variables
wire [3:0] in;
reg [3:0] out;
reg error;

//Code
initial begin
  error = 0;
  out = 0;
end

always @ (in) begin
  if (in>9) begin
    error = 1;
  end
  else begin
    error = 0;
  end
  assign out = in;
end

endmodule