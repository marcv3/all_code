clear; clf;

fs = 1000;
dt = 1/fs;
a = 1;
t = -10:dt:10;

x = 0*t;
x(abs(t)<a) = 1/(2*a);
subplot(3,1,1);
plot(t,x);
axis([-10 10 -1 5]);
xlabel('time (s)');
legend('x(t)');

[x,f] = myFFT(x,fs);
subplot(3,1,2);
plot(f,abs(x));
axis([-5 5 -.1 1.1]);
xlabel('frequency (Hz)');
legend('|x(f)|');

subplot(3,1,3);
plot(f,angle(x));
xlim([-5 5]);
xlabel('frequency (Hz)');
%legend('|x(f)|');