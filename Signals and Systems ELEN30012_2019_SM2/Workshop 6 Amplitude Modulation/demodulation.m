clear all
close all
clc

%% Q9
Fs = 8192;
t = [0:1/Fs:1];
xs = sin(2*pi*100*t + 2*pi*100*(t.*t));
h = cos(2*pi*1000*t);
ys = xs.*h;
ws = ys.*h;
Wk = fft(ws,Fs);
AWk = abs(Wk);
figure(1);
plot(-4096:4095,[AWk(4096:8192) AWk(1:4095)]);
sound(ws,Fs);
xlabel('k');
ylabel('Magnitude of Wk');
title('Magnitude of Wk');

%% Q10
%(a)
[B,A] = butter(5,0.1);
%(b)
xs = sin(2*pi*100*t + 2*pi*100*(t.*t));
sound(xs,Fs);
Xk = fft(xs,Fs);
AXk = abs(Xk);
zs = filter(B,A,ws);
sound(zs,Fs);
Zk = fft(zs,Fs);
AZk = abs(Zk);
figure(2);
plot(-4096:4095,[AXk(4096:8192) AXk(1:4095)]);
hold on;
plot(-4096:4095,[AZk(4096:8192) AZk(1:4095)]);
legend('Xk','Zk');
xlabel('k');
ylabel('Magnitude');
title('Magnitude');

