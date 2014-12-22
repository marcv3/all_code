clear;
clc;
clf;
wo = 1000; %natural frequency
z = .05;
z1 = .1;
z2 = .25;
z3 = .4;
z4 = .6;
z5 = 1;
z6 = 2;
z7 = 5;

w = logspace(1,5);

G1 = (wo^2)./( sqrt((wo^2 - w.^2).^2+(2.*z*wo.*w).^2) );
G2 = (wo^2)./( sqrt((wo^2 - w.^2).^2+(2.*z1*wo.*w).^2) );
G3 = (wo^2)./( sqrt((wo^2 - w.^2).^2+(2.*z2*wo.*w).^2) );
G4 = (wo^2)./( sqrt((wo^2 - w.^2).^2+(2.*z3*wo.*w).^2) );
G5 = (wo^2)./( sqrt((wo^2 - w.^2).^2+(2.*z4*wo.*w).^2) );
G6 = (wo^2)./( sqrt((wo^2 - w.^2).^2+(2.*z5*wo.*w).^2) );
G7 = (wo^2)./( sqrt((wo^2 - w.^2).^2+(2.*z6*wo.*w).^2) );
G8 = (wo^2)./( sqrt((wo^2 - w.^2).^2+(2.*z7*wo.*w).^2) );


figure(1);



semilogx(w,G1,'magenta');
hold on;
semilogx(w,G2,'black');
semilogx(w,G3,'cyan');
semilogx(w,G4,'red');
semilogx(w,G5,'green');
semilogx(w,G6,'blue');
semilogx(w,G7,'magenta');
semilogx(w,G8,'black');
grid on;



%semilogx(w,G);
xlabel('frequency (rads/sec)');
ylabel('magnitude (V)');
title('freq vs. mag');
legend('z1 = .05','z2 = .1','z3 = .25','z4 = .4','z5 = .6','z6 = 1','z7 = 2','z8 = 5');


 