import uvm_pkg ::*;

`include "uvm_macros.svh"
`include "my_agent.sv"
`include "my_scoreboard.sv"
`include "my_coverage.sv"

class my_env extends uvm_env;
`uvm_component_utils (my_env);

my_agent       agent     ;
my_agent2      agent2    ;

my_scoreboard  scoreboard;

my_coverage    coverage   ;  
my_coverage    coverage2  ;  


function new(string name , uvm_component parent);
 super.new(name , parent);
endfunction	


function void build_phase(uvm_phase phase);
   super.build_phase(phase);
  agent      = my_agent :: type_id :: create("agent"  ,this);
  agent2     = my_agent2:: type_id :: create("agent2" ,this);
  scoreboard = my_scoreboard :: type_id :: create("scoreboard",this);
  coverage   = my_coverage   :: type_id :: create("coverage",this)  ;
endfunction
  
  
function void connect_phase(uvm_phase phase);
  agent.monitor.item_collected_port.connect(scoreboard.item_collected_export);
  agent.monitor.item_collected_port.connect(coverage.analysis_export); 

  agent2.monitor2.item_collected_port2.connect(scoreboard.item_collected_export2);
  agent2.monitor2.item_collected_port2.connect(coverage2.analysis_export); 
endfunction

endclass



