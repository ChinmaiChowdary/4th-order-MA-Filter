% Generate a sine wave
close all; 
clear all;
fs = 10;
Amp = 1;
t = 0:1/fs:3*pi; % time vector
sine_wave = Amp*sin(t);
subplot(2,2,1);
plot(t, sine_wave);
xlabel('\bf Time');
ylabel('\bf Amplitude');
title('\bf Sine wave');

% Convert from real to integers
total_wordlength = 16;
scaling = 7;
sine_wave_integers = round(sine_wave.*(2^scaling));
subplot(2,2,3);
plot(1:length(sine_wave_integers), sine_wave_integers);
xlabel('\bf Time');
ylabel('\bf Amplitude');
title('\bf Sine wave + Noise : Scaled Signal');

% Convert from integers to binary
sine_wave_in_binary_signed = dec2bin(mod((sine_wave_integers),2^total_wordlength),total_wordlength);
yy = cellstr(sine_wave_in_binary_signed);
fid = fopen('signalwave.data', 'wt');
fprintf(fid, '%8s \n', yy{:});
disp('text file for signal finished');
