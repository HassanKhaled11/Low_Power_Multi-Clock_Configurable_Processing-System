module fifo_wrptr_full #(parameter WIDTH = 'd8 , parameter DEPTH = 'd16)
(
input W_CLK                    ,         
input W_RST                    ,        
input W_INC                    ,
input [$clog2(DEPTH)     : 0] gray_Rptr           ,

output     WFULL                             ,
output     [$clog2(DEPTH) - 1 : 0] Waddr     ,
output reg [$clog2(DEPTH)     : 0] gray_Wptr                   

);


reg [$clog2(DEPTH)     : 0]  Wptr;
reg [$clog2(DEPTH)     : 0]  Rptr;

assign WFULL = (Wptr[$clog2(DEPTH)] != Rptr[$clog2(DEPTH)] && Wptr[$clog2(DEPTH) - 1 : 0] == Rptr[$clog2(DEPTH) - 1 : 0]) ? 1'b1 : 1'b0 ;

assign Waddr  =  (W_RST)? Wptr : 0 ;

always @(posedge W_CLK or negedge W_RST) begin
	if (!W_RST) begin
	   	Wptr  <= 0   ;
	end


	else if(W_INC && !WFULL)
	begin
    	Wptr  <= Wptr + 1 ;
	end

end


/////////////////////////////////////////////////////////////
///////////////////// GRAY CODING CONVERSION ////////////////
/////////////////////////////////////////////////////////////


always @(posedge W_CLK or negedge W_RST) begin
	if (!W_RST) begin
	 gray_Wptr <= 0;   
	end

	else
	begin
	  case(Wptr)

       
       4'b0000 : gray_Wptr <= 4'b0000 ;
       4'b0001 : gray_Wptr <= 4'b0001 ;
       4'b0010 : gray_Wptr <= 4'b0011 ;
       4'b0011 : gray_Wptr <= 4'b0010 ;
       4'b0100 : gray_Wptr <= 4'b0110 ;
       4'b0101 : gray_Wptr <= 4'b0111 ;
       4'b0110 : gray_Wptr <= 4'b0101 ;
       4'b0111 : gray_Wptr <= 4'b0100 ;
       4'b1000 : gray_Wptr <= 4'b1100 ;
       4'b1001 : gray_Wptr <= 4'b1101 ;
       4'b1010 : gray_Wptr <= 4'b1111 ;
       4'b1011 : gray_Wptr <= 4'b1110 ;
       4'b1100 : gray_Wptr <= 4'b1010 ;
       4'b1101 : gray_Wptr <= 4'b1011 ;
       4'b1110 : gray_Wptr <= 4'b1001 ;
       4'b1111 : gray_Wptr <= 4'b1000 ;    

      endcase
	end
	   
end



always @(*) begin

	  case(gray_Rptr)

       
       4'b0000 : Rptr <= 4'b0000 ;
       4'b0001 : Rptr <= 4'b0001 ;
       4'b0011 : Rptr <= 4'b0010 ;
       4'b0010 : Rptr <= 4'b0011 ;
       4'b0110 : Rptr <= 4'b0100 ;
       4'b0111 : Rptr <= 4'b0101 ;
       4'b0101 : Rptr <= 4'b0110 ;
       4'b0100 : Rptr <= 4'b0111 ;
       4'b1100 : Rptr <= 4'b1000 ;
       4'b1101 : Rptr <= 4'b1001 ;
       4'b1111 : Rptr <= 4'b1010 ;
       4'b1110 : Rptr <= 4'b1011 ;
       4'b1010 : Rptr <= 4'b1100 ;
       4'b1011 : Rptr <= 4'b1101 ;
       4'b1001 : Rptr <= 4'b1110 ;
       4'b1000 : Rptr <= 4'b1111 ;  


      endcase
	
	   
end



endmodule