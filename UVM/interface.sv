
interface internal_sig_if
 (
input logic tx_clk                 ,
input logic rx_clk                 ,
input logic PAR_EN                 ,
input logic PAR_TYP                ,
input logic enable_pulse_sync      ,
input logic data_valid_rx          ,
input logic [7:0] p_data_rx        ,
input logic gate_en_alu            ,
input logic en_alu                 ,
input logic rst_sync1              ,
input logic rst_sync2              ,
input logic busy_fifo              ,
input logic rd_inc_fifo            ,
input logic rd_en_reg_file         ,             
input logic [7:0] rd_data_reg_file ,
input logic [7:0] sync_bus_ctrl   

 );
  
  
parameter PRESCALE = 6'd16 ;  

endinterface




interface internal_sig_if_oddp
 (
input logic tx_clk                 ,
input logic rx_clk                 ,
input logic PAR_EN                 ,
input logic PAR_TYP                ,
input logic enable_pulse_sync      ,
input logic data_valid_rx          ,
input logic [7:0] p_data_rx        ,
input logic gate_en_alu            ,
input logic en_alu                 ,
input logic rst_sync1              ,
input logic rst_sync2              ,
input logic busy_fifo              ,
input logic rd_inc_fifo            ,
input logic rd_en_reg_file         ,             
input logic [7:0] rd_data_reg_file ,
input logic [7:0] sync_bus_ctrl   

 );
  
  
parameter PRESCALE = 6'd16 ;  

endinterface





interface internal_sig_if_nop
 (
input logic tx_clk                 ,
input logic rx_clk                 ,
input logic PAR_EN                 ,
input logic PAR_TYP                ,
input logic enable_pulse_sync      ,
input logic data_valid_rx          ,
input logic [7:0] p_data_rx        ,
input logic gate_en_alu            ,
input logic en_alu                 ,
input logic rst_sync1              ,
input logic rst_sync2              ,
input logic busy_fifo              ,
input logic rd_inc_fifo            ,
input logic rd_en_reg_file         ,             
input logic [7:0] rd_data_reg_file ,
input logic [7:0] sync_bus_ctrl   

 );
  
  
parameter PRESCALE = 6'd16 ;  

endinterface







//////////////////////////////////////////////////////////////////





interface bfm_if;

logic REF_CLK    ;
logic UART_CLK   ;
logic RST        ;
logic RX_IN      ;


logic TX_OUT     ;
  
endinterface




interface bfm_if_oddp;

logic REF_CLK    ;
logic UART_CLK   ;
logic RST        ;
logic RX_IN      ;


logic TX_OUT     ;
  
endinterface






interface bfm_if_nop;

logic REF_CLK    ;
logic UART_CLK   ;
logic RST        ;
logic RX_IN      ;


logic TX_OUT     ;
  
endinterface



