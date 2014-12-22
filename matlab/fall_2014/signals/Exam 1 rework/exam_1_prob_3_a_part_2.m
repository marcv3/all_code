clear;
clc;

syms t;
syms n;

%T is the period
%
T = 4;

%w is the frequency
%
w = (2*pi) / T;

%Compute the complex forier series coeficients, as well as the exponential
an = (2/T)*(int(cos(n*w*t),t,1,1.5) + int(-.5*cos(n*w*t),t,3,3.5))
bn = (2/T)*(int(sin(n*w*t),t,1,1.5) + int(-.5*sin(n*w*t),t,3,3.5))
cn = (1/2)*sqrt((an^2)+(bn^2))
ao = (1/T)*(int(1,t,1,1.5) + int(-.5,t,3,3.5))