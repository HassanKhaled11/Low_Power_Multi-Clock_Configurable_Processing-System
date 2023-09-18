module Data_Sync #(parameter NUM_STAGES = 'd4 , parameter BUS_WIDTH = 1) (

input CLK     ,
input RST_n   ,
input bus_enable ,
input      [BUS_WIDTH -1  : 0] UNSYNC_bus ,

output  reg enable_pulse ,
output  reg [BUS_WIDTH - 1 : 0] SYNC_bus

);


reg  pulse_gen ;
reg  Q_in;
reg  [NUM_STAGES -1 : 0]  FF_Stage ;
reg  data_SYN2; 

genvar i ;

generate

	for(i = 0 ; i < NUM_STAGES ; i = i + 1)
	begin
	  
	  always @(posedge CLK or negedge RST_n)
	  begin
	  	
	  	if (!RST_n) begin
	  	    FF_Stage[i] <= 0;       // when I reset data sync here it gived multi driver issue so I did separated always as below
	  	end


	  	else if (i == 0) begin
	  		FF_Stage[i] <= bus_enable;
	  	end

        
        // else if(i == NUM_STAGES - 1) begin   //Final FF       ----->  (1)
        //     data_SYN2 <= FF_Stage [i-1]; 
        // end
	  	
	  	else begin
	        FF_Stage[i] <= FF_Stage[i-1];		
	  	end

	  end
	end  



	always @(*) begin               //I did this separated always for data_sync to avoid multtiple driver issue caused when I used --> (1)
		if(!RST_n) begin
			data_SYN2 = 0;          // why I need to do that while the out is right --> as in the first solutoion for a certain period of time at beginning 
		end else begin              // the data_sync has an unknown value so I need to avoid this by reseting and can't use 1 so I did this separated always 
			 data_SYN2 = FF_Stage [NUM_STAGES - 1] ;
		end
	end
	
endgenerate


/////////////////////////////////////////////
/////////////// Pulse Generator /////////////
/////////////////////////////////////////////

always @(posedge CLK or negedge RST_n) begin
	if (!RST_n) begin
	 pulse_gen <= 1'b0;
	 Q_in  <= 1'b0;
	end

	else begin
     Q_in <= data_SYN2;
	 pulse_gen <= ~Q_in & data_SYN2 ;	
	end
end



/////////////////////////////////////////////
//////////////// SYNC BUS ///////////////////
/////////////////////////////////////////////


always @(posedge CLK or negedge RST_n) begin
	if (!RST_n) begin
	   SYNC_bus <= 1'b0;
	end

	else begin
	  SYNC_bus <= (pulse_gen)? UNSYNC_bus : SYNC_bus;	
	end
end



/////////////////////////////////////////////
///////////////// Enable Bus ////////////////
/////////////////////////////////////////////

always @(posedge CLK or negedge RST_n) begin
	if (!RST_n) begin
	  enable_pulse <= 1'b0;
	end

	else begin
	  enable_pulse <= pulse_gen;	
	end
end



endmodule







///////////////////////////////////////////////////////////////////////////
////////////////////////////TESTBENCH /////////////////////////////////////
///////////////////////////////////////////////////////////////////////////






// module Data_Sync_tb;

// parameter PERIOD_CLOCK = 100;
// parameter BUS_WIDTH  = 'd8;
// parameter NUM_STAGES = 'd4;


// reg RST_n   ;
// reg CLK     ;
// reg bus_enable ;
// reg [BUS_WIDTH -1  : 0] UNSYNC_bus ;

// wire enable_pulse ;
// wire [BUS_WIDTH - 1 : 0] SYNC_bus;


// Data_Sync #(.NUM_STAGES(NUM_STAGES) , .BUS_WIDTH(BUS_WIDTH) ) dut (

// .CLK(CLK)     ,
// .RST_n(RST_n)   ,
// .bus_enable(bus_enable) ,
// .UNSYNC_bus(UNSYNC_bus) ,
// .enable_pulse(enable_pulse) ,
// .SYNC_bus(SYNC_bus)

// );


// integer i;


// always #(PERIOD_CLOCK/2) CLK = ~ CLK ;


// initial begin

// CLK   = 0 ;
// bus_enable = 0 ; 
// UNSYNC_bus = 0;

// RST_n = 1'b0 ;
// #(PERIOD_CLOCK);
// RST_n = 1'b1;


// @(negedge CLK)      ;
// UNSYNC_bus = 8'hF2  ;
// #(2 * PERIOD_CLOCK) ;
// bus_en_zero_to_one();
// CHECK_RESULT(UNSYNC_bus);

// #(PERIOD_CLOCK)     ;
// UNSYNC_bus = 8'hAA  ;

// #(PERIOD_CLOCK)
// bus_en_one_to_zero();
// UNSYNC_bus = 8'hBB;
// #(3 * PERIOD_CLOCK);
// if(SYNC_bus != UNSYNC_bus) $display("RIGHT SYNC DATA");
// else $display("WRONG SYNC DATA");




// RST_n = 1'b0 ;
// #(PERIOD_CLOCK);
// RST_n = 1'b1;

// $stop;

// end




// task CHECK_RESULT(input [BUS_WIDTH-1 : 0] expected_out);

// begin
	
// #((NUM_STAGES + 2) * PERIOD_CLOCK);
// if(expected_out == SYNC_bus) $display("RIGHT DATA");
// else $display("WRONG DATA !");

// if(enable_pulse == bus_enable)  $display("RIGHT enable");
// else $display("WRONG enable !");

// end

// endtask



// task bus_en_one_to_zero();

// begin
// @(negedge CLK);

// bus_enable = 1'b1;
// #(5 * PERIOD_CLOCK) 
// bus_enable = 1'b0;
// end

// endtask


// task bus_en_zero_to_one();

// begin
// @(negedge CLK);


// bus_enable = 1'b0;
// #(5 * PERIOD_CLOCK) 
// bus_enable = 1'b1;
// #(2 * PERIOD_CLOCK)
// UNSYNC_bus = 8'hCC;
// bus_enable = 1'b0;
// #(2 * PERIOD_CLOCK)
// bus_enable = 1'b1;
// end

// endtask





// endmodule