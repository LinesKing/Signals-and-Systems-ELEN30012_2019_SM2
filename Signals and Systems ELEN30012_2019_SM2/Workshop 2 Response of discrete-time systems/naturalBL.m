clear all
close all
clc

%% Q4
syms y n
y(n)=-10*1.05.^n;
n=0:24;
figure(1);
yzBL=y(n);
save('yzBL.mat','yzBL');
stem(n,yzBL);
double(yzBL(25))

%% Q6
z(1)=-10;
for n=1:24
    z(n+1)=(1+0.05)*z(n);
end
figure(2);
i=0 : 24;
stem(i,z);