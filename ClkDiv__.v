module ClkDiv__ #(parameter NUMBER_OF_CLOCKS = 'd10)
(
input 	       i_ref_clk   ,
input 	       i_rst_n     ,
input 	[7:0] i_div_ratio ,

output  reg       o_div_clk
);

reg [NUMBER_OF_CLOCKS-1 : 0] Counter  ;
reg [NUMBER_OF_CLOCKS-1 : 0] Counter_1;
reg [NUMBER_OF_CLOCKS-1 : 0] Counter_2;
reg [NUMBER_OF_CLOCKS-1 : 0] Counter_3;
reg [NUMBER_OF_CLOCKS-1 : 0] Counter_4;

wire [31:0] half_high ;
wire [31:0] half_low  ;
wire [31:0] even_ratio;
wire        even_type ;


reg flag_1;
reg flag_2;
reg flag_3;
reg flag_4;


parameter IDLE      = 3'b000;
parameter EVEN_HIGH = 3'b001;
parameter EVEN_LOW  = 3'b010;
parameter ODD_HIGH  = 3'b011;
parameter ODD_LOW   = 3'b100;


reg [2:0] current_state;
reg [2:0] next_state;


assign zero_or_one =   (i_div_ratio == 1|| !i_div_ratio) ? 1'b1 : 1'b0 ;
assign even_type   =   (!i_div_ratio[0])? 1'b1 : 1'b0    ;
assign even_ratio  =   (i_div_ratio >> 1)  - 1           ;
assign half_high   =   (i_div_ratio >> 1)  - 1           ;
assign half_low    =    half_high + 1                    ;



always @(posedge i_ref_clk or negedge i_rst_n) begin : proc_
        if(~i_rst_n) begin
              Counter_1   <= 0;
              Counter_2   <= 0;
              Counter_3   <= 0;
              Counter_4   <= 0;
        end 

        else if(flag_1) begin
                Counter_2 <= 0;
                Counter_1 <= Counter_1 + 1 ;
        end

        else if(flag_2) begin
                Counter_1 <= 0;
                Counter_2 <= Counter_2 + 1 ;
        end

        else if(flag_3) begin
                Counter_4 <= 0;
                Counter_3 <= Counter_3 + 1 ;
        end

        else if(flag_4) begin
                Counter_3 <= 0;
                Counter_4 <= Counter_4 + 1 ;
        end

        else begin
               Counter_1 <= 0 ;
               Counter_2 <= 0 ;
               Counter_3 <= 0 ;     
               Counter_4 <= 0 ;
        end
end







always @(posedge i_ref_clk or negedge i_rst_n) begin
	if (!i_rst_n) begin
	   current_state <= IDLE;	
	end

	else begin
	   current_state <= next_state;	
	end
end

 
always @(*) begin

case(current_state)

 IDLE: begin 
         if(even_type && !zero_or_one)    next_state = EVEN_HIGH;
         else if(!zero_or_one)            next_state = ODD_HIGH;
         else                             next_state = IDLE;
       end


EVEN_HIGH: begin 
         if(even_type && Counter_3 == even_ratio) next_state = EVEN_LOW;
         else if(even_type)         next_state = EVEN_HIGH;
         else next_state = ODD_HIGH;
       end


EVEN_LOW: begin 
         if(even_type && Counter_4 == even_ratio) next_state = EVEN_HIGH;
         else if(even_type)         next_state = EVEN_LOW;
         else next_state = ODD_HIGH;
       end      


ODD_HIGH: begin 
          if(Counter_1 == half_high) next_state = ODD_LOW;
          else if (even_type)        next_state = EVEN_HIGH;
          else                       next_state = ODD_HIGH;
          end


ODD_LOW: begin 
         if(Counter_2 == half_low) next_state = ODD_HIGH;
         else if (even_type)       next_state = EVEN_HIGH;
         else                      next_state = ODD_LOW;
        end

endcase
end





always @(*)
begin
	
case(current_state)

 IDLE: begin 
        flag_1     = 0;
        flag_2     = 0;
        flag_3     = 0;
        flag_4     = 0;
        o_div_clk  = i_ref_clk; 
       end

EVEN_HIGH: begin 
          //Counter_4 = 0;
          o_div_clk = 1;
          flag_3 = 1;
          if(Counter_3 == even_ratio) flag_3 = 0;
          
       end


EVEN_LOW: begin 
          //Counter_3 = 0;
          o_div_clk = 0; 
          flag_4 = 1;  
          if(Counter_4 == even_ratio) flag_4 = 0;
         end


ODD_HIGH: begin 
          //Counter_2 = 0;
          o_div_clk = 1;
          flag_1 = 1;  
          if(Counter_1== half_high) flag_1 = 0;
          end


ODD_LOW: begin 
          //Counter_1 = 0;
          o_div_clk = 0;
          flag_2 = 1;  
          if(Counter_2 == half_low) flag_2 = 0;
         end

endcase
end



endmodule










module Clk_Div_tb;

parameter PERIOD_CLOCK = 100;  

reg            i_ref_clk_tb   ;
reg            i_rst_n_tb     ;
reg            i_clk_en_tb    ;
reg     [31:0] i_div_ratio_tb ;

wire           o_div_clk_tb   ;


ClkDiv__ dut(
.i_ref_clk   (i_ref_clk_tb),
.i_rst_n     (i_rst_n_tb),
.i_div_ratio (i_div_ratio_tb),
.o_div_clk   (o_div_clk_tb)
);
 

initial begin
i_ref_clk_tb = 0;
forever #(PERIOD_CLOCK/2) i_ref_clk_tb= ~i_ref_clk_tb;  
end


initial
begin
    i_clk_en_tb = 0;
    i_div_ratio_tb = 0;
    i_rst_n_tb = 0;
    @(negedge i_ref_clk_tb);
    i_rst_n_tb = 1;
    
    #(PERIOD_CLOCK);
    
    i_div_ratio_tb = 7;              // Try Different Divisors   
    i_clk_en_tb = 1;
    repeat(40) @(posedge i_ref_clk_tb);


   $stop;
end

endmodule       