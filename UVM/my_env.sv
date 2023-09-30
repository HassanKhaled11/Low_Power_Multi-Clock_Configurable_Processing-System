import uvm_pkg ::*;

`include "uvm_macros.svh"
`include "my_agent.sv"
`include "my_scoreboard.sv"
`include "my_coverage.sv"


/////////////////////////////////////////////////////////////////////
//////////////////////////// ENV TEST_1 /////////////////////////////
/////////////////////////////////////////////////////////////////////


class my_env extends uvm_env;
`uvm_component_utils (my_env);

my_agent        agent     ;
my_scoreboard  scoreboard;
my_coverage    coverage   ;  


function new(string name , uvm_component parent);
 super.new(name , parent);
endfunction	


function void build_phase(uvm_phase phase);
   super.build_phase(phase);
  agent      = my_agent :: type_id :: create("agent"  ,this);
  scoreboard = my_scoreboard :: type_id :: create("scoreboard",this);
  coverage   = my_coverage   :: type_id :: create("coverage",this)  ;
endfunction
  
  
function void connect_phase(uvm_phase phase);
  agent.monitor.item_collected_port.connect(scoreboard.item_collected_export);
  agent.monitor.item_collected_port.connect(coverage.analysis_export); 

endfunction

endclass


/////////////////////////////////////////////////////////////////////
//////////////////////////// ENV TEST_2 /////////////////////////////
/////////////////////////////////////////////////////////////////////


class my_env2 extends uvm_env;
`uvm_component_utils (my_env2);

my_agent2        agent2     ;
my_scoreboard2  scoreboard2;
my_coverage2    coverage2   ;  


function new(string name , uvm_component parent);
 super.new(name , parent);
endfunction 


function void build_phase(uvm_phase phase);
   super.build_phase(phase);
  agent2      = my_agent2 :: type_id :: create("agent"  ,this);
  scoreboard2 = my_scoreboard2 :: type_id :: create("scoreboard",this);
  coverage2   = my_coverage2   :: type_id :: create("coverage",this)  ;
endfunction
  
  
function void connect_phase(uvm_phase phase);
  agent2.monitor.item_collected_port.connect(scoreboard2.item_collected_export);
  agent2.monitor.item_collected_port.connect(coverage2.analysis_export); 
endfunction

endclass


/////////////////////////////////////////////////////////////////////
//////////////////////////// ENV TEST_3 /////////////////////////////
/////////////////////////////////////////////////////////////////////


class my_env3 extends uvm_env;
`uvm_component_utils (my_env3);

my_agent3        agent3     ;
my_scoreboard3  scoreboard3;
my_coverage3    coverage3   ;  



function new(string name , uvm_component parent);
 super.new(name , parent);
endfunction 


function void build_phase(uvm_phase phase);
   super.build_phase(phase);
  agent3      = my_agent3 :: type_id :: create("agent"  ,this);
  scoreboard3 = my_scoreboard3 :: type_id :: create("scoreboard",this);
  coverage3   = my_coverage3   :: type_id :: create("coverage",this)  ;
endfunction
  
  
function void connect_phase(uvm_phase phase);
  agent3.monitor.item_collected_port.connect(scoreboard3.item_collected_export);
  agent3.monitor.item_collected_port.connect(coverage3.analysis_export); 
endfunction

endclass