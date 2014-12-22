function [ x,f ] = myFFT( x,fs,varargin )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
nfft = length(x);
if nargin >= 3
    nfft = varargin(1);
else
    nfft = max([nfft,2^20]);
end

x = fft(x,nfft)/fs;
x = fftshift(x);
f = fs*(0:nfft-1)/nfft - (fs/nfft)*floor(nfft/2);

