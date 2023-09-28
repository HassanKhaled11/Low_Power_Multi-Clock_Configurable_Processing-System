import uvm_pkg ::*;
`include "uvm_macros.svh"


//--------------------------------------------------------
//Include Files
//--------------------------------------------------------
import parameters_pkg ::*;
`include "interface.sv"
`include "my_test.sv"

module top ;
  
  
 parameter REF_CLK_PERIOD  =  10           ;          //100MHZ
 parameter UART_CLK_PERIOD =  271.2673611  ;          // 3.6864 MHZ  , FOR PRESCALE = 1 -> 271.2673611 , PRESCALE = 2 -> 135.6336806
 parameter RX_CLK_PERIOD   =  135.6336806  ;          // in case of prescale = 16
// //parameter RX_CLK_PERIOD =  271.2673611  ;        // in case of prescale = 32 
 parameter TX_CLK_PERIOD   =  8680.555556    ;        // 115.200 KHZ 

 parameter PRESCALE        =  6'd16          ;
 parameter PARITY_EN       =  1'b1           ;
 parameter PARITY_TYP      =  1'b0           ;
  

 bfm_if  dut_if();
 //internal_sig_if  internal_if();
 

  SYS_TOP #(.PRESCALE(PRESCALE) , .PAR_TYP(PARITY_TYP) , .PAR_EN(PARITY_EN)) dut (.REF_CLK(dut_if.REF_CLK)  ,
               .UART_CLK(dut_if.UART_CLK),
               .RST(dut_if.RST)          ,
               .RX_IN(dut_if.RX_IN)      ,
               .TX_OUT(dut_if.TX_OUT)   );
 


bind dut internal_sig_if  dut_if_int_sig (dut.CLK_DIV_TX_dut.o_div_clk ,  dut.CLK_DIV_RX_dut.o_div_clk);

  
 
// ClkDiv__ CLK_DIV_RX_dut
// (
// .i_ref_clk   (dut_if.UART_CLK),
// .i_rst_n     ( dut_if.RST),
//   .i_div_ratio (2),                          // 1 ---> Prescale 32    ,  2 --> Prescale 16
//   .o_div_clk(internal_if.rx_clk)
// );


// ClkDiv__ CLK_DIV_TX_dut
// (
// .i_ref_clk   (dut_if.UART_CLK),
// .i_rst_n     (dut_if.RST),
// .i_div_ratio (32),
//  .o_div_clk(internal_if.tx_clk)
// );

 
 // assign tx =  internal_if.tx_clk ;
 // assign rx = internal_if.rx_clk  ;
  
  
  
initial begin
dut_if.REF_CLK = 0;
 forever begin
   #(REF_CLK_PERIOD / 2) dut_if.REF_CLK = ~ dut_if.REF_CLK ;
 end 
end  
  
  
  
initial begin
 dut_if.UART_CLK = 0;
 forever begin
   #(UART_CLK_PERIOD / 2) dut_if.UART_CLK = ~ dut_if.UART_CLK ;
 end 
end  
  
  
  
initial begin
  dut_if.RST = 0 ;
  #(3*REF_CLK_PERIOD) ;
  dut_if.RST = 1 ;
  #(2*REF_CLK_PERIOD) ;
end
  
  
  
initial begin
  run_test("my_test") ;  
end  


  
  
    
initial begin 
  uvm_config_db #(virtual  bfm_if) :: set(null,"*","dut_vif",dut_if) ;
  
  uvm_config_db #(virtual internal_sig_if) :: set(null , "*" , "internal_if" , dut.dut_if_int_sig) ;  // BINDED INTERFACE FOR INTERNAL SIGNALS

end  
 
 
initial begin
  $dumpfile("dump.vcd");
  $dumpvars(0, top);
end    
  


initial begin
 repeat(200) @(posedge dut.dut_if_int_sig.tx_clk);
  $stop;
end    
  
  
  
endmodule
  