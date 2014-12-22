clear;
clc;
clf;
syms x;
f1a = heaviside(x);
f2a = -(heaviside(x-(1-.01))-heaviside(x-(1+.01)));

h = ezplot(f2a,[.9,1.1]);
h.Color = 'blue';
hold on
H = ezplot(f1a, [-5,1]);
H.Color = 'blue';
axis([-5 5 -1 2]);
title('Derivative of signal 4');
xlabel('f (Hz) * 10e-2');
