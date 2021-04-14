clear all
close all
clc

%% Q11
n=0:24;
y=(20*1.05.^(n+1)-20).*(n>=0&n<5)+(5.5256*1.05.^(n-4)).*(n>=5);
save('ypBL','y');
figure(1);
stem(n,y);
xlabel('n');
ylabel('y');
axis([0 24 0 15])
grid on
y(25)

%% Q13
n=0:24;
y=1.05.^n;
save('yupBL','y');
figure(2);
stem(n,y);
xlabel('n');
ylabel('y');
axis([0 24 0 5])
grid on
y(25)