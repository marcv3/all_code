clear;
clc;

%%%%%%%%%%%%%%%%%
%
%  signal 1
%
%%%%%%%%%%%%%%%%%
syms t w;
d_sig_1 = -2*pi*100*sin(2*pi*100*t);

fourier(d_sig_1,t,w)

signal_1 = [0,0,-1,0,1,0,0];
f_1 = [-300,-200,-100,0,100,200,300];


stem(f_1,signal_1);
title('mag derivative of signal 1');
xlabel('f (Hz)');

%%
clear;
clc;
%%%%%%%%%%%%%%%%%
%
%  signal 2
%
%%%%%%%%%%%%%%%%%
syms t w;
W = linspace(-1e4,1e4,1e3);

%d/dx of signal 2
d_sig_2 = -100*exp(-100*t);

%transform of derivative of signal 2 (using symbolic integration)
d_X = -((exp(-(W.*j)./100).*exp(-1) - 1).*100.*j)./(W - 100.*j);

plot(W, abs(d_X))
title('mag of derivative of signal 2');


int(d_sig_2 * exp(-j*w*t),t,0,0.01)

%%
clear;
clc;
%%%%%%%%%%%%%%%%%
%
%  signal 3
%
%%%%%%%%%%%%%%%%%

f = linspace(-1,1,1e3);

x = 1 - exp(-j.*2.*pi.*f.*0.01);

%subplot(1,2,2);
plot(f,abs(x));
title('FT of the derivative of signal 3');
xlabel('freq (Hz)');


%%
clear;
clc;
%%%%%%%%%%%%%%%%%
%
%  signal 4
%
%%%%%%%%%%%%%%%%%

f = linspace(-5,5,1e3);

x = (1./(j.*2.*pi.*f)) - exp(-j.*2.*pi.*f.*0.01);

plot(f,abs(x));
xlabel('f (Hz)');
title('signal 4 magnitude spectrum');

%%

%%%%%%%%%%%%%%%%%%
%
%  Plot everything
%
%%%%%%%%%%%%%%%%%%
clear;
clc;

signal_1 = [0,0,-1,0,1,0,0];
f_1 = [-300,-200,-100,0,100,200,300];

subplot(4,2,1);
stem(f_1,signal_1);
title('FT of the derivative of signal 1');
xlabel('f (Hz)');

W = linspace(-1e4,1e4,1e3);
d_X = -((exp(-(W.*j)./100).*exp(-1) - 1).*100.*j)./(W - 100.*j);

subplot(4,2,3);
plot(W, abs(d_X))
title('FT of the derivative of signal 2');


f = linspace(-1,1,1e3);
x = 1 - exp(-j.*2.*pi.*f.*0.01);

subplot(4,2,5)
plot(f,abs(x));
title('FT of the derivative of signal 3');
xlabel('freq (Hz)');


F = linspace(-5,5,1e3);

X = (1./(j.*2.*pi.*F)) - exp(-j.*2.*pi.*F.*0.01);

subplot(4,2,7)
plot(F,abs(X));
xlabel('f (Hz)');
title('FT of the derivative of signal 4');
axis([-1 1 0 40]);