
/////////////////////////////////////////////////////////////////////
//////////////////////////// PARAMETERS /////////////////////////////
/////////////////////////////////////////////////////////////////////



package parameters_pkg;

typedef enum {RF_W , RF_R , ALU_WC , ALU_WNC} operation_e ;
parameter REF_CLK_PERIOD  =  10           ;        //100MHZ
parameter UART_CLK_PERIOD =  271.2673611  ;        // 3.6864 MHZ  , FOR PRESCALE = 1 -> 271.2673611 , PRESCALE = 2 -> 135.6336806
parameter RX_CLK_PERIOD   =  135.6336806  ;        // in case of prescale = 16
//parameter RX_CLK_PERIOD =  271.2673611  ;        // in case of prescale = 32 
parameter TX_CLK_PERIOD   =  8680.555556  ;        // 115.200 KHZ 

endpackage