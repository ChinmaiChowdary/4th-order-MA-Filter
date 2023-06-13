# 4th-order-MA-Filter

The main module begins with the module declaration along with inputs and outputs. After deciding on the order (number of taps) for your FIR and obtaining your coefficient values, the next set of parameters that must be defined is the bit width of the input samples, output samples, and the coefficients themselves. Four delays are constructed using D flip-flops and multiplication operation is used to multiply respected coefficients with their delays and finally addition operation is used to generate output. 
Another module DFF is created to allow main module to insert delays. The testbench is used to call the binary signal.data file and Verilog main module (by instantiating) and perform the filtering operation on the above the noisy signal.
![image](https://github.com/ChinmaiChowdary/4th-order-MA-Filter/assets/119433702/113c8500-07a6-42df-8cf7-b976c6b636b4)
