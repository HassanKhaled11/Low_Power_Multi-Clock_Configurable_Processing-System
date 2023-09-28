import uvm_pkg ::*;
import parameters_pkg::*;
import my_transaction_pkg::*;
`include "uvm_macros.svh"
//`include "my_transaction.sv"

class my_driver extends uvm_driver #(my_transaction) ;

`uvm_component_utils (my_driver);


virtual bfm_if  dut_vif;
virtual internal_sig_if  internal_if;  
  

  function new(string name = "driver" , uvm_component parent);
 super.new(name , parent);
endfunction   


function void build_phase(uvm_phase phase);
  super.build_phase(phase);
  if(!uvm_config_db #(virtual bfm_if) :: get(this , "" , "dut_vif" , dut_vif))
  `uvm_fatal("DRIVER","FATAL GETTING THE CONFIG DB");
  
  if(!uvm_config_db #(virtual internal_sig_if)::get(this, "" , "internal_if" , internal_if))
   `uvm_fatal("DRIVER" , "FATAL GETTING internal_IF");
endfunction


task run_phase(uvm_phase phase);
       forever begin
              seq_item_port.get_next_item(req);
              
     //    `uvm_info("DRIVER" , "ENTERING DRIVING SECTION" , UVM_LOW);
        // `uvm_info("DRIVER" , $sformatf("DATA = %h" , req.Data_Seed_Write_RF_h[req.i]) , UVM_LOW) ;
        // `uvm_info("DRIVER" , $sformatf("i = %h" , req.i) , UVM_LOW) ;
         
              if(req.operation == RF_W) begin
                 // dut_vif.RX_IN = req.Data_Seed_Write_RF_h[req.i];
                 transmit(req.Data_Seed_Write_RF_h[req.i]);
                 if(req.i == 10) #(RX_CLK_PERIOD);
                 if(req.i == 21) #(RX_CLK_PERIOD);
                 if(req.i == 32) begin
                    req.operation = ALU_WC;
                    #(RX_CLK_PERIOD);    
                 end            
                req.i++ ;    
           //     `uvm_info("DRIVER_i_incrementation" , $sformatf("i = %h" , req.i) , UVM_LOW) ;                
              end



              else if(req.operation == ALU_WC) begin
          //      `uvm_info("DRIVER" , "IN ALU-WC-OP" , UVM_LOW) ;       
                 // dut_vif.RX_IN = req.Data_Seed_Write_RF_h[req.i];
                 transmit(req.Data_Seed_Write_ALU_CMD_h[req.j]);
                 if(req.j == 10) #(RX_CLK_PERIOD);
                 if(req.j == 21) #(RX_CLK_PERIOD);
                 if(req.j == 32)  #(RX_CLK_PERIOD);
                  if(req.j == 43) #(RX_CLK_PERIOD)
                   begin
                    req.operation = RF_R;
                    #(RX_CLK_PERIOD);    
                   end            
                 req.j++ ;       
        //        `uvm_info("DRIVER_j_incrementation" , $sformatf("j = %d" , req.j) , UVM_LOW) ;
              end


       else if(req.operation == RF_R) begin    
             //  `uvm_info("DRIVER" , "IN RF-R-OP" , UVM_LOW) ;
                 // dut_vif.RX_IN = req.Data_Seed_Write_RF_h[req.i];
                 transmit(req.Data_Seed_Read_RF_h[req.k]);
                 if(req.k == 10) #(RX_CLK_PERIOD);
                 if(req.k == 21)
                   begin
                    req.operation = ALU_WNC;
                    #(RX_CLK_PERIOD);    
                 end            
                req.k++ ; 
               // `uvm_info("DRIVER_k_incrementation" , $sformatf("k = %h" , req.k) , UVM_LOW) ;
              end

        else if(req.operation == ALU_WNC && req.n < 22) begin
             //   `uvm_info("DRIVER" , "IN ALU-WNC-OP" , UVM_LOW) ;
                 // dut_vif.RX_IN = req.Data_Seed_Write_RF_h[req.i];
                 transmit(req.Data_Seed_Write_ALU_No_CMD_h[req.n]);
                 if(req.n == 10) #(RX_CLK_PERIOD);
                 if(req.n == 21) begin
                    #(RX_CLK_PERIOD);    
                 end            
                req.n++ ;
            //    `uvm_info("DRIVER_n_incrementation" , $sformatf("n = %h" , req.n) , UVM_LOW) ;
              end 
         

         else  begin 
     //    `uvm_info("DRIVER","HERE IN THE ELSE DRIVING" , UVM_LOW) ;
              dut_vif.RX_IN = 1           ;
            repeat(internal_if.PRESCALE) @(negedge internal_if.rx_clk);               
         end
     //    `uvm_info("DRIVER","_item_done" , UVM_LOW) ;
              seq_item_port.item_done(req); 
      end
endtask




task transmit(input Data_in);
 begin
  // `uvm_info("DRIVER_transmit","to send to rx", UVM_LOW) ;
   //`uvm_info("DRIVER" , $sformatf("PRESCALE = %h" , internal_if.PRESCALE) , UVM_LOW) ;
   //`uvm_info("DRIVER" , $sformatf("rx_clk = %h" , internal_if.rx_clk) , UVM_LOW) ;
       @(negedge internal_if.rx_clk);
       dut_vif.RX_IN = Data_in           ;
   
  // `uvm_info("DRIVER" , $sformatf("rx_clk = %h" , internal_if.rx_clk) , UVM_LOW) ;  
 repeat(internal_if.PRESCALE) @(negedge internal_if.rx_clk);
  // `uvm_info("DRIVER_transmit","_sent_to_rx" , UVM_LOW) ;

 end
endtask





endclass
