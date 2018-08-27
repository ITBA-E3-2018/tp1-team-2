module filterBCD
(
    in,     //Entrada de datos
    out,    //Salida de datos
    error   //Flag de error o invalido
);

input [3:0] in;

output[3:0] out;
output error;

wire [3:0] in;
reg [3:0] out;
reg error;

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