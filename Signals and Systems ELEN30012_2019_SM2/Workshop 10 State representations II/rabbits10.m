clear all
close all
clc

%% Q2
A = [0 1;1 1];
B = [0;1];
C = [1 0];
[V,L] = eig(A)

%% Q3
P = inv(V)
A_ = P*A/P
B_ = P*B
C_ = C*V

%% Q5
A = [0 1;1 1];
B = [0;1];
C = [1 0];
syms i n 
S = symsum(L^(n-i-1),i,0,n-1);
yzs = vpa(C_*S*B_,4)
subs(yzs,10)

%% Q6
A = [0 1;1 1];
B = [0;1];
C = [1 0];
D = [0];
x0 = [0;0];
V = ones(11,1);
Yzi = dlsim(A,B,C,D,V,x0);
figure(1);
stem(0:10,Yzi);
title('Zero initial response')
xlabel('n');
ylabel('number of rabbits');
grid on;

%% Q8
A = [0 1;1 1];
B = [0;1];
C = [1 0];
D = [0];
x0 = [1;1];
V = ones(11,1);
Yzi = dlsim(A,B,C,D,V,x0);
figure(2);
stem(0:10,Yzi);
title('Zero initial response')
xlabel('n');
ylabel('number of rabbits');
grid on;