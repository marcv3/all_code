t = linspace(-10,10,1e3);
x = triangularPulse(-1,0,1,t)+triangularPulse(1,2,3,t)+triangularPulse(3,4,5,t)+triangularPulse(5,6,7,t)
y = triangularPulse(-3,-2,-1,t)+triangularPulse(-5,-4,-3,t)+triangularPulse(-7,-6,-5,t)
w = triangularPulse(5,6,6,t)+triangularPulse(-6,-6,-5,t)
z = x+y;
subplot(2,1,1);
plot(t,z);
axis([-7 7 -3 3]);
title('sampled x(f)');
xlabel('f (Hz)');
grid on;

subplot(2,1,2);
plot(t,w)
axis([-7 7 -3 3]);
title('y(f)');
xlabel('f (Hz)');
grid on;


%%

t = linspace(-10,10,1e3);
w = triangularPulse(5.5,6,6,t)+triangularPulse(-6,-6,-5.5,t)
plot(t,x)
axis([-6 6 -3 3]);
title('x(t)');
grid on;