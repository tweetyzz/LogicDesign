module tb_prj03 ;

reg in0 ;
reg in1 ;
reg sel ;

wire out1 ;

wire out2 ;

wire out3 ;

mux2to1_cond dut_1( .out  (out1 ),
                   .in0  (in0),
                   .in1  (in1),
                   .sel (sel));

mux2to1_if dut_2( .out  (out1 ),
                   .in0  (in0),
                   .in1  (in1),
                   .sel (sel));

mux2to1_case dut_3( .out  (out1 ),
                   .in0  (in0),
                   .in1  (in1),
                   .sel (sel));

initial begin
        $display("============================================================");
        $display("   sel  in1  in0  out1  out2  out3   ");
        $display("============================================================");
        #(50)   {sel, in1, in0} = 3'b_000;  #(50)  $display(" %b\t%b\t%b\t%b\t%b\t%b", sel, in1, in0, out1, out2, out3);
        #(50)   {sel, in1, in0} = 3'b_001;  #(50)  $display(" %b\t%b\t%b\t%b\t%b\t%b", sel, in1, in0, out1, out2, out3);
        #(50)   {sel, in1, in0} = 3'b_010;  #(50)  $display(" %b\t%b\t%b\t%b\t%b\t%b", sel, in1, in0, out1, out2, out3);
        #(50)   {sel, in1, in0} = 3'b_011;  #(50)  $display(" %b\t%b\t%b\t%b\t%b\t%b", sel, in1, in0, out1, out2, out3);
        #(50)   {sel, in1, in0} = 3'b_100;  #(50)  $display(" %b\t%b\t%b\t%b\t%b\t%b", sel, in1, in0, out1, out2, out3);  
        #(50)   {sel, in1, in0} = 3'b_100;  #(50)  $display(" %b\t%b\t%b\t%b\t%b\t%b", sel, in1, in0, out1, out2, out3); 
        #(50)   {sel, in1, in0} = 3'b_100;  #(50)  $display(" %b\t%b\t%b\t%b\t%b\t%b", sel, in1, in0, out1, out2, out3); 
        #(50)   {sel, in1, in0} = 3'b_100;  #(50)  $display(" %b\t%b\t%b\t%b\t%b\t%b", sel, in1, in0, out1, out2, out3); 
        #(50)   $finish                  ;
end

endmodule

