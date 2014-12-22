%fid = fopen('exam_01_01a_fan.mp3', 'r')
clear;
clc;

[y,Fs] = audioread('exam_01_01a_fan.mp3');

t=[1/Fs:1/Fs:length(y)/Fs];
plot(t,y)

%%
clear;
clc;

[y,Fs] = audioread('exam_01_01a_fan.mp3');

window2 = [zeros(1,242), ones(1,562), zeros(1,142)];

spectrogram(y, window2,'yaxis')

%%

clear;
clc;

[y,Fs] = audioread('exam_01_01a_fan.mp3');

window2 = [zeros(1,(242-50)), ones(1,(562 - 50)), zeros(1,(142-50))];

spectrogram(y, window2,'yaxis')

%window2 = [zeros(1,192), ones(1,512), zeros(1,192)];

%spectrogram(y, window2,'yaxis')

%spectrogram(y,'yaxis')

%%%%%%%%%%%%%%%%%%%%%%%%%

% fid = fopen('exam_01_01a_fan.mp3', 'r');
% 
%  A = fread(fid, inf, 'int8');
%  x = int8(A);
%  z = double(x);
%  sound(z,44100,16)

%[y,Fs] = audioread('exam_01_01a_fan.mp3');

%spectrogram(y,'yaxis')