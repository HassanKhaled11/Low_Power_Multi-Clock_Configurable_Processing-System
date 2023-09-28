import uvm_pkg ::*;

`include "uvm_macros.svh"
`include "my_agent.sv"
`include "my_scoreboard.sv"

class my_env extends uvm_env;
`uvm_component_utils (my_env);

my_agent agent;
my_scoreboard  scoreboard;
  
  
function new(string name , uvm_component parent);
 super.new(name , parent);
endfunction	


function void build_phase(uvm_phase phase);
   super.build_phase(phase);
  agent = my_agent :: type_id :: create("agent" ,this);
  scoreboard = my_scoreboard :: type_id :: create("scoreboard",this);
endfunction
  
  
  function void connect_phase(uvm_phase phase);
    agent.monitor.item_collected_port.connect(scoreboard.item_collected_export);
   endfunction

endclass



