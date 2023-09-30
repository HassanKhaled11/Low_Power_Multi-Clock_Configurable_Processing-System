module SYS_CTRL
(

 input CLK                 ,
 input RST                 ,
 input [7:0] Data_sync     ,
 input enable_pulse        ,

 input FIFO_FULL           ,
 
 input [7:0] Rd_DATA       ,
 input Rd_Valid            ,
 input [15:0] ALU_OUT      ,
 input OUT_VALID           ,

 output reg [7:0] WR_DATA  ,
 output reg WR_INC         ,  
 output reg [3:0] FUN      ,
 output reg EN             ,
 output reg Gate_En        ,
 output reg [7:0] Wr_D     ,
 output reg [7:0] Addr     ,
 output reg RdEn           ,
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



reg [1:0] Counter       ;
reg flag                ;
reg flag_1              ;

reg [3:0] current_state ;
reg [3:0] next_state    ;

reg [7:0] Addr_next     ;
//reg [3:0] fun_next      ;



always @(posedge CLK or negedge RST) begin
  if (!RST) begin
    current_state <= IDLE        ;
  end

  else begin
     current_state <= next_state ; 
  end
end




always @(*)
begin

case(current_state)

IDLE : begin 
         if(enable_pulse) 
           begin
             
             case(Data_sync)
               
               8'hAA  : next_state = RF_Wr_Addr   ;
               8'hBB  : next_state = RF_Rd_Addr   ;
               8'hCC  : next_state = Rd_Operand_A ;
               8'hDD  : next_state = Rd_ALU_FUN   ;
               default: next_state = IDLE         ;  

             endcase

           end


          else next_state = IDLE  ;
            
       end


RF_Wr_Addr : begin
              if(enable_pulse)
                begin
                 next_state = RF_Wr_Data ;
                end
               
               else begin
                 next_state = RF_Wr_Addr ;
                end 

              end



RF_Wr_Data : begin
               if(enable_pulse)
                begin
                 next_state = IDLE       ;
                end
               
               else begin
                 next_state = RF_Wr_Data ;
                end 
                 
             end




RF_Rd_Addr : begin
              
               if(Rd_Valid)
                begin
                 next_state = WAIT_REG_OUT ;
                end
               

               else begin
                 next_state = RF_Rd_Addr   ;
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
                 next_state = Rd_ALU_FUN  ;
                end
               
               else begin
                 next_state = Rd_Operand_B;
                end              

               end



Rd_ALU_FUN   : begin
              
               if(Counter == 3 && flag)
                begin
                 next_state = WAIT_ALU_OUT;
                end
               
               else begin
                 next_state = Rd_ALU_FUN  ;
                end                             

               end


WAIT_REG_OUT : begin
                if(Rd_Valid) next_state = WRITE_REG_TO_FIFO;
                else next_state = WAIT_REG_OUT             ;
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

               WR_DATA   = 0 ;
               WR_INC    = 0 ;
               FUN       = 0 ;
               EN        = 0 ;
               Gate_En   = 0 ;
               Wr_D      = 0 ;
               RdEn      = 0 ;
               WrEn      = 0 ;
               flag      = 0 ;

              if(enable_pulse) Addr = Data_sync ;
              else Addr      = 0 ; 

             end


RF_Wr_Data : begin

               WR_DATA   = 0 ;
               WR_INC    = 0 ;
               FUN       = 0 ;
               EN        = 0 ;
               Gate_En   = 0 ;
               RdEn      = 0 ;               
               flag      = 0 ;

              if(enable_pulse) begin
                Addr = Addr_next;                     // Note that to prevent any loops and to keep the value without Latching
                Wr_D = Data_sync;
                WrEn = 1'b1     ; 
               end

              else begin
                Addr      = Data_sync;
                WrEn      = 0        ;
                Wr_D      = 0        ;
              end 

             end




RF_Rd_Addr : begin

               WR_DATA   = 0 ;
               WR_INC    = 0 ;
               FUN       = 0 ;
               EN        = 0 ;
               Gate_En   = 0 ;
               Wr_D      = 0 ;
               WrEn      = 0 ;
               flag      = 0 ;

               if(enable_pulse) begin
                 Addr = Data_sync;
                 RdEn = 1'b1 ;
               end

               else begin
                 Addr      = 0 ;
                 RdEn      = 0 ;
               end
             end 





Rd_Operand_A : begin

                Addr = 0 ;
                WR_DATA   = 0 ;
                WR_INC    = 0 ;
                FUN       = 0 ;
                EN        = 0 ;
                Gate_En   = 0 ;
                RdEn      = 0 ;
                flag      = 0 ;

                 if(enable_pulse) begin

                   Wr_D = Data_sync ;
                   WrEn = 1'b1      ;

                 end

                 else begin
                   Wr_D      = 0 ;        
                   WrEn      = 0 ;
                 end
               end



Rd_Operand_B : begin

               WR_DATA   = 0 ;
               WR_INC    = 0 ;
               FUN       = 0 ;
               EN        = 0 ;
               Gate_En   = 0 ;
               RdEn      = 0 ;
               flag      = 0 ;

                 if(enable_pulse) begin
                   Addr = 1         ;
                   Wr_D = Data_sync ;
                   WrEn = 1'b1      ;
                 end

                 else begin
                   Addr      = 0 ;
                   Wr_D      = 0 ;        
                   WrEn      = 0 ;
                 end
               end



Rd_ALU_FUN   : begin

               WR_DATA   = 0 ;
               WR_INC    = 0 ;
               Wr_D      = 0 ;
               Addr      = 0 ;
               RdEn      = 0 ;
               WrEn      = 0 ;
               // FUN     = Data_sync ;
               // Gate_En = 1'b1      ;
               // flag    = 1'b1      ; 

                if(Counter == 3 && flag) begin         // I did that to turn on clock gating of alu and give it time to read operands and fun before processing
                  EN = 1'b1   ;
                end

                else begin
                  EN  = 1'b0 ; 
                end


                if(enable_pulse || flag_1) begin
                  FUN     = Data_sync ;
                  Gate_En = 1'b1      ;
                  flag    = 1'b1      ;
                 end

                else begin
                  flag      = 1'b0;
                  FUN       = 0 ;
                  Gate_En   = 0 ;
                end

               end                         


WAIT_ALU_OUT : begin

               WR_DATA   = 0 ;
               WR_INC    = 0 ;
               Wr_D      = 0 ;
               Addr      = 0 ;
               RdEn      = 0 ;
               WrEn      = 0 ;
               flag      = 0 ; 

               if(OUT_VALID) begin
                 Gate_En = 0 ;
                 EN      = 0 ;
                 FUN     = 0 ;
               end 

               else begin
                 FUN       = Data_sync ;
                 EN        = 1 ;
                 Gate_En   = 1 ;  
               end

               end



WAIT_REG_OUT : begin

               WR_DATA   = 0 ;
               WR_INC    = 0 ;
               FUN       = 0 ;
               EN        = 0 ;
               Gate_En   = 0 ;
               Wr_D      = 0 ;
               WrEn      = 0 ;
               flag      = 0 ;  
               RdEn      = 0 ;

               if(Rd_Valid) begin
                 Addr    = 0 ;
                 RdEn    = 0 ;
               end 

               else begin
                 Addr    = Data_sync ;
                 RdEn    = 1         ;
               end
               end





WRITE_REG_TO_FIFO : begin

               WR_DATA = Rd_DATA   ;
               FUN       = 0 ;
               EN        = 0 ;
               Gate_En   = 0 ;
               Wr_D      = 0 ;
               Addr      = 0 ;
               RdEn      = 0 ;
               WrEn      = 0 ;
               flag      = 0 ;  

              
              if(!FIFO_FULL)
                 begin
                  WR_INC  = 1'b1     ; 
                 end 

               else begin
                  WR_INC  = 1'b0      ;
               end    

              end



WRITE_ALU_TO_FIFO : begin

               WR_DATA =  ALU_OUT ;
               FUN       = 0 ;
               EN        = 0 ;
               Gate_En   = 0 ;
               Wr_D      = 0 ;
               Addr      = 0 ;
               RdEn      = 0 ;
               WrEn      = 0 ;
               flag      = 0 ;  
               EN = 1'b0     ;

              
               if(!FIFO_FULL)
                 begin
                   WR_INC  = 1'b1     ;    
                 end

               else begin
                   WR_INC    = 0 ;
               end
              end



default  :  begin

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




always @(posedge CLK or negedge RST) begin

  if(~RST) begin
    // fun_next  <= 0     ;
     Addr_next <= 0     ;
     flag_1    <= 0     ;
  end 

  else begin
    //fun_next  <= FUN ;
    Addr_next <= Addr ;
    flag_1    <= flag ;
  end

end



endmodule



//=================================== UNIT TESTING OF MODULES ==========================================================================



// `timescale 1ns / 1fs                               // 1ns -- 1000000 precision (6 numbers prescision)

// module SYS_CTRL_tb;

//   parameter REF_CLK_PERIOD  = 10         ;        //100MHZ
//   parameter UART_CLK_PERIOD = 271.2673611;        // 3.6864 MHZ  , FOR PRESCALE = 1 -> 271.2673611 , PRESCALE = 2 -> 135.6336806
//   parameter RX_CLK_PERIOD =  135.6336806 ;  
//   parameter TX_CLK_PERIOD =  8680.555556 ;
  
//   parameter PRESCALE = 'd16;

//   // Inputs
//   reg REF_CLK;
//   reg UART_CLK;

//   reg RST;
//   wire RST_D1;
//   wire RST_D2;


//   wire RX_CLK;
//   wire TX_CLK; 


//   reg RX_IN;


//   // Outputs

//   wire Gate_En;
//   wire [7:0] Wr_D;
//   wire [7:0] Addr;
//   wire RdEn;
//   wire WrEn;

  
//   //wire [7:0] data_in_syn ;
  
//   wire [7:0] SYNC_bus;
//   wire enable_pulse;



// wire [7:0] REG0;
// wire [7:0] REG1;
// wire [7:0] REG2;
// wire [7:0] REG3;
// wire [7:0] Rd_DATA ;
// wire Rd_Valid;

// wire Enable ;
// wire [15:0] ALU_OUT;
// wire       OUT_VALID;
// wire [3:0] ALU_FUN ;

// reg [7:0] rx_div_ratio;
// reg [5:0] prescale_in;




// wire [7:0] in_Data_Sys;
// wire  in_Data_Sys_en ;



// wire WR_INC;
// wire [7:0] WR_DATA;
// wire F_Full;

// wire R_INC ;
// wire F_Empty;
// wire [7:0] in_DATA_tx;


// wire TX_OUT ;
// wire busy  ;





// reg Data_Seed_Write_RF_h    [32:0];
// reg Data_Seed_Write_ALU_CMD_h [43:0];
// reg Data_Seed_Read_RF_h  [21:0];
// reg Data_Seed_Write_ALU_No_CMD_h [21:0];



// integer i ;
// integer j ;
// integer k ;
// integer n ;
 






// ///////////////////////////////////////////////////////
// /////////////////// RST SYNCHRONIZER //////////////////
// ///////////////////////////////////////////////////////


// Rst_Sync #(.NUM_STAGES(2) , .ACTIVE_TYP("LOW")) Rst_Sync_D1_dut (

// .RST       (RST),
// .CLK       (REF_CLK),
// .SYNC_RST  (RST_D1)

// );



// Rst_Sync #(.NUM_STAGES(2) , .ACTIVE_TYP("LOW")) Rst_Sync_D2_dut (

// .RST       (RST),
// .CLK       (UART_CLK),
// .SYNC_RST  (RST_D2)

// );

// /////////////////////////////////////////////////////////////////////////////////

// Data_Sync #(.NUM_STAGES(2) , .BUS_WIDTH(8) )  Data_Sync_dut (

// .CLK        (REF_CLK) ,
// .RST_n      (RST_D1),
// .bus_enable (in_Data_Sys_en) ,
// .UNSYNC_bus (in_Data_Sys) ,

// .SYNC_bus     (SYNC_bus) ,
// .enable_pulse (enable_pulse)

// );


// /////////////////////////////////////////////////////////////////////////////////



// CLK_GATE  CLK_GATE_dut
// (
// .E  (Gate_En)     ,
// .CK (REF_CLK)     , 
// .ECK(ALU_CLK)       
// );



// /////////////////////////////////////////////////////////////////////////////////


// ClkDiv__ CLK_DIV_RX_dut
// (
// .i_ref_clk   (UART_CLK),
// .i_rst_n     (RST_D2),
// .i_div_ratio (rx_div_ratio),

// .o_div_clk(RX_CLK)
// );


// ClkDiv__ CLK_DIV_TX_dut
// (
// .i_ref_clk   (UART_CLK),
// .i_rst_n     (RST_D2),
// .i_div_ratio (REG3),

// .o_div_clk(TX_CLK)
// );


// /////////////////////////////////////////////////////////////////////////////////


//   // Instantiate SYS_CTRL module
//   SYS_CTRL DUT (
//     .CLK(REF_CLK),
//     .RST(RST_D1),
//     .Data_sync(SYNC_bus),
//     .enable_pulse(enable_pulse),
//     .FIFO_FULL(F_Full),
//     .Rd_DATA(Rd_DATA),
//     .Rd_Valid(Rd_Valid),
//     .ALU_OUT(ALU_OUT),
//     .OUT_VALID(OUT_VALID),
//     .WR_DATA(WR_DATA),
//     .WR_INC(WR_INC),
//     .FUN(ALU_FUN),
//     .EN(Enable),
//     .Gate_En(Gate_En),
//     .Wr_D(Wr_D),
//     .Addr(Addr),
//     .RdEn(RdEn),
//     .WrEn(WrEn)
//   );



  
// Register_File  Reg_file_dut
// (
// .CLK(REF_CLK),
// .RST_n(RST_D1),
// .RdEn(RdEn),
// .WrEn(WrEn),
// .Address(Addr),
// .WrData(Wr_D),

// .RdData  (Rd_DATA),
// .RdData_Valid(Rd_Valid),

// .REG0(REG0) ,
// .REG1(REG1) ,
// .REG2(REG2) ,
// .REG3(REG3)
// );




// ALU #(.OPERAND_WIDTH ('d8) , .FUN_WIDTH('d4)) ALU_dut
// (

// .CLK        (ALU_CLK) ,
// .RST_n      (RST_D1)  ,
// .A          (REG0)    ,
// .B          (REG1)    ,
// .ALU_FUN    (ALU_FUN)        ,
// .Enable     (Enable)        ,

// .ALU_OUT     (ALU_OUT)       ,
// .OUT_VALID   (OUT_VALID)

// );




// UART_RX #(.PRESCALE(16)) UART_RX_dut (

//  .CLK           (RX_CLK)     ,
//  .RST_n         (RST_D2)     ,
//  .PAR_EN        (REG2[0])    ,
//  .PAR_TYP       (REG2[1])    ,
//  .Prescale      (prescale_in)  ,
//  .RX_IN         (RX_IN)      ,


//  .P_DATA    (in_Data_Sys)    ,
//  .DATA_Valid(in_Data_Sys_en)             

// );




// ASYNC_FIFO ASYNC_FIFO_dut
// (

// .W_CLK     (REF_CLK)     ,           
// .W_RST     (RST_D1)     ,        
// .W_INC     (WR_INC)           ,
// .WR_DATA   (WR_DATA)     ,
// .R_CLK     (TX_CLK)     ,
// .R_RST     (RST_D2)     ,
// .R_INC     (R_INC)      ,


// .FULL    (F_Full )       ,
// .EMPTY   (F_Empty)       ,
// .RD_DATA (in_DATA_tx)  

// );



// PULSE_GENERATOR pulse_gen_dut
// (
// .CLK   (TX_CLK),
// .RST_n (RST_D2),  
// .in    (busy),

// .out   (R_INC)
// );





// UART_TX UART_TX_dut(

// .CLK      (TX_CLK)     ,
// .RST_n    (RST_D2)     ,
// .P_DATA   (in_DATA_tx) ,
// .PAR_EN   (REG2[0])    ,
// .PAR_TYP  (REG2[1])    ,
// .DATA_VALID (F_Empty)  ,

// .TX_OUT  (TX_OUT)      ,
// .Busy    (busy)    


// );




//   // Clock generation
  
//   always begin
//     #(REF_CLK_PERIOD / 2) REF_CLK = ~REF_CLK;
//   end


//   always begin
//     #(UART_CLK_PERIOD / 2)  UART_CLK = ~UART_CLK;
//   end


//   // Test stimulus
//   initial begin
//     $dumpfile("SYS_CTRL_tb.vcd");
//     $dumpvars(0, SYS_CTRL_tb);

//     rx_div_ratio = (PRESCALE == 32) ? 1 : (PRESCALE == 16) ? 2 : 4;
//      prescale_in = PRESCALE;

//     // Initialize inputs
//     REF_CLK  = 0;
//     UART_CLK = 0;
//     RX_IN    = 0;

//     RST = 0; 
//     // Release reset
//     #(REF_CLK_PERIOD) RST = 1; 
//     #(2*REF_CLK_PERIOD);

    

//      $readmemh("Data_Seed_Write_RF_h.txt" , Data_Seed_Write_RF_h );
//      $readmemh("Data_Seed_Write_ALU_CMD_h.txt",Data_Seed_Write_ALU_CMD_h);
//      $readmemh("Data_Seed_Read_RF_h.txt", Data_Seed_Read_RF_h);
//      $readmemh("Data_Seed_Write_ALU_No_CMD_h.txt",Data_Seed_Write_ALU_No_CMD_h);
   


// //=============== WRITE IN RF =========================


//       for(i = 0 ; i < 11 ; i = i + 1)
//       begin
//       @(negedge RX_CLK);
//       RX_IN = Data_Seed_Write_RF_h[i];
//       repeat(prescale_in) @(negedge RX_CLK);
//       end


//       #(RX_CLK_PERIOD) ;


//       for(i = 11 ; i < 22 ; i = i + 1)
//       begin
//       @(negedge RX_CLK);
//       RX_IN = Data_Seed_Write_RF_h[i];
//       repeat(prescale_in) @(negedge RX_CLK);
//       end

//      #(RX_CLK_PERIOD) ;

    
//       for(i = 22 ; i < 33 ; i = i + 1)
//       begin
//       @(negedge RX_CLK);
//       RX_IN = Data_Seed_Write_RF_h[i];
//       repeat(prescale_in) @(negedge RX_CLK);
//       end
      
      
//       #(RX_CLK_PERIOD) ;


       
//   //=================================================



// //=============== WRITE IN ALU WITH CMD ================


//       for(j = 0 ; j < 11 ; j = j + 1)
//       begin
//       @(negedge RX_CLK);
//       RX_IN = Data_Seed_Write_ALU_CMD_h[j];
//       repeat(prescale_in) @(negedge RX_CLK);
//       end



//       #(RX_CLK_PERIOD) ;



//       for(j = 11 ; j < 22 ; j = j + 1)
//       begin
//       @(negedge RX_CLK);
//       RX_IN = Data_Seed_Write_ALU_CMD_h[j];
//       repeat(prescale_in) @(negedge RX_CLK);
//       end


//      #(RX_CLK_PERIOD) ;


    
//       for(j = 22 ; j < 33 ; j = j + 1)
//       begin
//       @(negedge RX_CLK);
//       RX_IN = Data_Seed_Write_ALU_CMD_h[j];
//       repeat(prescale_in) @(negedge RX_CLK);
//       end
      

      
//       #(RX_CLK_PERIOD) ;




//       for(j = 33 ; j < 44 ; j = j + 1)
//       begin
//       @(negedge RX_CLK);
//       RX_IN = Data_Seed_Write_ALU_CMD_h[j];
//       repeat(prescale_in) @(negedge RX_CLK);
//       end
      
      
//       #(RX_CLK_PERIOD) ;


       
//   //====================================================


//   //=============== READ FROM RF ===============

   
//       for(k = 0 ; k < 11 ; k = k + 1)
//       begin
//       @(negedge RX_CLK);
//       RX_IN = Data_Seed_Read_RF_h[k];
//       repeat(prescale_in) @(negedge RX_CLK);
//       end
      
      
//       #(RX_CLK_PERIOD) ;



//       for(k = 11 ; k < 22 ; k = k + 1)
//       begin
//       @(negedge RX_CLK);
//       RX_IN = Data_Seed_Read_RF_h[k];
//       repeat(prescale_in) @(negedge RX_CLK);
//       end
      
      
//       #(RX_CLK_PERIOD) ;
   

//   //============================================

//   //=======  WRITE IN ALU WITH No OPERAND ======

   
//       for(n = 0 ; n < 11 ; n = n + 1)
//       begin
//       @(negedge RX_CLK);
//       RX_IN = Data_Seed_Write_ALU_No_CMD_h[n];
//       repeat(prescale_in) @(negedge RX_CLK);
//       end
      
      
//       #(RX_CLK_PERIOD) ;


//       for(n = 11 ; n < 22 ; n = n + 1)
//       begin
//       @(negedge RX_CLK);
//       RX_IN = Data_Seed_Write_ALU_No_CMD_h[n];
//       repeat(prescale_in) @(negedge RX_CLK);
//       end
      
      
//       #(RX_CLK_PERIOD) ;

      
//       // R_INC = 1'b1;

       

//       // R_INC = 0;

//     //  RST = 0; 
//     // // Release reset
//     // //#(REF_CLK_PERIOD) RST = 1; 
//     // #(2*REF_CLK_PERIOD);

//   //============================================
      


//     #50 $stop;
//   end


// endmodule
