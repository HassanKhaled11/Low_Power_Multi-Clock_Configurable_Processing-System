module UART_RX #(parameter PRESCALE = 'd16) (

input CLK                ,
input RST_n              ,
input PAR_TYP            ,
input PAR_EN             ,
input [5:0] Prescale     ,
input RX_IN              ,


output reg [7:0] P_DATA      ,
output reg       DATA_Valid      

);


reg [2:0]   current_state   ;
reg [2:0]   next_state      ;


//////////////////////////////////////////////////////
////////////// INTERNAL CONNECTIONS //////////////////
//////////////////////////////////////////////////////

reg data_samp_en ;
reg enable       ;
reg par_chk_en   ;
reg strt_chk_en  ;
reg stp_chk_en   ;
reg deser_en     ;

wire sampled_bit  ;
wire [$clog2(PRESCALE) - 1 : 0] edge_cnt     ;
wire [3 : 0] bit_cnt                         ;  
wire par_err      ;
wire strt_glitch  ;
wire stp_err      ;
wire [7:0] p_data ;
wire [$clog2(PRESCALE) - 1 : 0] middle_sample_point;

localparam IDLE      = 3'b000;
localparam START     = 3'b001;
localparam DESERI    = 3'b010;
localparam PARITY    = 3'b011;
localparam STOP      = 3'b100;
localparam CHECKING  = 3'b101;


//////////////////////////////////////////////////////
/////////////// INSTANTIATIONS ///////////////////////
//////////////////////////////////////////////////////



data_sampling  dut_sample(

.RX_IN        (RX_IN)        ,
.Prescale     (Prescale)     ,
.data_samp_en (data_samp_en) ,
.edge_cnt     (edge_cnt)     ,
.sampled_bit  (sampled_bit)

);



edge_bit_counter #(.PRESCALE(PRESCALE)) edge_bit_dut(

.CLK       (CLK)      ,
.RST_n     (RST_n)    ,
.parity_en (PAR_EN)   ,
.enable    (enable)   , 
.bit_cnt   (bit_cnt)  ,
.edge_cnt  (edge_cnt)

);




Parity_Check parity_dut(

.par_typ     (PAR_TYP)     ,
.par_chk_en  (par_chk_en)  ,
.sampled_bit (sampled_bit) ,
.p_data      (p_data)      ,
.par_err     (par_err)

);



Start_Check srt_dut(

.CLK          (CLK)         ,
.RST_n        (RST_n)       ,
.strt_chk_en  (strt_chk_en) ,
.sampled_bit  (sampled_bit) ,
.strt_glitch  (strt_glitch) 

);




Stop_Check stp_dut(

.CLK         (CLK)           ,
.RST_n       (RST_n)         ,
.stp_chk_en  (stp_chk_en)    ,
.sampled_bit (sampled_bit)   ,
.stp_err     (stp_err)

);



deserializer deser_dut(

.CLK         (CLK)         ,
.RST_n       (RST_n)       ,
.deser_en    (deser_en)    ,
.sampled_bit (sampled_bit) ,
.bit_cnt     (bit_cnt)     ,
.P_DATA      (p_data)

);


//////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////

assign  middle_sample_point = (Prescale >> 1) - 1 ;
assign  Prescale = PRESCALE;
assign  flag_out = (current_state == CHECKING && !par_err && !stp_err && !strt_glitch) ? 1'b1 : 1'b0;

always @(posedge CLK or negedge RST_n) begin
	
	if (!RST_n) begin
		current_state <= IDLE;
	end

	else begin
		current_state <= next_state;
	end
end



///////////////////////////////////////////////////////
///////////////////////////////////////////////////////
///////////////////////////////////////////////////////


always @(*) begin
	
 case(current_state)
 	

IDLE : begin
           if (!RX_IN ) begin
  	       next_state = START;
           end

           else next_state = IDLE;
         end  
 

 START : begin
           if(edge_cnt == middle_sample_point + 'd3 && bit_cnt == 0) 
           begin
             if(strt_glitch == 1'b1) next_state = IDLE ;
             else next_state = DESERI ;
           end

           else  next_state = START;
         end



DESERI : begin
           if(bit_cnt == 'd8 && edge_cnt == middle_sample_point + 'd3) begin
             if(PAR_EN) next_state = PARITY;
             else next_state = STOP;
           end 

           else next_state = DESERI;
         end


PARITY : begin
           if(edge_cnt != middle_sample_point + 'd3 || bit_cnt != 9) next_state = PARITY ;
           else         next_state = STOP   ;
          end


STOP  : begin
          if(!PAR_EN && bit_cnt == 9 && edge_cnt == middle_sample_point + 'd3) next_state = CHECKING ;
          else if(PAR_EN && bit_cnt == 10 && edge_cnt == middle_sample_point + 'd3) next_state = CHECKING ;
          else next_state = STOP ;
        end          



CHECKING : begin
           if(edge_cnt == Prescale - 1) next_state = IDLE;
           else next_state = CHECKING;
           end        


endcase
end




always @(*) begin
	
 case(current_state)
 	

  IDLE  : begin
            DATA_Valid = 1'b0;
            if (!RX_IN ) begin
            P_DATA = 0;
            DATA_Valid = 1'b0;
  	        data_samp_en = 1'b1  ;
  	        enable       = 1'b1  ;
            end
          end  



  START :  begin
           
            if(edge_cnt == middle_sample_point + 'd3 && bit_cnt == 0)
            strt_chk_en = 1'b1 ;
           
           end
 


 DESERI: begin
           strt_chk_en = 1'b0 ;
           if(bit_cnt == 1) deser_en = 1'b1 ;
         end



 PARITY : begin
           deser_en = 1'b0 ;
           if(edge_cnt == middle_sample_point + 'd3 && bit_cnt == 'd9)
           begin
              par_chk_en = 1'b1   ;
            end
          end  


 STOP  : begin
          deser_en = 1'b0;
          par_chk_en = 1'b0;
          if(!PAR_EN && bit_cnt == 9 && edge_cnt == middle_sample_point + 'd3)     stp_chk_en = 1'b1;
          else if(PAR_EN && bit_cnt == 10 && edge_cnt == middle_sample_point + 'd3) stp_chk_en = 1'b1 ;
        end  


CHECKING: begin
           stp_chk_en = 0;
           
           if(edge_cnt == Prescale - 1) begin

            data_samp_en = 0;
            enable = 0;

             if(PAR_EN && !strt_glitch && !par_err && !stp_err) begin            // IN CASE PARITY ENABLE IS HIGH
               DATA_Valid = 1'b1;
               P_DATA = p_data;
             end

             else if(!PAR_EN && !strt_glitch  && !stp_err) begin                 // IN CASE PARITY DISABLED NO PARITY
                 DATA_Valid = 1'b1; 
                 P_DATA = p_data;
             end

             else begin
   
             DATA_Valid = 1'b0;
             P_DATA = 1'b0;
             
             end

         end 
        
        end
endcase

end



endmodule








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
