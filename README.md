## LOW_Power_Multi-Clock_Configurable_Processing_System

#####      _____________________________________________________________________________________________________________________________ 

### Low-Power Multi-Clock Configurable Digital Processing System is a System that executes commands (unsigned arithmetic operations, logical operations, register file read & write operations) which are received from an external source through UART receiver module and it transmits the commands' results through the UART transmitter module


<img src= "https://github.com/HassanKhaled11/Low_Power_Multi-Clock_Configurable_Processing-System/assets/95179055/390f8574-cefd-4fd4-acc9-b84e10116812" width = "1000">

 #### _____________________________________________________________________________________________________________________________

## This is a full ASIC design project (from RTL to GDS). It goes through the ASIC design flow from frontend to backend and Full Advanced Verification Environment Using UVM:


## PART 1 - RTL To GDS 

### - System's architecture design.

### - Synthesizable Verilog RTL modelling (behavioral modelling, structural modelling, and FSM coding) of all the system blocks from scratch (UART transmitter and receiver, clock divider, ALU, register file, parametrized data and bit synchronizers, reset synchronizer, and system's main controller).

### - Solving CDC issues by using synchronizers.

### - Functional verification using self-checking testbenches with Do Files For Different Configurations.

### - Logic synthesis using Synopsys Design Compiler.

### - Formal verification post logic synthesis using Synopsys Formality.

<img src ="https://github.com/HassanKhaled11/Low_Power_Multi-Clock_Configurable_Processing-System/assets/95179055/7fa9e676-5842-4ade-a4cf-13215d5a5e4c" >

### - Design for testability (DFT) using Synopsys DFT Compiler.

### - Formal verification post DFT using Synopsys Formality.

### - Physical design (floor planning, power planning, placement, CTS, routing, timing closure, and chip finishing) using Cadence innovus.

### - Formal verification post physical design using Synopsys Formality.

<img src="https://github.com/HassanKhaled11/Low_Power_Multi-Clock_Configurable_Processing-System/assets/95179055/be508a14-64a2-4f99-83d1-bd34a4365b78" width ="1000" >

 #### _____________________________________________________________________________________________________________________________


## PART 2 - Verification Using UVM

<img src = "https://github.com/HassanKhaled11/Low_Power_Multi-Clock_Configurable_Processing-System/assets/95179055/12c58c16-4132-4f7b-bee4-c271655c1baf" width = "1000">

### -  Utilized the UVM verification methodology to comprehensively verify the full system.Adopted a modular and reusable approach to design the verification environment.

### -     Implemented multiple tests within the UVM environment to assess different configurations and scenarios. Leveraged the reusability aspect of UVM to efficiently create and reuse testbenches for various test cases.

### - Coverage-Driven Verification--> Applied coverage-driven verification to ensure a thorough exploration of the design space.Utilized functional coverage to capture and analyze functional aspects of the design.Employed code coverage to assess the completeness of code exercised during simulation.


### - Code Coverage --> Monitored and analyzed code coverage metrics to gauge the effectiveness of the test suite.Utilized code coverage results to identify untested portions of the design and enhance test completeness.

### - Functional Coverage --> Employed functional coverage metrics to track the completeness of functional scenarios exercised during simulation.Utilized functional coverage to ensure a diverse set of scenarios is covered, reducing the risk of functional gaps.

<img src ="https://github.com/HassanKhaled11/Low_Power_Multi-Clock_Configurable_Processing-System/assets/95179055/b857588e-083b-4f52-b8d6-20024a3335ea" width = "700">

### - Assertions --> Integrated assertions to capture and verify specific design properties and behaviors.Leveraged assertions for runtime checking of critical conditions, aiding in the identification of potential issues.

<img src ="https://github.com/HassanKhaled11/Low_Power_Multi-Clock_Configurable_Processing-System/assets/95179055/71a97d31-bd79-4537-b6c5-b12203a0f689" width="700">

### - Continuous Improvement --> Iteratively refined the verification environment based on feedback and results.

## - For More Details and Documentation Check System_Documentation pdf in the main Repo -
