clear all
close all
clc

%% Q10
A = [0 1;-2 -2];
B = [0;1];
C = [2 0]
[V,L] = eig(A)

%% Q11
P = inv(V)
A_ = P*A/P
B_ = P*B
C_ = C*V

%% Q13
A = [0 1;-2 -2];
B = [0;1];
C = [2 0];
syms t lambda
S = int(expm(L*(t-lambda)),lambda,0,t);
yzs = vpa(C_*S*B_)
subs(yzs,2)

%% Q14
A = [0 1;-2 -2];
B = [0;1];
C = [2 0];
D = [0];
x0 = [0;0];
T = 0:0.1:10;
U = ones(length(T),1);
sys = ss(A,B,C,D);
Vzs = lsim(sys,U,T,x0);
figure(1);
plot(T,Vzs);
title('Zero initial response');
xlabel('t / s');
ylabel('vzi / V');
grid on;

%% Q16
A = [0 1;-2 -2];
B = [0;1];
C = [2 0];
D = [0];
x0 = [1/2;0];
T = 0:0.1:10;
U = ones(length(T),1);
sys = ss(A,B,C,D);
Vzs = lsim(sys,U,T,x0);
figure(2);
plot(T,Vzs);
title('Zero initial response');
xlabel('t / s');
ylabel('vzi / V');
grid on;
