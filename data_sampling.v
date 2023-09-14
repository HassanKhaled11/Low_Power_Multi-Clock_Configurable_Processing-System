module data_sampling  #(parameter PRESCALE = 'd16)(

input RX_IN                                     ,
input [4:0] Prescale                            ,
input data_samp_en                              ,
input [$clog2(PRESCALE) - 1 : 0]  edge_cnt      ,

output reg    sampled_bit 
);



wire [$clog2(PRESCALE) - 1 : 0] first_sample_point ; 
wire [$clog2(PRESCALE) - 1 : 0] middle_sample_point;
wire [$clog2(PRESCALE) - 1 : 0] third_sample_point ;


assign middle_sample_point =  (PRESCALE >> 1) - 1     ;
assign first_sample_point  =  middle_sample_point - 1 ;
assign third_sample_point  =  middle_sample_point + 1 ;

reg first_value ;
reg second_value ;
reg third_value ;



always @(*) begin

case({first_value,second_value,third_value})

3'b000: sampled_bit = 0;
3'b001: sampled_bit = 0;
3'b010: sampled_bit = 0;
3'b100: sampled_bit = 0;
3'b011: sampled_bit = 1;
3'b110: sampled_bit = 1;
3'b101: sampled_bit = 1;
3'b111: sampled_bit = 1;

default : sampled_bit = 1'b0;

endcase
end




always @(*)
begin

	if(data_samp_en)
	begin
        if(edge_cnt == first_sample_point)         first_value   <= RX_IN;
        else if (edge_cnt == middle_sample_point)  second_value  <= RX_IN;
        else if (edge_cnt == third_sample_point)   third_value   <= RX_IN;                     
    end                                            
	
end



endmodule






///////////////////////////////////////////////////////////////////////////
///////////////////////////// TESTBENCH ///////////////////////////////////
///////////////////////////////////////////////////////////////////////////


module data_sampling_tb();


parameter PRESCALE = 'd16;
parameter PERIOD_CLK = 5;


reg RX_IN         ;
reg [4:0] Prescale ;
reg data_samp_en  ;
reg [$clog2(PRESCALE) - 1 : 0]  edge_cnt      ;

wire  sampled_bit ;


integer i;
integer j;



data_sampling dut (.RX_IN(RX_IN) ,.Prescale(Prescale) ,.data_samp_en(data_samp_en) , .edge_cnt(edge_cnt) ,.sampled_bit(sampled_bit) );


initial begin

RX_IN = 1;
data_samp_en = 0;
edge_cnt = 0;

#(2 * PERIOD_CLK);

Prescale = 'd16;
RX_IN = 1;

#(PERIOD_CLK);
data_samp_en = 1;

for(i = 0 ; i < 6 ; i = i + 1) begin
edge_cnt = edge_cnt + 1;
#(PERIOD_CLK);
end

RX_IN = 0;
data_samp_en = 1;


for(i = 0 ; i < 15 ; i = i + 1) begin
edge_cnt = edge_cnt + 1;
#(PERIOD_CLK);
end

#(200 * PERIOD_CLK);


$stop;
end


endmodule


