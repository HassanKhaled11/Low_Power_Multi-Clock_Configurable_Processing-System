
interface internal_sig_if
 (
input logic tx_clk ,
input logic rx_clk 
 );
  
  
parameter PRESCALE = 6'd16 ;  

  
endinterface





interface bfm_if;

logic REF_CLK    ;
logic UART_CLK   ;
logic RST        ;
logic RX_IN      ;


logic TX_OUT     ;
  
endinterface



