import uvm_pkg ::*;
import my_transaction_pkg ::*;
`include "uvm_macros.svh"
//`include "my_transaction.sv"

class my_scoreboard extends uvm_scoreboard;

  `uvm_component_utils(my_scoreboard);

logic [10:0] data_collected ;
logic [10:0] data_collected2 ;
logic [9:0] data_collected3 ;

int j, jj ,jjj ;


virtual bfm_if dut_vif ;
virtual internal_sig_if  internal_if ;

virtual bfm_if_oddp dut_vif2 ;
virtual internal_sig_if_oddp  internal_if2 ;

virtual bfm_if_nop dut_vif3 ;
virtual internal_sig_if_nop  internal_if3 ;


my_transaction data_to_check;
my_transaction data_to_check2;
my_transaction data_to_check3;

uvm_analysis_imp#(my_transaction , my_scoreboard) item_collected_export;
uvm_analysis_imp#(my_transaction , my_scoreboard) item_collected_export2;
uvm_analysis_imp#(my_transaction , my_scoreboard) item_collected_export3;

  function  new(string name , uvm_component parent);
	super.new(name , parent);
	data_collected = 0;
	j   = 0 ;
	jj  = 3 ;
	jjj = 6 ; 
  endfunction


function void build_phase(uvm_phase phase);
   super.build_phase(phase);
  if(!uvm_config_db #(virtual bfm_if)::get(this , "*" , "dut_vif" , dut_vif))
		`uvm_fatal("scoreboard" , "FATAL GETTING DUT_IF1");

  if(!uvm_config_db #(virtual internal_sig_if)::get(this , "*" , "internal_if" , internal_if))
		`uvm_fatal("scoreboard" , "FATAL GETTING INTERNAL_IF1");



    if(!uvm_config_db #(virtual bfm_if_oddp)::get(this , "*" , "dut_vif2" , dut_vif2))
		`uvm_fatal("scoreboard" , "FATAL GETTING DUT_IF2");

    if(!uvm_config_db #(virtual internal_sig_if_oddp)::get(this , "*" , "internal_if2" , internal_if2))
		`uvm_fatal("scoreboard" , "FATAL GETTING INTERNAL_IF2");




	data_to_check = new();
	item_collected_export = new("item_collected_export",this);

	data_to_check2 = new();
	item_collected_export2 = new("item_collected_export2",this);

  
  data_to_check3 = new();
	item_collected_export3 = new("item_collected_export3",this);

endfunction


virtual function void write(my_transaction pkt);
 // `uvm_info("SCOREBOARD" , "pkt recieved from monitor to scoreboard" , UVM_MEDIUM);
	data_to_check = pkt ;
endfunction



virtual function void write_oddp(my_transaction pkt);
 // `uvm_info("SCOREBOARD" , "pkt recieved from monitor to scoreboard" , UVM_MEDIUM);
	data_to_check2 = pkt ;
endfunction




  task run_phase (uvm_phase phase);


fork


	 begin
	 	  
      forever begin
         @(negedge dut_vif.TX_OUT);

         for(int i =0 ; i < 11 ; i++) begin
         	@(posedge internal_if.tx_clk);
         	data_collected [i] = data_to_check.TX_OUT;
          end
         	`uvm_info("SCOREBOARD" , "------ TESTCASE PARITY ENABLE EVEN CONFIGURATION -------" , UVM_MEDIUM);
         
             if(data_collected == data_to_check.Data_Expected_h[j]) begin
         	`uvm_info("SCOREBOARD" ,$sformatf("----------TEST_CASE SUCCEEDED , Data_EXPECTED = %0h , Data_COLLECTED = %0h  ",data_to_check.Data_Expected_h[j], data_collected) , UVM_MEDIUM);
             end
             
             else begin
               `uvm_info("SCOREBOARD" ,$sformatf("-------------TEST_CASE FAILED , Data_EXPECTED = %0h , Data_COLLECTED = %0h  ",data_to_check.Data_Expected_h[j], data_collected) , UVM_MEDIUM);
             end
             
           j = j + 1 ;
         
         end

	  end




	 begin
      forever begin

         @(negedge dut_vif2.TX_OUT);

         for(int ii =0 ; ii < 11 ; ii++) begin
         	@(posedge internal_if2.tx_clk);
         	data_collected2 [ii] = data_to_check2.TX_OUT;
          end
         
         	`uvm_info("SCOREBOARD" , "------ TESTCASE PARITY ENABLE EVEN CONFIGURATION -------" , UVM_MEDIUM);

            if(data_collected2 == data_to_check2.Data_Expected_h[jj]) begin
         	`uvm_info("SCOREBOARD" ,$sformatf("----------TEST_CASE SUCCEEDED , Data_EXPECTED = %0h , Data_COLLECTED = %0h  ",data_to_check2.Data_Expected_h[jj], data_collected2) , UVM_MEDIUM);
             end
             
             else begin
               `uvm_info("SCOREBOARD" ,$sformatf("-------------TEST_CASE FAILED , Data_EXPECTED = %0h , Data_COLLECTED = %0h  ",data_to_check2.Data_Expected_h[jj], data_collected2) , UVM_MEDIUM);
             end
             
           jj = jj + 1 ;
         
         end

	  end


join



endtask

  
  
  
endclass