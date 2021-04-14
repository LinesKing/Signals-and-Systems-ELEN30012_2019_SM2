clear all
close all
clc

%% Q10
A = [0 1;-1/6 -5/6];
B = [0;1];
C = [1 0];
D = 0;
x0 = [2 -2];
T = 0:0.1:10;
V = zeros(length(T),1);
sys = ss(A,B,C,D);
yzi = lsim(sys,V,T,x0);
figure();
plot(T,yzi);
xlabel('t / s');
ylabel('yzi / V');
title('Zero input response yzi')
grid on;

%%
%syms t
%pretty([-1-1i -1+1i;2 2]*[exp((-1+1i)*t) 0;0 exp((-1-1i)*t)]*[1i/2 1/4+1i/4;-1i/2 1/4-1i/4])

%% Q12
a = [0 1;-2 -3];
c = [1 0];
x0 = [2 ; -2];

sys = ss(a,[],c,[]);
figure();
initial(sys,x0);
title('Zero input response ycl')
grid on;

F = [-11/6 -13/6];
i=1;
for t = 0:0.1:10
    d(i) = F*expm(a.*t)*x0;
    i=1+i;
end
t = 0:0.1:10;
figure();
plot(t,d);
title('control input d')
xlabel('t / s');
ylabel('vzi / V');
grid on;