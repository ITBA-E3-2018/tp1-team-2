module demux(
    d_in,     //Input signal/data
    d_sel,    //Selector signal
    d_out_0,  //Output port 0
    d_out_1,  //Output port 1
    d_out_2,  //Output port 2
    d_out_3   //Output port 3
);

//Input Definition
input d_in;
input [1:0] d_sel;

//Output Definition
output d_out_0, d_out_1, d_out_2, d_out_3;

//Data types definition.
wire d_in;
wire [1:0] d_sel;
reg d_out_0, d_out_1, d_out_2, d_out_3;

always @ (d_in or d_sel) begin
  //Clear any previous data just in case
  d_out_0 = 0;
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