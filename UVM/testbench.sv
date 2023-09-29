import uvm_pkg ::*;
`include "uvm_macros.svh"


//--------------------------------------------------------
//Include Files
//--------------------------------------------------------
import parameters_pkg ::*;
`include "interface.sv"
`include "my_test.sv"
//`include "my_assertion .sv"



module top ;
  
  
 parameter REF_CLK_PERIOD  =  10           ;          //100MHZ
 parameter UART_CLK_PERIOD =  271.2673611  ;          // 3.6864 MHZ  , FOR PRESCALE = 1 -> 271.2673611 , PRESCALE = 2 -> 135.6336806
 parameter RX_CLK_PERIOD   =  135.6336806  ;          // in case of prescale = 16
//parameter RX_CLK_PERIOD =  271.2673611   ;          // in case of prescale = 32 
 parameter TX_CLK_PERIOD   =  8680.555556    ;        // 115.200 KHZ 

 parameter PRESCALE        =  6'd16          ;
 parameter PARITY_EN       =  1'b1           ;
 parameter PARITY_TYP      =  1'b0           ;
  

 bfm_if          dut_if() ;
 bfm_if_oddp     dut_if2();
 bfm_if_nop      dut_if3();  
       


  SYS_TOP #(.PRESCALE(6'd16) , .PAR_TYP(1'b0) , .PAR_EN(1'b1)) dut (.REF_CLK(dut_if.REF_CLK)  ,
               .UART_CLK(dut_if.UART_CLK),
               .RST(dut_if.RST)          ,
               .RX_IN(dut_if.RX_IN)      ,
               .TX_OUT(dut_if.TX_OUT)   );



  SYS_TOP #(.PRESCALE(6'd16) , .PAR_TYP(1'b1) , .PAR_EN(1'b1)) dut2 (.REF_CLK(dut_if2.REF_CLK)  ,
               .UART_CLK(dut_if2.UART_CLK),
               .RST(dut_if2.RST)          ,
               .RX_IN(dut_if2.RX_IN)      ,
               .TX_OUT(dut_if2.TX_OUT)   );



    SYS_TOP #(.PRESCALE(6'd16) , .PAR_TYP(1'b1) , .PAR_EN(1'b0)) dut3 (.REF_CLK(dut_if3.REF_CLK)  ,
               .UART_CLK(dut_if3.UART_CLK),
               .RST(dut_if3.RST)          ,
               .RX_IN(dut_if3.RX_IN)      ,
               .TX_OUT(dut_if3.TX_OUT)   );
 



bind dut internal_sig_if  dut_if_int_sig 
( dut.TX_CLK ,  
  dut.RX_CLK , 
  dut.PAR_EN , 
  dut.PAR_TYP , 
  dut.enable_pulse , 
  dut.UART_RX_dut.DATA_Valid , 
  dut.UART_RX_dut.P_DATA ,
  dut.Gate_En , 
  dut.Enable , 
  dut.RST_D1 , 
  dut.RST_D2 , 
  dut.busy , 
  dut.R_INC , 
  dut.RdEn ,
  dut.RdData ,
  dut.SYNC_bus
  );

  

  bind dut2 internal_sig_if_oddp  dut_if_int_sig2 
( dut2.TX_CLK ,  
  dut2.RX_CLK , 
  dut2.PAR_EN , 
  dut2.PAR_TYP , 
  dut2.enable_pulse , 
  dut2.UART_RX_dut.DATA_Valid , 
  dut2.UART_RX_dut.P_DATA ,
  dut2.Gate_En , 
  dut2.Enable , 
  dut2.RST_D1 , 
  dut2.RST_D2 , 
  dut2.busy , 
  dut2.R_INC , 
  dut2.RdEn ,
  dut2.RdData ,
  dut2.SYNC_bus
  );



