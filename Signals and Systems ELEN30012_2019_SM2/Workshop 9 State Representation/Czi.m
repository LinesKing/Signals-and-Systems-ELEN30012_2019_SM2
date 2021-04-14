clear all
close all
clc

%% Q5
A = [0 1;-2 -2];
B = [0;1];
C = [2 0];
D = [0];
x0 = [1/2;0];
i=1;
for t = 0:0.1:10
    vzi(i) = C*expm(A.*t)*x0;
    i=1+i;
end
t = 0:0.1:10;
figure(1);
plot(t,vzi);
title('Zero input response')
xlabel('t / s');
ylabel('vzi / V');
grid on;
vzi2 = vzi(21)

%% Q7
T = 0:0.1:10;
V = zeros(length(T),1);
sys = ss(A,B,C,D);
Vzi = lsim(sys,V,T,x0);
figure(2);
plot(T,Vzi);
title('Zero input response');
xlabel('t / s');
ylabel('vzi / V');
grid on;

