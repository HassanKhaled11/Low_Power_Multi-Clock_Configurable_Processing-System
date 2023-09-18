module Start_Check(
input CLK              ,
input RST_n            ,
input strt_chk_en      ,
input sampled_bit      ,

output reg strt_glitch 

);

//assign strt_glitch = (strt_chk_en && !sampled_bit) ? 1'b0 : 1'b1 ;





always @(posedge CLK or negedge RST_n) begin
	if (!RST_n) begin
		strt_glitch <= 0 ;
	end

	else if (strt_chk_en) begin
	     if(!sampled_bit) strt_glitch <= 1'b0;
	     else             strt_glitch <= 1'b1;	
	end

end



endmodule



///////////////////////////////////////////////////////////////////////////
///////////////////////////// TESTBENCH ///////////////////////////////////
///////////////////////////////////////////////////////////////////////////


// module Start_Check_tb();


// parameter PRESCALE = 'd16;
// parameter PERIOD_CLK = 5;

// reg CLK         ;        
// reg RST_n       ;
// reg strt_chk_en ;
// reg sampled_bit ;

// wire strt_glitch ;

// always #(PERIOD_CLK / 2) CLK = ~ CLK ;



// Start_Check dut (.CLK(CLK) , .RST_n(RST_n) ,.strt_chk_en(strt_chk_en) ,.sampled_bit(sampled_bit) ,.strt_glitch(strt_glitch));


// initial begin
// CLK  = 0;
// strt_chk_en = 0;
// sampled_bit= 0 ;

// RST_n = 0        ;
// #(2 * PERIOD_CLK);
// RST_n = 1        ;

// strt_chk_en = 1;
// sampled_bit = 0;


// #(200 * PERIOD_CLK);


// $stop;
// end


// endmodule