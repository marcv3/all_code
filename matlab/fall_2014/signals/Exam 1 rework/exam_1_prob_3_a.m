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
   an = (sin((3*pi*n)/2) - sin((7*pi*n)/4))/(2*pi*n) - (sin((pi*n)/2) - sin((3*pi*n)/4))/(pi*n);
   bn = (cos((pi*n)/2) - cos((3*pi*n)/4))/(pi*n) - (cos((3*pi*n)/2) - cos((7*pi*n)/4))/(2*pi*n);
 
 %Construct each cosine, and add to build the original function
 %
   xsum = xsum + an.*cos(n.*w.*t) + bn.*sin(n.*w.*t);


end

plot(t,xsum)