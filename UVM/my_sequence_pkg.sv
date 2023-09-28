
package my_sequence_pkg ;


import uvm_pkg::*;
`include "uvm_macros.svh"

typedef enum {RF_W , RF_R , ALU_WC , ALU_WNC} operation_e ;


class my_transaction extends uvm_sequence_item;
  `uvm_object_utils(my_transaction);

int i ;
int j ;
int k ;
int n ;

logic TX_OUT ;

operation_e operation;

logic Data_Seed_Write_RF_h              [32:0];
logic Data_Seed_Write_ALU_CMD_h         [43:0];
logic Data_Seed_Read_RF_h               [21:0];
logic Data_Seed_Write_ALU_No_CMD_h      [21:0];
reg   [10:0] Data_Expected_h            [8 :0];

logic Data_Seed_Write_RF_h_in         ;           
logic Data_Seed_Write_ALU_CMD_h_in    ;
logic Data_Seed_Read_RF_h_in          ;
logic Data_Seed_Write_ALU_No_CMD_h_in ;


function new (string name = "");
	super.new(name);

operation = RF_W;

i = 0;
j = 0;
k = 0;
n = 0;

$readmemh ("Data_Seed_Write_RF_h.txt" , Data_Seed_Write_RF_h )            ;
$readmemh("Data_Seed_Write_ALU_CMD_h.txt",Data_Seed_Write_ALU_CMD_h)      ;
$readmemh("Data_Seed_Read_RF_h.txt", Data_Seed_Read_RF_h)                 ;
$readmemh("Data_Seed_Write_ALU_No_CMD_h.txt",Data_Seed_Write_ALU_No_CMD_h);
$readmemh("Data_Expected_h.txt", Data_Expected_h);


endfunction


// constraint Data_Seed_Write_RF_h_c {
// 	 Data_Seed_Write_RF_h_in = Data_Seed_Write_RF_h[i]; 
// }


// constraint Data_Seed_Write_ALU_CMD_h_c {
// 	Data_Seed_Write_ALU_CMD_h_in = Data_Seed_Write_ALU_CMD_h[i];
// }


// constraint Data_Seed_Read_RF_h_c {
// 	Data_Seed_Read_RF_h_in = Data_Seed_Read_RF_h[i];
// }



// constraint Data_Seed_Write_ALU_No_CMD_h_c {
// 	Data_Seed_Write_ALU_No_CMD_h_in = Data_Seed_Write_ALU_No_CMD_h[i];
// }


endclass



class my_sequence extends uvm_sequence #(my_transaction);
`uvm_object_utils(my_sequence);


function new(string name);
  super.new(name);
endfunction


task body();

	forever begin

	 req = my_transaction::type_id::create("req");
 	

    `uvm_info("SEQUENCE" , "Before waiting for grant" , UVM_LOW) ;
     wait_for_grant();

    `uvm_info("SEQUENCE", "After waiting for grant" , UVM_LOW) ;


    	start_item(req);

     //req.i = i ;
     // if (! req.randomize());
     //  `uvm_error(get_item_type(),"ERROR RANDOMIZATION") ;

     wait_for_item_done();
     `uvm_info("SEQUENCE" , "After waiting for item done" , UVM_LOW) ;

     get_response(req);           // get response.
     `uvm_info("SEQUENCE" , $sformatf("I IN REQ = %d",req.i), UVM_MEDIUM) ;
   

end

endtask	



endclass

endpackage