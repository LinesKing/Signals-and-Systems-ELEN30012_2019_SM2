clear all
close all
clc

%% Q3
t = 0:0.005:1;
x = cos(20*pi*t);
x1 = cos(10*pi*t);
figure(1);
plot(t,x,t,x1,'LineWidth',2);
xlabel('t/s');
ylabel('Signal x and x1');
title('continuous time signal x and x1');
legend('x','x1');

%% Q4
n = 0:15;
y = cos(4*pi*n/3);
y1 = cos(2*pi*n/3);
figure(2);
stem(n,y,'p');
hold on;
stem(n,y1);
xlabel('n');
ylabel('Signal y and y1');
title('discrete time signal y and y1');
legend('y','y1');

%% Q5
n = 0:15;
z = cos(pi*n);
z1 = cos(pi*n/2);
figure(3);
stem(n,z,'p');
hold on;
stem(n,z1);
xlabel('n');
ylabel('Signal z and z1');
title('discrete time signal z and z1');
legend('z','z1');
