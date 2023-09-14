module fifo_rdptr_empty #(parameter WIDTH = 'd8 , parameter DEPTH = 'd16)
(

input R_CLK                    ,         
input R_RST                    ,        
input R_INC                    ,
input [$clog2(DEPTH)     : 0] gray_Wptr         ,

output  REMPTY                          ,
output  [$clog2(DEPTH) - 1 : 0] Raddr      ,
output reg [$clog2(DEPTH)     : 0] gray_Rptr                    

);


reg [$clog2(DEPTH)     : 0]  Rptr;
reg [$clog2(DEPTH)     : 0]  Wptr;


assign Raddr = (R_RST)? Rptr : 0 ;
assign REMPTY = (Wptr[$clog2(DEPTH) : 0] == Rptr[$clog2(DEPTH) : 0])? 1'b1 : 1'b0;


always @(posedge R_CLK or negedge R_RST) begin
	if (!R_RST) begin
	   	//REMPTY <= 1'b0;
	   	Rptr  <= 0   ;
	end
  
    // if(Wptr[$clog2(DEPTH) : 0] == Rptr[$clog2(DEPTH) : 0]) REMPTY <= 1'b1;

	else if(R_INC && !REMPTY) 
	begin
	  Rptr   <= Rptr + 1 ;
	end

end

/////////////////////////////////////////////////////////////
///////////////////// GRAY CODING CONVERSION ////////////////
/////////////////////////////////////////////////////////////

always @(posedge R_CLK or negedge R_RST) begin
	if (!R_RST) begin
	 gray_Rptr <= 0;   
	end

	else
	begin
	  case(Rptr)

       
       4'b0000 : gray_Rptr <= 4'b0000 ;
       4'b0001 : gray_Rptr <= 4'b0001 ;
       4'b0010 : gray_Rptr <= 4'b0011 ;
       4'b0011 : gray_Rptr <= 4'b0010 ;
       4'b0100 : gray_Rptr <= 4'b0110 ;
       4'b0101 : gray_Rptr <= 4'b0111 ;
       4'b0110 : gray_Rptr <= 4'b0101 ;
       4'b0111 : gray_Rptr <= 4'b0100 ;
       4'b1000 : gray_Rptr <= 4'b1100 ;
       4'b1001 : gray_Rptr <= 4'b1101 ;
       4'b1010 : gray_Rptr <= 4'b1111 ;
       4'b1011 : gray_Rptr <= 4'b1110 ;
       4'b1100 : gray_Rptr <= 4'b1010 ;
       4'b1101 : gray_Rptr <= 4'b1011 ;
       4'b1110 : gray_Rptr <= 4'b1001 ;
       4'b1111 : gray_Rptr <= 4'b1000 ;    

      endcase
	end
	   
end



always @(*) begin

	  case(gray_Wptr)

       
       4'b0000 : Wptr <= 4'b0000 ;
       4'b0001 : Wptr <= 4'b0001 ;
       4'b0011 : Wptr <= 4'b0010 ;
       4'b0010 : Wptr <= 4'b0011 ;
       4'b0110 : Wptr <= 4'b0100 ;
       4'b0111 : Wptr <= 4'b0101 ;
       4'b0101 : Wptr <= 4'b0110 ;
       4'b0100 : Wptr <= 4'b0111 ;
       4'b1100 : Wptr <= 4'b1000 ;
       4'b1101 : Wptr <= 4'b1001 ;
       4'b1111 : Wptr <= 4'b1010 ;
       4'b1110 : Wptr <= 4'b1011 ;
       4'b1010 : Wptr <= 4'b1100 ;
       4'b1011 : Wptr <= 4'b1101 ;
       4'b1001 : Wptr <= 4'b1110 ;
       4'b1000 : Wptr <= 4'b1111 ;  


      endcase
	
	   
end








endmodule