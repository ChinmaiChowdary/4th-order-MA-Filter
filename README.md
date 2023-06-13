# 4th-order-MA-Filter

Using the MATLAB editor, a message has been created and a noise signal added to it. Noise = (b-a) is the formula for the noise function.noise = noise; *rand(length(sine_wave),1) + a. The aforementioned data must be transformed into binary data before being fed into the moving average filter. The generated data is placed in the signal.data file after first being converted from real values into integer data type and then into binary data using the function dec2bin.

The main module begins with the module declaration along with inputs and outputs. After deciding on the order (number of taps) for your FIR and obtaining your coefficient values, the next set of parameters that must be defined is the bit width of the input samples, output samples, and the coefficients themselves. Four delays are constructed using D flip-flops and multiplication operation is used to multiply respected coefficients with their delays and finally addition operation is used to generate output. 
Another module DFF is created to allow main module to insert delays. The testbench is used to call the binary signal.data file and Verilog main module (by instantiating) and perform the filtering operation on the above the noisy signal.




![image](https://github.com/ChinmaiChowdary/4th-order-MA-Filter/assets/119433702/6793f425-13f5-4fec-a1da-d42b5c505f21)
Noisy signal output from MATLAB




![image](https://github.com/ChinmaiChowdary/4th-order-MA-Filter/assets/119433702/113c8500-07a6-42df-8cf7-b976c6b636b4)

register transfer logic of 4th order Moving Average FIR Filter


![image](https://github.com/ChinmaiChowdary/4th-order-MA-Filter/assets/119433702/dc9c3995-28e3-4fd9-9dde-39e3544928d0)
Vivado simulation output


![matlab veriifiction](https://github.com/ChinmaiChowdary/4th-order-MA-Filter/assets/119433702/75806e52-b46a-4b47-929f-b0fd00e22355)
MATLAB verification




![sim](https://github.com/ChinmaiChowdary/4th-order-MA-Filter/assets/119433702/1f86f774-4a76-4b04-b172-ed70872e3c7e)

Simulink design




![simulink](https://github.com/ChinmaiChowdary/4th-order-MA-Filter/assets/119433702/2808f522-a745-45d1-aabd-a968bca8b9f6)
Simulink verification

