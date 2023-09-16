module SYS_CTRL
(
 input CLK       ,
 input RST       ,
 input [7:0] Data_sync ,
 input enable_pulse    ,

 input FIFO_FULL ,
 
 input [7:0] Rd_DATA   ,
 input Rd_Valid  ,
 input [15:0] ALU_OUT   ,
 input OUT_VALID ,

 output reg [7:0] WR_DATA  ,
 output reg WR_INC   ,  
 output reg [3:0] FUN      ,
 output reg EN       ,
 output reg Gate_En  ,
 output reg [7:0] Wr_D     ,
 output reg [7:0] Addr     ,
 output reg RdEn     ,
 output reg WrEn

);


localparam IDLE                = 4'b0000 ; 
localparam RF_Wr_Addr          = 4'b0001 ;
localparam RF_Wr_Data          = 4'b0010 ;
localparam RF_Rd_Addr          = 4'b0011 ;
localparam Rd_Operand_A        = 4'b0100 ;
localparam Rd_Operand_B        = 4'b0101 ;
localparam Rd_ALU_FUN          = 4'b0110 ;
localparam WAIT_REG_OUT        = 4'b0111 ;
localparam WAIT_ALU_OUT        = 4'b1000 ;
localparam WRITE_ALU_TO_FIFO   = 4'b1001 ;
localparam WRITE_REG_TO_FIFO   = 4'b1010 ; 



reg [1:0] Counter;
reg flag;

reg [3:0] current_state ;
reg [3:0] next_state    ;



always @(posedge CLK or negedge RST) begin
	if (!RST) begin
		current_state <= IDLE;
	end

	else begin
	   current_state <= next_state;	
	end
end




always @(*)
begin

case(current_state)

IDLE : begin 
         if(enable_pulse) 
           begin
             
             case(Data_sync)
               
               8'hAA : next_state = RF_Wr_Addr;
               8'hBB : next_state = RF_Rd_Addr;
               8'hCC : next_state = Rd_Operand_A;
               8'hDD : next_state = Rd_ALU_FUN;  

             endcase

           end


          else next_state = IDLE;
            
       end


RF_Wr_Addr : begin
              if(enable_pulse)
                begin
                 next_state = RF_Wr_Data;
                end
               
               else begin
                 next_state = RF_Wr_Addr;
                end 

              end



RF_Wr_Data : begin
               if(enable_pulse)
                begin
                 next_state = IDLE;
                end
               
               else begin
                 next_state = RF_Wr_Data;
                end 
                 
             end




RF_Rd_Addr : begin
              
               if(Rd_Valid)
                begin
                 next_state = WAIT_REG_OUT;
                end
               

               else begin
                 next_state = RF_Rd_Addr;
                end              

             end 





Rd_Operand_A : begin
              
               if(enable_pulse)
                begin
                 next_state = Rd_Operand_B;
                end
               
               else begin
                 next_state = Rd_Operand_A;
                end              

               end



Rd_Operand_B : begin
              
               if(enable_pulse)
                begin
                 next_state = Rd_ALU_FUN;
                end
               
               else begin
                 next_state = Rd_Operand_B;
                end              

               end



Rd_ALU_FUN   : begin
              
               if(Counter == 3 && flag == 1)
                begin
                 next_state = WAIT_ALU_OUT;
                end
               
               else begin
                 next_state = Rd_ALU_FUN;
                end                             

               end


WAIT_REG_OUT : begin
                if(Rd_Valid) next_state = WRITE_REG_TO_FIFO;
                else next_state = WAIT_REG_OUT;
             end



WAIT_ALU_OUT : begin
                if(OUT_VALID) next_state = WRITE_ALU_TO_FIFO;
                else next_state = WAIT_ALU_OUT;
	           end


WRITE_REG_TO_FIFO : begin
                 
                  if(FIFO_FULL) next_state = WRITE_REG_TO_FIFO ;
                  
                  else next_state = IDLE ;  

	            end


WRITE_ALU_TO_FIFO : begin
                 
                  if(FIFO_FULL) next_state = WRITE_REG_TO_FIFO ;
                  
                  else next_state = IDLE ;  

	            end



default :     next_state = IDLE;               

endcase

end




always @(*)
begin

case(current_state)


