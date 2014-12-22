clear; clf;

t = linspace(-20, 20, 1e5);
a = 2;
x = 0*t;
x(abs(t)<a) = 1/(2*a);
subplot(1,2,1);
plot(t,x);
axis([-20 20 -.1 0.5]);

w = linspace(-50,50,1e5);
A = sin(a*w)./(a*w);
subplot(1,2,2); 
plot(w, abs(A)); 
axis([-10 10 -.1 1]);