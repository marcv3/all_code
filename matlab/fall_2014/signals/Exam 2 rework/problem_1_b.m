t = linspace(-10,10,1e3);
x = 2*triangularPulse(-3,-2,-1,t) - 2*triangularPulse(3,4,5,t)%+triangularPulse(-5,-4,-3,t) - triangularPulse(1,2,3,t);
y = triangularPulse(-5,-4,-3,t) - triangularPulse(1,2,3,t);

plot(t,y)
axis([-6 6 -3 3]);
title('y(t)');
%title('y(t) + 2y(t - 2)');
grid on;