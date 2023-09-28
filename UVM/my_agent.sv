import uvm_pkg ::*;
import parameters_pkg::*;
import my_transaction_pkg::*;
//`include "my_transaction.sv"
`include "uvm_macros.svh"
`include "my_driver.sv"
`include "my_monitor.sv"


class my_agent extends uvm_agent ;
`uvm_component_utils (my_agent);

my_driver  driver;
uvm_sequencer #(my_transaction) seq;
my_monitor  monitor;

function  new(string name , uvm_component parent);
	super.new(name , parent);
endfunction


function void build_phase(uvm_phase phase);
   super.build_phase(phase);
seq = uvm_sequencer #(my_transaction) :: type_id :: create("seq",this);
driver    = my_driver::type_id::create("driver",this);
monitor   = my_monitor::type_id::create("monitor",this);
endfunction


function void connect_phase(uvm_phase phase);
  driver.seq_item_port.connect(seq.seq_item_export);
endfunction


endclass
