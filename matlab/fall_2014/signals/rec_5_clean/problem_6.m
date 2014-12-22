clear;
clc;
clf;

figure(1)

fp = fopen('rec_01_speech.raw','r');
sig = fread(fp,inf,'int16');
fclose(fp);

x = 1:1:size(sig);
time_x = x .* (1.25e-4);
y = sig';
subplot(3,2,1);
plot(time_x,y)
title('plot of signal');
xlabel('time (s)');

high_amp = y(28240:28496);
length = size(high_amp);
high_amp_sample_no = 1:1:length(2);
high_time = high_amp_sample_no .* (1.25e-4);
subplot(3,2,3);
plot(high_time, high_amp);
title('high amplitude portion of signal');
xlabel('time (s)');

low_amp = y(10620:10876);
len = size(low_amp);
low_amp_sa_no = 1:1:len(2);
low_time = low_amp_sa_no .* (1.25e-4);
subplot(3,2,5);
plot(low_time, low_amp);
title('low amplitude portion of signal');
xlabel('time (s)');

figure(2)

freq_high = 0:31.2:4000;
freq_high = freq_high(1:129);
high_fft = abs(fft(high_amp));
high_fft = high_fft(1:129);
subplot(2,2,1);
plot(freq_high, high_fft)
title('high amplitude FFT');
xlabel('frequency (Hz)');

freq_low = 0:31.2:4000;
freq_low = freq_low(1:129);
low_fft = abs(fft(low_amp));
low_fft = low_fft(1:129);
subplot(2,2,3);
plot(freq_low, low_fft)
title('low amplitude FFT');
xlabel('frequency (Hz)');
