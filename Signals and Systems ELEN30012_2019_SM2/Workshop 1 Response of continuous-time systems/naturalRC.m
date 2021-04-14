clear all
close all
clc

%Q3%
syms y(t)
R = 1000; C = 0.0001;
eqn = R*C*diff(y,t)+y == 0;
cond = y(0) == 1;
y(t) = dsolve(eqn,cond)

%Q4%
t=0:0.001:1;
yzRC=y(t);
save('yzRC.mat','yzRC');
plot(t,y(t));
xlabel('Time/s');
ylabel('Voltage/v');

%Q5%
syms t
eqn = y(t) == 0.37*y(0);
xt = double(solve(eqn,t))