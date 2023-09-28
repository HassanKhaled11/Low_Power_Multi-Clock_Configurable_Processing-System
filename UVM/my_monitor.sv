import uvm_pkg ::*;
import my_transaction_pkg::*;
`include "uvm_macros.svh"
`include "my_transaction.sv"

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
    `uvm_fatal("DRIVER","FATAL GETTING THE CONFIG DB");

  if(!uvm_config_db #(virtual internal_sig_if)::get(this, "" , "internal_if" , internal_if))
  `uvm_fatal("DRIVER" , "FATAL GETTING internal_IF");
  
    data_collected = new();
	item_collected_port = new("item_collected_port",this);
endfunction


 task run_phase (uvm_phase phase);
forever begin
  @(posedge internal_if.tx_clk);
	data_collected.TX_OUT = dut_vif.TX_OUT ;
	item_collected_port.write(data_collected);

end
endtask

endclass