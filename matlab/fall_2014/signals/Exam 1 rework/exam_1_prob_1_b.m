t0 = linspace (-1,0,1e3);
t = linspace (0,1,1e3);
t2 = linspace (1,2,1e3);
y0 = 0;
y = 2*t;
y2 = 2;
plot(t,y,t2,y2,t0,y0)
axis([-1 2 0 2.5]);
title('Plot of int(x(2*lambda - 1))d*lambda vs t');
ylabel('int(x(2*lambda - 1))d*lambda');
xlabel('t');
%%
clear;
x = @(t) ( (1).*(and(0<=t,t<1)) + (0.5).*(and(1<=t,t<2)) + (-0.5).*(and(2<=t,t<3)) + (-1).*(and(3<=t,t<4)) );
fplot(x,[-1 5]);
%%
clear;
x = @(t) ( (2).*(and(0<=t,t<1)) + (0).*(and(1<=t,t<2)));
fplot(x,[-1 2]);
axis([-1 2 0 3]);
title('Plot of x(2*lambda - 1) vs t');
ylabel('x(2*lambda - 1)');
xlabel('lambda');
%%
clear;
clc;
syms t
x = 2;

int(x,t,0,1);
out = 0;
index = 0;
for n = 1:41
    m = (n-1)/10;
    
    if m <= 1
       out(n) = int(x,t,0,m);
    end
    
    if m > 1
       out(n) = int(x,t,0,1); 
    end
    index(n) = (n-1)/10;
    
end

plot(index,out)
axis([-1 4 0 3]);
xlabel('t');
ylabel('y(t)');