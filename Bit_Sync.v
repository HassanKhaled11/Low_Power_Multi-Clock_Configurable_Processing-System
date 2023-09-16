module Bit_Sync #(parameter NUM_STAGES = 'd4 , parameter BUS_WIDTH = 'd1)(

input RST_n   ,
input CLK     ,
input      [BUS_WIDTH -1  : 0] ASYNC ,

output     [BUS_WIDTH - 1 : 0] SYNC
);


reg [BUS_WIDTH - 1 : 0] FF_Stage [NUM_STAGES -1 : 0] ;
reg [BUS_WIDTH-1 : 0] data_SYN2; 

genvar i ;


assign SYNC =(RST_n)? data_SYN2 : 1'b0;

generate

	for(i = 0 ; i < NUM_STAGES ; i = i + 1)
	begin
	  
	  always @(posedge CLK or negedge RST_n)
	  begin
	  	
	  	if (!RST_n) begin
	  	    FF_Stage[i] <= 0;
	  	end


	  	else if (i == 0) begin
	  		FF_Stage[i] <= ASYNC;
	  	end

        
        else if(i == NUM_STAGES - 1) begin
            data_SYN2 <= FF_Stage [i-1]; 
        end
	  	
	  	else begin
	        FF_Stage[i] <= FF_Stage[i-1];		
	  	end

	  end
	end  
	
endgenerate


endmodule








module Bit_Sync_tb;

parameter PERIOD_CLOCK = 100;
parameter BUS_WIDTH  = 'd1;
parameter NUM_STAGES = 'd4;


reg  CLK     ;
reg  RST_n   ;
reg  [BUS_WIDTH -1  : 0] ASYNC ;
 
wire [BUS_WIDTH - 1 : 0] SYNC ;


Bit_Sync #(.BUS_WIDTH(BUS_WIDTH) , .NUM_STAGES(NUM_STAGES)) dut (.CLK(CLK) ,.RST_n(RST_n) ,.ASYNC(ASYNC) ,.SYNC(SYNC));


integer i;


always #(PERIOD_CLOCK/2) CLK = ~ CLK ;


initial begin

CLK   = 0 ;
ASYNC = 0 ; 

RST_n = 1'b0 ;
#(PERIOD_CLOCK);
RST_n = 1'b1;

@(negedge CLK);

for(i = 0 ; i < 50 ; i = i + 1)
begin
ASYNC = $random;
CHECK_RESULT(ASYNC);
#(PERIOD_CLOCK);
end

RST_n = 1'b0 ;
#(PERIOD_CLOCK);
RST_n = 1'b1;

$stop;

end




task CHECK_RESULT(input [BUS_WIDTH-1 : 0] expected_bit);

begin
	
#(NUM_STAGES * PERIOD_CLOCK);
if(expected_bit == SYNC) $display("RIGHT LATENCY");
else $display("WRONG LATENCY !");

end

endtask



endmodule