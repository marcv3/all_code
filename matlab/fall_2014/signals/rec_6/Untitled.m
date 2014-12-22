clear;
clc;
clf;

t = linspace(0,4,1e3);
x = rectangularPulse(t-.5);
x1 = triangularPulse(0,1,1,t)+rectangularPulse(t-1.5) + 0.5*rectangularPulse(t-2.5);
x2 = triangularPulse(-1,-1,0,t) + rectangularPulse(t+1.5) + 0.5*rectangularPulse(t+2.5);
%x = x1+x2;
y = fft(x);
plot(t,abs(y));

%%

clear;
clc;
clf;

t = [0,1,2,3];
x = [1,0,0,0];

y = fft(x);

stem(t,y)