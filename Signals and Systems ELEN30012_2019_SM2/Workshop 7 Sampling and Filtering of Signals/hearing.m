clear all
close all
clc

%% Q6
A=0.1;
f0 = 17000;
Fs = 44100
n = 0:88200;
y = A*cos(2*f0*pi*n/Fs);
sound(y,Fs);