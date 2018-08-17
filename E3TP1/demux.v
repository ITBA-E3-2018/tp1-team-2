module demux(
    d_in,       //Entrada de la senal
    d_sel,   //Entrada de selector
    d_out_0,       //Salida de la senal
    d_out_1,
    d_out_2,
    d_out_3
);

//Declaracion de entradas
input d_in;

//Declaracion de salidas
output d_out_0, d_out_1, d_out_2, d_out_3;

//Supuestamente esta seria inout?
input [1:0] d_sel;

//Supongo que esto tambien se hace.
wire d_in;
wire [1:0] d_sel;
reg d_out_0, d_out_1, d_out_2, d_out_3;

always @ (d_in) begin
  d_out_0 = 0;    //Limpio lo que estaba antes
  d_out_1 = 0;
  d_out_2 = 0;
  d_out_3 = 0;

  case (d_sel)
    0: d_out_0 = d_in;
    1: d_out_1 = d_in;
    2: d_out_2 = d_in;
    3: d_out_3 = d_in;
  endcase
end

endmodule