module CLK_GATE
(
input  E       ,
input  CK      ,
input test_en  ,
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
// .E (E | test_en) ,        // Note here I added oring with test_en for dft purpose in case of no DFT remove it and remove it also from port list
// .CK(CK)    , 
// .ECK(ECK)   
// );





endmodule
