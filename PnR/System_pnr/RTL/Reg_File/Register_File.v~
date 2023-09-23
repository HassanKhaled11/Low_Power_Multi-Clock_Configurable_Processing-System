 module Register_File #(parameter WIDTH = 'd8 , parameter DEPTH = 'd16 , parameter PRESCALE = 6'd32 , parameter PAR_TYP = 1'b0 , parameter PAR_EN = 1'b1)
(
input CLK                             ,
input RST_n                           ,
input RdEn,WrEn                       ,
input [$clog2(DEPTH) - 1:0] Address   ,
input [WIDTH - 1 :0] WrData           ,

output reg [WIDTH - 1 :0] RdData      ,
output reg RdData_Valid               ,

output [WIDTH - 1 :0] REG0            ,
output [WIDTH - 1 :0] REG1            ,
output [WIDTH - 1 :0] REG2            ,
output [WIDTH - 1 :0] REG3
);





integer i ;
reg [WIDTH - 1:0] reg_file [0:DEPTH - 1];

assign REG0 = reg_file[0] ;
assign REG1 = reg_file[1] ;
assign REG2 = reg_file[2] ;
assign REG3 = reg_file[3] ;


always @(posedge CLK, negedge RST_n) begin
  if (!RST_n) begin
      
      reg_file[4'h0] <= 0;                  // ALU OPERAND A
      reg_file[4'h1] <= 0;                  // ALU OPERAND B
      reg_file[4'h2] <= {PRESCALE,PAR_TYP,PAR_EN};  // [7:2]--> Prescale , 1 --> PARITY TYPE , 0 --> PARITY ENABLE
      reg_file[4'h3] <= 8'd32;              // DIVISION RATION OF CLK DIVIDER
     
      for(i = 4 ; i < DEPTH ; i = i + 1)
      begin
        reg_file [i] <= 0 ;
      end

      RdData         <= 0;
      RdData_Valid   <= 0;
  end
  
  else if (WrEn) begin
    RdData_Valid <= 0;
    if( Address != 'h2 && Address != 'h3 )
       reg_file[Address] <= WrData;
  end
  
  else if (RdEn) begin 
    RdData <= reg_file[Address] ;
    RdData_Valid <= 1'b1 ;
  end


  else begin
    RdData_Valid <= 1'b0;
  end

end
endmodule



