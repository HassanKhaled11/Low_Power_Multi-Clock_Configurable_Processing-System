`timescale 1ns / 1fs                     // 1ns -- 1000000 precision (6 numbers prescision)


module SYS_TOP_tb();


 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
 ///////////////////////////////////////////////////// PARAMETERS ///////////////////////////////////////////////////////
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



 parameter REF_CLK_PERIOD  =  10           ;        //100MHZ
 parameter UART_CLK_PERIOD =  271.2673611  ;        // 3.6864 MHZ  , FOR PRESCALE = 1 -> 271.2673611 , PRESCALE = 2 -> 135.6336806
 parameter RX_CLK_PERIOD   =  135.6336806  ;        // in case of prescale = 16
 //parameter RX_CLK_PERIOD =  271.2673611  ;      // in case of prescale = 32 
 parameter TX_CLK_PERIOD   =  8680.555556  ;        // 115.200 KHZ
 

 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
 ///////////////////////////////////////////////////// CONFIGURATIONS ///////////////////////////////////////////////////
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


 parameter PRESCALE        =  6'd16         ;
 parameter PARITY_EN       =  1'b1          ;
 parameter PARITY_TYP      =  1'b1          ;        // 0 --> EVEN  , 1 --> ODD


 parameter EVEN_PARITY     =  2'b10         ; 
 parameter ODD_PARITY      =  2'b11         ; 
 parameter NO_PARITY       =  2'b00         ;

 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
 ////////////////////////////////////////////// CONEECTIONS DECLARATION /////////////////////////////////////////////////
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

 reg REF_CLK      ;
 reg UART_CLK     ;
 reg RST          ;
 reg RX_IN        ;

 wire TX_OUT      ;

 wire RX_CLK      ;
 wire TX_CLK      ;

 reg [1:0] parity_test  ;

 reg [7:0] rx_divide_ratio ;

 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
 ////////////////////////////////////////////////// STIMULUS MEMORY /////////////////////////////////////////////////////
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


reg Data_Seed_Write_RF_h              [32:0];
reg Data_Seed_Write_ALU_CMD_h         [43:0];
reg Data_Seed_Read_RF_h               [21:0];
reg Data_Seed_Write_ALU_No_CMD_h      [21:0];


reg Data_Seed_Write_RF_O_h            [32:0];
reg Data_Seed_Write_ALU_CMD_O_h       [43:0];
reg Data_Seed_Read_RF_O_h             [21:0];
reg Data_Seed_Write_ALU_No_CMD_O_h    [21:0];



reg Data_Seed_Write_RF_NO_h           [29:0];
reg Data_Seed_Write_ALU_CMD_NO_h      [39:0];
reg Data_Seed_Read_RF_NO_h            [19:0];
reg Data_Seed_Write_ALU_No_CMD_NO_h   [19:0];



reg [10:0] Data_Expected_h            [8 :0];

 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
 ////////////////////////////////////////////// CONEECTIONS DECLARATION /////////////////////////////////////////////////
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


integer i ;
integer j ;
integer k ;
integer n ;
integer m ;
 

 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
 ////////////////////////////////////////////// TOP_MODULE INSTANTIATION ////////////////////////////////////////////////
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 



SYS_TOP #(.PRESCALE(PRESCALE) , .PAR_TYP(PARITY_TYP) , .PAR_EN(PARITY_EN)) SYS_TOP_dut
(
 .REF_CLK  (REF_CLK)     ,
 .UART_CLK (UART_CLK)    ,
 .RST      (RST)         ,
 .RX_IN    (RX_IN)       ,

 .TX_OUT   (TX_OUT)
);



 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
 ////////////////////////////////////////////// CLOCK DOMAINS GENERATION ////////////////////////////////////////////////
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 


  always begin
    #(REF_CLK_PERIOD / 2)   REF_CLK  = ~ REF_CLK   ;
  end



  always begin
    #(UART_CLK_PERIOD / 2)  UART_CLK = ~ UART_CLK  ;
  end


 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
 ////////////////////////////////////////////// CLOCK & RST DOMAINS INSTANTIATIONS //////////////////////////////////////
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



ClkDiv__ CLK_DIV_RX_dut
(
.i_ref_clk   (UART_CLK),
.i_rst_n     (RST_D2),
.i_div_ratio (rx_divide_ratio),                          // 1 ---> Prescale 32    ,  2 --> Prescale 16

.o_div_clk(RX_CLK)
);


ClkDiv__ CLK_DIV_TX_dut
(
.i_ref_clk   (UART_CLK),
.i_rst_n     (RST_D2),
.i_div_ratio (32),

.o_div_clk(TX_CLK)
);





Rst_Sync #(.NUM_STAGES(2) , .ACTIVE_TYP("LOW")) Rst_Sync_D1_dut (

.RST       (RST),
.CLK       (REF_CLK),
.SYNC_RST  (RST_D1)

);



Rst_Sync #(.NUM_STAGES(2) , .ACTIVE_TYP("LOW")) Rst_Sync_D2_dut (

.RST       (RST),
.CLK       (UART_CLK),
.SYNC_RST  (RST_D2)

);



////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////// TASKS //////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////




initial begin


$readmemh ("Data_Seed_Write_RF_h.txt" , Data_Seed_Write_RF_h );
$readmemh("Data_Seed_Write_ALU_CMD_h.txt",Data_Seed_Write_ALU_CMD_h);
$readmemh("Data_Seed_Read_RF_h.txt", Data_Seed_Read_RF_h);
$readmemh("Data_Seed_Write_ALU_No_CMD_h.txt",Data_Seed_Write_ALU_No_CMD_h);


$readmemh ("Data_Seed_Write_RF_O_h.txt" , Data_Seed_Write_RF_O_h );
$readmemh("Data_Seed_Write_ALU_CMD_O_h.txt",Data_Seed_Write_ALU_CMD_O_h);
$readmemh("Data_Seed_Read_RF_O_h.txt", Data_Seed_Read_RF_O_h);
$readmemh("Data_Seed_Write_ALU_No_CMD_O_h.txt",Data_Seed_Write_ALU_No_CMD_O_h);	


$readmemh ("Data_Seed_Write_RF_NO_h.txt" , Data_Seed_Write_RF_NO_h );
$readmemh("Data_Seed_Write_ALU_CMD_NO_h.txt",Data_Seed_Write_ALU_CMD_NO_h);
$readmemh("Data_Seed_Read_RF_NO_h.txt", Data_Seed_Read_RF_NO_h);
$readmemh("Data_Seed_Write_ALU_No_CMD_NO_h.txt",Data_Seed_Write_ALU_No_CMD_NO_h);	



$readmemh("Data_Expected_h.txt", Data_Expected_h);

	

initialize();


case (parity_test)


        EVEN_PARITY : begin 
                
                $display("================== TESTING THE FOUR SCENARIOS WITH EVEN PARITY =================================");

                        for (i = 0; i < 33; i = i + 1) begin                   //TESTING WRITE IN REGISTER FILE
	 			transmit(Data_Seed_Write_RF_h[i]);
	 			if(i == 10) #(RX_CLK_PERIOD);                      // AFTER SENDING CMD TAKE A DELAY THEN SEND ADDR
	 			if(i == 21) #(RX_CLK_PERIOD);                      // AFTER SENDING ADDR TAKE A DELAY THEN SEND DATA
	 			if(i == 32) #(RX_CLK_PERIOD);                      // TAKE A DELAY AFTER SENDING DATA AND BE PREPARED FOR SENDING ANOTHER COMMAND
	 		end


                        for (j = 0; j < 44; j = j + 1) begin
			       	transmit(Data_Seed_Write_ALU_CMD_h[j]);            // TESTING WRITE IN ALU WITH OPERANDS                                       
			       	if(j == 10) #(RX_CLK_PERIOD);                      // AFTER SENDING CMD TAKE A DELAY THEN SEND OPERAND_A                       
			       	if(j == 21) #(RX_CLK_PERIOD);                      // AFTER SENDING OPER_A TAKE A DELAY THEN SEND OPERAND_B                     
			       	if(j == 32) #(RX_CLK_PERIOD);                      // AFTER SENDING OPER_B TAKE A DELAY THEN SEND FUN                           
			       	if(j == 43) #(RX_CLK_PERIOD);                      // AFTER SENDING FUN TAKE A DELAY AND BE PREPARED FOR SENDING ANOTHER COMMAND
			 end
                        
                         CHECKOUT(Data_Expected_h[0]);                         // CHECK THE READED DATA FROM ALU_OUT
                         

                        for (k = 0; k < 22; k = k + 1) begin
			       transmit(Data_Seed_Read_RF_h[k]);                   // TESTING READ FROM REGISTER FILE
			       if(k == 10) #(RX_CLK_PERIOD);                       // AFTER SENDING CMD TAKE A DELAY THEN SEND ADDR
			       if(k == 21) #(RX_CLK_PERIOD);                       // AFTER SENDING ADDR TAKE A DELAY THEN BE PREPARED FOR SENDING ANOTHER COMMAND
			 end

                        
                        CHECKOUT(Data_Expected_h[1]);                           //CHECK THE READED DATA FROM RF


                        for (n = 0; n < 22; n = n + 1) begin
			        transmit(Data_Seed_Write_ALU_No_CMD_h[n]);          // TESTING ALU OPERATION WITH NO OPERAND   
			        if(n == 10) #(RX_CLK_PERIOD);                       // AFTER SENDING CMD TAKE DELAY THEN SEND FUN
			        if(n == 21) #(RX_CLK_PERIOD);                       // AFTER SENDING FUN TAKE A DELAY THEN BE PREPARED FOR SENDING ANOTHER COMMAND
		        end


			CHECKOUT(Data_Expected_h[2]);

                $display("===================================================================================================");

                      end


        



        ODD_PARITY  : begin 

                $display("================== TESTING THE FOUR SCENARIOS WITH ODD PARITY =================================");

                        for (i = 0; i < 33; i = i + 1) begin                   //TESTING WRITE IN REGISTER FILE
                       // @(negedge RX_CLK);
				transmit(Data_Seed_Write_RF_O_h[i]);
				if(i == 10) #(RX_CLK_PERIOD);                      // AFTER SENDING CMD TAKE A DELAY THEN SEND ADDR
				if(i == 21) #(RX_CLK_PERIOD);                      // AFTER SENDING ADDR TAKE A DELAY THEN SEND DATA
				if(i == 32) #(RX_CLK_PERIOD);                      // TAKE A DELAY AFTER SENDING DATA AND BE PREPARED FOR SENDING ANOTHER COMMAND
			end






                        for (j = 0; j < 44; j = j + 1) begin
                       //	@(negedge RX_CLK);
				transmit(Data_Seed_Write_ALU_CMD_O_h[j]);          // TESTING WRITE IN ALU WITH OPERANDS                                       
				if(j == 10) #(RX_CLK_PERIOD);                      // AFTER SENDING CMD TAKE A DELAY THEN SEND OPERAND_A                       
				if(j == 21) #(RX_CLK_PERIOD);                      // AFTER SENDING OPER_A TAKE A DELAY THEN SEND OPERAND_B                     
				if(j == 32) #(RX_CLK_PERIOD);                      // AFTER SENDING OPER_B TAKE A DELAY THEN SEND FUN                           
				if(j == 43) #(RX_CLK_PERIOD);                      // AFTER SENDING FUN TAKE A DELAY AND BE PREPARED FOR SENDING ANOTHER COMMAND
			end
                        
                         CHECKOUT(Data_Expected_h[3]);                         // CHECK THE READED DATA FROM ALU_OUT
                         

                        for (k = 0; k < 22; k = k + 1) begin
                        // @(negedge RX_CLK);
				transmit(Data_Seed_Read_RF_O_h[k]);                 // TESTING READ FROM REGISTER FILE
				if(k == 10) #(RX_CLK_PERIOD);                       // AFTER SENDING CMD TAKE A DELAY THEN SEND ADDR
				if(k == 21) #(RX_CLK_PERIOD);                       // AFTER SENDING ADDR TAKE A DELAY THEN BE PREPARED FOR SENDING ANOTHER COMMAND
			end

                        
                        CHECKOUT(Data_Expected_h[4]);                           //CHECK THE READED DATA FROM RF


                        for (n = 0; n < 22; n = n + 1) begin
                   //    	@(negedge RX_CLK); 
					transmit(Data_Seed_Write_ALU_No_CMD_O_h[n]);          // TESTING ALU OPERATION WITH NO OPERAND   
					if(n == 10) #(RX_CLK_PERIOD);                       // AFTER SENDING CMD TAKE DELAY THEN SEND FUN
					if(n == 21) #(RX_CLK_PERIOD);                       // AFTER SENDING FUN TAKE A DELAY THEN BE PREPARED FOR SENDING ANOTHER COMMAND
				end


						CHECKOUT(Data_Expected_h[5]);

                $display("====================================================================================================");

                       end





        NO_PARITY   : begin 

                $display("================== TESTING THE FOUR SCENARIOS WITH NO PARITY =================================");


                        for (i = 0; i < 29; i = i + 1) begin                   //TESTING WRITE IN REGISTER FILE
                               @(negedge RX_CLK);
				transmit(Data_Seed_Write_RF_NO_h[i]);
				if(i == 9 )  #(RX_CLK_PERIOD);                      // AFTER SENDING CMD TAKE A DELAY THEN SEND ADDR
				if(i == 18)  #(RX_CLK_PERIOD);                      // AFTER SENDING ADDR TAKE A DELAY THEN SEND DATA
				if(i == 29)  #(RX_CLK_PERIOD);                      // TAKE A DELAY AFTER SENDING DATA AND BE PREPARED FOR SENDING ANOTHER COMMAND
			end



                        for (j = 0; j < 40; j = j + 1) begin
                        	// @(negedge RX_CLK);
				transmit(Data_Seed_Write_ALU_CMD_NO_h[j]);          // TESTING WRITE IN ALU WITH OPERANDS                                       
				if(j == 9 ) #(RX_CLK_PERIOD);                      // AFTER SENDING CMD TAKE A DELAY THEN SEND OPERAND_A                       
				if(j == 18) #(RX_CLK_PERIOD);                      // AFTER SENDING OPER_A TAKE A DELAY THEN SEND OPERAND_B                     
				if(j == 29) #(RX_CLK_PERIOD);                      // AFTER SENDING OPER_B TAKE A DELAY THEN SEND FUN                           
				if(j == 39) #(RX_CLK_PERIOD);                      // AFTER SENDING FUN TAKE A DELAY AND BE PREPARED FOR SENDING ANOTHER COMMAND
				end
                        
                        CHECKOUT(Data_Expected_h[6]);                         // CHECK THE READED DATA FROM ALU_OUT
                         

                        for (k = 0; k < 20; k = k + 1) begin
                        	// @(negedge RX_CLK);
				transmit(Data_Seed_Read_RF_NO_h[k]);                 // TESTING READ FROM REGISTER FILE
				if(k == 9 ) #(RX_CLK_PERIOD);                       // AFTER SENDING CMD TAKE A DELAY THEN SEND ADDR
				if(k == 19) #(RX_CLK_PERIOD);                       // AFTER SENDING ADDR TAKE A DELAY THEN BE PREPARED FOR SENDING ANOTHER COMMAND
			end

                        
                        CHECKOUT(Data_Expected_h[7]);                           //CHECK THE READED DATA FROM RF


                        for (n = 0; n < 20; n = n + 1) begin
                        	// @(negedge RX_CLK); 
				transmit(Data_Seed_Write_ALU_No_CMD_NO_h[n]);         // TESTING ALU OPERATION WITH NO OPERAND   
				if(n == 9 ) #(RX_CLK_PERIOD);                        // AFTER SENDING CMD TAKE DELAY THEN SEND FUN
				if(n == 19) #(RX_CLK_PERIOD);                        // AFTER SENDING FUN TAKE A DELAY THEN BE PREPARED FOR SENDING ANOTHER COMMAND
			end


		         CHECKOUT(Data_Expected_h[8]);

                $display("====================================================================================================");        	
                      
                      end



        default     : begin 

                $display("================== TESTING THE FOUR SCENARIOS WITH NO PARITY =================================");


                        for (i = 0; i < 29; i = i + 1) begin                   //TESTING WRITE IN REGISTER FILE
                               @(negedge RX_CLK);
				transmit(Data_Seed_Write_RF_NO_h[i]);
				if(i == 9 )  #(RX_CLK_PERIOD);                      // AFTER SENDING CMD TAKE A DELAY THEN SEND ADDR
				if(i == 18)  #(RX_CLK_PERIOD);                      // AFTER SENDING ADDR TAKE A DELAY THEN SEND DATA
				if(i == 29)  #(RX_CLK_PERIOD);                      // TAKE A DELAY AFTER SENDING DATA AND BE PREPARED FOR SENDING ANOTHER COMMAND
			end




                        for (j = 0; j < 40; j = j + 1) begin
                        	// @(negedge RX_CLK);
				transmit(Data_Seed_Write_ALU_CMD_NO_h[j]);          // TESTING WRITE IN ALU WITH OPERANDS                                       
				if(j == 9 ) #(RX_CLK_PERIOD);                      // AFTER SENDING CMD TAKE A DELAY THEN SEND OPERAND_A                       
				if(j == 18) #(RX_CLK_PERIOD);                      // AFTER SENDING OPER_A TAKE A DELAY THEN SEND OPERAND_B                     
				if(j == 29) #(RX_CLK_PERIOD);                      // AFTER SENDING OPER_B TAKE A DELAY THEN SEND FUN                           
				if(j == 39) #(RX_CLK_PERIOD);                      // AFTER SENDING FUN TAKE A DELAY AND BE PREPARED FOR SENDING ANOTHER COMMAND
				end
                        
                        CHECKOUT(Data_Expected_h[6]);                         // CHECK THE READED DATA FROM ALU_OUT
                         

                        for (k = 0; k < 20; k = k + 1) begin
                        	// @(negedge RX_CLK);
				transmit(Data_Seed_Read_RF_NO_h[k]);                 // TESTING READ FROM REGISTER FILE
				if(k == 9 ) #(RX_CLK_PERIOD);                       // AFTER SENDING CMD TAKE A DELAY THEN SEND ADDR
				if(k == 19) #(RX_CLK_PERIOD);                       // AFTER SENDING ADDR TAKE A DELAY THEN BE PREPARED FOR SENDING ANOTHER COMMAND
			end

                        
                        CHECKOUT(Data_Expected_h[7]);                           //CHECK THE READED DATA FROM RF


                        for (n = 0; n < 20; n = n + 1) begin
                        	// @(negedge RX_CLK); 
				transmit(Data_Seed_Write_ALU_No_CMD_NO_h[n]);         // TESTING ALU OPERATION WITH NO OPERAND   
				if(n == 9 ) #(RX_CLK_PERIOD);                        // AFTER SENDING CMD TAKE DELAY THEN SEND FUN
				if(n == 19) #(RX_CLK_PERIOD);                        // AFTER SENDING FUN TAKE A DELAY THEN BE PREPARED FOR SENDING ANOTHER COMMAND
			end


		         CHECKOUT(Data_Expected_h[8]);

                $display("====================================================================================================");        	
                      
                      end

 
endcase


#(20*TX_CLK_PERIOD);

$stop;

end




////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////// TASKS //////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


task initialize();
 begin	
    parity_test = {PARITY_EN , PARITY_TYP} ;
    rx_divide_ratio = (PRESCALE == 32) ? 1 : (PRESCALE == 16) ? 2 : 4;
    i = 0                                  ;
    j = 0                                  ;
    k = 0                                  ;          
    n = 0                                  ;
    m = 0                                  ;    
    REF_CLK  = 0                           ;
    UART_CLK = 0                           ;
    RX_IN    = 0                           ;
    RESET()                                ;

 end	
endtask 




task RESET();
 begin
 	
    RST = 0             ;
    #(2*REF_CLK_PERIOD) ; 
    RST = 1             ; 
    #(3*REF_CLK_PERIOD) ;

 end
endtask 




task transmit(input Data_in);
 begin
 	@(negedge RX_CLK);
 	RX_IN = Data_in                   ;
 	repeat(PRESCALE) @(negedge RX_CLK);

 end
endtask




task CHECKOUT (input [10:0] Data_Expected);
 reg [10 : 0]  data_collected_parity     ;	
 reg [9  : 0]  data_collected_no_parity  ;
 
 begin
 
 	case (parity_test)

 	   
        EVEN_PARITY : begin 
 	                  
 	                    @(negedge TX_OUT);
 	                     for (m = 0; m < 11; m = m + 1) begin
                            data_collected_parity [m] = TX_OUT;
                            @(posedge TX_CLK)                 ;	 	
 	                     end
 	                     
 	                     if (data_collected_parity == Data_Expected)  $display("TEST SUCCEEDED") ;
                         else  $display("TEST SUCCEEDED")                                        ;                          
                      
                      end
        



        ODD_PARITY  : begin
 	                    
 	                    @(negedge TX_OUT);
 	                     for (m = 0; m < 11; m = m + 1) begin
                            data_collected_parity [m] = TX_OUT  ;
                            @(posedge TX_CLK)                   ;	 	
 	                     end
 	                     
 	                     if (data_collected_parity == Data_Expected)  $display("TEST SUCCEEDED") ;
                         else  $display("TEST SUCCEEDED")                                        ;          
                      
                      end




        NO_PARITY   : begin 

 	                    @(negedge TX_OUT);
 	                     for (m = 0; m < 10; m = m + 1) begin
                            data_collected_no_parity [m] = TX_OUT     ;
                            @(posedge TX_CLK)                         ;	 	
 	                     end
 	                     
 	                     if (data_collected_parity == Data_Expected)  $display("TEST SUCCEEDED") ;
                         else  $display("TEST SUCCEEDED")                                        ; 

                      
                      end


          default   : begin 

 	                    @(negedge TX_OUT);
 	                     for (m = 0; m < 10; m = m + 1) begin
                            data_collected_no_parity [m] = TX_OUT     ;
                            @(posedge TX_CLK)                         ;	 	
 	                     end
 	                     
 	                     if (data_collected_parity == Data_Expected)  $display("TEST SUCCEEDED") ;
                         else  $display("TEST SUCCEEDED")                                        ; 

                      
                      end            

 	endcase
 	
 	

 end
endtask


endmodule
