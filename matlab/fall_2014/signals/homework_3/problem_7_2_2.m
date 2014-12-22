clear;
clc;
 f = linspace(-10,10,1e5);
 w = 2*pi*f;
 a = 1;
 T = 1;
 tao = 1;
 
 %Fourier transform of signal 
Xa = ((sin(w./2)) ./ (w ./ 2)) .* exp(-j.*5.*w);
 
Xa_mag = abs(Xa);
Xa_phase = angle(Xa);

subplot(2,1,1);
plot(f,Xa_mag);
title('Magnitude plot');
ylabel('Magnitude');
xlabel('Frequency (Hz)');
axis([-6 6 0 2])

subplot(2,1,2);
plot(f,Xa_phase);
title('Phase plot');
ylabel('Phase');
xlabel('Frequency (Hz)');
axis([-4 4 -3.5 3.5])