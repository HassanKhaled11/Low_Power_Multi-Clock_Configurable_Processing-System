module ASYNC_FIFO #(parameter WIDTH = 'd8 , parameter DEPTH = 'd16)
(

input W_CLK                    ,	         
input W_RST                    ,        
input W_INC                    ,
input R_CLK                    ,
input R_RST                    ,
input R_INC                    ,
input [WIDTH - 1: 0] WR_DATA   ,


output FULL                    ,
output EMPTY                   ,
output [WIDTH - 1: 0] RD_DATA  

);


wire [$clog2(DEPTH)     : 0] Rptr;
wire [$clog2(DEPTH)     : 0] Wptr;

wire [$clog2(DEPTH)     : 0] Rptr_sync;
wire [$clog2(DEPTH)     : 0] Wptr_sync;

wire [$clog2(DEPTH) - 1 : 0] Waddr;
wire [$clog2(DEPTH) - 1 : 0] raddr;

wire  WFULL  ;
wire  REMPTY ;
wire  write_op_en;


assign wclk_en    = !WFULL  & W_INC ;
assign rclk_en    = !REMPTY & R_INC ;

assign FULL       = WFULL ;
assign EMPTY      = REMPTY; 

///////////////////////////////////////////////////
/////////////// BLOCKS CONNECTION /////////////////
///////////////////////////////////////////////////

Bit_Sync #(.NUM_STAGES ('d2) , .BUS_WIDTH($clog2(DEPTH) + 1)) sync_w2r
(

.RST_n (R_RST)  ,
.CLK   (R_CLK)  ,
.ASYNC (Wptr)  ,

.SYNC  (Wptr_sync)
);




Bit_Sync #(.NUM_STAGES ('d2) , .BUS_WIDTH($clog2(DEPTH) + 1)) sync_r2w
(

.RST_n (W_RST)  ,
.CLK   (W_CLK)  ,
.ASYNC (Rptr)  ,

.SYNC  (Rptr_sync)

);





fifo_wrptr_full #(.WIDTH (WIDTH) , .DEPTH(DEPTH) ) fifo_wrptr_full_dut
(
 .W_CLK (W_CLK)                   ,         
 .W_RST (W_RST)                   ,        
 .W_INC (W_INC)                  ,
 .gray_Rptr  (Rptr_sync)          ,

 .WFULL(WFULL)                   ,
 .Waddr(Waddr)                   ,
 .gray_Wptr (Wptr)                    
 //.write_op_en(write_op_en) 
);





fifo_rdptr_empty #(.WIDTH (WIDTH) , .DEPTH(DEPTH) ) fifo_rdptr_empty_dut
(

.R_CLK (R_CLK)                   ,         
.R_RST (R_RST)                   ,        
.R_INC (R_INC)                   ,
.gray_Wptr  (Wptr_sync)           ,

.REMPTY  (REMPTY)                 ,
.Raddr   (raddr)                 ,
.gray_Rptr    (Rptr)                

);




FIFO_MEMORY #(.WIDTH (WIDTH) , .DEPTH(DEPTH) ) FIFO_MEMORY_dut
(
.WCLK  (W_CLK)    ,
.WRST  (W_RST)    ,

.R_CLK (R_CLK)     ,
.R_RST (R_RST)     ,
.wdata (WR_DATA)   ,
.wclk_en (wclk_en) ,
.rclk_en (rclk_en) ,
.waddr(Waddr)      ,
.raddr(raddr)      ,
//.write_op_en(write_op_en),

.rdata(RD_DATA)  

);




endmodule
