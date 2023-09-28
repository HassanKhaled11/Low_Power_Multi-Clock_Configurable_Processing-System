import uvm_pkg ::*;

`include "uvm_macros.svh"
`include "my_agent.sv"
`include "my_scoreboard.sv"
`include "my_coverage.sv"
`include "my_assertion.sv"

class my_env extends uvm_env;
`uvm_component_utils (my_env);

my_agent       agent     ;
my_scoreboard  scoreboard;
my_coverage    coverage  ;  
my_assertion   assertion ;  

function new(string name , uvm_component parent);
 super.new(name , parent);
endfunction	


function void build_phase(uvm_phase phase);
   super.build_phase(phase);
  agent      = my_agent :: type_id :: create("agent" ,this);
  scoreboard = my_scoreboard :: type_id :: create("scoreboard",this);
  coverage   = my_coverage   :: type_id :: create("coverage",this)  ;
endfunction
  
  
function void connect_phase(uvm_phase phase);
  agent.monitor.item_collected_port.connect(scoreboard.item_collected_export);
  agent.monitor.item_collected_port.connect(coverage.analysis_export);
  agent.monitor.item_collected_port.connect(assertion.analysis_export);
 endfunction

endclass



