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