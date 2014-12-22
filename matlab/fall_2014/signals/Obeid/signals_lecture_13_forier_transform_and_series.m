clear;
clc;

T = 50;
t = linspace(-20, 20, 1e5);
x = 0*t;

for n = 1:5*T
    wn = 2*pi*n/T;
    An = (sin(2*pi*n/T))/(pi*n);
    x = x + 2*abs(An)*cos(wn*t + angle(An));
end

A0 = 2/T;

x = x+A0;

figure(1);
clf;

n = 1:5*T;
w = 2*pi*n/T;
An = (sin(2*pi*n/T))./(pi*n);
subplot(3,1,1);
stem(w,abs(An));
xlim([0,30]);
xlabel('omega (rads/sec)');
ylabel('|An|');

subplot(3,1,2);
plot(t,x);
xlabel('time seconds');
ylabel('x(t)');

grid on;

subplot(3,1,3);
hold on;
w = linspace(0,30,1e4);
A = 0.04*sin(w)./w;

plot(w,abs(A),'r');