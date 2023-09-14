module UART_TX(

input 		   CLK			         ,
input 		   RST_n		         ,
input      [7:0]   P_DATA		     ,
input 		   PAR_EN		         ,
input 		   PAR_TYP		         ,
input 		   DATA_VALID	 	     ,

output reg         TX_OUT		     ,
output reg          Busy  
);



reg [2:0] current_state;
reg [2:0] next_state   ;
reg [3:0] Counter      ;
reg [7:0] p_data       ;


reg [7:0] shift_reg ;
reg shift_en ;


localparam IDLE     = 2'b00;
localparam START    = 2'b01;
localparam TRANSMIT = 2'b10;
localparam STOP     = 2'b11;


assign serial_data = (RST_n) ? shift_reg[0] : 1'b1 ;
//assign Busy        = (current_state != IDLE) ? 1'b1 : 1'b0;


always @(posedge CLK or negedge RST_n) begin
	if (!RST_n) begin
	current_state <= IDLE ;
	end

	else begin
    current_state <= next_state; 		
	end
end



always @(*)
begin

  case(current_state)

  IDLE : begin
               if(DATA_VALID && !Busy)
                begin
                  next_state   = START;
                end

                else next_state = IDLE;
         end


 START : next_state = TRANSMIT;


 TRANSMIT: begin
             if(PAR_EN) begin 
               if(Counter == 'd8) next_state = STOP;
               else next_state = TRANSMIT;
              end

              else begin
                 if (Counter == 'd8)
                 next_state = IDLE;
                 else next_state = TRANSMIT;
              end
           end


 STOP :    begin
               next_state = IDLE ;
           end


default : next_state = IDLE;



  endcase
end




always @(*)
begin

 Busy = 1'b1;
 TX_OUT     = 1'b1;
 shift_en = 1'b0;

  case(current_state)

  IDLE : begin
         // Counter = 1'b0 ; 
         TX_OUT  = 1'b1 ;
         Busy    = 1'b0 ;

         if(DATA_VALID && !Busy)
              begin
                  //shift_reg  = P_DATA ;
                  p_data     = P_DATA ;
              end 
         end



 START : begin
         Busy = 1'b1;
 	 TX_OUT = 1'b0;
         p_data = P_DATA;
 	 end



 TRANSMIT: begin
             p_data = P_DATA;
               if(Counter < 'd8)
                 begin
                 shift_en = 1'b1;
                 TX_OUT = p_data[Counter] ;
                 end

               else if(PAR_EN)
                 begin
                 shift_en = 1'b0;
                 TX_OUT = (PAR_TYP)? ((^p_data)? 1'b0: 1'b1) : ((^p_data)? 1'b1 : 1'b0);
                 end

               else begin
                shift_en = 1'b0;
                TX_OUT = 1'b1; 
                end
           end



   STOP : begin
           TX_OUT     = 1'b1;
           p_data = P_DATA;
          end        


   default : begin
                Busy = 1'b1;
                TX_OUT     = 1'b1;
                p_data  = 8'hFF;
                shift_en = 1'b0;
              end

  endcase


end



always @(posedge CLK or negedge RST_n) 
begin
	if (!RST_n) begin
		shift_reg <= 0;
		Counter   <= 0;
	end

	else if(current_state == IDLE && DATA_VALID && !Busy)  shift_reg  <= P_DATA ;
	
	else if(shift_en) 
	begin
	    if(Counter < 'd8) 
	    begin
        Counter   <= Counter + 1'b1;
        end

        else
        begin
         Counter <= 1'b0;
        end

	end


	else Counter <= 1'b0;
end

endmodule









`timescale 1ns/10ps

module UART_TX_tb;

////////////////////////////////////////
//////////// PARAMETERS ////////////////
////////////////////////////////////////

parameter CLOCK_PERIOD    = 5 ; 
parameter TEST_CASES      = 5 ;

// parameter Parity_En_ODD   = 00;  
// parameter Parity_En_EVEN  = 01;
// parameter Parity_Disabled = 10;

////////////////////////////////////////
////////// DATA SIGNALS ////////////////
////////////////////////////////////////

reg        CLK_tb        ;
reg        RST_n_tb          ;
reg  [7:0]     P_DATA_tb         ;
reg        PAR_EN_tb       ;
reg        PAR_TYP_tb      ;
reg          DATA_VALID_tb     ;

wire           TX_OUT_tb       ;
wire           Busy_tb             ;


integer         i                  ;
integer         j                  ;
integer         k                  ;
integer         n                  ;
integer         m                  ;
integer         s                  ;


reg  [1:0]     Parity_Status       ;

////////////////////////////////////////
////////////// DUT /////////////////////
////////////////////////////////////////


UART_TX Dut(

.CLK        (CLK_tb)        ,
.RST_n    (RST_n_tb)        ,
.P_DATA   (P_DATA_tb)       ,
.PAR_EN   (PAR_EN_tb)       ,
.PAR_TYP  (PAR_TYP_tb)    ,
.DATA_VALID (DATA_VALID_tb)   ,
.TX_OUT   (TX_OUT_tb)       ,
.Busy       (Busy_tb)
);


///////////////////////////////////////
////////////// MEMORIES ///////////////
///////////////////////////////////////

reg [7:0]  Data_seeds    [TEST_CASES-1 : 0];

reg [10:0] Expected_out_odd_parity  [TEST_CASES-1 : 0];
reg [10:0] Expected_out_even_parity  [TEST_CASES-1 : 0];
reg [10:0] Expected_out_no_parity  [TEST_CASES-1 : 0];

///////////////////////////////////////
////////// CLOCK GENERATION ///////////
///////////////////////////////////////

initial begin
CLK_tb = 0 ;
forever #(CLOCK_PERIOD/2) CLK_tb = ~ CLK_tb ; 
end

////////////////////////////////////////
/////////////// READ DATA //////////////
////////////////////////////////////////

initial begin

$readmemh("Data_h.txt",Data_seeds);
$readmemh("Expec_out_odd_parity_h.txt" ,Expected_out_odd_parity);
$readmemh("Expec_out_even_parity_h.txt",Expected_out_even_parity);
$readmemh("Expec_out_no_parity_h.txt"  ,Expected_out_no_parity);



initialize();
reset()     ;

///////// PARITY ODD ENABLED ////////////////
for(i = 0 ; i < TEST_CASES ; i = i + 1)
begin
@(negedge CLK_tb);
transmit  (Data_seeds[i],2'b00);
check_out (Expected_out_odd_parity[i],2'b00);
end

$display("-----------------------------------------------");
#(CLOCK_PERIOD);


///////// PARITY EVEN ENABLED ////////////////
for(j = 0 ; j < TEST_CASES ; j = j + 1)
begin
@(negedge CLK_tb);
transmit  (Data_seeds[j],2'b01);
check_out (Expected_out_even_parity[j],2'b01);
end 

$display("-----------------------------------------------");
#(CLOCK_PERIOD);


///////// PARITY DISABLED ////////////////////
for(k = 0 ; k < TEST_CASES ; k = k + 1)
begin
@(negedge CLK_tb);
transmit  (Data_seeds[k],2'b10);
check_out (Expected_out_no_parity[k],2'b10);
end 

$display("-----------------------------------------------");
#(3*CLOCK_PERIOD) $stop;

end

////////////////////////////////////////
///////////////// RESET ////////////////
////////////////////////////////////////

task reset;
begin
RST_n_tb = 0;
repeat(2)@(negedge CLK_tb);
RST_n_tb = 1;
end
endtask

/////////////////////////////////////////
///////////// INITIALIZATION ////////////
/////////////////////////////////////////

task initialize;
begin
P_DATA_tb     = 0;
DATA_VALID_tb = 0;
PAR_EN_tb     = 0;
PAR_TYP_tb    = 0;
end
endtask


//////////////////////////////////////////
//////////// TRANSMIT OPERATION //////////
//////////////////////////////////////////

task transmit(input [7:0] P_DATA_in , input [1:0] parity_Status_in);

begin
 case (parity_Status_in)

  2'b00: begin
     P_DATA_tb  = P_DATA_in;
     PAR_TYP_tb = 1        ;     // ODD PARITY
     PAR_EN_tb  = 1'b1    ;     // PARITY ENABLE

      @(negedge CLK_tb) DATA_VALID_tb = 1;

      #(CLOCK_PERIOD) DATA_VALID_tb = 0;
     end


  2'b01: begin
     P_DATA_tb = P_DATA_in;
     PAR_TYP_tb  = 1'b0   ;     // Even PARITY
     PAR_EN_tb   = 1'b1   ;     // PARITY ENABLE
          
         @(negedge CLK_tb) DATA_VALID_tb = 1;

     #(CLOCK_PERIOD) DATA_VALID_tb = 0;
         end    


  2'b10: begin
     P_DATA_tb = P_DATA_in;
     PAR_TYP_tb  = 1'b1   ;     // No PARITY
     PAR_EN_tb   = 1'b0   ;     // PARITY Disabled

     @(negedge CLK_tb) DATA_VALID_tb = 1;

     #(CLOCK_PERIOD) DATA_VALID_tb = 0;
         end    

endcase

end
endtask


//////////////////////////////////////////
//////////// CHECK OPERATION /////////////
//////////////////////////////////////////


task check_out(input [10:0] data_expected , input [1:0] parity_Status_in);

reg [10:0] data_collect_with_parity;
reg [9:0]  data_collect_no_parity;

begin

@(posedge CLK_tb);

case (parity_Status_in)

  2'b00: begin
       for(n = 0 ; n < 11 ; n = n + 1)
       begin
         data_collect_with_parity [n] = TX_OUT_tb;
         @(posedge CLK_tb); 
       end

       if(data_collect_with_parity == data_expected) $display("TEST SUCCEEDED");
       else $display("TEST FAILED");
     end


  2'b01: begin
           for(m = 0 ; m < 11 ; m = m + 1)
       begin
          data_collect_with_parity[m] = TX_OUT_tb;
          @(posedge CLK_tb);  
       end

       if(data_collect_with_parity == data_expected) $display("TEST SUCCEEDED");
       else $display("TEST FAILED");
         end    


  2'b10: begin
           for(s = 0 ; s < 10 ; s = s + 1)
       begin
          data_collect_no_parity[s] = TX_OUT_tb;
          @(posedge CLK_tb);    
       end

       if(data_collect_no_parity == data_expected) $display("TEST SUCCEEDED");
           else $display("TEST FAILED");
         end  

  endcase
 end
endtask


endmodule