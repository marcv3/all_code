clear;
clc;

t = linspace(0,10,1e5);
x = cos(2*pi*t);
subplot(2,1,1);
plot(t,x);
dt = t(2) - t(1);
fs = 1/dt;
[X,f] = myFFT(x,fs);
subplot(2,1,2);
plot(f,abs(X));