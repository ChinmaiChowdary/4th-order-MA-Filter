clear all;
clc;

fs = 10;
Amp = 1;
t = 0:1/fs:3*pi; % time vector 
sine_wave = Amp*sin(t);

a = 0.1; % upper limit
b = 0; % lower limit
noise = (b-a).*rand(length(sine_wave),1) + a; noise = noise';

x=sine_wave+noise;
%implementation of a moving average filter 
M=input('desigred length of the filter=');% when the value promt comes put the value in squre brackets[2]
num=ones(1,M);
y=filter(num,1,x)/M; %applies the filter num to the input data located along the specific dimension of 1 specified by  x
subplot(2,2,1);
plot(t,sine_wave);
axis([0 10 -2 2]);
xlabel('\bf Time');
ylabel('\bf Amplitude');
title('\bf Sine wave');


subplot(2,2,2);
plot(t,noise);
axis([0 10 -2 2]);
xlabel('Time');
ylabel('amplitude');
title('noise');

subplot(2,2,3);
plot(t,x);
axis([0 10 -2 2]);
xlabel('\bf Time');
ylabel('\bf Amplitude');
title('\bf Sine wave + Noise');

subplot(2,2,4);
plot(t,y);
axis([0 10 -2 2]);
xlabel('Time');
ylabel('amplitude');
title('output signal');
