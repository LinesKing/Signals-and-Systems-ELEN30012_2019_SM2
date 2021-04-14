clear all
close all
clc

%Q8%
syms y(t)
R = 1000; C = 0.0001;
eqn = R*C*diff(y,t)+y == 2;
cond = y(0) == 0;
y(t) = dsolve(eqn,cond)

%Q9%
t=0:0.001:1;
ysRC=(y(t));
save('ysRC.mat','ysRC');
plot(t,y(t));
xlabel('Time/s');
ylabel('Voltage/v');

%Q10%
syms t
eqn = y(t) == 0.63*y(1);
xt = double(solve(eqn,t))