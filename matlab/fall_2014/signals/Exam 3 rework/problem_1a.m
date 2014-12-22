clear;
clc;
clf;

t = linspace(0,7,1e3);
x = exp(-2.*(t - 3)).*heaviside(t - 3);

x1 = [1,exp(-1),exp(-2)];
t1 = [3,3.5,4];

plot(t,x);
hold on;
stem(t1,x1);
xlabel('t');
ylabel('x(t)');

%%

syms t s;

x = exp(-2.*(t - 3));