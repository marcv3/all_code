clear;
clc;
syms z
syms t

x = int( ( sin(2*pi*10*z + (pi/4)) + cos(2*pi*20*z + (pi/3)) )^2, 0, .1)
x * (1/(2*.1))

%%
syms x
syms o

sin(4*pi + 2*x)/(2*o) - sin(2*x)/(2*o)