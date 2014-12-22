clear;
clc;
clf;

Samples = 40;

mag = zeros(1,Samples);
num = zeros(1,Samples);

t = linspace(0,20,1e5);
xsum = zeros(size(t));
xsum = 0.25;

for n = 1:Samples
    w = (n.*pi)./4;
    %integral1 = (1./w).*sin(w) + (1./(w).^2).*cos(w) - (1./(w.^2));
    %integral2 = (1./w).*(sin(2.*w) - sin(w));
    %integral3 = (1./(2.*w)).*(sin(3.*w) - sin(2.*w) );
    %x = .5.*(integral1 + integral2 + integral3);
    %x = - 4./(pi.^2.*n.^2) + ((exp(-(pi.*n.*i)./2) - exp(-(pi.*n.*i)./4)).*i)./(2.*pi.*n) - ((exp(-(pi.*n.*i)./2) - exp(-(pi.*n.*3.*i)./4)).*i)./(4.*pi.*n) + ((exp((pi.*n.*i)./2) - exp((pi.*n.*3.*i)./4)).*i)./(4.*pi.*n) - (exp((pi.*n.*i)./4).*(exp((pi.*n.*i)./4).*i - i))./(2.*pi.*n) + (exp(-(pi.*n.*i)./4).*(pi.*n.*i + 4))./(2.*pi.^2.*n.^2) - (exp((pi.*n.*i)./4).*(pi.*n.*i - 4))./(2.*pi.^2.*n.^2)
    x = (1./8).*(- 2./w.^2 + (exp(-w.*i).*(w.*i + 1))./w.^2 - (exp(w.*i).*(w.*i - 1))./w.^2 + (2.*sin(w./2).*exp(-(w.*3.*i)./2))./w + (2.*sin(w./2).*exp((w.*3.*i)./2))./w + (sin(w./2).*exp(-(w.*5.*i)./2))./w + (sin(w./2).*exp((w.*5.*i)./2))./w);

    xsum = xsum + x.* cos((n.*(pi./4).*t));
    
   mag(n) = max(x);
   num(n) = n;
end


%plot(t,xsum);
%figure (1);

freq = linspace(0,Samples,1e5);
w = 2.*pi.*freq;
    integral1 = (1./w).*sin(w) + (1./(w).^2).*cos(w) - (1./(w.^2));
    integral2 = (1./w).*(sin(2.*w) - sin(w));
    integral3 = (1./(2.*w)).*(sin(3.*w) - sin(2.*w));
y = 2.*(integral1 + integral2 + integral3);
FT = - 2./w.^2 + (exp(-w.*i).*(w.*i + 1))./w.^2 - (exp(w.*i).*(w.*i - 1))./w.^2 + (2.*sin(w./2).*exp(-(w.*3.*i)./2))./w + (2.*sin(w./2).*exp((w.*3.*i)./2))./w + (sin(w./2).*exp(-(w.*5.*i)./2))./w + (sin(w./2).*exp((w.*5.*i)./2))./w;

integral_n3 = -(.5./(j.*w)).*(exp(j.*w.*2) - exp(3.*j.*w));
integral_n2 = -(1./(j.*w)).*(exp(j.*w) - exp(2.*j.*w));
integral_n1 = (1./j.*w).*exp(j.*w) - (1./(w.^2)).*(1-exp(j.*w));
integral_p1 = -(1./(j.*w)).*exp(-j.*w) + (1./(w.^2)).*(exp(-j.*w)-1);
integral_p2 = -(1./(j.*w)).*(exp(-2.*j.*w)-exp(-j.*w));
integral_p3 = -(.5./(j.*w)).*(exp(-3.*j.*w) - exp(-2.*j.*w));

hand_calc = integral_n3 + integral_n2 + integral_n1 + integral_p1 + integral_p2 + integral_p3;

f = num.*(1/8);
plot(f,abs(mag));
axis([0 2 0 4]);
title('magnitude plot');
xlabel('f (Hz)');
hold on;
plot(freq,abs(FT));