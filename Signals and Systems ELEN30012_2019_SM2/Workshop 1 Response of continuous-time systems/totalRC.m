clear all
close all
clc

%Q13%
syms y(t)
R = 1000; C = 0.0001;
eqn = R*C*diff(y,t)+y == 2;
cond = y(0) == 1;
y(t) = dsolve(eqn,cond);
t=0:0.001:1;
yoRC=(y(t));
save('yoRC.mat','yoRC');
figure(1);
plot(t,y(t));
xlabel('Time/s');
ylabel('Voltage/v');

%Q14%
load('yzRC');
load('ysRC');
figure(2);
plot(t,yzRC+ysRC);
xlabel('Time/s');
ylabel('Voltage/v');

%Q16%
syms y(t)
R = 1000; C = 0.0001;
eqn = R*C*diff(y,t)+y == 2;
cond = y(0) == 4;
y(t) = dsolve(eqn,cond);
t=0:0.001:1;
yoRC=(y(t));
save('yoRC.mat','yoRC');
figure(3);
plot(t,y(t));
xlabel('Time/s');
ylabel('Voltage/v');

yf=y(1)

syms t
eqn = y(t) == 1.02*yf;
xt = double(solve(eqn,t))

syms t y(t) k0 kt tao
y(t) = kt+(k0-kt)*exp(-t/tao);
%%kt>k0%%
eqn = y(t) == 0.98*kt;
xt1 = solve(eqn,t);
pretty(xt1)
%%kt<k0%%
eqn = y(t) == 1.02*kt;
xt2 = solve(eqn,t);
pretty(xt1)