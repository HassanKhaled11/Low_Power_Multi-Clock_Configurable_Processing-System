package my_transaction_pkg;

import uvm_pkg ::*;
`include "uvm_macros.svh"
import parameters_pkg::*;


class my_transaction extends uvm_sequence_item;
  `uvm_object_utils(my_transaction);

  
  
  
int i ;
int j ;
int k ;
int n ;

logic RX_IN  ;
logic TX_OUT ;

operation_e operation;

// string test_mode ;

logic Data_Seed_Write_RF_h              [32:0];
logic Data_Seed_Write_ALU_CMD_h         [43:0];
logic Data_Seed_Read_RF_h               [21:0];
logic Data_Seed_Write_ALU_No_CMD_h      [21:0];
reg   [10:0] Data_Expected_h            [8 :0];




  function new (string name= "my_trans");
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




endclass






class my_transaction2 extends uvm_sequence_item;
  `uvm_object_utils(my_transaction2);

  
int i ;
int j ;
int k ;
int n ;

logic RX_IN  ;
logic TX_OUT ;

operation_e operation;

// string test_mode ;

logic Data_Seed_Write_RF_O_h              [32:0];
logic Data_Seed_Write_ALU_CMD_O_h         [43:0];
logic Data_Seed_Read_RF_O_h               [21:0];
logic Data_Seed_Write_ALU_No_CMD_O_h      [21:0];
reg   [10:0] Data_Expected_h              [8 :0];



  function new (string name= "my_trans");
  super.new(name);

operation = RF_W;

i = 0;
j = 0;
k = 0;
n = 0;
// test_mode = "even";

$readmemh ("Data_Seed_Write_RF_O_h.txt" , Data_Seed_Write_RF_O_h )            ;
$readmemh("Data_Seed_Write_ALU_CMD_O_h.txt",Data_Seed_Write_ALU_CMD_O_h)      ;
$readmemh("Data_Seed_Read_RF_O_h.txt", Data_Seed_Read_RF_O_h)                 ;
$readmemh("Data_Seed_Write_ALU_No_CMD_O_h.txt",Data_Seed_Write_ALU_No_CMD_O_h);
$readmemh("Data_Expected_h.txt", Data_Expected_h);


endfunction


endclass







class my_transaction3 extends uvm_sequence_item;
  `uvm_object_utils(my_transaction3);

  
  
  
int i ;
int j ;
int k ;
int n ;

logic RX_IN  ;
logic TX_OUT ;

operation_e operation;

// string test_mode ;

logic Data_Seed_Write_RF_NO_h              [29:0];
logic Data_Seed_Write_ALU_CMD_NO_h         [39:0];
logic Data_Seed_Read_RF_NO_h               [19:0];
logic Data_Seed_Write_ALU_No_CMD_NO_h      [19:0];
reg   [10:0] Data_Expected_h               [8 :0];





  function new (string name= "my_trans");
  super.new(name);

operation = RF_W;

i = 0;
j = 0;
k = 0;
n = 0;
// test_mode = "even";

$readmemh ("Data_Seed_Write_RF_NO_h.txt" , Data_Seed_Write_RF_NO_h )            ;
$readmemh("Data_Seed_Write_ALU_CMD_NO_h.txt",Data_Seed_Write_ALU_CMD_NO_h)      ;
$readmemh("Data_Seed_Read_RF_NO_h.txt", Data_Seed_Read_RF_NO_h)                 ;
$readmemh("Data_Seed_Write_ALU_No_CMD_NO_h.txt",Data_Seed_Write_ALU_No_CMD_NO_h);
$readmemh("Data_Expected_h.txt", Data_Expected_h);


endfunction


endclass



endpackage
