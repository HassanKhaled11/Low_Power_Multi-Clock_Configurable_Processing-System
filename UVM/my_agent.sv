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




class my_agent2 extends uvm_agent ;
`uvm_component_utils (my_agent);

my_driver2  driver2;
uvm_sequencer #(my_transaction) seq2;
my_monitor2  monitor2;

function  new(string name , uvm_component parent);
  super.new(name , parent);
endfunction


function void build_phase(uvm_phase phase);
   super.build_phase(phase);
seq2       = uvm_sequencer #(my_transaction) :: type_id :: create("seq2",this);
driver2    = my_driver2::type_id::create("driver2",this);
monitor2   = my_monitor2::type_id::create("monitor2",this);
endfunction


function void connect_phase(uvm_phase phase);
  driver2.seq_item_port.connect(seq2.seq_item_export);
endfunction


endclass




// class my_agent3 extends uvm_agent ;
// `uvm_component_utils (my_agent);

// my_driver3  driver3;
// uvm_sequencer #(my_transaction) seq3;
// my_monitor3  monitor3;

// function  new(string name , uvm_component parent);
//   super.new(name , parent);
// endfunction


// function void build_phase(uvm_phase phase);
//    super.build_phase(phase);
// seq3       = uvm_sequencer #(my_transaction) :: type_id :: create("seq3",this);
// driver3    = my_driver3::type_id::create("driver3",this);
// monitor3   = my_monitor3::type_id::create("monitor3",this);
// endfunction


// function void connect_phase(uvm_phase phase);
//   driver3.seq_item_port.connect(seq3.seq_item_export);
// endfunction


// endclass