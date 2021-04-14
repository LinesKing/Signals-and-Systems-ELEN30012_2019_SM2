clear all
close all
clc

%% Q8 Plot the amplitude response of S2
R = 1000/9;
C = 358e-6;
w = -1000:1000;
ft = abs(1./(1i*R*C*w+1+R/1000));%the amplitude of response of S2
figure(1);
plot(w,ft,'LineWidth',2);
xlabel('w / rad/s');
ylabel('Amplitude');
title('Amplitude response of S2');
grid on

%% Q9 Find h the impulse response of S2
syms w
H = 1./(1i*R*C*w+1+R/1000);%H(w)
h = ifourier(H);%invert fourier transform for H
pretty(h)
figure(2);
fplot(h,[-0.3 0.3],'LineWidth',2);
xlabel('t/s');
ylabel('h');
title('h(t)');
grid on;

%% Q10 plot the finite complex Fourier series approximation to y
syms t v x;
R = 1000/9;
C = 358e-6;
w0 = 240*pi;
T = 2*pi/w0;
v(t) = 3*cos(120*pi*t);
x(t) = abs(v(t));
cx = zeros(1,41); %intialize a row vector of 41 zeros
cy = zeros(1,41); %intialize a row vector of 41 zeros
for k=1:41
    cx(k) = 1/T * int(x * exp(-1i*(k-21)*w0*t),t,0,T); %cx is fourier coefficient of x
    cy(k) = cx(k)./(1i*(k-21)*R*C*w0+1+R/1000);%cy is fourier coefficient of y
end

y20 = 0;
for k = 1:41
    y20 = cy(k)*exp(1i*(k-21)*240*pi*t) + y20;
end

figure(3);
fplot(y20,[-10e-3 10e-3],'LineWidth',2);
hold on;
title('Forier series response');
xlabel('t');
ylabel('y');
grid on