clear;
clc;
clf;

t = linspace(0,10,1e3);

x = .5.*exp(-.5.*t);

plot(t,x);
xlabel('t');
ylabel('V');