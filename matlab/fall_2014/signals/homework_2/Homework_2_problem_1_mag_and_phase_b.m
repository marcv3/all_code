t = linspace(0,100,1e5);
xsum = zeros(size(t));
w = (1/5);
a = 1/5;
xsum = a;
mag = zeros(1,100);
num = zeros(1,100);
phase = zeros(1,100);

for n = 1:100
   xsum = xsum + ( 2/(pi*n)*sin((n*pi)/5) ) * cos((n*w*t) );
   x = ( 2/(pi*n)*sin((n*pi)/5) ) * cos((n*w*t) );
   mag(n) = max(x);
   num(n) = n;
   phase(n) = 0;
end

stemplot(mag, num)
title('magnitude plot problem b');
stemplot(phase, num)
title('phase plot problem b');