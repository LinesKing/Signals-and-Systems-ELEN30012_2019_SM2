clear all
close all
clc

%% Part 3(b) zero input
syms yzi(t)
Dy = diff(yzi,t);%%1st derivative of yzi
Dy2 = diff(yzi,t,2);%%2nd derivative of yzi
eqn = Dy2+2*Dy+2*yzi == 0;%%ODE
cond = [yzi(0) == 1, Dy(0) == 0];%%initial conditions
yzi(t) = simplify(dsolve(eqn, cond));%%solve the ODE and simplify the anwser
pretty(yzi)
t=0:0.1:10;
figure(1);
plot(t,yzi(t),'r','linewidth',2);
title('zero-input response');
xlabel('t');
ylabel('yzi');
grid on

%% Part 4(b) step response
syms yst(t)
Dy = diff(yst,t);%%1st derivative of yst
Dy2 = diff(yst,t,2);%%2nd derivative of yst
eqn = Dy2+2*Dy+2*yst == 1;%%ODE
cond = [yst(0) == 0, Dy(0) == 0];%%initial conditions
yst(t) = simplify(dsolve(eqn, cond));%%solve the ODE and simplify the anwser
pretty(yst)
t=0:0.1:10;
figure(2);
plot(t,yst(t),'r','linewidth',2);
title('step response');
xlabel('t');
ylabel('yst');
grid on

%% Part 5(b) pulse response
syms ypul(t)
xpul = heaviside(t) - heaviside(t-0.5);%%Po = 1, x(t) = u(t) - u(t-0.5)
Dy = diff(ypul,t);%%1st derivative of ypul
Dy2 = diff(ypul,t,2);%%2nd derivative of ypul
eqn = Dy2+2*Dy+2*ypul == xpul;%%ODE
cond = [ypul(0) == 0, Dy(0) == 0];%%initial conditions
ypul(t) = simplify(dsolve(eqn, cond));%%solve the ODE and simplify the anwser
pretty(ypul)
figure(3);
t=0:0.1:10;
plot(t,ypul(t),'r','linewidth',2);
title('pulse response');
xlabel('t');
ylabel('ypul');
grid on

%% Part 6(b) impulse response
syms h(t)
ximp = 2*dirac(t);%%As the indefinite integral of the Dirac delta function is sign(x)/2, so delta(t) = 2*dirac(t)
Dy = diff(h,t);%%1st derivative of h
Dy2 = diff(h,t,2);%%2nd derivative of h
eqn = Dy2+2*Dy+2*h == ximp;%%ODE
cond = [h(0) == 0, Dy(0) == 0];%%initial conditions
h(t) = simplify(dsolve(eqn, cond));%%solve the ODE and simplify the anwser
Dy = diff(h,t);
pretty(h)
figure(4);
t=0:0.1:10;
plot(t,h(t),'r','linewidth',2);
title('impulse response');
xlabel('t');
ylabel('h');
grid on