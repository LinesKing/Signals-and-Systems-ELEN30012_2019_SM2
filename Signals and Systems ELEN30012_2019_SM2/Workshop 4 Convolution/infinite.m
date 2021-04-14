clear all
close all
clc

n1 = 2:26;
xtrun = (1/2).^(n1-2).*(n1>=2);
n2 = -2:14;
htrun = (n2>=-2);
ytrun = conv(htrun,xtrun);
n3= 0:40;
stem(n3,ytrun,'b');
hold on;
t= 1:17;    
n = 0:16;
stem(n,ytrun(t),'r','*');
legend('ytrun','y[n]');