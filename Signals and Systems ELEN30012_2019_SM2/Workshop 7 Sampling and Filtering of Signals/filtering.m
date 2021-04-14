clear all
close all
clc

%% Q7
load prelude;
sound(y,Fs);
Fs = 44100;
yf = fft(y,Fs);
m = abs(yf);
plot(m)
title('Magnitude');
xlabel('f');
ylabel('Magnitude of yf');
axis([0 2000 0 2500]);

%% Q8
[B,A] = butter(3,[700 900]./22050,'stop');
w = filter(B,A,y);
sound(w,Fs);
wf = fft(w,Fs);
mm = abs(wf);
plot(mm)
title('Magnitude');
xlabel('f');
ylabel('Magnitude of yf');
axis([0 2000 0 1500]);