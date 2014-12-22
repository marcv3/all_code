%%%%%%%%%%%%%%%%%%%%%%
%
% Symbolic integration
%
%%%%%%%%%%%%%%%%%%%%%%

clear;
clc;


syms t w;

euler = exp(-j.*w.*t);

% The entire integral
%FT = int(.5.*euler,t,-3,-2) + int(euler,t,-2,-1) + int(-t.*euler,t,-1,0)...
%    + int(t.*euler,t,0,1) + int(euler,t,1,2) + int(.5.*euler,t,2,3);

int(-t.*euler,t,-1,0)

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
Samples = 40;

% this will contain the magnitude of the Fourier Series
mag = zeros(1,Samples);

% this will contain the sample number of each harmonic
num = zeros(1,Samples);

% Period of function
T = 8;
for n = 1:Samples
    
    % Since we solved the general integral, we replace "A" with(n*w0)/2
    w = (n.*pi)./4;
    
    % Fourier Series coefficients. Note it is the general integral 
    % multiplied by (1/T)
    x = (1./T).*(- 2./w.^2 + (exp(-w.*i).*(w.*i + 1))./w.^2 ...
        - (exp(w.*i).*(w.*i - 1))./w.^2 ...
        + (2.*sin(w./2).*exp(-(w.*3.*i)./2))./w ...
        + (2.*sin(w./2).*exp((w.*3.*i)./2))./w ...
        + (sin(w./2).*exp(-(w.*5.*i)./2))./w ...
        + (sin(w./2).*exp((w.*5.*i)./2))./w);
    
    %x = (sin(w./2).*exp((w.*5.*i)./2))./w;
    %x = -(.5./(j.*w)).*(exp(j.*w.*2) - exp(3.*j.*w));

   % Store the max value of each coefficient
   mag(n) = max(x);
   
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
Tyler = 1/.3183;
% Fourier Transform
% transform = - 2./w.^2 + (exp(-w.*i).*(w.*i + 1))./w.^2 - (exp(w.*i).*...
%     (w.*i - 1))./w.^2 + (2.*sin(w./2).*exp(-(w.*3.*i)./2))./w ...
%     + (2.*sin(w./2).*exp((w.*3.*i)./2))./w + ...
%     (sin(w./2).*exp(-(w.*5.*i)./2))./w + (sin(w./2).*exp((w.*5.*i)./2))./w;

transform = - 1./w.^2 - (exp(w.*i).*(w.*i - 1))./w.^2;
%transform2 = (1./j.*w).*exp(j.*w) - (1./(w.^2)).*(1 - exp(j.*w));
%transform2 = (1./(w.^2)) + (1./(j.*w)).*exp(j.*w) - (1./(w.^2)).*exp(j.*w);
transform2 = - (1./(w.^2)) + exp(j.*w).*((1./(j.*w)) + 1./(w.^2));

%transform = -(.5./(j.*w.*Tyler)).*(exp(j.*w.*Tyler.*2) - exp(3.*j.*w.*Tyler));

%%%%%%%%%%%%%%
%
% Plots
%
%%%%%%%%%%%%%%

% multiply the Fourier Series coefficients by "f" so they match the 
% Fourier Transform plot
f = num.*(1/8);

% Plot the Fourier Series
plot(freq,abs(transform2));
figure(1);
axis([0 2 0 4]);
title('magnitude plot');
xlabel('f (Hz)');
hold on;

% Plot the Fourier Transform
plot(freq,abs(transform));
axis([0 2 0 4]);