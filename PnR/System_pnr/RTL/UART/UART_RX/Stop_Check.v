module Stop_Check(
input CLK            ,
input RST_n          ,
input stp_chk_en     ,
input sampled_bit    ,

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

	else stp_err <= 0;

end



endmodule







