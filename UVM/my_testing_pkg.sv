import uvm_pkg::*;
import my_sequence_pkg::*;

`include "uvm_macros.svh"
`include "my_driver.sv"


package my_testing_pkg;


class my_agent extends uvm_agent ;
`uvm_component_utils (my_agent);

my_driver  driver;
uvm_sequencer #(my_transaction) sequencer;


function  new(string name , uvm_component parent);
	super.new(name , parent);
endfunction


function void build_phase(uvm_phase phase);
sequencer = uvm_sequencer #(my_transaction) :: type_id :: create("sequencer",this);
driver       = my_driver::type_id::create("driver",this);
endfunction


function void connect_phase(uvm_phase phase);
driver.seq_item_port.connect(sequencer.seq_item_export);
endfunction


endclass






class my_env extends uvm_env;
`uvm_component_utils (my_env);

my_agent agent;

function new(string name , uvm_component parent);
 super.new(name , parent);
endfunction	


function void build_phase(uvm_phase phase);
 agent = my_agent :: type_id :: creat("agent" ,this);
endfunction

endclass





class my_test extends uvm_test;

`uvm_component_utils (my_env);

my_env env;
my_sequence sequence;

function new(string name , uvm_component parent);
 super.new(name , parent);
endfunction	


function void build_phase(uvm_phase phase);
 env = my_env :: type_id :: creat("env" ,this);
 sequence = my_sequence::type_id::create("sequence",this);
endfunction


task run_phase(uvm_phase phase);
	phase.raise_objection(this);
    
    fork
    	begin
    		sequence.start(env.agent.sequencer);
    	end

    	begin
    		`uvm_warning("" , "Starting TEST_1");
    	end
    join

	phase.drop_objection(this);
endtask


endclass



endpackage