IDLE       : begin
              
               WR_DATA   = 0 ;
               WR_INC    = 0 ;
               FUN       = 0 ;
               EN        = 0 ;
               Gate_En   = 0 ;
               Wr_D      = 0 ;
               Addr      = 0 ;
               RdEn      = 0 ;
               WrEn      = 0 ;
               flag      = 0 ;     
               

             end



RF_Wr_Addr : begin
              if(enable_pulse) Addr = Data_sync ; 
             end



RF_Wr_Data : begin
              if(enable_pulse) begin
                Wr_D = Data_sync;
                WrEn = 1'b1     ;	
               end
             end




RF_Rd_Addr : begin
               if(enable_pulse) begin
                 Addr = Data_sync;
                 RdEn = 1'b1 ;
               end
             end 





Rd_Operand_A : begin
                 if(enable_pulse) begin

                    Addr = 0 ;
                    Wr_D = Data_sync;
                    WrEn = 1'b1;

                 end
               end



Rd_Operand_B : begin
                if(enable_pulse)
                 begin 
	                Addr = 1 ;
                  Wr_D = Data_sync;
                  WrEn = 1'b1;
                end
               end


Rd_ALU_FUN   : begin
                  WrEn = 1'b0;
                if(enable_pulse) begin
                  FUN     = Data_sync;
                  Gate_En = 1;
                  flag = 1;
                end

                if(Counter == 3 && flag) begin         // I did that to turn on clock gating of alu and give it time to read operands and fun before processing
                  EN = 1'b1;
                end

               end                         




WRITE_REG_TO_FIFO : begin
                     RdEn = 1'b0;
                      if(!FIFO_FULL)
                     	 begin
                     	  WR_INC = 1'b1 ;	
                     	  WR_DATA =  Rd_DATA ;   	
                     	 end   
	                end



WRITE_ALU_TO_FIFO : begin
	                   flag = 0;
                     EN = 1'b0;
                     if(!FIFO_FULL)
                       begin
                         WR_INC  = 1'b1 ; 	
                         WR_DATA =  ALU_OUT ;	
                       end 
	                end


endcase
end




always @(posedge CLK or negedge RST) begin
	if (!RST) begin
		Counter <= 0;
	end

    else if (enable_pulse) Counter <= 0;

	else if(Counter != 3) begin
	    Counter <= Counter + 1;	
	end

	else Counter <= 0 ;

end



endmodule



//=============================================================================================================



