clear all
close all
clc

%% Part 3
x = [1 1 1 1];
h = [1 2 3 4 5];
y = conv(x,h);
ny = -1:6;
figure(1);
stem(ny,y);

%% Part 5
x = [1 0 1];
h = [2 0 -2];
y = conv(x,h);
ny = -1:3;
figure(2);
stem(ny,y);