module Parity_Check (



input par_typ      ,

input par_chk_en   ,

input sampled_bit  ,

input [7:0] p_data ,



output reg par_err  

);



wire parity_value;



assign parity_value = (par_chk_en)? ((par_typ) ? ((^p_data)? 1'b0: 1'b1) : (^p_data) ) : 1'b0 ;



always @(*)

begin

   

  if(par_chk_en) begin

     par_err = (sampled_bit == parity_value) ?  1'b0 : 1'b1 ;

  end


  else par_err = 0 ;

end



endmodule




