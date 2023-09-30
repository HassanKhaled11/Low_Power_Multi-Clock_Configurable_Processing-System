import uvm_pkg ::*;
import my_transaction_pkg::*;
`include "uvm_macros.svh"
`include "my_transaction.sv"


/////////////////////////////////////////////////////////////////////
//////////////////////// MONITOR TEST_1 /////////////////////////////
/////////////////////////////////////////////////////////////////////


class my_monitor extends uvm_monitor;

`uvm_component_utils(my_monitor);

virtual bfm_if dut_vif ;
virtual internal_sig_if  internal_if;    
  
my_transaction data_collected;

uvm_analysis_port #(my_transaction) item_collected_port;


  function  new(string name = "monitor", uvm_component parent = null);
	super.new(name , parent);
endfunction


function void build_phase(uvm_phase phase);
  super.build_phase(phase);
  
  
  if(!uvm_config_db #(virtual bfm_if):: get(this , "*" , "dut_vif" , dut_vif))
    `uvm_fatal("MONITOR","FATAL GETTING THE CONFIG DB");

  if(!uvm_config_db #(virtual internal_sig_if)::get(this, "" , "internal_if" , internal_if))
  `uvm_fatal("MONITOR" , "FATAL GETTING internal_IF");
  
  data_collected = new();
	item_collected_port = new("item_collected_port",this);
endfunction


 task run_phase (uvm_phase phase);


forever begin

                  
      @(posedge internal_if.rx_clk);
      data_collected.RX_IN  = dut_vif.RX_IN  ;
      data_collected.TX_OUT = dut_vif.TX_OUT ;
      item_collected_port.write(data_collected); 
                 
  
end
endtask

endclass



/////////////////////////////////////////////////////////////////////
//////////////////////// MONITOR TEST_2 /////////////////////////////
/////////////////////////////////////////////////////////////////////



class my_monitor2 extends uvm_monitor;

`uvm_component_utils(my_monitor2);

virtual bfm_if_oddp dut_vif ;
virtual internal_sig_if_oddp  internal_if;    
  
my_transaction2 data_collected;

uvm_analysis_port #(my_transaction2) item_collected_port;


  function  new(string name = "monitor2", uvm_component parent = null);
  super.new(name , parent);
endfunction


function void build_phase(uvm_phase phase);
  super.build_phase(phase);
  
  
  if(!uvm_config_db #(virtual bfm_if_oddp):: get(this , "*" , "dut_vif2" , dut_vif))
    `uvm_fatal("MONITOR2","FATAL GETTING THE CONFIG DB");

  if(!uvm_config_db #(virtual internal_sig_if_oddp)::get(this, "" , "internal_if2" , internal_if))
  `uvm_fatal("MONITOR2" , "FATAL GETTING internal_IF");
  
  data_collected = new();
  item_collected_port = new("item_collected_port",this);
endfunction


 task run_phase (uvm_phase phase);


forever begin
  @(posedge internal_if.rx_clk);
  data_collected.RX_IN  = dut_vif.RX_IN  ;
  data_collected.TX_OUT = dut_vif.TX_OUT ;
  item_collected_port.write(data_collected);

end
endtask

endclass




/////////////////////////////////////////////////////////////////////
//////////////////////// MONITOR TEST_3 /////////////////////////////
/////////////////////////////////////////////////////////////////////




class my_monitor3 extends uvm_monitor;

`uvm_component_utils(my_monitor3);

virtual bfm_if_nop dut_vif ;
virtual internal_sig_if_nop  internal_if;    
  
my_transaction3 data_collected;

uvm_analysis_port #(my_transaction3) item_collected_port;


  function  new(string name = "monitor3", uvm_component parent = null);
  super.new(name , parent);
endfunction


function void build_phase(uvm_phase phase);
  super.build_phase(phase);
  
  
  if(!uvm_config_db #(virtual bfm_if_nop):: get(this , "*" , "dut_vif3" , dut_vif))
    `uvm_fatal("MONITOR3","FATAL GETTING THE CONFIG DB");

  if(!uvm_config_db #(virtual internal_sig_if_nop)::get(this, "" , "internal_if3" , internal_if))
  `uvm_fatal("MONITOR3" , "FATAL GETTING internal_IF");
  
  data_collected = new();
  item_collected_port = new("item_collected_port",this);
endfunction


 task run_phase (uvm_phase phase);


forever begin
  @(posedge internal_if.rx_clk);
  data_collected.RX_IN  = dut_vif.RX_IN  ;
  data_collected.TX_OUT = dut_vif.TX_OUT ;
  item_collected_port.write(data_collected);

end
endtask

endclass