
clear;
clc;
clf;
%(a)
t = linspace(0,20,1e5);
xsum = zeros(size(t));
w = (pi/2);
mag = zeros(1,100);
num = zeros(1,100);
phase = zeros(1,100);
for n = 1:100
   xsum = xsum + (1 / (n*pi)) * ( 3*sin((n*pi)/2) - sin((n*pi*3)/2) ) * cos((n*w*t));
   x = (1/3).*(1/(-j.*n.*(2.*pi/3))).*(exp(-j.*n.*(2.*pi/3))).*exp(-j.*n.*(2.*pi/3).*t);
   mag(n) = max(x);
   num(n) = n;
   phase(n) = 0;
end


  F = linspace(0,100,1e3);
  f = num.*(1/3);
 stem(f,abs(mag))
hold on;
 title('magnitude plot problem a');

 plot(F,abs(-1./(j.*2.*pi.*F)));



