clear all
close all
clc

%% Q11
A = [0 1;1 1];
B = [0;1];
C = [1 0];
D = [0];
x0 = [1;1];
i=1;
for n = 0:10
    yzi(i) = C*A^n*x0;
    i=1+i;
end
figure();
stem(0:10,yzi);
title('Zero input response')
xlabel('n');
ylabel('vzi / V');
grid on;
yzi2 = yzi(11)

%% Q13
V = zeros(11,1);
Yzi = dlsim(A,B,C,D,V,x0);
figure();
stem(0:10,Yzi);
title('Zero input response')
xlabel('n');
ylabel('vzi / V');
grid on;