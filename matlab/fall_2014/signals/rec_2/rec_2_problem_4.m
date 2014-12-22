% Expression for average power of signal 2, with f1 = 1Hz
%
syms f2;
syms t;
R = 2;
V = sin(2*pi*1*t) + sin(2*pi*f2*t);
Pins = (V.^2)./R;
int(Pins,t,0 ,1)
% Below is the result. f2 is replaced with x(n) for the code below
%(sin(4*pi*x(n))/8 + x(n)*sin(2*pi*x(n)) - (x(n)^2*sin(4*pi*x(n)))/8)/(2*pi*x(n)*(x(n)^2 - 1)) + 1/2

%%
% Expression for average power of signal 2, with f1 = 1.33Hz
%
syms f2;
syms t;
R = 2;
V = sin(2*pi*1.33*t) + sin(2*pi*f2*t);
Pins = (V.^2)./R;
int(Pins,t,0 ,1)
% Below is the result. f2 is replaced with x(n) for the code below
%(10000*pi + (250000*cos((17*pi)/50)*sin((17*pi)/50))/133)/(20000*pi) - (x(n)^2*(2500*cos(2*pi*x(n))*sin(2*pi*x(n)) + 10000*sin((17*pi)/50)*cos(2*pi*x(n))) - (17689*cos(2*pi*x(n))*sin(2*pi*x(n)))/4 + 13300*x(n)*cos((17*pi)/50)*sin(2*pi*x(n)))/(2*pi*x(n)*(10000*x(n)^2 - 17689));


%%
% creates graph of sinusoid, f1 = 1.33 Hz. 
%
x = .5:.01:2;
y = zeros(size(x));
ans = zeros(size(x));
R = 2;
f2 = 500;
syms t;
for n = 1:151

ans(n) = (10000*pi + (250000*cos((17*pi)/50)*sin((17*pi)/50))/133)/(20000*pi) - (x(n)^2*(2500*cos(2*pi*x(n))*sin(2*pi*x(n)) + 10000*sin((17*pi)/50)*cos(2*pi*x(n))) - (17689*cos(2*pi*x(n))*sin(2*pi*x(n)))/4 + 13300*x(n)*cos((17*pi)/50)*sin(2*pi*x(n)))/(2*pi*x(n)*(10000*x(n)^2 - 17689));
y(n) = x(n);
end
plot(x,ans);
title('f1 = 1.33Hz');
xlabel('f2 (Hz)');
ylabel('Average Power (W)');
%%
% creates graph of sinusoid, f1 = 1 Hz. 
%
x = .5:.01:2;
y = zeros(size(x));
ans = zeros(size(x));
R = 2;
f2 = 500;
syms t;
for n = 1:151

ans(n) = (sin(4*pi*x(n))/8 + x(n)*sin(2*pi*x(n)) - (x(n)^2*sin(4*pi*x(n)))/8)/(2*pi*x(n)*(x(n)^2 - 1)) + 1/2;
y(n) = x(n);
end
plot(x,ans);
title('f1 = 1Hz');
xlabel('f2 (Hz)');
ylabel('Average Power (W)');