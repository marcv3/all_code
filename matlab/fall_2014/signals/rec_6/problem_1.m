
clear;
clc;
clf;

Samples = 40;

mag = zeros(1,Samples);
num = zeros(1,Samples);

t = linspace(0,20,1e5);
xsum = zeros(size(t));
xsum = .5;

for n = 1:Samples
    w = (n.*pi)./4;
    integral1 = (1./w).*sin(w) + (1./(w).^2).*cos(w) - (1./(w.^2));
    integral2 = (1./w).*(sin(2.*w) - sin(w));
    integral3 = (1./(2.*w)).*(sin(3.*w) - sin(2.*w) );
    x = .5.*(integral1 + integral2 + integral3);
    
    xsum = xsum + .5.*( integral1 + integral2 + integral3 ).* cos((n.*(pi./4).*t));
    
   mag(n) = max(x);
   num(n) = n;
end

figure(1);
plot(t,xsum);
figure (2);

w = linspace(0,Samples.*(pi/4),1e3);
    integral1 = (1./w).*sin(w) + (1./(w).^2).*cos(w) - (1./(w.^2));
    integral2 = (1./w).*(sin(2.*w) - sin(w));
    integral3 = (1./(2.*w)).*(sin(3.*w) - sin(2.*w));
y = .5.*(integral1 + integral2 + integral3);

f = num.*(pi/4);
 plot(f,abs(mag))
 title('magnitude plot');
 hold on;

plot(w,abs(y));

 