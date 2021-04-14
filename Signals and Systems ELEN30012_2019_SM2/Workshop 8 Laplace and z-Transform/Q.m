clear all
close all
clc

%% Q2
A = [1 2 2 0];
B = 2;
[R,P,K] = residue(B,A)

%% Q3
syms s
H = 2/(s^3+2*s^2+2*s);
h = ilaplace(H)
h = matlabFunction(h)
h(2)

%% Q12
a = [1 -2 0 1];
b = 1;
[r,p,k] = residue(b,a)

%% Q12
syms z
F = z/(z-1)/(z^2-z-1);
f = iztrans(F)
f = matlabFunction(f)
f(10)