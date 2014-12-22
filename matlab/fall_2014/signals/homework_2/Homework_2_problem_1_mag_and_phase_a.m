
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
   x = (1 ./ (n.*pi)) .* ( 3.*sin((n.*pi)./2) - sin((n.*pi.*3)/2) ) .* cos((n.*w.*t));
   mag(n) = max(x);
   num(n) = n;
   phase(n) = 0;
end

  plot(t,xsum);
  figure(1);
  
 stemplot(mag, num)
   figure (2);
 title('magnitude plot problem a');


 stemplot(phase, num)
   figure(3);
 title('phase plot problem a');


