clear all
close all
clc

%% Q4
t=0:0.01:1;
y=(1-exp(-10*t)).*(t>=0&t<=0.5)+exp(-10*(t-0.5)).*(t>0.5);
save('yp1RC','y');
figure(1);
plot(t,y,'r','linewidth',2)
xlabel('t/s');
ylabel('y/v');
axis([0 1 0 1])
grid on

%% Q7
t=0:0.01:1;
y=exp(-10*t)/0.1;
figure(2);
plot(t,y,'r','linewidth',2)
xlabel('t/s');
ylabel('y/v');
axis([0 1 0 10])
grid on