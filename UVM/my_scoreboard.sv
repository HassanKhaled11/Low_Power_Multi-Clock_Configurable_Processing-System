import uvm_pkg ::*;
import my_transaction_pkg ::*;
`include "uvm_macros.svh"
//`include "my_transaction.sv"

class my_scoreboard extends uvm_scoreboard;

  `uvm_component_utils(my_scoreboard);

logic [10:0] data_collected ;
int j ;

virtual bfm_if dut_vif ;
virtual internal_sig_if  internal_if ;

my_transaction data_to_check;

uvm_analysis_imp#(my_transaction , my_scoreboard) item_collected_export;


  function  new(string name , uvm_component parent);
	super.new(name , parent);
	data_collected = 0;
	j = 0;
endfunction


function void build_phase(uvm_phase phase);
   super.build_phase(phase);
  if(!uvm_config_db #(virtual bfm_if)::get(this , "*" , "dut_vif" , dut_vif))
		`uvm_fatal("scoreboard" , "FATAL GETTING DUT_IF");

  if(!uvm_config_db #(virtual internal_sig_if)::get(this , "*" , "internal_if" , internal_if))
		`uvm_fatal("scoreboard" , "FATAL GETTING DUT_IF");
	
	data_to_check = new();
	item_collected_export = new("item_collected_export",this);
endfunction


virtual function void write(my_transaction pkt);
 // `uvm_info("SCOREBOARD" , "pkt recieved from monitor to scoreboard" , UVM_MEDIUM);
	data_to_check = pkt ;
endfunction


  task run_phase (uvm_phase phase);


forever begin

@(negedge dut_vif.TX_OUT);

for(int i =0 ; i < 11 ; i++) begin
	@(posedge internal_if.tx_clk);
	data_collected [i] = data_to_check.TX_OUT;
 end


    if(data_collected == data_to_check.Data_Expected_h[j]) begin
	`uvm_info("SCOREBOARD" ,$sformatf("----------TEST_CASE SUCCEEDED , Data_EXPECTED = %0h , Data_COLLECTED = %0h  ",data_to_check.Data_Expected_h[j], data_collected) , UVM_MEDIUM);
    end
    
    else begin
      `uvm_info("SCOREBOARD" ,$sformatf("-------------TEST_CASE FAILED , Data_EXPECTED = %0h , Data_COLLECTED = %0h  ",data_to_check.Data_Expected_h[j], data_collected) , UVM_MEDIUM);
    end
    
  j = j + 1 ;

end

endtask

  
  
  
endclass