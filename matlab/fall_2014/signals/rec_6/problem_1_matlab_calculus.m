clear;
clc;
clf;

syms t w;

euler = exp(-j.*w.*t);

FT = int(.5.*euler,t,-3,-2) + int(euler,t,-2,-1) + int(-t.*euler,t,-1,0) + int(t.*euler,t,0,1) + int(euler,t,1,2) + int(.5.*euler,t,2,3)
int(t.*euler,t,0,1)



%%
clear;
clc;
clf;
syms n t;
T = 8;
w0 = (2.*pi)/(T);
euler = exp(-j.*w0.*n.*t);
Dn = int(.5.*euler,t,-3,-2) + int(euler,t,-2,-1) + int(-t.*euler,t,-1,0) + int(t.*euler,t,0,1) + int(euler,t,1,2) + int(.5.*euler,t,2,3);
Dn = Dn .* (1./ T)