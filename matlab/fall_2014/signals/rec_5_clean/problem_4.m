clear;
clc;

%%%%%%%%%%%%%%%%%
%
%  Problem 4
%
%%%%%%%%%%%%%%%%%
syms t w;
d_sig_1 = cos(2*pi*100*t)*sin(2*pi*500*t);

fourier(d_sig_1,t,w)

signal_1 = [0,1,0,1,0,0,0,0,0,0,0,-1,0,-1,0];
f_1 = [-700,-600,-500,-400,-300,-200,-100,0,100,200,300,400,500,600,700];


stem(f_1,signal_1);
title('modulated signal');
xlabel('f (Hz)');