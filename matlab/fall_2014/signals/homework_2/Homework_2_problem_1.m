clear;
clc;
%(a)
t = linspace(0,20,1e5);
xsum = zeros(size(t));
w = (pi/2);
mag = zeros(1,100);
num = zeros(1,100);
phase = zeros(1,100);
for n = 1:4
   xsum = xsum + (1 / (n*pi)) * ( 3*sin((n*pi)/2) - sin((n*pi*3)/2) ) * cos((n*w*t));
   x = (1 / (n*pi)) * ( 3*sin((n*pi)/2) - sin((n*pi*3)/2) ) * cos((n*w*t));
   mag(n) = max(x);
   num(n) = n;
   phase(n) = 0;
end
subplot(3,2,1);
plot(t, xsum)
title('Problem (a)');
xlabel('t');
ylabel('x(t)');

% (b)

t = linspace(0,100,1e5);
xsum = zeros(size(t));
w = (1/5);
a = 1/5;
xsum = a;
mag = zeros(1,100);
num = zeros(1,100);
phase = zeros(1,100);

for n = 1:100
   xsum = xsum + ( 2/(pi*n)*sin((n*pi)/5) ) * cos((n*w*t) );
   x = ( 2/(pi*n)*sin((n*pi)/5) ) * cos((n*w*t) );
   mag(n) = max(x);
   num(n) = n;
   phase(n) = 0;
end

%stemplot(mag, num)
%stemplot(phase, num)

subplot(3,2,2);
plot(t, xsum)
title('Problem (b)');
xlabel('t');
ylabel('x(t)');

% (c)

t = linspace(0,20,1e5);
xsum = zeros(size(t));
w = (1);
a = 1/2;
xsum = a;
for n = 1:100
   xsum = xsum + 1./(n.*pi) .* cos((n.*w.*t + (pi/2) ));
end

subplot(3,2,3);
plot(t, xsum)
title('Problem (c)');
xlabel('t');
ylabel('x(t)');

%(d) again

t = linspace(0,10,1e5);
xsum = zeros(size(t));
w = (2);
a = 0;
for n = 1:100
   xsum = xsum + (2./(pi.*n))*((2./(pi.*n)).*sin((pi.*n)./2) - cos((pi.*n)./2)) .* cos((n.*w.*t - ((pi)/2) ));
end

subplot(3,2,4);
plot(t, xsum)
title('Problem (d)');
xlabel('t');
ylabel('x(t)');

% (e) again


t = linspace(0,10,1e5);
xsum = zeros(size(t));
w = (2*pi)/3;
a = (1/6);
xsum = a;
for n = 1:100
   Cn = (3/(2*(pi^2)*(n^2))) * sqrt( 2 + (4*(pi^2)*(n^2))/9 -2*cos((2*pi*n)/3) - ((4*pi*n)/3)*sin((2*pi*n)/3) );
   xsum = xsum + Cn .* cos((n.*w.*t + ((pi)/2) ));
end

%subplot(3,2,5);
%plot(t, xsum)
%title('Problem (e)');
%xlabel('t');
%ylabel('x(t)');

% (f) again

t = linspace(0,20,1e5);
xsum = zeros(size(t));
w = (pi)/3;
a = (0.5);
xsum = a;
for n = 1:100
   Cn = (6/((pi^2)*(n^2))) * (cos((n*pi)/3) - cos((2*n*pi)/3));
   xsum = xsum + Cn .* cos((n.*w.*t ));
end
subplot(3,2,6);
plot(t, xsum)
title('Problem (f)');
xlabel('t');
ylabel('x(t)');
%% (d)

t = linspace(0,10,1e5);
xsum = zeros(size(t));
w = (2);
a = 0;
for n = 1:100
   xsum = xsum + (2/(pi*n)).* sin((pi*n)/2)  .* cos((n.*w.*t + ((pi)/2) ));
end

plot(t, xsum)


%% (e)

t = linspace(0,10,1e5);
xsum = zeros(size(t));
w = ((2*pi)/3);
a = 1/6;
xsum = a;
for n = 1:100
    a = (2 / ( 3 * ((2*pi*n) / 3)^2))*((2*pi*n)/3) * sin((2*pi*n)/3) + cos((2*pi*n)/3) - 1;
    b = (2 / ( 3 * ((2*pi*n) / 3)^2))*(-(2*pi*n)/3) * cos((2*pi*n)/3) + sin((2*pi*n)/3);
   xsum = xsum + a*cos(n*w*t) + b*sin(n*w*t);
end

plot(t, xsum)

%% (f)

t = linspace(0,10,1e5);
xsum = zeros(size(t));
w = ((2*pi)/3);
a = 1/6;
xsum = a;
for n = 1:100
    a = (2 / ( 3 * ((2*pi*n) / 3)^2))*((2*pi*n)/3) * sin((2*pi*n)/3) + cos((2*pi*n)/3) - 1;
    b = (2 / ( 3 * ((2*pi*n) / 3)^2))*(-(2*pi*n)/3) * cos((2*pi*n)/3) + sin((2*pi*n)/3);
   xsum = xsum + a*cos(n*w*t) + b*sin(n*w*t);
end

plot(t, xsum)

%% (d) again

t = linspace(0,10,1e5);
xsum = zeros(size(t));
w = (2);
a = 0;
for n = 1:100
   xsum = xsum + (2./(pi.*n))*((2./(pi.*n)).*sin((pi.*n)./2) - cos((pi.*n)./2)) .* cos((n.*w.*t - ((pi)/2) ));
end

plot(t, xsum)

%% (e) again
clear;
clc;

t = linspace(0,10,1e5);
xsum = zeros(size(t));
w = (2*pi)/3;
a = (1/6);
xsum = a;
for n = 1:100
   Cn = (3/(2*(pi^2)*(n^2))) * sqrt( 2 + (4*(pi^2)*(n^2))/9 -2*cos((2*pi*n)/3) - ((4*pi*n)/3)*sin((2*pi*n)/3) );
   xsum = xsum + Cn .* cos((n.*w.*t + ((pi)/2) ));
end

plot(t, xsum)

%% (f) again
clear;
clc;

t = linspace(0,10,1e5);
xsum = zeros(size(t));
w = (pi)/3;
a = (0.5);
xsum = a;
for n = 1:100
   Cn = (6/((pi^2)*(n^2))) * (cos((n*pi)/3) - cos((2*n*pi)/3));
   xsum = xsum + Cn .* cos((n.*w.*t ));
end
plot(t, xsum)

%%
clear;
clc;
%(a)
t = linspace(0,20,1e5);
xsum = zeros(size(t));
w = (pi/2);
mag = zeros(1,7);
num = zeros(1,7);
for n = 1:7
   xsum = xsum + (1 / (n*pi)) * ( 3*sin((n*pi)/2) - sin((n*pi*3)/2) ) * cos((n*w*t));
   x = (1 ./ (n.*pi)) .* ( 3.*sin((n.*pi)./2) - sin((n.*pi.*3)/2) ) .* cos((n.*w.*t));
   plot(t,x);
   mag(n) = max(x);
   num(n) = n;
end
% end
% num(1) = 1.27;
% num(2) = 0;
% num(3) = .42;
% num(4) = 0;
% num(5) = .25;
% num(6) = 0;
% num(7) = 0.18;
stemplot(num,mag)
