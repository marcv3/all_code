clear;
clc;
clf;

t1 = linspace(0,.08,1e3);
t2 = linspace(.08,1,1e3);

x = heaviside(t1) - 1;

y = -20.*t2 + 1.6;

plot(t1,x,'b',t2,y);
axis([0 1 -20 10]);
grid on
xlabel('f (Hz)');
ylabel('dB');