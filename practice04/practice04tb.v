module tb_bnb   ;

wire   blockout      ;
wire   nonblockout   ;

reg    d             ;
reg    clk           ;


initial  clk=1'b0           ;
always   #(100) clk = ~clk  ;

block     dut_1(.q   (blockout),
                . d  (d       ),
                .clk (clk     ));
                


nonblock  dut_2(.q   (nonblockout),
                . d  (d          ),
                .clk (clk        ));
                
initial begin
  $display("=============================================");
  $display("  d         blockout         nonblockout                ");
  $display("=============================================");

  #(50)  {d} = 1'b0;  #(50) $display("b\t%b\t%b\t%b\t", d , blockout, nonblockout);
  #(50)  {d} = 1'b0;  #(50) $display("b\t%b\t%b\t%b\t", d , blockout, nonblockout);
  #(50)  {d} = 1'b0;  #(50) $display("b\t%b\t%b\t%b\t", d , blockout, nonblockout);
  #(50)  {d} = 1'b0;  #(50) $display("b\t%b\t%b\t%b\t", d , blockout, nonblockout);
  #(50)  {d} = 1'b0;  #(50) $display("b\t%b\t%b\t%b\t", d , blockout, nonblockout);
  #(50)  {d} = 1'b0;  #(50) $display("b\t%b\t%b\t%b\t", d , blockout, nonblockout);
  #(50)  {d} = 1'b0;  #(50) $display("b\t%b\t%b\t%b\t", d , blockout, nonblockout);
  $finish;
  
end
endmodule