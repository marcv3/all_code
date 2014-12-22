% (f) again

t = linspace(0,20,1e5);
xsum = zeros(size(t));
w = (pi)/3;
a = (0.5);
xsum = a;
for n = 1:100
   Cn = (6/((pi^2)*(n^2))) * (cos((n*pi)/3) - cos((2*n*pi)/3));
   xsum = xsum + Cn .* cos((n.*w.*t ));
   x = Cn .* cos((n.*w.*t ));
   mag(n) = max(x);
   num(n) = n;
   phase(n) = 0;
end

stemplot(mag, num)
title('magnitude plot problem f');
stemplot(phase, num)
title('phase plot problem f');