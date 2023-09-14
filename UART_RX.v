module UART_RX #(parameter PRESCALE = 'd32) (

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
            
            if (!RX_IN ) begin
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