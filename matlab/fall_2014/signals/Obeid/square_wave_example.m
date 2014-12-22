clear;
clc;

t = linspace(0,20,1e5);
x = square(pi*t/3);
xsum = zeros(size(t));
%1:2:100
for n = 1:2:100
    A = (2/(n*pi)) * exp(-j*pi/2);
    w = (pi/3) * n;
    xsum = xsum + (2*abs(A)*cos(w*t + angle(A)));
    
end

figure(1);clf;
plot(t,x,t,xsum);
axis([0 20 -1.5 1.5]);