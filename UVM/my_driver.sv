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
 
           drive();

           seq_item_port.item_done(req); 
      end
endtask





task drive();
   
         
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


endtask







task transmit(input Data_in);
 begin

       @(negedge internal_if.rx_clk);
       dut_vif.RX_IN = Data_in           ;
   
  // `uvm_info("DRIVER" , $sformatf("rx_clk = %h" , internal_if.rx_clk) , UVM_LOW) ;  
 repeat(internal_if.PRESCALE) @(negedge internal_if.rx_clk);
  // `uvm_info("DRIVER_transmit","_sent_to_rx" , UVM_LOW) ;

 end
endtask





endclass




////////////////////////////////////////////////////////////////////////////////////////////////////////




class my_driver2 extends uvm_driver #(my_transaction2) ;

`uvm_component_utils (my_driver2);


virtual bfm_if_oddp  dut_vif;
virtual internal_sig_if_oddp  internal_if;  
  

  function new(string name = "driver2" , uvm_component parent);
 super.new(name , parent);
endfunction   


function void build_phase(uvm_phase phase);
  super.build_phase(phase);
  if(!uvm_config_db #(virtual bfm_if_oddp) :: get(this , "" , "dut_vif2" , dut_vif))
  `uvm_fatal("DRIVER2","FATAL GETTING THE CONFIG DB");
  
  if(!uvm_config_db #(virtual internal_sig_if_oddp)::get(this, "" , "internal_if2" , internal_if))
   `uvm_fatal("DRIVER2" , "FATAL GETTING internal_IF");
endfunction


task run_phase(uvm_phase phase);
       forever begin
              seq_item_port.get_next_item(req);

              drive();
 
              seq_item_port.item_done(req); 
      end
endtask





task drive();
   
         
              if(req.operation == RF_W) begin
                 // dut_vif.RX_IN = req.Data_Seed_Write_RF_h[req.i];
                 transmit(req.Data_Seed_Write_RF_O_h[req.i]);
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
                 transmit(req.Data_Seed_Write_ALU_CMD_O_h[req.j]);
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
                 transmit(req.Data_Seed_Read_RF_O_h[req.k]);
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
                 transmit(req.Data_Seed_Write_ALU_No_CMD_O_h[req.n]);
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





////////////////////////////////////////////////////////////////////////////////////////////////////////




class my_driver3 extends uvm_driver #(my_transaction3) ;

`uvm_component_utils (my_driver3);


virtual bfm_if_nop  dut_vif;
virtual internal_sig_if_nop  internal_if;  
  

  function new(string name = "driver3" , uvm_component parent);
 super.new(name , parent);
endfunction   


function void build_phase(uvm_phase phase);
  super.build_phase(phase);
  if(!uvm_config_db #(virtual bfm_if_nop) :: get(this , "" , "dut_vif3" , dut_vif))
  `uvm_fatal("DRIVER3","FATAL GETTING THE CONFIG DB");
  
  if(!uvm_config_db #(virtual internal_sig_if_nop)::get(this, "" , "internal_if3" , internal_if))
   `uvm_fatal("DRIVER3" , "FATAL GETTING internal_IF");
endfunction


task run_phase(uvm_phase phase);
       forever begin
              seq_item_port.get_next_item(req);
              drive();
              seq_item_port.item_done(req); 
      end
endtask





task drive();
   
         
              if(req.operation == RF_W) begin
                `uvm_info("DRIVER_i_" , $sformatf("i = %h" , req.Data_Seed_Write_RF_NO_h[req.i]) , UVM_LOW) ;  
                  @(negedge  internal_if.rx_clk)

                 transmit(req.Data_Seed_Write_RF_NO_h[req.i]);
                 if(req.i == 9) #(RX_CLK_PERIOD);
                 if(req.i == 18) #(RX_CLK_PERIOD);
                 if(req.i == 29) begin
                    req.operation = ALU_WC;
                    #(RX_CLK_PERIOD);    
                 end            
                req.i++ ;    
           //     `uvm_info("DRIVER_i_incrementation" , $sformatf("i = %h" , req.i) , UVM_LOW) ;                
              end



              else if(req.operation == ALU_WC) begin
          //      `uvm_info("DRIVER" , "IN ALU-WC-OP" , UVM_LOW) ;       
                 // dut_vif.RX_IN = req.Data_Seed_Write_RF_h[req.i];
                 //`uvm_info("DRIVER_i_" , $sformatf("req[j] = %h" , req.j) , UVM_LOW) ; 
                 transmit(req.Data_Seed_Write_ALU_CMD_NO_h[req.j]);
                 //`uvm_info("DRIVER_j_" , $sformatf("j = %h" , req.Data_Seed_Write_ALU_CMD_NO_h[req.j]) , UVM_LOW) ; 
                 if(req.j  == 9)  #(RX_CLK_PERIOD);
                 if(req.j  == 18)  #(RX_CLK_PERIOD);
                 if(req.j  == 29)  #(RX_CLK_PERIOD);
                 if(req.j  == 39)  #(RX_CLK_PERIOD)
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
             
                   @(negedge  internal_if.rx_clk)
                 transmit(req.Data_Seed_Read_RF_NO_h[req.k]);
                // `uvm_info("DRIVER_k_" , $sformatf("j = %h" , req.Data_Seed_Read_RF_NO_h[req.k]) , UVM_LOW) ; 
                 if(req.k == 9) #(RX_CLK_PERIOD);
                 if(req.k == 18)
                   begin
                    req.operation = ALU_WNC;
                    #(RX_CLK_PERIOD);    
                 end            
                req.k++ ; 
               // `uvm_info("DRIVER_k_incrementation" , $sformatf("k = %h" , req.k) , UVM_LOW) ;
              end


        else if(req.operation == ALU_WNC && req.n < 20) begin
             //   `uvm_info("DRIVER" , "IN ALU-WNC-OP" , UVM_LOW) ;
                 // dut_vif.RX_IN = req.Data_Seed_Write_RF_h[req.i];
            
                 transmit(req.Data_Seed_Write_ALU_No_CMD_NO_h[req.n]);
                 // `uvm_info("DRIVER_k_" , $sformatf("j = %h" , req.Data_Seed_Write_ALU_No_CMD_NO_h[req.n]) , UVM_LOW) ; 
                 if(req.n == 9) #(RX_CLK_PERIOD);
                 if(req.n == 18) begin
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

endtask





task transmit(input Data_in);
 begin

       @(negedge internal_if.rx_clk);
       dut_vif.RX_IN = Data_in           ;
  // `uvm_info("DRIVER" , $sformatf("rx_clk = %h" , internal_if.rx_clk) , UVM_LOW) ;  
 repeat(internal_if.PRESCALE) @(negedge internal_if.rx_clk);
  // `uvm_info("DRIVER_transmit","_sent_to_rx" , UVM_LOW) ;
 end
endtask





endclass