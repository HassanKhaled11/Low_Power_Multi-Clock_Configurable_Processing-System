module UART_RX_tb;

parameter PERIOD_CLOCK    = 5    ;
parameter TX_PERIOD_CLOCK = 80   ; 
parameter PRESCALE        ='d16  ;

reg CLK                ;
reg RST_n              ;
reg PAR_TYP            ;
reg PAR_EN             ;
reg [5:0] Prescale     ;
reg RX_IN              ;


wire [7:0] P_DATA      ;
wire       DATA_Valid  ; 


reg HEEERE;

reg   Data_seed_odd_parity    [10 : 0];
reg   Data_seeds_even_parity  [10 : 0];
reg   Data_seeds_no_parity    [9  : 0];
reg [7:0]  Data_expected  [2:0]  ;


integer i;
integer j;
integer k;



UART_RX #(.PRESCALE(PRESCALE)) DUT(.CLK(CLK) , .RST_n(RST_n) , .PAR_TYP(PAR_TYP) , .PAR_EN(PAR_EN) , .Prescale(Prescale) , .RX_IN(RX_IN), .P_DATA(P_DATA) ,.DATA_Valid(DATA_Valid));


/////////////////////////////////////////////////////////////////////////////////
////////////////////////// CLOCK GENERATION /////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////

initial begin
CLK = 0;
forever #(PERIOD_CLOCK / 2) CLK = ~CLK ; 	
end

/////////////////////////////////////////////////////////////////////////////////
////////////////////////// READING DATA AND TESTING /////////////////////////////
/////////////////////////////////////////////////////////////////////////////////

initial begin
	

$readmemh("Data_seed_odd_h.txt",Data_seed_odd_parity);
$readmemh("Data_seeds_even_h.txt" ,Data_seeds_even_parity);
$readmemh("Data_seeds_no_h.txt",Data_seeds_no_parity);
$readmemh("Data_expected_h.txt",Data_expected);


initialize();
reset();

PAR_EN  = 1'b1;
PAR_TYP = 1'b1;
@(negedge CLK);

for (i = 0; i < 11; i = i + 1) begin
	@(negedge CLK);
	transmit(Data_seed_odd_parity[i]);
end
check_out(Data_expected[0]);

#PERIOD_CLOCK;

$display("------------------------------------------------");
 
 PAR_EN  = 1'b1;
 PAR_TYP = 1'b0; 
 @(negedge CLK);


for (j = 0; j < 11; j = j + 1) begin
	@(negedge CLK);
	transmit(Data_seeds_even_parity[j]);
end

#(TX_PERIOD_CLOCK);
check_out(Data_expected[1]);

#PERIOD_CLOCK;

$display("------------------------------------------------");

PAR_EN  = 1'b0; 
@(negedge CLK);

for (k = 0; k < 10; k = k + 1) begin
    @(negedge CLK);
	transmit(Data_seeds_no_parity[k]);
end
check_out(Data_expected[2]);

#PERIOD_CLOCK;

$display("------------------------------------------------");

#(5 * TX_PERIOD_CLOCK);

$stop;

end



/////////////////////////////////////////////////////////////////////////////////
/////////////////////////////// RESET ///////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////

task reset;
begin
RST_n = 1'b0;
repeat(2) @(negedge CLK);
RST_n = 1'b1;
end
endtask	

/////////////////////////////////////////////////////////////////////////////////
/////////////////////////////// INITIALIZING ////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////


task initialize;
begin
PAR_TYP            = 1'b1;
PAR_EN             = 1'b1;
Prescale           = PRESCALE;
RX_IN              = 1'b1; 
HEEERE             = 0;
end
endtask



/////////////////////////////////////////////////////////////////////////////////
////////////////////////// TRANSMIT STIMULUS ////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////


task transmit(input P_DATA_in);

begin
RX_IN = P_DATA_in ;
repeat(PRESCALE) @(negedge CLK);
end

endtask


/////////////////////////////////////////////////////////////////////////////////
////////////////////////// CHECKOUT RESULT //////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////


task check_out(input [7:0] data_expected );

begin
HEEERE = 1;
if(data_expected == P_DATA && DATA_Valid) $display("TEST SUCCEEDED");
else                                      $display("TEST FAILED");
end

endtask


endmodule