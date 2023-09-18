module PULSE_GENERATOR
(
input CLK          ,
input RST_n        ,	
input in           ,

output reg out
);

reg Q_in           ;


always @(posedge CLK or negedge RST_n) begin
	if (!RST_n) begin
	 Q_in  <= 1'b0         ;
	 out   <= 1'b0         ;
	end
	
	else begin
     Q_in <= in            ;
	 out <= ~Q_in & in     ;	
	end
end

endmodule





//=================================== TESTNECH =============================================================

// module PULSE_GENERATOR_tb;

// reg CLK   ;
// reg RST_n ;	
// reg in    ;

// wire out  ;


// PULSE_GENERATOR dut(.CLK(CLK) ,.RST_n(RST_n) ,.in(in) ,.out(out));


// always#2 CLK = ~CLK;

// initial begin
// CLK = 0        ;
// in = 0         ;

// RST_n = 0      ;
// #6             ;
// RST_n = 1      ;
// #2             ;

// @(negedge CLK);

// in = 0         ;
// #10            ;
// in = 1         ;
// #50            ;

// $stop;
// end


// endmodule