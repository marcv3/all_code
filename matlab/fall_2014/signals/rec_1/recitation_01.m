% written by Marc Jurchak
%Problem 2 part (a). The analytic solution yeilded 0 as a result,
% since the area under a sinusoid is equal parts positive and negative.
% the graph demonstrates this since it returns to 0 after each full cycle.

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
% Problem 2 part (b). 
clear;
clc;
clf;
syms z;
x = int(exp(z*.1), 0,1)
x = double(x)

%%
% Problem 1
chirp = 'rec_01_chirp.raw';
FID = fopen(chirp, 'r');
A = fread(FID,inf,'short');
x = int16(A);
spectrogram(A)
wavplay(x,8000);
if FID < 0
    error('Failed to open file');
end