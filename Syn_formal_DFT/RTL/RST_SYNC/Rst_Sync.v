module Rst_Sync #(parameter NUM_STAGES = 'd4 , parameter ACTIVE_TYP = "LOW" )(



input   RST    ,

input   CLK      ,

output  SYNC_RST





);





reg [NUM_STAGES - 1 : 0] FF_Stage;

reg data_SYN;

reg out_next ;





genvar i;






// always @(*)

// begin

//   if(!RST) SYNC_RST = 1'b0;  

//   else if(data_SYN && ACTIVE_TYP == "LOW")   SYNC_RST =  data_SYN ; 

//   else SYNC_RST = out_next;          // TO OVERCOME LATCH IN SYNTHESIS


// end



assign SYNC_RST = data_SYN;



generate

  for(i = 0 ; i < NUM_STAGES ; i = i + 1)

  begin

         always @(posedge CLK or negedge RST) 
         begin

          if (!RST ) begin
               FF_Stage [i] <= 1'b0; 
          end


          else if (i == 0) begin
            FF_Stage[i] <= 1'b1;
          end


          else FF_Stage[i] <= FF_Stage[i-1];

         end

    end



  always @(*) begin

    if(!RST) data_SYN = 0;

    else data_SYN = FF_Stage [NUM_STAGES - 1];

  end  

endgenerate











always @(posedge CLK or negedge RST) begin



  if(!RST) out_next <= 0;



  else out_next <= SYNC_RST;



 end







endmodule










///////////////////////////////////////////////////////////////////////////

////////////////////////////TESTBENCH /////////////////////////////////////

///////////////////////////////////////////////////////////////////////////









// module Rst_Sync_tb;



// /************************************************************

//  /////////TO MAKE IT ACTIVE HIGH SYNCHRONIZED RESET//////////

// /*



// 1) Make all sensitivity list posedge RST instead of neg

// 2) Make the parameter Type HiGH insted of LOW

// 3) Modify the Test Stimulus



// *///*********************************************************



// parameter PERIOD_CLOCK = 100 ;

// parameter NUM_STAGES = 'd4   ;         //Must be st least 2 as this is a synchronizer

// parameter ACTIVE_TYP = "LOW" ;



// reg RST ;

// reg CLK   ;



// wire SYNC_RST;





// Rst_Sync #(.NUM_STAGES(NUM_STAGES) , .ACTIVE_TYP(ACTIVE_TYP)) dut (.RST(RST), .CLK(CLK) ,.SYNC_RST(SYNC_RST));





// always #(PERIOD_CLOCK/2) CLK = ~ CLK ;





// initial

// begin

// CLK   = 1'b0 ;

// RST = 1'b0 ;

// repeat(5) @(negedge CLK);

// RST = 1'b1; 

// #((NUM_STAGES+2) * PERIOD_CLOCK);

// @(negedge CLK);

// RST = 0;

// #(2*PERIOD_CLOCK);



// $stop;  

// end





// endmodule
