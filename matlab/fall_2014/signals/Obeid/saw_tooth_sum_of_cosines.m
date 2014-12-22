clear;
clc;

t = linspace(0,20,1e5);
x = sawtooth(t + pi);
xsum = zeros(size(t));

for n = 1:100
    A = (1/(n*pi)) * exp(j*pi*(n + (1/2)));
    w = n;
    xsum = xsum + (2*abs(A)*cos(w*t + angle(A)));
    
end

figure(1);clf;
plot(t,xsum,t,x);
