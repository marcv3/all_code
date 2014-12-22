clear;
clc;

T = 5;
%t=-5*T:1/2*T:5*T; 

t = linspace(-10,10,1e3);

y=1*rectpuls((t+1.5),1) - rectpuls((t -4.5),1);

x = rectpuls((t + 2.5),1);

z = rectpuls((t - 2.5),1);

subplot(2,2,1);
plot(t,y)
axis([-7 7 -4 4]);
title('h(tau)');

subplot(2,2,2);
plot(t,x)
axis([-7 7 -4 4]);
title('x(tau)');

subplot(2,2,3);
plot(t,y,t,z)
axis([-7 7 -4 4]);
title('h(tau), x(t - tau)');


syms t;
syms tau;
%'for interval 1 < t < 2'
int(-1,tau,1,t)

%'for interval 2 < t < 3'
int(-1,tau,t-1,2)

%'for interval -5 < t < -4'
int(1,tau,-5,t)

%'for interval -4 < t < -3'
int(1,tau,t-1,-4)

%%
% plotting y(t)
t = linspace(-10,10,1e3);
x = triangularPulse(-5,-4,-3,t) - triangularPulse(1,2,3,t);

plot(t,x)
axis([-6 4 -2 2])
title('y(t)');
