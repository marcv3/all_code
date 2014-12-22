clear;
clc;
chirp = 'rec_01_speech.raw';
FID = fopen(chirp, 'r');
A = fread(FID,inf,'short');
x = int16(A);
spectrogram(A);
%player = audioplayer(x,8000,16);
z = double(x);
sound(z,8000,16)
if FID < 0
    error('Failed to open file');
end

%%
songwav = 'songwav.wav'
[y,Fs] = audioread(songwav)
sound(y,Fs);


%%
load handel.mat
filename = 'voice.wma';
audiowrite(filename,y,Fs);
clear y Fs
%%
%int(sym('x^2'))
syms x;
f=inline('x^2');
int(f(x))
int(x^2)
%%
clear;
clc;

syms t;
%int(sym('sin(2*pi*100*t)'), 0,2)
int(sym('sin(2*pi*100*t)'))

%%
clear;
clc;
clf;
syms z;
alpha = linspace(0.0, 0.02, 21);
j = 1;
for i = drange(alpha)
   result(j) = int(sin(2*pi*100*z), 0, i);
   j = j + 1;
end

result = double(result);
plot(alpha, result);

%%
clear;
clc;
clf;
syms z;
x = int(exp(z*.1), 0,1)
x = double(x)


