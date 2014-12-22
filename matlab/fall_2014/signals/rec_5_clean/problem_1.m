%%%%%%%%%%%%%%%%%
%
%  signal 1
%
%%%%%%%%%%%%%%%%%

clear;
clc;

syms w t;

% plot impulses at 100 and -100
x = [0,1,0,1,0];
f = [-200, -100, 0, 100, 200];
stem(f,x)


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
%int(x*exp(-j*f*t),t,0,0.01)

f = linspace(-1e4,1e4,1e3);

%result of symbolic integration
Matlab_int = ((exp(-(f.*j)./100).*exp(-1) - 1).*j)./(f - 100.*j);

% hand calculation
hand_calc = (-1 ./ (100 + j.*f)) .* (exp(-0.01.*(100 + j.*f)) - 1);

% see if they match up
plot(f,abs(Matlab_int), f,abs(hand_calc))

%%

%%%%%%%%%%%%%%%%%
%
%  signal 3
%
%%%%%%%%%%%%%%%%%

f = linspace(-1e4,1e4,1e3);

%hand calculation
signal_3 = -(1./(j.*f)).*(exp(-j.*f.*0.01) - 1);

%symbolic integration
matlab_int = (2.*sin(f./200).*(cos(f./200) - sin(f./200).*j))./f;

%see if they match
plot(f,abs(signal_3),f,abs(matlab_int));


syms W t;
%symbolic integration
int(exp(-j*W*t),t,0,.01)

%%

%%%%%%%%%%%%%%%%%
%
%  signal 4
%
%%%%%%%%%%%%%%%%%
clear;
clc;
syms t W
f = linspace(-2e4,2e4,1e3);

%Symbolic integration
int(t*exp(-j*W*t),t,0,0.01)
matlab_int = (-1./(f.^2)) + (exp(-j.*f.*0.01)) .* (j.*f.*0.01 + 1) .* (1./(f.^2));

% Hand calculation
hand_calc = (-.01./(j.*f)).*exp(-j.*f.*.01) + (1./(f.^2)).*(exp(-j.*f.*.01)-1);

% See if the results match
plot(f,abs(matlab_int),f,abs(hand_calc))


%%

%%%%%%%%%%%%%%%%%%%
%
%  plot everything
%
%%%%%%%%%%%%%%%%%%%

f = linspace(-2e3,2e3,1e3);

signal_1 = [0,0,1,0,1,0,0];
f_1 = [-300,-200,-100,0,100,200,300];

signal_2 = (-1 ./ (100 + j.*2.*pi.*f)) .* (exp(-0.01.*(100 + j.*2.*pi.*f)) - 1);

signal_3 = -(1./(j.*2.*pi.*f)).*(exp(-j.*2.*pi.*f.*0.01) - 1);

signal_4 = (-.01./(j.*2.*pi.*f)).*exp(-j.*2.*pi.*f.*.01) + (1./(2.*pi.*f.^2)).*(exp(-j.*2.*pi.*f.*.01)-1);

subplot(4,2,1);
stem(f_1,signal_1);
title('mag signal 1');
xlabel('f (Hz)');

subplot(4,2,2);
plot(0);
title('phase signal 1');

subplot(4,2,3);
plot(f,abs(signal_2));
title('mag signal 2');
xlabel('f (Hz)');

subplot(4,2,4);
plot(f,angle(signal_2));
title('phase signal 2');

subplot(4,2,5);
plot(f,abs(signal_3));
title('mag signal 3');
xlabel('f (Hz)');

subplot(4,2,6);
plot(f,angle(signal_3));
title('phase signal 3');

subplot(4,2,7);
plot(f,abs(signal_4));
title('mag signal 4');
axis([-100 100 0 6e-3]);
xlabel('f (Hz)');

subplot(4,2,8);
plot(f,angle(signal_4));
title('phase signal 4');