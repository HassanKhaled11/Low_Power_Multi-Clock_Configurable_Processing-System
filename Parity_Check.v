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



///////////////////////////////////////////////////////////////////////////
///////////////////////////// TESTBENCH ///////////////////////////////////
///////////////////////////////////////////////////////////////////////////


module Parity_Check_tb;

parameter PRESCALE = 'd16;
parameter PERIOD_CLK = 5;

reg  par_typ                 ;
reg  par_chk_en              ;
reg  sampled_bit             ;
reg  [7:0] p_data  		       ;
   
wire par_err                 ;


//always #(PERIOD_CLK / 2) CLK = ~ CLK ;



Parity_Check dut (.par_typ(par_typ),.par_chk_en(par_chk_en),.sampled_bit(sampled_bit),.p_data(p_data) ,.par_err(par_err));


initial begin
par_typ = 0;
par_chk_en = 0;
sampled_bit = 0;
p_data = 0;





par_typ = 1                ;
#(PERIOD_CLK)              ;
sampled_bit = 1            ;
#(PERIOD_CLK)              ;
p_data     = 8'b10111000   ; 
par_chk_en = 1             ;



#(200 * PERIOD_CLK)        ;


$stop;
end



endmodule