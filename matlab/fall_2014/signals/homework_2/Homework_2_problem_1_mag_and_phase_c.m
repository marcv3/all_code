% (c)
t = linspace(0,20,1e5);
xsum = zeros(size(t));
w = (1);
a = 1/2;
xsum = a;
mag = zeros(1,100);
num = zeros(1,100);
phase = zeros(1,100);
for n = 1:100
   xsum = xsum + 1./(n.*pi) .* cos((n.*w.*t + (pi/2) ));
   x = 1./(n.*pi) .* cos((n.*w.*t + (pi/2) ));
   mag(n) = max(x);
   num(n) = n;
   phase(n) = + (pi/2);
end

stemplot(mag, num)
title('magnitude plot problem c');
stemplot(phase, num)
title('phase plot problem c');