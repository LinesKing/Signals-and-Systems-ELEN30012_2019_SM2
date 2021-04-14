clear all
close all
clc

%% Q4
n = 0:5000;
x = [1 zeros(1,5000)];
b = [1 zeros(1,4999) 0.5];
a = 1;
he = filter(b,a,x);
figure(1);
plot(n,he)
xlabel('n');
ylabel('he');
title('Unit pulse response');

%% Q5
n = 0:20000;
d=[1 zeros(1,20000)];
b = 1;
a = [1 zeros(1,4999) 0.5];
hz = filter(b,a,d);
figure(2);
plot(n,hz)
xlabel('n');
ylabel('hz');
title('Unit pulse response');

%% Q6
n = 0:25000;
ho = conv(he,hz);
figure(3);
plot(n,ho)
xlabel('n');
ylabel('ho');
title('The cascade connection of the echo system and the echo removal system');
find(ho ~= 0)