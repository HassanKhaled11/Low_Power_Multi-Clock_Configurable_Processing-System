import uvm_pkg ::*;
import my_transaction_pkg::*;

`include "uvm_macros.svh"


class my_coverage extends uvm_subscriber #(my_transaction);
`uvm_component_utils (my_coverage);



my_transaction data_to_cover ;

virtual bfm_if  dut_vif ;
virtual internal_sig_if internal_if ;



covergroup cg ;

type_option.merge_instances = 1;

RX_cvp: coverpoint data_to_cover.RX_IN iff(dut_vif.RST) 
{
 bins zero_rx            = {0}     ;
 bins one_rx             = {1}     ;
 bins zero_one_trans_rx  = (0 => 1); 
 bins one_zero_trans_rx  = (1 => 0);
 bins zero_zero_trans_rx = (0 => 0);
 bins one_one_trans_rx   = (1 => 1);
}


TX_cvp: coverpoint data_to_cover.TX_OUT iff(dut_vif.RST) 
{
 bins zero_tx           = {0}     ;
 bins one_tx            = {1}     ;
 bins zero_one_trans_tx = (0 => 1); 
 bins one_zero_trans_tx = (1 => 0);
 bins zer_zero_trans_tx = (0 => 0);
 bins one_one_trans_tx  = (1 => 1);
}


Par_en : coverpoint internal_if.PAR_EN  iff(dut_vif.RST)
{
  bins par_enabled   = {1};
  bins par_disabled  = {0};
}



Par_typ : coverpoint internal_if.PAR_EN  iff(dut_vif.RST)
{
  bins even_parity   = {1};
  bins odd_parity    = {0};
}


endgroup  





function void build_phase(uvm_phase phase);
   super.build_phase(phase);

  if(!uvm_config_db #(virtual bfm_if)::get(this , "*" , "dut_vif" , dut_vif))
    `uvm_fatal("coveragre" , "FATAL GETTING DUT_IF");

  if(!uvm_config_db #(virtual internal_sig_if)::get(this , "*" , "internal_if" , internal_if))
    `uvm_fatal("coverage" , "FATAL GETTING DUT_IF");


 data_to_cover = my_transaction :: type_id :: create("data_to_cover", this);


endfunction
  



  
function new(string name = "my_coverage" , uvm_component parent);
 super.new(name , parent);
 cg = new;
endfunction 




function void write(my_transaction t);


$cast(data_to_cover , t);
cg.sample();

endfunction  


endclass





///////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////



class my_coverage2 extends uvm_subscriber #(my_transaction2);
`uvm_component_utils (my_coverage2);



my_transaction2 data_to_cover ;

virtual bfm_if_oddp  dut_vif ;
virtual internal_sig_if_oddp internal_if ;



covergroup cg_oddp ;

//type_option.merge_instances = 1;

RX_cvp: coverpoint data_to_cover.RX_IN iff(dut_vif.RST) 
{
 bins zero_rx            = {0}     ;
 bins one_rx             = {1}     ;
 bins zero_one_trans_rx  = (0 => 1); 
 bins one_zero_trans_rx  = (1 => 0);
 bins zero_zero_trans_rx = (0 => 0);
 bins one_one_trans_rx   = (1 => 1);
}


TX_cvp: coverpoint data_to_cover.TX_OUT iff(dut_vif.RST) 
{
 bins zero_tx           = {0}     ;
 bins one_tx            = {1}     ;
 bins zero_one_trans_tx = (0 => 1); 
 bins one_zero_trans_tx = (1 => 0);
 bins zer_zero_trans_tx = (0 => 0);
 bins one_one_trans_tx  = (1 => 1);
}


Par_en : coverpoint internal_if.PAR_EN  iff(dut_vif.RST)
{
  bins par_enabled   = {1};
}



Par_typ : coverpoint internal_if.PAR_EN  iff(dut_vif.RST)
{
  bins odd_parity    = {1};
}


endgroup  





function void build_phase(uvm_phase phase);
   super.build_phase(phase);

  if(!uvm_config_db #(virtual bfm_if_oddp)::get(this , "*" , "dut_vif2" , dut_vif))
    `uvm_fatal("coveragre" , "FATAL GETTING DUT_IF");

  if(!uvm_config_db #(virtual internal_sig_if_oddp)::get(this , "*" , "internal_if2" , internal_if))
    `uvm_fatal("coverage" , "FATAL GETTING INTERNAL_IF");


 data_to_cover = my_transaction2 :: type_id :: create("data_to_cover", this);


endfunction
  





  
function new(string name = "my_coverage2" , uvm_component parent);
 super.new(name , parent);
 cg_oddp = new;
endfunction 




function void write(my_transaction2 t);


$cast(data_to_cover , t);
cg_oddp.sample();

endfunction  


endclass





///////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////




class my_coverage3 extends uvm_subscriber #(my_transaction3);
`uvm_component_utils (my_coverage3);



my_transaction3 data_to_cover ;

virtual bfm_if_nop  dut_vif ;
virtual internal_sig_if_nop internal_if ;



covergroup cg_no_parity ;

//type_option.merge_instances = 1;

RX_cvp: coverpoint data_to_cover.RX_IN iff(dut_vif.RST) 
{
 bins zero_rx            = {0}     ;
 bins one_rx             = {1}     ;
 bins zero_one_trans_rx  = (0 => 1); 
 bins one_zero_trans_rx  = (1 => 0);
 bins zero_zero_trans_rx = (0 => 0);
 bins one_one_trans_rx   = (1 => 1);
}


TX_cvp: coverpoint data_to_cover.TX_OUT iff(dut_vif.RST) 
{
 bins zero_tx           = {0}     ;
 bins one_tx            = {1}     ;
 bins zero_one_trans_tx = (0 => 1); 
 bins one_zero_trans_tx = (1 => 0);
 bins zer_zero_trans_tx = (0 => 0);
 bins one_one_trans_tx  = (1 => 1);
}


Par_disable : coverpoint internal_if.PAR_EN  iff(dut_vif.RST)
{
  bins par_disabled   = {0};
}



endgroup  





function void build_phase(uvm_phase phase);
   super.build_phase(phase);

  if(!uvm_config_db #(virtual bfm_if_nop)::get(this , "*" , "dut_vif3" , dut_vif))
    `uvm_fatal("coveragre" , "FATAL GETTING DUT_IF");

  if(!uvm_config_db #(virtual internal_sig_if_nop)::get(this , "*" , "internal_if3" , internal_if))
    `uvm_fatal("coverage" , "FATAL GETTING INTERNAL_IF");


 data_to_cover = my_transaction3 :: type_id :: create("data_to_cover", this);


endfunction
  





  
function new(string name = "my_coverage3" , uvm_component parent);
 super.new(name , parent);
 cg_no_parity = new;
endfunction 




function void write(my_transaction3 t);


$cast(data_to_cover , t);
cg_no_parity.sample();

endfunction  


endclass

