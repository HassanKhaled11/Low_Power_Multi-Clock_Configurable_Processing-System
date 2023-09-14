module Stop_Check(
input CLK ,
input RST_n ,
input stp_chk_en ,
input sampled_bit,

output reg stp_err 

);


//assign stp_err = (stp_chk_en && sampled_bit) ? 1'b0 : 1'b1 ;



always @(posedge CLK or negedge RST_n) begin
	if (!RST_n) begin
		stp_err <= 0 ;
	end

	else if (stp_chk_en) begin
	     if(sampled_bit)  stp_err <= 1'b0;
	     else             stp_err <= 1'b1;	
	end

end



endmodule





///////////////////////////////////////////////////////////////////////////
///////////////////////////// TESTBENCH ///////////////////////////////////
///////////////////////////////////////////////////////////////////////////


module Stop_Check_tb();


parameter PRESCALE = 'd16;
parameter PERIOD_CLK = 5;

reg CLK         ;        
reg RST_n       ;
reg stp_chk_en ;
reg sampled_bit ;

wire stp_err ;

always #(PERIOD_CLK / 2) CLK = ~ CLK ;



Stop_Check dut (.CLK(CLK) , .RST_n(RST_n) ,.stp_chk_en(stp_chk_en) ,.sampled_bit(sampled_bit) ,.stp_err(stp_err));


initial begin
CLK  = 0;
stp_chk_en = 0;
sampled_bit= 0;

RST_n = 0;
#(2 * PERIOD_CLK);
RST_n = 1;

stp_chk_en = 1;
sampled_bit = 0;


#(200 * PERIOD_CLK);


$stop;
end


endmodule




