module CLK_GATE
(
input  E       ,
input  CK      ,

output ECK     
);

reg latch_out ;

always @(CK or E)
begin
	if(!CK)
	  begin
      latch_out <= E;
	  end	
end


assign ECK = CK && latch_out ;

endmodule