bind dut3 internal_sig_if_nop  dut_if_int_sig3
( dut3.TX_CLK ,  
  dut3.RX_CLK , 
  dut3.PAR_EN , 
  dut3.PAR_TYP , 
  dut3.enable_pulse , 
  dut3.UART_RX_dut.DATA_Valid , 
  dut3.UART_RX_dut.P_DATA ,
  dut3.Gate_En , 
  dut3.Enable , 
  dut3.RST_D1 , 
  dut3.RST_D2 , 
  dut3.busy , 
  dut3.R_INC , 
  dut3.RdEn ,
  dut3.RdData ,
  dut3.SYNC_bus
  );


// bind dut2 my_assertion  st_assert_dut 
// ( 
// .REF_CLK          (dut_if.REF_CLK)              ,
// .UART_CLK         (dut_if.UART_CLK)             ,
// .RST              (dut_if.RST)                  ,
// .enable_pulse_sync(dut.enable_pulse)            ,
// .data_valid_rx    (dut.UART_RX_dut.DATA_Valid)  ,
// .p_data_rx        (dut.UART_RX_dut.P_DATA )     ,
// .gate_en_alu      (dut.Gate_En)                 ,
// .en_alu           (dut.Enable)                  ,
// .rst_sync1        (dut.RST_D1)                  ,
// .rst_sync2        (dut.RST_D2)                  ,
// .busy_fifo        (dut.busy )                   ,
// .rd_inc_fifo      (dut.R_INC)                   ,
// .rd_en_reg_file   (dut.RdEn)                    ,             
// .rd_data_reg_file (dut.RdData)                  ,
// .sync_bus_ctrl    (dut.SYNC_bus)       
  
// );

 


//my_assertion  assertion_dut (dut_if , internal_sig_if);

///////////////////////////////////////////////////////////////////////
  
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



//////////////////////////////////////////////////////////////////////////
  
  

  
initial begin
dut_if2.REF_CLK = 0;
 forever begin
   #(REF_CLK_PERIOD / 2) dut_if2.REF_CLK = ~ dut_if2.REF_CLK ;
 end 
end  
  
  
  
initial begin
 dut_if2.UART_CLK = 0;
 forever begin
   #(UART_CLK_PERIOD / 2) dut_if2.UART_CLK = ~ dut_if2.UART_CLK ;
 end 
end  
  
  
  
initial begin
  dut_if2.RST = 0 ;
  #(3*REF_CLK_PERIOD) ;
  dut_if2.RST = 1 ;
  #(2*REF_CLK_PERIOD) ;
end
  



///////////////////////////////////////////////////////////////////////////  

  
initial begin
dut_if3.REF_CLK = 0;
 forever begin
   #(REF_CLK_PERIOD / 2) dut_if3.REF_CLK = ~ dut_if3.REF_CLK ;
 end 
end  
  
  
  
initial begin
 dut_if3.UART_CLK = 0;
 forever begin
   #(UART_CLK_PERIOD / 2) dut_if3.UART_CLK = ~ dut_if3.UART_CLK ;
 end 
end  
  
  
  
initial begin
  dut_if3.RST = 0 ;
  #(3*REF_CLK_PERIOD) ;
  dut_if3.RST = 1 ;
  #(2*REF_CLK_PERIOD) ;
end
  

////////////////////////////////////////////////////////////////////////////


initial begin
  run_test("my_test") ;  
end  


  
  
    
initial begin 
  uvm_config_db #(virtual  bfm_if) :: set(null,"*","dut_vif",dut_if)        ;
  uvm_config_db #(virtual  bfm_if_oddp) :: set(null,"*","dut_vif2",dut_if2) ;
  uvm_config_db #(virtual  bfm_if_nop) :: set(null,"*","dut_vif3",dut_if3)  ;
  
  uvm_config_db #(virtual internal_sig_if)  :: set(null , "*" , "internal_if" , dut.dut_if_int_sig)   ;  // BINDED INTERFACE FOR INTERNAL SIGNALS
  uvm_config_db #(virtual internal_sig_if_oddp) :: set(null , "*" , "internal_if2" , dut.dut_if_int_sig2) ;
  uvm_config_db #(virtual internal_sig_if_nop) :: set(null , "*" , "internal_if3" , dut.dut_if_int_sig3) ;   
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
  