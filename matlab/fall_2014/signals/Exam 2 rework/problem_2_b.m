clear;
clc;

time = linspace(-10,10,1e3);
syms t;
syms w;
syms wo;

x = cos(2*pi*t);
y = sin(4*pi*t) + sin(6*pi*t);

z = x.*y;
v = .5*sin(wo * t);
%z = .5 * sin(2*pi*t);

fourier(z,t,w)

%%
clear;
clc;
syms x;
f1a = heaviside(x-(2-.01))-heaviside(x-(2+.01));
f1b = heaviside(x-(-2-.01))-heaviside(x-(-2+.01));
f2a = heaviside(x-(3-.01))-heaviside(x-(3+.01));
f2b = heaviside(x-(-3-.01))-heaviside(x-(-3+.01));
f3a = heaviside(x-(1-.01))-heaviside(x-(1+.01));
f3b = heaviside(x-(-1-.01))-heaviside(x-(-1+.01));
f4a = heaviside(x-(4-.01))-heaviside(x-(4+.01));
f4b = heaviside(x-(-4-.01))-heaviside(x-(-4+.01));

subplot(3,1,1);
ezplot(f1a + f1b + f2a + f2b,[-5,5]);
axis([-5 5 0 1]);
title('y(f)');
xlabel('f (Hz)');

subplot(3,1,2);
ezplot(f3a + f3b ,[-5,5]);
axis([-5 5 0 1]);
title('x(f)');
xlabel('f (Hz)');

subplot(3,1,3);
ezplot(f1a + f1b + f2a + f2b + f3a + f3b + f4a + f4b ,[-5,5]);
axis([-5 5 0 1]);
title('z(f)');
xlabel('f (Hz)');