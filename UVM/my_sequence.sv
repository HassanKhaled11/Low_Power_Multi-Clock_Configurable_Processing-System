
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


      finish_item(req);          // get response.
      get_response(req);  

end

endtask	



endclass





class my_sequence2 extends uvm_sequence #(my_transaction2);
`uvm_object_utils(my_sequence2);


  function new(string name = "my_seq2");
  super.new(name);
endfunction


task body();
 req = my_transaction2::type_id::create("req"); 
  forever begin

  
  
     start_item(req);

      finish_item(req);          // get response.
      get_response(req);  

end

endtask 



endclass







class my_sequence3 extends uvm_sequence #(my_transaction3);
`uvm_object_utils(my_sequence3);


  function new(string name = "my_seq3");
  super.new(name);
endfunction


task body();
 req = my_transaction3::type_id::create("req"); 
  forever begin

  
  
     start_item(req);


      finish_item(req);          // get response.
      get_response(req);  

end

endtask 



endclass