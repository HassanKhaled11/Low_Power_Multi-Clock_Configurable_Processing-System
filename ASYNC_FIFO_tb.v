module ASYNC_FIFO_tb;

parameter PERIOD_CLOCK_W =  'd10  ;
parameter PERIOD_CLOCK_R =  'd25  ;
parameter WIDTH = 'd8             ;
parameter DEPTH = 'd8             ;


reg W_CLK                    ;	         
reg W_RST                    ;        
reg W_INC                    ;
reg R_CLK                    ;
reg R_RST                    ;
reg R_INC                    ;
reg [WIDTH - 1: 0] WR_DATA   ;

wire FULL                    ;
wire EMPTY                   ;
wire [WIDTH - 1: 0] RD_DATA  ;



ASYNC_FIFO #(.WIDTH(WIDTH) , .DEPTH(DEPTH)) dut(

.W_CLK     (W_CLK)           ,
.W_RST     (W_RST)           ,
.W_INC     (W_INC)           ,
.R_CLK     (R_CLK)           ,
.R_RST     (R_RST)           ,
.R_INC     (R_INC)           ,
.WR_DATA   (WR_DATA)         ,

.FULL     (FULL)             ,
.EMPTY    (EMPTY)            ,
.RD_DATA  (RD_DATA)          

); 


always #(PERIOD_CLOCK_W/2) W_CLK = ~ W_CLK ;
always #(PERIOD_CLOCK_R/2) R_CLK = ~ R_CLK ;



initial begin
 W_CLK   = 1'b0;
 R_CLK   = 1'b0;	
 W_INC   = 1'b0;
 R_INC   = 1'b0;
 WR_DATA = 'd0 ;

 W_RST   = 1'b0;	
 R_RST   = 1'b0;

 ///////////// TEST EMPTY FLAG /////////////////////////

 #(2*PERIOD_CLOCK_R);


 W_RST   = 1'b1;	
 R_RST   = 1'b1;


 ///////////// TEST WRITE AND FULL FLAG ////////////////

 WRITE_IN(10);
 WRITE_IN(20);
 WRITE_IN(30);
 WRITE_IN(40);
 WRITE_IN(50);
 WRITE_IN(60);
 WRITE_IN(70);
 WRITE_IN(80);

 WRITE_IN(90);
// W_INC = 1'b0;

 ///////////// TEST READ  /////////////////////////////
 
 R_INC = 1'b1 ;
 #(8 * PERIOD_CLOCK_R) ;
 

///////////////////////////////////////////////////////
 
#(3 * PERIOD_CLOCK_R);

$stop ; 

end


task WRITE_IN (input [WIDTH -1 : 0] data_in);
begin

@(negedge W_CLK);
 W_INC = 1'b1;
 WR_DATA = data_in;
 #(PERIOD_CLOCK_W);
 W_INC = 1'b0;
 #(6*PERIOD_CLOCK_W);	
end

endtask	

endmodule