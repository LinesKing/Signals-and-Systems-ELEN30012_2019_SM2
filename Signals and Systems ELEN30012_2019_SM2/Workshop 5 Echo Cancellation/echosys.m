clear all
close all
clc

%% Q7
%load group_9_echo.mat;
load echotwotwoone;
%sound(y,Fs);
figure(1);
plot(y);
hold on;
ylabel('y');
title('Echo of speech segment');

%% Q8
b = 1;
a = [1 zeros(1,4999) 0.5];
z=filter(b,a,y);
sound(z,Fs);
figure(2);
plot(z);