%%%%%%%%%%%%%%%%%
%
%  signal 1
%
%%%%%%%%%%%%%%%%%

clear;
clc;
close all;

syms w t;

% impulses at 100 and -100
x = [0,1,0,1,0];
f = [-200, -100, 0, 100, 200];

stem(f,x)
%axis([-3 3 0 2]);

z = cos(2*pi*100*(t-0.0025));

fourier(z,t,w)


%%

%%%%%%%%%%%%%%%%%
%
%  signal 2
%
%%%%%%%%%%%%%%%%%

clear;
clc;
syms t w;

% symbolic integration
x = exp(-100*t);
int(x*exp(-j*w*(t-0.0025)),t,0,0.01)

w = linspace(-1e4,1e4,1e3);
Matlab_int = ((exp(-(w.*j)./100).*exp(-1) - 1).*j)./(w - 100.*j);

% hand calculation
hand_calc = (-1 ./ (100 + j.*w)) .* (exp(-0.01.*(100 + j.*w)) - 1);

% see if they match up
plot(w,abs(Matlab_int), w,abs(hand_calc))

%%

%%%%%%%%%%%%%%%%%
%
%  signal 3
%
%%%%%%%%%%%%%%%%%

w = linspace(-1e4,1e4,1e3);

signal_3 = -(1./(j.*w)).*(exp(-j.*w.*0.01) - 1);
y = 10*sinc(w);

plot(w,abs(signal_3),w,abs(y));


%%

%%%%%%%%%%%%%%%%%%%
%
%  plot everything
%
%%%%%%%%%%%%%%%%%%%

w = linspace(-2e4,2e4,1e3);

signal_1 = [0,0,1,0,1,0,0];
f_1 = [-300,-200,-100,0,100,200,300];

signal_2 = (-1 ./ (100 + j.*w)) .* (exp(-0.01.*(100 + j.*w)) - 1);

signal_3 = -(1./(j.*w)).*(exp(-j.*w.*0.01) - 1);

subplot(3,2,1);
stem(f_1,signal_1);
title('mag signal 1');

subplot(3,2,2);
plot(0);
title('phase signal 1');

subplot(3,2,3);
plot(w,abs(signal_2));
title('mag signal 2');

subplot(3,2,4);
plot(w,angle(signal_2));
title('phase signal 2');

subplot(3,2,5);
plot(w,abs(signal_3));
title('mag signal 3');

subplot(3,2,6);
plot(w,angle(signal_3));
title('phase signal 3');