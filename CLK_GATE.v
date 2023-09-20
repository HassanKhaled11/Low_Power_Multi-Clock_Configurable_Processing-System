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



// ((( IMPORTANT ))) At synthesing replace inst above this line with the full custom ICG from the std library beneath this line to overcome wiring delays


// TLATNCAX3M ICG_DUT
// (
// .E(E)      ,
// .CK(CK)    , 
// .ECK(ECK)   
// );





endmodule