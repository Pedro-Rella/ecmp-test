`timescale 1ns / 1ps
`include "iob_lib.vh"

module circuit
  (
   `INPUT(rst,1),
   `INPUT(clk,1),
   `INPUT(en,1),
   `INPUT(x,32),
   `OUTPUT(y,32)
   );

   `SIGNAL(y_ant, 32)
   `SIGNAL(y_int, 32)
   `SIGNAL2OUT(y, y_int)
   
   `REG_ARE(clk, rst, 1'b0, en, y_ant, y_int)

   `COMB y_int = x + 2*y_ant;
   
   
endmodule
