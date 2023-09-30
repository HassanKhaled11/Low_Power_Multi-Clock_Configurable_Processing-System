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




class my_test2 extends uvm_test;

  `uvm_component_utils (my_test2);

my_env2 env2;
my_sequence2 seq2;

function new(string name , uvm_component parent);
 super.new(name , parent);
endfunction 


function void build_phase(uvm_phase phase);
   super.build_phase(phase);
  env2 = my_env2 :: type_id :: create("env2" ,this);
  seq2 = my_sequence2::type_id::create("seq2",this);
endfunction


task run_phase(uvm_phase phase);
  phase.raise_objection(this);
    
    fork
      begin
          seq2.start(env2.agent2.seq2);
      end

      begin
        `uvm_warning("" , "Starting TEST_2 -- PARITY_ENABLED_ODD_PARITY -- ");
      end
    join

  phase.drop_objection(this);
endtask


endclass






class my_test3 extends uvm_test;

  `uvm_component_utils (my_test3);

my_env3 env3;
my_sequence3 seq3;

function new(string name , uvm_component parent);
 super.new(name , parent);
endfunction 


function void build_phase(uvm_phase phase);
   super.build_phase(phase);
  env3 = my_env3 :: type_id :: create("env3" ,this);
  seq3 = my_sequence3::type_id::create("seq3",this);
endfunction


task run_phase(uvm_phase phase);
  phase.raise_objection(this);
    
    fork
      begin
          seq3.start(env3.agent3.seq3);
      end

      begin
        `uvm_warning("" , "Starting TEST_3 --- PARITY_DISABLED --- ");
      end
    join

  phase.drop_objection(this);
endtask


endclass