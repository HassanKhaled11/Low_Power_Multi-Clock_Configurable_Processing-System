module FIFO_MEMORY #(parameter WIDTH = 'd8 , parameter DEPTH = 'd16)
(
input WCLK                            ,
input WRST                            ,
input R_CLK                           ,
input R_RST                           ,
input [WIDTH - 1: 0] wdata            ,
input wclk_en                         ,
input rclk_en                         ,
//input write_op_en                   ,
input [$clog2(DEPTH) - 1 : 0] waddr   ,
input [$clog2(DEPTH) - 1 : 0] raddr   ,

output reg [WIDTH - 1: 0] rdata  

);

reg [WIDTH - 1 : 0] FIFO_MEM [DEPTH -1 : 0];

integer i ;

reg [WIDTH - 1 : 0] out_next ;
reg [WIDTH - 1 : 0] read_next ;



always @(posedge WCLK or negedge WRST )
begin

if(!WRST) begin
  for(i = 0 ; i < DEPTH ; i = i + 1)
  begin
  	FIFO_MEM[i] <= 0; 
  end
end


 else if(wclk_en) 
     FIFO_MEM [waddr] <= wdata ;

 else FIFO_MEM[waddr] <= out_next;

end


always @(*) begin

 if(!R_RST)    
   rdata =  0;
 
 else if (rclk_en) rdata = FIFO_MEM [raddr];

 else rdata = read_next;

end



// THIS blOCK TO AVOID LATCH OF FIFO_MEM 

always @(posedge WCLK or negedge WRST)

if(!WRST) begin 
  out_next <= 0;
end

else begin
  out_next <= FIFO_MEM [waddr] ;
  read_next    <= rdata;
end 


endmodule