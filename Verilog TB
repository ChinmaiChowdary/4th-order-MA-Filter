module MA_TB; 

parameter N = 16;

reg clk, rst;
reg [N-1:0] noisy_data;
reg [N-1:0] original_data;
wire [N-1:0] filtered_data; 

MA_Filter uut(clk, rst, noisy_data, filtered_data);

// input sine wave data
initial begin
$readmemb("signal.data", noise);
$readmemb("signalwave.data", wave);
end
// Create the noise and wave
reg [N-1:0] noise [94:0]; 
reg [N-1:0] wave [94:0]; 

// create a clock
initial begin
clk = 0;
rst = 0;
end
always 
#10 clk = ~ clk;  

// Read noise and wave data and give to design
always@(posedge clk) begin
    noisy_data <= noise[Addr];
    original_data <= wave[Addr];
    
// Address counter
reg [4:0] Addr; 
initial
Addr = 1; 
always@(posedge clk)
begin
    if (Addr == 94)
        Addr = 0; 
    else
        Addr = Addr + 1; 
end     

endmodule
