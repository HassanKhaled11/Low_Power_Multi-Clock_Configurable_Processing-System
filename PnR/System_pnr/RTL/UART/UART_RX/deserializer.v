module deserializer(
input CLK   ,
input RST_n ,
input deser_en ,
input [3:0] bit_cnt ,
input sampled_bit,

output reg [7:0] P_DATA

);


reg [7:0] Data_Collect ;

wire [3:0] index ;

assign index = 8 - bit_cnt;          // TO STORE BITS FROM LEFT HAND SIDE

always @(posedge CLK , negedge RST_n) 
begin

if(!RST_n) begin
  P_DATA <= 0;
end


else if(deser_en)begin
  P_DATA[index] <= sampled_bit ;
end


end


endmodule





///////////////////////////////////////////////////////////////////////////
///////////////////////////// TESTBENCH ///////////////////////////////////
///////////////////////////////////////////////////////////////////////////


// module deserializer_tb();


// parameter PRESCALE = 'd16;
// parameter PERIOD_CLK = 5;


// reg CLK               ;
// reg RST_n             ;
// reg deser_en          ;
// reg [3:0] bit_cnt     ;
// reg sampled_bit       ;

// wire [7:0] P_DATA     ;


// integer i ;

// deserializer dut (.CLK(CLK) ,.RST_n(RST_n) ,.deser_en(deser_en) , .bit_cnt(bit_cnt) ,.sampled_bit(sampled_bit) ,.P_DATA(P_DATA) );


// always #(PERIOD_CLK / 2) CLK = ~ CLK ;


// initial begin

// CLK         = 0;
// deser_en    = 0;
// bit_cnt     = 0;
// sampled_bit = 0;


// RST_n = 0;
// #(2 * PERIOD_CLK);
// RST_n = 1;


// deser_en = 1'b1;

// for(i = 1 ; i < 10 ; i = i + 1)
// begin
// sampled_bit = ~ sampled_bit;
// bit_cnt = i;
// #(4 * PERIOD_CLK);
// end

// #(200 * PERIOD_CLK);

// $stop;
// end


// endmodule
