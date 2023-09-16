module SYS_TOP
(
 input REF_CLK ,
 input UART_CLK,
 input RST     ,
 input RX_IN   ,

 output TX_OUT
);

parameter PRESCALE = 'd16;

wire [7:0] REG0 ;      // ALU OPERAND A                       
wire [7:0] REG1 ;      // ALU OPERAND B 
wire [7:0] REG2 ;      // [7:2]--> Prescale , 1 --> PARITY TYPE , 0 --> PARITY ENABLE
wire [7:0] REG3 ;      // DIVISION RATION OF CLK DIVIDER

wire RST_D1 ;
wire RST_D2 ;

wire TX_CLK;
wire RX_CLK;

wire [7:0] rx_div_ratio ;
wire [7:0] in_DATA_tx   ;   
wire busy               ;


wire R_INC ;
wire WR_INC;


wire in_Data_Sys_en ;
wire [7:0] in_Data_Sys;


wire F_Empty ;
wire F_Full  ;


wire ALU_CLK;
wire Gate_En;


wire [7:0] SYNC_bus;
wire enable_pulse ;
wire [7:0] RdData;
wire  Rd_Valid ;
wire [15:0] ALU_OUT ;
wire OUT_VALID ;
wire [7:0] ALU_FUN; 
wire Enable ;
wire [7:0] WR_DATA;
wire [7:0] Wr_D;
wire [7:0] Addr;
wire RdEn ;
wire WrEn ;


assign prescale_in = REG2[7:2] ;

assign  rx_div_ratio = (REG2[7:2] == 32) ? 1 : (REG2[7:2] == 16) ? 2 : 4;


///////////////////////////////////////////////////////
///////////////////////////////////////////////////////
//////////////// BLOCKS CONNECTION ////////////////////
///////////////////////////////////////////////////////
///////////////////////////////////////////////////////


///////////////////////////////////////////////////////
//////////////////// CLOCK GATING  ////////////////////
///////////////////////////////////////////////////////

CLK_GATE  CLK_GATE_dut
(
.E  (Gate_En)     ,
.CK (REF_CLK)     , 
.ECK(ALU_CLK)       
);


// ((( IMPORTANT ))) At synthesing replace inst above this line with the full custom ICG from the std library beneath this line to overcome wiring delays


// TLATNCAX3M ICG_DUT
// (
// .E(Gate_En)     ,
// .CK(REF_CLK)    , 
// .ECK(ALU_CLK)   
// );


///////////////////////////////////////////////////////
//////////////////// CLOCK DIVIDER ////////////////////
///////////////////////////////////////////////////////


ClkDiv__  CLK_DIV_TX_dut
(
.i_ref_clk   (UART_CLK),
.i_rst_n     (RST_D2),
.i_div_ratio (REG3),

.o_div_clk(TX_CLK)
);



ClkDiv__ CLK_DIV_RX_dut
(
.i_ref_clk   (UART_CLK),
.i_rst_n     (RST_D2),
.i_div_ratio (rc),

.o_div_clk(RX_CLK)
);


///////////////////////////////////////////////////////
/////////////////// RST SYNCHRONIZER //////////////////
///////////////////////////////////////////////////////


Rst_Sync #(.NUM_STAGES(2) , .ACTIVE_TYP("LOW")) Rst_Sync_D1_dut (

.RST       (RST_n),
.CLK       (REF_CLK),
.SYNC_RST  (RST_D1)

);



Rst_Sync #(.NUM_STAGES(2) , .ACTIVE_TYP("LOW")) Rst_Sync_D2_dut (

.RST       (RST_n),
.CLK       (UART_CLK),
.SYNC_RST  (RST_D2)

);



////////////////////////////////////////////////////////
/////////////////// DATA SYNCHRONIZER //////////////////
////////////////////////////////////////////////////////


Data_Sync #(.NUM_STAGES(2) , .BUS_WIDTH(8) )  Data_Sync_dut (

.CLK        (REF_CLK) ,
.RST_n      (RST_D1),
.bus_enable (in_Data_Sys_en) ,
.UNSYNC_bus (in_Data_Sys) ,

.SYNC_bus     (SYNC_bus) ,
.enable_pulse (enable_pulse)

);




////////////////////////////////////////////////////////
//////////////////// SYSTEM CONTROL ////////////////////
////////////////////////////////////////////////////////



