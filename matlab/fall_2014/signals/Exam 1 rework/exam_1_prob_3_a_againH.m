clear;
clc;

%T is the period
%
T = 4;

%w is the frequency
%
w = (2*pi) / T;

%Compute the complex forier series coeficients
%This result was copied into variable "D" below
%
%Dn = (1/T) * (int(exp(-j*n*w*t), t, 1, 1.5) - .5*int(exp(-j*n*w*t), t, 3, 3.5));
cn = 0;
freq = 0;
t = linspace(0,20,1e5);
xsum = zeros(size(t));
xsum = (1/16);
m = -100;
RC = 10;
H = 0;
for n = 1:200
 %D is the result of the Dn integral above
 %
   %an = (sin((3*pi*n)/2) - sin((7*pi*n)/4))/(2*pi*n) - (sin((pi*n)/2) - sin((3*pi*n)/4))/(pi*n);
   %bn = (cos((pi*n)/2) - cos((3*pi*n)/4))/(pi*n) - (cos((3*pi*n)/2) - cos((7*pi*n)/4))/(2*pi*n);
   
   %cn is the complex Fourier coefficients
   %
   cn(n) = (((sin((pi*m)/2) - sin((3*pi*m)/4))/(pi*m) - (sin((3*pi*m)/2) - sin((7*pi*m)/4))/(2*pi*n))^2 + ((cos((pi*m)/2) - cos((3*pi*m)/4))/(pi*m) - (cos((3*pi*m)/2) - cos((7*pi*m)/4))/(2*pi*m))^2)^(1/2)/2;
   
   %freq stores the frequency in Hz
   %
   freq(n) = m*(1/T);
   
   %Transfer function
   H(n) = 1/(j*2*pi*freq(n)*RC + 1);
   
   m = m + 1;
  %D = ((exp(-(pi*n*i)/2) - 1)*2*i)/(pi*n);
   %xsum = xsum + an.*cos(n.*w.*t) + bn.*sin(n.*w.*t);


end
mag = abs(H);
%subplot(1,2,1);
stem(freq,cn)
legend('Vs');

%   hold on
%   title('Vs and H(f) superimposed. RC = 10');
%   xlabel('freq (Hz)');
%   ylabel('cn magnitude');
%   stem(freq,mag)
%  axis([-25 25 0 .1]);

%Transfer function * Vin(f) = Vout(f)
y = mag .* cn;
%subplot(1,2,2);
stem(freq,cn)
 hold on
 stem(freq,y)
 title('Vin superimposed on vout');
 xlabel('freq (Hz)');
ylabel('cn magnitude');
legend('Vs');
axis([-25 25 0 .03]);