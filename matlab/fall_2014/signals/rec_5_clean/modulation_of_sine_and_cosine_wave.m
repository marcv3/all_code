clear;
clc;

t = linspace(0,50,1e3);

x = cos(2.*pi.*100.*t);
y = sin(2.*pi.*500.*t);
plot(t,y.*x);
title('modulated cos and sin waves');
xlabel('t');

z = fft(y.*x);

%plot(t,z)
