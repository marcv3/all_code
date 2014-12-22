clear;
clc;

t = linspace(0,20,1e5);

x = cos(2*pi*t);
y = sin(1.5*pi*t);

z = x.*y;

clf;

subplot(2,1,1); plot(t,x,t,y);
grid('on');

subplot(2,1,2);
plot(t,z);

grid('on');