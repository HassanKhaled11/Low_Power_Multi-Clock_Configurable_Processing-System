
module my_assertions 
(
input logic  REF_CLK               ,
input logic  UART_CLK              ,
input logic  RST                   ,
input logic enable_pulse_sync      ,
input logic data_valid_rx          ,
input logic [7:0] p_data_rx        ,
input logic gate_en_alu            ,
input logic en_alu                 ,
input logic rst_sync1              ,
input logic rst_sync2              ,
input logic busy_fifo              ,
input logic rd_inc_fifo            ,
input logic rd_en_reg_file         ,             
input logic [7:0] rd_data_reg_file ,
input logic [7:0] sync_bus_ctrl   


);




property enable_pulse_prop;
@(posedge REF_CLK) disable iff(!RST)  data_valid_rx |=> ##1 enable_pulse_sync ;
endproperty 

assert property (enable_pulse_prop);
cover property  (enable_pulse_prop);



property sync_bus_prop;
@(posedge REF_CLK) disable iff(!RST)  enable_pulse_sync |-> sync_bus_ctrl == p_data_rx;
endproperty 

assert property (sync_bus_prop);
cover property  (sync_bus_prop);




property alu_en_prop;
@(posedge REF_CLK) disable iff(!RST)  gate_en_alu |=> ##3 en_alu;
endproperty 

assert property (alu_en_prop);
cover property  (alu_en_prop);





property rst_sync1_assertion_prop;
@(posedge REF_CLK)  $fell(data_valid_rx) |-> $fell(rst_sync1);
endproperty 

assert property (rst_sync1_assertion_prop);
cover property  (rst_sync1_assertion_prop);





property rst_sync1_deassertion_prop;
@(posedge REF_CLK)  $rise(data_valid_rx) |-> ##2 $fell(rst_sync1);
endproperty 

assert property (rst_sync1_deassertion_prop);
cover property  (rst_sync1_deassertion_prop);








endmodule