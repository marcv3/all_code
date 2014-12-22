clear;
clc;

R = 1e3;
C = 1e-6;

H = tf(1,[R*C 1]);

bode(H);