%(d) again
clear;
clc;

t = linspace(0,10,1e5);
xsum = zeros(size(t));
w = (2);
a = 0;
for n = 1:100
   xsum = xsum + (2./(pi.*n))*((2./(pi.*n)).*sin((pi.*n)./2) - cos((pi.*n)./2)) .* cos((n.*w.*t - ((pi)/2) ));
   x = (2./(pi.*n))*((2./(pi.*n)).*sin((pi.*n)./2) - cos((pi.*n)./2)) .* cos((n.*w.*t - ((pi)/2) ));
   mag(n) = max(x);
   num(n) = n;
   phase(n) = - ((pi)/2);
end

stemplot(mag, num)
title('magnitude plot problem d');
stemplot(phase, num)
title('phase plot problem d');