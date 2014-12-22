clear;
clc;
 f = linspace(-10,10,1e5);
 w = 2*pi*f;
 a = 1;
 T = 1;
 
 %Fourier transform of signal (a)
Xa = (1./(a + j*w)).*(1 - exp(-T.*(a + j.*w)));

 %Fourier transform of signal (b)
Xb = (1./(a - j*w)).*(- 1 + exp(T.*(a - j.*w)));

Xa_mag = abs(Xa);
Xa_phase = angle(Xa);
Xb_mag = abs(Xb);
Xb_phase = angle(Xb);

subplot(2,2,1);
plot(f,Xa_mag);
title('Signal (a) magnitude plot');
ylabel('Magnitude');
xlabel('Frequency (Hz)');

subplot(2,2,2);
plot(f,Xa_phase);
title('Signal (a) phase plot');
ylabel('Phase');
xlabel('Frequency (Hz)');

subplot(2,2,3);
plot(f,Xb_mag);
title('Signal (b) magnitude plot');
ylabel('Magnitude');
xlabel('Frequency (Hz)');

subplot(2,2,4);
plot(f,Xb_phase);
title('Signal (b) phase plot');
ylabel('Phase');
xlabel('Frequency (Hz)');