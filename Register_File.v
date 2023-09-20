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







module Register_File_tb;

  parameter WIDTH = 8 ;
  parameter DEPTH = 16;

  reg CLK;
  reg RST_n;
  reg RdEn;
  reg WrEn;
  reg [$clog2(DEPTH) - 1:0] Address;
  reg [WIDTH - 1 :0] WrData;


  wire [WIDTH - 1:0] RdData      ;
  wire  RdData_Valid         ;
  wire [WIDTH - 1 :0] REG0;
  wire [WIDTH - 1 :0] REG1;
  wire [WIDTH - 1 :0] REG2;
  wire [WIDTH - 1 :0] REG3;





  Register_File #(.WIDTH(WIDTH) , .DEPTH(DEPTH)) dut (
    .CLK(CLK),
    .RST_n(RST_n),
    .RdEn(RdEn),
    .WrEn(WrEn),
    .Address(Address),
    .WrData(WrData),
    
    .RdData(RdData),
    .RdData_Valid(RdData_Valid),
    .REG0(REG0) ,
    .REG1(REG1) ,
    .REG2(REG2) ,
    .REG3(REG3)
  );

  // Clock generation
  always #5 CLK = ~CLK;

  // Testbench stimulus
  initial begin
    CLK = 0;
    // Reset the design
    RST_n = 1;
    RdEn = 0;
    WrEn = 0;
    Address = 0;
    WrData = 0;

    #10 RST_n = 0; // Deassert reset after 10 time units
    #20 RST_n = 1;

    // Scenario 1: Read from register 2
     Address = 2;
    #5 RdEn = 1;
    #5 RdEn = 0; // Deassert read enable

    // Scenario 2: Write to register 3
    #20;
    WrEn = 1;

    Address = 3;
    WrData = 50;
    
    // Scenario 3: Write to register 7
    #20;
    Address = 7;
    WrData = 70;

    #20;
    Address = 9;
    WrData  = 90;

    #20;
    Address = 1;
    WrData  = 60;

    
    #20;
    Address = 2;
    WrData  = 20;

    #10 WrEn = 0; // Deassert write enable

    // Scenario 4: Read from register 3
    #10;
    RdEn = 1;
    Address = 3;

    // Scenario 5: Read from register 7
    #10 Address = 7;
    #10 RdEn = 0; // Deassert read enable
    
    #20 $stop; // End simulation after 20 time units
  end

endmodule

