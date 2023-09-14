module Clk_Div_tb;

parameter PERIOD_CLOCK = 100;  

reg 	       i_ref_clk_tb   ;
reg 	       i_rst_n_tb     ;
reg 	       i_clk_en_tb    ;
reg 	[31:0] i_div_ratio_tb ;

wire           o_div_clk_tb   ;


ClkDiv__ dut(
.i_ref_clk   (i_ref_clk_tb),
.i_rst_n     (i_rst_n_tb),
.i_clk_en    (i_clk_en_tb),
.i_div_ratio (i_div_ratio_tb),
.o_div_clk   (o_div_clk_tb)
);
 

initial begin
i_ref_clk_tb = 0;
forever #(PERIOD_CLOCK/2) i_ref_clk_tb= ~i_ref_clk_tb;	
end


initial
begin
    i_clk_en_tb = 0;
    i_div_ratio_tb = 0;
 	i_rst_n_tb = 0;
 	@(negedge i_ref_clk_tb);
 	i_rst_n_tb = 1;
    
    #(PERIOD_CLOCK);
    


    i_div_ratio_tb = 2;              // Try Different Divisors   
    i_clk_en_tb = 1;
    repeat(40) @(posedge i_ref_clk_tb);


   $stop;
end

endmodule	