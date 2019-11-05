module mux4to1_if( out, in, sel);

output out ;

input [3:0]in ;
input [1:0]sel ;

reg out ;

always @(*) begin 

    if(sel == 2'b00) begin 
    out = in[0]   ; 

    end else if(sel == 2'b01) begin
    out = in[1]   ; 

    end else if(sel == 2'b10) begin 
    out = in[2]   ; 

    end else begin 
    out = in[3]   ; 
    end 
end
endmodule

module mux4to1_case( out, in, sel );

output     out;  
input [3:0]in ; 
input [1:0]sel ;

reg out;

always @(*) begin 

case( sel ) 
2'b00 : {out} = in[0] ; 
2'b01 : {out} = in[1] ; 
2'b10 : {out} = in[2] ; 
2'b11 : {out} = in[3] ; 

endcase 
end 
endmodule

module mux2to1_cond( out, in0, in1, sel);

output out             ; 
input in0             ; 
input in1             ; 
input sel ;
assign out = (sel)? in1 : in0  ;

endmodule

module mux4to1_2to1 ( out, in, sel);

output out;
input [3:0] in ;
input [1:0] sel;
wire  [1:0] mx ;


mux2to1_cond u0 ( .out  (mx[0]),
                   .in0  (in[0]),
                   .in1  (in[1]),
                   .sel (sel[0]));

mux2to1_cond u1 ( .out  (mx[1]),
                   .in0  (in[2]),
                   .in1  (in[3]),
                   .sel (sel[0]));

mux2to1_cond u2  ( .out  (out),
                   .in0  (mx[0]),
                   .in1  (mx[1]),
                   .sel (sel[1]));




endmodule

