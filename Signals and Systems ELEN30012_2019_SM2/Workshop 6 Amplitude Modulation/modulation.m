clear all
close all
clc

%% Q5
Fs = 8192;
t = [0:1/Fs:1];
xs = sin(2*pi*100*t + 2*pi*100*(t.*t));
sound(xs,Fs);
Xk = fft(xs,Fs);
AXk = abs(Xk);
figure(1);
plot(AXk);
xlabel('k');
ylabel('Magnitude of Xk');
title('Magnitude of Xk');

%% Q7
figure(2);
plot(-4096:4095,[AXk(4096:8192) AXk(1:4095)]);
xlabel('f/Hz');
ylabel('Magnitude of Xk');
title('Magnitude of Xk');


%% Q8
%(a)
t = 0:1/Fs:0.05;
x = sin(2*pi*100*t + 2*pi*100*(t.*t));
h = cos(2*pi*1000*t);
y = x.*h;
figure(3);
plot(t,x,t,y);
legend('x','y')
xlabel('t/s');
ylabel('x/y');
title('Modulation');
%(b)
Fs = 8192;
t = [0:1/Fs:1];
xs = sin(2*pi*100*t + 2*pi*100*(t.*t));
h = cos(2*pi*1000*t);
ys = xs.*h;
Yk = fft(ys,Fs);
AYk = abs(Yk);
figure(4);
plot(-4096:4095,[AXk(4096:8192) AXk(1:4095)]);
hold on;
plot(-4096:4095,[AYk(4096:8192) AYk(1:4095)]);
legend('Xk','Yk');
xlabel('f/Hz');
ylabel('Magnitude');
title('Magnitude');
sound(ys,Fs);