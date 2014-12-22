clear;
clc;
clf;
wo = 1000; %natural frequency
z = .2;
wo1 = 10;
wo2 = 100;
wo3 = 1000;
wo4 = 5000;


syms w; %radial frequency

w = logspace(1,5);



G1 = (wo1^2)./( sqrt((wo1^2 - w.^2).^2+(2.*z*wo1.*w).^2) );
G2 = (wo2^2)./( sqrt((wo2^2 - w.^2).^2+(2.*z*wo2.*w).^2) );
G3 = (wo3^2)./( sqrt((wo3^2 - w.^2).^2+(2.*z*wo3.*w).^2) );
G4 = (wo4^2)./( sqrt((wo4^2 - w.^2).^2+(2.*z*wo4.*w).^2) );


figure(1);



semilogx(w,G1,'magenta');
hold on;
semilogx(w,G2,'black');
semilogx(w,G3,'cyan');
semilogx(w,G4,'red');

grid on;



%semilogx(w,G);
xlabel('frequency (rads/sec)');
ylabel('magnitude (V)');
title('freq vs. mag');
legend('w0 = 10','w0 = 100','w0 = 1000','w0 = 5000');


 