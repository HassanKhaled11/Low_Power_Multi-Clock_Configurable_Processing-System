module edge_bit_counter #(parameter PRESCALE = 'd16)(

input  CLK                ,
input  RST_n              ,
input  parity_en          ,
input  enable  			      ,

output  [3 : 0]   bit_cnt  ,
output  [$clog2(PRESCALE) - 1 : 0] edge_cnt

);


reg [$clog2(PRESCALE) : 0] Edge_Counter ;
reg [3 : 0] Bit_Counter ;


assign bit_cnt   = (RST_n) ? Bit_Counter   : 1'b0  ;
assign edge_cnt  = (RST_n) ? Edge_Counter  : 1'b0  ; 

always @(posedge CLK or negedge RST_n)
begin
	
	if (!RST_n) 
	begin
		Bit_Counter   <= 1'b0 ;
		Edge_Counter  <= 1'b0 ;
	end


	else if(enable)
	begin
	    
	    if(Edge_Counter < PRESCALE)
	     begin
       //Bit_Counter  <= 1'b0 ;                     // CHECK THAT IF THERE IS AN ERROR
		   Edge_Counter <= Edge_Counter + 1'b1 ;
	     end
	
        else 
        begin

            //Edge_Counter  <= 0;
              
            if(parity_en)
            begin
              if(Bit_Counter < 'd10) begin 
              Bit_Counter <= Bit_Counter + 1'b1 ;
              Edge_Counter <= 0 ;
              end 
              else Bit_Counter <= 0 ;
            end
              
            else
            begin
              if(Bit_Counter < 'd9) begin
               	Bit_Counter <= Bit_Counter + 1'b1 ; 
                Edge_Counter <= 0 ;   
               end
              else Bit_Counter <= 0 ;
            end
        end
	end

 else begin
  Bit_Counter   <= 1'b0 ;
	Edge_Counter  <= 1'b0 ;
 end


end

endmodule




///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////


module edge_bit_counter_tb;

parameter PRESCALE = 'd16;
parameter PERIOD_CLK = 5;

reg  CLK                ;
reg  RST_n              ;
reg  parity_en          ;
reg  enable  			      ;
   
wire [3:0] bit_cnt      ;
wire [$clog2(PRESCALE) - 1 : 0] edge_cnt;

always #(PERIOD_CLK / 2) CLK = ~ CLK ;



edge_bit_counter dut (.CLK(CLK) , .RST_n(RST_n) ,.parity_en(parity_en) ,.enable(enable) ,.bit_cnt(bit_cnt) ,.edge_cnt(edge_cnt));


initial begin
CLK  = 0;
parity_en = 0;
enable = 0;

RST_n = 0;
#(2 * PERIOD_CLK);
RST_n = 1;

parity_en = 1;
enable = 1;

#(200 * PERIOD_CLK);
parity_en = 0;
#(200 * PERIOD_CLK);

$stop;
end



endmodule