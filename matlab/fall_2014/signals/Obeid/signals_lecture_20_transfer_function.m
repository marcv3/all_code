clear;
clc;

RC = 0.1e-3;
H = @(w) 1./(j*w*RC + 1);

w = linspace(0,10e3,1e4);
t = linspace(-20e-3, 20e-3, 10e4);

a = 5e-3;
x = 0*t;
X = sin(a*w)./(a*w);
x(abs(t)<a) = 1/(2*a);
subplot(3,2,1);
plot(t,x);
axis([-20e-3 20e-3 0 105]);
subplot(3,2,2);
plot(w,abs(X));
xlabel('freq (Radians per Second)');
ylabel('gain');
title('Fourier Transform of Rectangular Pulse');
legend('Vin(w)');

subplot(3,2,4);
plot(w,abs(H(w)));
xlabel('freq (Radians per Second)');
ylabel('gain');
title('Fourier Transform of Low Pass Filter');
legend('H(w)');
axis([0 10e3 0 1]);

subplot(3,2,5);
HH = tf(1,[RC 1]);
y = lsim(HH,x,t);
plot(t,y);

subplot(3,2,6);
plot(w,abs(H(w).*X));
xlabel('freq (Radians per Second)');
ylabel('gain');
title('Fourier Transform of X(w) * H(w)');
legend('Vo(w) = H(w)*Vin(w)');