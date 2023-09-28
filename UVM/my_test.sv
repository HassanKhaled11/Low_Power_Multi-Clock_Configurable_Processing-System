import uvm_pkg ::*;
`include "uvm_macros.svh"
`include "my_env.sv"
`include "my_sequence.sv"

class my_test extends uvm_test;

  `uvm_component_utils (my_test);

my_env env;
my_sequence seq;

function new(string name , uvm_component parent);
 super.new(name , parent);
endfunction	


function void build_phase(uvm_phase phase);
   super.build_phase(phase);
 env = my_env :: type_id :: create("env" ,this);
  seq = my_sequence::type_id::create("seq",this);
endfunction


task run_phase(uvm_phase phase);
	phase.raise_objection(this);
    
    fork
    	begin
          seq.start(env.agent.seq);
    	end

    	begin
    		`uvm_warning("" , "Starting TEST_1 -- PARITY_ENABLED_EVEN_PARITY -- ");
    	end
    join

	phase.drop_objection(this);
endtask


endclass