SYS_CTRL  SYS_CTRL_dut
(
 .CLK          (REF_CLK)        ,
 .RST          (RST_D1)         ,
 .Data_sync    (SYNC_bus)       ,
 .enable_pulse (enable_pulse)   ,
 .FIFO_FULL    (F_Full)         ,
 .Rd_DATA      (RdData)         ,
 .Rd_Valid     (Rd_Valid)       ,
 .ALU_OUT      (ALU_OUT)        ,
 .OUT_VALID    (OUT_VALID)      ,


 .WR_DATA  (WR_DATA)       ,
 .WR_INC   (WR_INC)        ,  
 .FUN      (ALU_FUN)       ,
 .EN       (Enable)        ,
 .Gate_En  (Gate_En)       ,
 .Wr_D     (Wr_D)       ,
 .Addr     (Addr)       ,
 .RdEn     (RdEn)       ,
 .WrEn     (WrEn)

);



///////////////////////////////////////////////////////
//////////////////// REGISTER FILE ////////////////////
///////////////////////////////////////////////////////


Register_File  Reg_file_dut
(
.CLK(REF_CLK),
.RST_n(RST_D1),
.RdEn(RdEn),
.WrEn(WrEn),
.Address(Addr),
.WrData(Wr_D),

.RdData  (RdData),
.RdData_Valid(Rd_Valid),

.REG0(REG0) ,
.REG1(REG1) ,
.REG2(REG2) ,
.REG3(REG3)
);



///////////////////////////////////////////////////////
/////////////////////// ALU ///////////////////////////
///////////////////////////////////////////////////////


ALU #(.OPERAND_WIDTH ('d8) , .FUN_WIDTH('d4)) ALU_dut
(

.CLK   		(ALU_CLK) ,
.RST_n 		(RST_D1)  ,
.A    		(REG0)    ,
.B    		(REG1)    ,
.ALU_FUN    (ALU_FUN)        ,
.Enable     (Enable)        ,

.ALU_OUT     (ALU_OUT)       ,
.OUT_VALID   (OUT_VALID)

);




///////////////////////////////////////////////////////
/////////////////////// UART_TX ///////////////////////
///////////////////////////////////////////////////////


UART_TX UART_TX_dut(

.CLK        (TX_CLK)     ,
.RST_n		(RST_D2)     ,
.P_DATA		(in_DATA_tx) ,
.PAR_EN		(REG2[0])    ,
.PAR_TYP	(REG2[1])    ,
.DATA_VALID	(F_Empty)    ,

.TX_OUT  (TX_OUT)		 ,
.Busy    (busy)    


);


///////////////////////////////////////////////////////
/////////////////////// UART_RX ///////////////////////
///////////////////////////////////////////////////////

UART_RX #(.PRESCALE(PRESCALE)) UART_RX_dut (

 .CLK           (RX_CLK)     ,
 .RST_n         (RST_D2)     ,
 .PAR_EN        (REG2[0])    ,
 .PAR_TYP       (REG2[1])    ,
 .Prescale      (prescale_in)  ,
 .RX_IN         (RX_IN)      ,


 .P_DATA    (in_Data_Sys)    ,
 .DATA_Valid(in_Data_Sys_en)             

);


///////////////////////////////////////////////////////
////////////////////// ASYNC_FIFO /////////////////////
///////////////////////////////////////////////////////


ASYNC_FIFO ASYNC_FIFO_dut
(

.W_CLK     (REF_CLK)     ,	         
.W_RST     (RST_D1)     ,        
.W_INC     (WR_INC)           ,
.WR_DATA   (WR_DATA)     ,
.R_CLK     (TX_CLK)     ,
.R_RST     (RST_D2)     ,
.R_INC     (R_INC)      ,


.FULL    (F_Full )       ,
.EMPTY   (F_Empty)       ,
.RD_DATA (in_DATA_tx)  

);


///////////////////////////////////////////////////////
//////////////////// PULSE_GENERATOR //////////////////
///////////////////////////////////////////////////////


PULSE_GENERATOR pulse_gen_dut
(
.CLK   (UART_TX),
.RST_n (RST_D2),	
.in    (busy),

.out   (R_INC)
);

///////////////////////////////////////////////////////
///////////////////////////////////////////////////////
///////////////////////////////////////////////////////
///////////////////////////////////////////////////////
///////////////////////////////////////////////////////







endmodule