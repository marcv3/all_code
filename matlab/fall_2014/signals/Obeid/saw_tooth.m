clc;
clear;

t = linspace(-10,10,1e3);
x = sawtooth(t-pi);
plot(t,x);

c1 = (2/pi)*cos(t-pi/2);
c2 = (1/pi)*cos(2*t + pi/2);

hold('on');
plot(t,c1,'r');
plot(t,c2,'m');
plot(t,c1 + c2,'black');