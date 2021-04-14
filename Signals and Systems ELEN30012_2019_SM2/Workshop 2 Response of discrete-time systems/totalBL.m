clear all
close all
clc

%Q13%
syms p k n y0
p(n)=symsum(1.05^k, k, 0, n);
y(n)=p(n)*(0.05*(y0+1)+1)+y0+1

%15%
syms y k n
y(n)=symsum(1.05^k, k, 0, n)
n=0:24;
yoBL=y(n)+1.05.^n*(-10);
figure(1);
stem(n,yoBL);
save('yoBL.mat','yoBL');
double(yoBL(25))

%Q16%
load('ysBL');
load('yzBL');
yy=ysBL+yzBL;
figure(2);
stem(n,yy);

%Q18%
z=-9;
for n=1:24
    z(n+1)=(1+0.05)*z(n)+1;
end
figure(3);
i=0 : 24;
stem(i,z);
z(25)