`timescale 1ns / 1fs                     // 1ns -- 1000000 precision (6 numbers prescision)

module SYS_CTRL_tb;

  parameter REF_CLK_PERIOD  = 10  ;               //100MHZ
  parameter UART_CLK_PERIOD = 135.6336806;        // 3.6864 MHZ  , FOR PRESCALE = 1 -> 271.2673611 , PRESCALE = 2 -> 135.6336806    

  // Inputs
  reg REF_CLK;
  reg UART_CLK;

  reg RST;
 // reg [7:0] Data_sync;
  //reg enable_pulse;
  reg FIFO_FULL;


  // Outputs
  wire [7:0] WR_DATA;
  wire WR_INC;
  wire [3:0] FUN;
  wire Gate_En;
  wire [7:0] Wr_D;
  wire [7:0] Addr;
  wire RdEn;
  wire WrEn;

  
  reg bus_enable  ;
  reg [7:0] data_in_syn ;
  
  wire [7:0] SYNC_bus;
  wire enable_pulse;



wire [7:0] REG0;
wire [7:0] REG1;
wire [7:0] REG2;
wire [7:0] REG3;
wire [7:0] Rd_DATA ;
wire Rd_Valid;

wire Enable ;
wire [15:0] ALU_OUT;
wire       OUT_VALID;
wire [3:0] ALU_FUN ;


Data_Sync #(.NUM_STAGES(2) , .BUS_WIDTH(8) )  Data_Sync_dut (

.CLK        (REF_CLK) ,
.RST_n      (RST),
.bus_enable (bus_enable) ,
.UNSYNC_bus (data_in_syn) ,

.SYNC_bus     (SYNC_bus) ,
.enable_pulse (enable_pulse)

);




CLK_GATE  CLK_GATE_dut
(
.E  (Gate_En)     ,
.CK (REF_CLK)     , 
.ECK(ALU_CLK)       
);







  // Instantiate SYS_CTRL module
  SYS_CTRL DUT (
    .CLK(REF_CLK),
    .RST(RST),
    .Data_sync(SYNC_bus),
    .enable_pulse(enable_pulse),
    .FIFO_FULL(FIFO_FULL),
    .Rd_DATA(Rd_DATA),
    .Rd_Valid(Rd_Valid),
    .ALU_OUT(ALU_OUT),
    .OUT_VALID(OUT_VALID),
    .WR_DATA(WR_DATA),
    .WR_INC(WR_INC),
    .FUN(ALU_FUN),
    .EN(Enable),
    .Gate_En(Gate_En),
    .Wr_D(Wr_D),
    .Addr(Addr),
    .RdEn(RdEn),
    .WrEn(WrEn)
  );



  
  Register_File  Reg_file_dut
(
.CLK(REF_CLK),
.RST_n(RST),
.RdEn(RdEn),
.WrEn(WrEn),
.Address(Addr),
.WrData(Wr_D),

.RdData  (Rd_DATA),
.RdData_Valid(Rd_Valid),

.REG0(REG0) ,
.REG1(REG1) ,
.REG2(REG2) ,
.REG3(REG3)
);




ALU #(.OPERAND_WIDTH ('d8) , .FUN_WIDTH('d4)) ALU_dut
(

.CLK        (ALU_CLK) ,
.RST_n      (RST)  ,
.A          (REG0)    ,
.B          (REG1)    ,
.ALU_FUN    (ALU_FUN)        ,
.Enable     (Enable)        ,

.ALU_OUT     (ALU_OUT)       ,
.OUT_VALID   (OUT_VALID)

);



  // Clock generation
  
  always begin
    #(REF_CLK_PERIOD / 2) REF_CLK = ~REF_CLK;
  end


  always begin
    #(UART_CLK_PERIOD / 2)  UART_CLK = ~UART_CLK;
  end


  // Test stimulus
  initial begin
    $dumpfile("SYS_CTRL_tb.vcd");
    $dumpvars(0, SYS_CTRL_tb);

    // Initialize inputs
    REF_CLK = 0;
    UART_CLK =0;
    
    bus_enable = 0;
    data_in_syn = 8'h00;
    //enable_pulse = 0;
    FIFO_FULL = 0;
    // // Rd_DATA = 8'h00;
    // Rd_Valid = 0;
    // ALU_OUT = 16'h0000;
    // OUT_VALID = 0;
     
    RST = 0; 
    // Release reset
    #(REF_CLK_PERIOD) RST = 1; 
    #(2*REF_CLK_PERIOD);


     // Register File Tesr write and read just change command
     
      data_in_syn = 8'hAA;             // COMMAND 
      bus_enable = 1 ;
      #(UART_CLK_PERIOD);
      bus_enable = 0 ;
      
      #(20 * REF_CLK_PERIOD);

      data_in_syn = 8'd10 ;
      bus_enable = 1'b1;
      #(UART_CLK_PERIOD);
      bus_enable = 0 ;
     
      #(REF_CLK_PERIOD);
     
      data_in_syn = 8'd50 ;
      bus_enable = 1'b1;
      #(UART_CLK_PERIOD);
      bus_enable = 0 ;
      
   
      #(REF_CLK_PERIOD);




     // Register File Tesr write and read just change command
     
      data_in_syn = 8'hBB;             // COMMAND 
      bus_enable = 1 ;
      #(UART_CLK_PERIOD);
      bus_enable = 0 ;
      
      #(20 * REF_CLK_PERIOD);

      data_in_syn = 8'd10 ;
      bus_enable = 1'b1;
      #(UART_CLK_PERIOD);
      bus_enable = 0 ;
  
   
      #(REF_CLK_PERIOD);



     // ALU TEST 
  
      data_in_syn = 8'hCC;             // COMAND 
      bus_enable = 1 ;
      #(UART_CLK_PERIOD);
      bus_enable = 0 ;
      
      #(20 * REF_CLK_PERIOD);

      data_in_syn = 8'd10 ;
      bus_enable = 1'b1;
      #(UART_CLK_PERIOD);
      bus_enable = 0 ;
     
      #(REF_CLK_PERIOD);
     
      data_in_syn = 8'd50 ;
      bus_enable = 1'b1;
      #(UART_CLK_PERIOD);
      bus_enable = 0 ;

      #(REF_CLK_PERIOD);
      
      data_in_syn = 8'd6 ;
      bus_enable = 1'b1;
      #(UART_CLK_PERIOD);
      bus_enable = 0 ;



    #50 $stop;
  end

  

endmodule
