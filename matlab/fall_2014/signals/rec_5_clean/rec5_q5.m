%%

%%%%%%%%%%%%%%%%%
%
%  signal 2
%
%%%%%%%%%%%%%%%%%
close all;
clear;
clc;
syms t w;

% symbolic integration
x = exp(-100*t);
xw = int(x*exp(-j*w*t),t,0,0.01)

w1 = linspace(-1e4,1e4,1e3);

Et = int((abs(x.^2)),t,0,0.01)
Ef = int((abs(xw.^2)),w,0,0.01);


% hand calculation

% see if they match up

subplot(2,1,1)
plot(w1,Et)
subplot(2,1,2)
plot(w1,Ef)