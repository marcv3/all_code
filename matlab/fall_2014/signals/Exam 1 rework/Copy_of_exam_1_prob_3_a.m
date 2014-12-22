clear;
clc;

%T is the period
%
T = 4;

%w is the frequency
%
w = (2*pi) / T;

t = linspace(0,20,1e5);
xsum = zeros(size(t));
xsum = (1/16);
for n = 1:1000
 %complex Fourier Series coefficients
 %
   an = (2/(T*n*w))*((sin(n*w*1.5)-sin(n*w))-.5*(sin(n*w*3.5)-sin(n*w*3)));
   bn = (2/(T*n*w))*((-cos(n*w*1.5)+cos(n*w))+.5*(cos(n*w*3.5)-cos(n*w*3)));
 
 %Construct each cosine, and add to build the original function
 %
   xsum = xsum + an.*cos(n.*w.*t) + bn.*sin(n.*w.*t);


end

plot(t,xsum)