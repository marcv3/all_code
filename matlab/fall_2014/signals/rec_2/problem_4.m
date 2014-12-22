%syms t
%syms a

plot(x,y)
%%
x = .5:.01:2;
y = zeros(size(x));
R = 2;
f2 = 500;
syms t;
for n = 1:150
V = sin(2*pi*1*t) + sin(2*pi*x(n)*t);
Pins = (V.^2)./R;
x(n)
double(int(Pins,0 ,1))
y(n) = x(n);
end

%%
syms t
syms w
R = 2;
V = sin(2*pi*1*t) + sin(2*pi*.5*t);
Pins = (V.^2)./(R);
int(Pins,t,0 ,1)
%%
syms t
syms w
R = 2;
V = sin(2*pi*100*t);
Pins = (V.^2)./(R);
int(Pins,t,0 ,1)