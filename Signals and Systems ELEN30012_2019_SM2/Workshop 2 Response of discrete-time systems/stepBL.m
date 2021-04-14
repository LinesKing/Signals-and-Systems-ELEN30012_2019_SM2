clear all
close all
clc

%Q8%
syms y k n
y(n)=symsum(1.05^k, k, 0, n)

%Q9%
n=0:24;
ysBL=y(n);
figure(1);
stem(n,ysBL);
save('ysBL.mat','ysBL');
double(ysBL(25))

%Q11%
z(1)=1;
for n=1:24
    z(n+1)=(1+0.05)*z(n)+1;
end
i=0 : 24;
figure(2);
stem(i,z);