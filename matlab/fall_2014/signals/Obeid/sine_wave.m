clear;
clc;

k = 5;
phi = 0;
f = 2;
t = linspace(0,2,1e3);
x = k*cos(2*pi*f*t + phi);

y = 1*cos(2*pi*4*t);
z = sawtooth(2*pi*f*t);
hold('on');
plot(t,x,t,y,t,z);
xlabel('time');
ylabel('magnitude');