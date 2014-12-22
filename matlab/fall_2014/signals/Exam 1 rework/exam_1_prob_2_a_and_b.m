t = linspace(-5,5,1e5);

h = heaviside(t);
e = exp(-2*t);

step = e .* h;

subplot(1,2,1);
plot(t,step);
title('Problem 2 (a)');
xlabel('t');
ylabel('exp(-2*t)*h(t)');

other_step = exp(-2*abs(t));
subplot(1,2,2);
plot(t,other_step);
title('Problem 2 (b)');
xlabel('t');
ylabel('exp(-2*abs(t))');

%%
clear;
clc;

%t = linspace(-5, 5, 1e5);
syms t;
x = exp(-2*abs(t));
int(x^2,t,-inf,inf)

y = exp(-2*t);
%plot(t,x)

%%
clear;
clc;

syms t;
h = heaviside(t);
x = exp(-2*t)*h;
int(x^2,t,0,inf)


