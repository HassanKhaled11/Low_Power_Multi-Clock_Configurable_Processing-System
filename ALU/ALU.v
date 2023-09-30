module ALU #(parameter OPERAND_WIDTH = 'd8 , FUN_WIDTH = 'd4)(

input CLK,
input RST_n,
input  [OPERAND_WIDTH - 1 :0] A,
input  [OPERAND_WIDTH - 1 :0] B,
input  [FUN_WIDTH - 1 :0]  ALU_FUN,
input  Enable,

output  reg [(2 * OPERAND_WIDTH) - 1 :0] ALU_OUT,
output  reg OUT_VALID

);


always @(posedge CLK or negedge RST_n)
  begin

   if(!RST_n) begin
      ALU_OUT   <= 0 ;
      OUT_VALID <= 0 ;
   end
     
   else if(Enable) begin
     
          case (ALU_FUN)

       	// ARITHMATIC OPERATION
           4'b0000: begin ALU_OUT <= A + B ; OUT_VALID <= 1; end
       	  4'b0001: begin ALU_OUT <= A - B ; OUT_VALID <= 1; end
       	  4'b0010: begin ALU_OUT <= A * B ; OUT_VALID <= 1; end
       	  4'b0011: begin ALU_OUT <= A / B ; OUT_VALID <= 1; end
       
        // LOGICL OPERATIONS
           4'b0100: begin ALU_OUT <=   A & B  ; OUT_VALID <= 1;  end   
           4'b0101: begin ALU_OUT <=   A | B  ; OUT_VALID <= 1;  end
           4'b0110: begin ALU_OUT <= ~(A & B) ; OUT_VALID <= 1;  end
           4'b0111: begin ALU_OUT <= ~(A | B) ; OUT_VALID <= 1;  end
           4'b1000: begin ALU_OUT <=   A ^ B  ; OUT_VALID <= 1;  end
           4'b1001: begin ALU_OUT <= ~(A ^ B) ; OUT_VALID <= 1;  end

        // COMPARISON OPERATIONS
           4'b1010: begin ALU_OUT <= ((A == B)? 16'd1 : 0); OUT_VALID <= 1; end
           4'b1011: begin ALU_OUT <= ((A > B) ? 16'd2 : 0); OUT_VALID <= 1; end
           4'b1100: begin ALU_OUT <= ((A < B) ? 16'd3 : 0); OUT_VALID <= 1; end          

        // SHIFT OPERATIONS  
           4'b1101: begin ALU_OUT <= A >> 1 ; OUT_VALID <= 1; end
           4'b1110: begin ALU_OUT <= A << 1 ; OUT_VALID <= 1; end

       	 default: begin ALU_OUT <=  0 ; OUT_VALID <= 0; end
       	endcase	
  end
end

endmodule



///////////////////////////////////////////////////////////////////////////
////////////////////////////TESTBENCH /////////////////////////////////////
///////////////////////////////////////////////////////////////////////////



// `timescale 1us / 100ns

// module ALU_tb;

// parameter OPERAND_WIDTH = 8 ;
// parameter FUN_WIDTH = 4;

// reg CLK_top;
// reg RST_n_top;
// reg [OPERAND_WIDTH-1 : 0] A_top,B_top;
// reg [3:0]  ALU_FUN_top ;
// reg Enable ;

// wire [(2 * OPERAND_WIDTH) - 1 :0] ALU_OUT;
// wire OUT_VALID;



// ALU #(.OPERAND_WIDTH(OPERAND_WIDTH) , .FUN_WIDTH(FUN_WIDTH)) DUT
// (
// .CLK(CLK_top),
// .RST_n(RST_n_top),
// .A(A_top),
// .B(B_top),  
// .ALU_FUN(ALU_FUN_top),
// .Enable(Enable),

// .OUT_VALID(OUT_VALID),
// .ALU_OUT (ALU_OUT)
// );


// // CLOCK GENERATION
// always #2 CLK_top = ~CLK_top ;


// initial begin 
// Enable = 0;
// A_top = 0;
// B_top = 0;
// ALU_FUN_top = 0;
// CLK_top = 0 ;

// RST_n_top = 0;
// #15;
// RST_n_top = 1;
// #10;


// Enable = 1;
// // ARITHMATTIC TEST
// A_top = 30;
// B_top = 15;
// ALU_FUN_top = 2 ;  
// #10;
// if(ALU_OUT == 450 ) $display("Arithmatic op RIGHT");
// else $display("Arithmatic op WRONG");



// // LOGIC TEST
// A_top = 5;
// B_top = 20;
// ALU_FUN_top = 4 ;     // A & B
// #10;
// if(ALU_OUT == 4) $display("Logic op RIGHT");
// else $display("Logic op WRONG");


// // Compare TEST
// A_top = 5;
// B_top = 20;
// ALU_FUN_top = 11 ;    // A < B
// #10;
// if(ALU_OUT == 0) $display("Compare op RIGHT");
// else $display("Compare op WRONG");


// // Shift TEST
// A_top = 5;
// B_top = 20;
// ALU_FUN_top = 14 ;  
// #10;                    
// if(ALU_OUT == 10 ) $display("Shift op RIGHT");
// else $display("Shift op WRONG");


// A_top = 10;
// B_top = 20;
// ALU_FUN_top = 13 ;  
// #10;      


// #30;
// $stop;


// end


// endmodule
