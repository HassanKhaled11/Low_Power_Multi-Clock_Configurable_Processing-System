import uvm_pkg ::*;
import parameters_pkg::*;
import my_transaction_pkg::*;

`include "uvm_macros.svh"
`include "my_driver.sv"
`include "my_monitor.sv"




/////////////////////////////////////////////////////////////////////
//////////////////////////// AGENT TEST_1 ///////////////////////////
/////////////////////////////////////////////////////////////////////



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




/////////////////////////////////////////////////////////////////////
//////////////////////////// AGENT TEST_2 ///////////////////////////
/////////////////////////////////////////////////////////////////////



class my_agent2 extends uvm_agent ;
`uvm_component_utils (my_agent2);

my_driver2  driver;
uvm_sequencer #(my_transaction2) seq2;
my_monitor2  monitor;

function  new(string name , uvm_component parent);
  super.new(name , parent);
endfunction


function void build_phase(uvm_phase phase);
   super.build_phase(phase);
seq2       = uvm_sequencer #(my_transaction2) :: type_id :: create("seq2",this);
driver    = my_driver2::type_id::create("driver",this);
monitor   = my_monitor2::type_id::create("monitor",this);
endfunction


function void connect_phase(uvm_phase phase);
  driver.seq_item_port.connect(seq2.seq_item_export);
endfunction


endclass




/////////////////////////////////////////////////////////////////////
//////////////////////////// AGENT TEST_3 ///////////////////////////
/////////////////////////////////////////////////////////////////////



class my_agent3 extends uvm_agent ;
`uvm_component_utils (my_agent3);

my_driver3  driver;
uvm_sequencer #(my_transaction3) seq3;
my_monitor3  monitor;

function  new(string name , uvm_component parent);
  super.new(name , parent);
endfunction


function void build_phase(uvm_phase phase);
   super.build_phase(phase);
seq3       = uvm_sequencer #(my_transaction3) :: type_id :: create("seq3",this);
driver    = my_driver3::type_id::create("driver",this);
monitor   = my_monitor3::type_id::create("monitor",this);
endfunction


function void connect_phase(uvm_phase phase);
  driver.seq_item_port.connect(seq3.seq_item_export);
endfunction


endclass