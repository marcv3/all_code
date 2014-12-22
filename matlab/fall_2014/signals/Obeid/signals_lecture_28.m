clear;
clc;
RC = 1e-3;
H = tf(1,[RC 1]);

w1 = 100;
w2 = 10000;

nPer = 10;

tmax = 2*pi*nPer/w1;
tmin = 0;

t = linspace(tmin, tmax, 1e4);

x = cos(w1*t) + cos(w2*t);
plot(t,x);



dt = t(2) - t(1);
fs = 1/dt;

y = lsim(H, x, t);
plot(t,x,t,y, 'linewidth', 3);
legend('x','y');


[X,f] = myFFT(x,fs);
Y = myFFT(y,fs);
figure(2); clf;
W = 2*pi*f;
plot(W,abs(X),W ,abs(Y));
xlim([0 20e3]);
