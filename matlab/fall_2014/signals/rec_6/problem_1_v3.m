%%%%%%%%%%%%%%%%%%%%%%
%
% Symbolic integration
%
%%%%%%%%%%%%%%%%%%%%%%

clear;
clc;
clf;

syms t w;

euler = exp(-j.*w.*t);

% The entire integral
FT = int(.5.*euler,t,-3,-2) + int(euler,t,-2,-1) + int(-t.*euler,t,-1,0)...
    + int(t.*euler,t,0,1) + int(euler,t,1,2) + int(.5.*euler,t,2,3);

% Result of integration. replace this with the "series" and "transform"
% variables below to varify results.

    x = (- 2./w.^2 + (exp(-w.*i).*(w.*i + 1))./w.^2 ...
        - (exp(w.*i).*(w.*i - 1))./w.^2 ...
        + (2.*sin(w./2).*exp(-(w.*3.*i)./2))./w ...
        + (2.*sin(w./2).*exp((w.*3.*i)./2))./w ...
        + (sin(w./2).*exp(-(w.*5.*i)./2))./w ...
        + (sin(w./2).*exp((w.*5.*i)./2))./w);

%%

%%%%%%%%%%%%%%%%%%%%%
%
% The Fourier Series
%
%%%%%%%%%%%%%%%%%%%%%

clear;
clc;
clf;

% This number was eyeballed to give the best view in the plot
Samples = 100;

% this will contain the magnitude of the Fourier Series
mag = zeros(1,Samples);

% this will contain the sample number of each harmonic
num = zeros(1,Samples);

% Period of function. Change this value to 16 and 32 for part 3.
T = 8;

for n = 1:Samples
    
   % Since we solved the general integral, we replace "A" with(n*w0)
   w = (n.*2.*pi)./T;
    
   % Fourier Series coefficients. Results of the integrals were done by 
   % hand. Note it is the general integral multiplied by (1/T) with "w" 
   % defined above.
   
   integral_n3 = -(.5./(j.*w)).*(exp(j.*w.*2) - exp(3.*j.*w));
   integral_n2 = -(1./(j.*w)).*(exp(j.*w) - exp(2.*j.*w));
   integral_n1 = - (1./(w.^2)) + exp(j.*w).*((1./(j.*w)) + 1./(w.^2));
   integral_p1 = -(1./(j.*w)).*exp(-j.*w) + (1./(w.^2)).*(exp(-j.*w)-1);
   integral_p2 = -(1./(j.*w)).*(exp(-2.*j.*w)-exp(-j.*w));
   integral_p3 = -(.5./(j.*w)).*(exp(-3.*j.*w) - exp(-2.*j.*w));

   series = (1./T).*(integral_n3 + integral_n2 + integral_n1...
       + integral_p1 + integral_p2 + integral_p3); 
    
   % Store the max value of each coefficient
   mag(n) = max(series);
   
   % Store the  harmonic number
   num(n) = n;
end

%%%%%%%%%%%%%%%%%%%%%%%%
%
% The Fourier Transform
%
%%%%%%%%%%%%%%%%%%%%%%%%

% range of frequencies that match the Series plot
freq = linspace(0,Samples,1e5);

% we will plot in Hz
w = 2.*pi.*freq;

% Fourier Transform, defined by the general integral same as the series 
%plot, except not multiplied by 1/T and w = 2*pi*f.

integral_n3 = -(.5./(j.*w)).*(exp(j.*w.*2) - exp(3.*j.*w));
integral_n2 = -(1./(j.*w)).*(exp(j.*w) - exp(2.*j.*w));
integral_n1 = - (1./(w.^2)) + exp(j.*w).*((1./(j.*w)) + 1./(w.^2));
integral_p1 = -(1./(j.*w)).*exp(-j.*w) + (1./(w.^2)).*(exp(-j.*w)-1);
integral_p2 = -(1./(j.*w)).*(exp(-2.*j.*w)-exp(-j.*w));
integral_p3 = -(.5./(j.*w)).*(exp(-3.*j.*w) - exp(-2.*j.*w));

transform = integral_n3 + integral_n2 + integral_n1 + integral_p1...
    + integral_p2 + integral_p3;

%%%%%%%%%%%%%%
%
% Plots
%
%%%%%%%%%%%%%%

% multiply the Fourier Series coefficients by "f" so they match the 
% Fourier Transform plot
f = num.*(1/T);

% Plot the Fourier Series
stem(f,T.*abs(mag));
figure(1);
axis([0 2 0 4]);
title('magnitude plot');
xlabel('f (Hz)');
hold on;

% Plot the Fourier Transform
plot(freq,abs(transform));
