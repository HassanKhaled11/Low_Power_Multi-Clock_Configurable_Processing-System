
import uvm_pkg ::*;
import my_transaction_pkg::*;
`include "uvm_macros.svh"
//`include "my_transaction.sv"

class my_sequence extends uvm_sequence #(my_transaction);
`uvm_object_utils(my_sequence);


  function new(string name = "my_seq");
  super.new(name);
endfunction


task body();
 req = my_transaction::type_id::create("req"); 
	forever begin

	
 	
     start_item(req);
     // `uvm_info("SEQUENCE" , "After start item" , UVM_LOW) ;
      

     //req.i = i ;
     // if (! req.randomize());
     //  `uvm_error(get_item_type(),"ERROR RANDOMIZATION") ;


      finish_item(req);          // get response.
       get_response(req);  

end

endtask	



endclass