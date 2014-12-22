% file: rec02_v04.m
%
% This MATLAB code implements a simple frame-based processing scheme
% where data is processed incrementally.

% declare a function
%
function rec02_v03

% close open sesions
%
close all;

% define two key parameters:
%  M: frame duration in samples - how often we compute an output
%  N: window duration in samples - how much data we use in each computation
%
M = [ 40,  80, 160, 320];
N = [ 80, 160, 320, 640];

% open the file:
%  We assume the data is in a file "rec_01_speech.raw". This should be
% parameterized, but we hardcode it here to keep things simple.
%
fp = fopen('rec_01_speech.raw','r');

% load the data:
%  It is 16-bit sampled data, so we must load it as short integers.
%
sig = fread(fp,inf,'int16');

% close the file:
%  It is never a good idea to leave open files since they consume operating
%  system resources and can get corrupted occassionally.
%
fclose(fp);

% create a matrix to store the output
%
rms = zeros(length(M), length(N), length(sig));

% loop over the a set of frame/window combinations.
%
for m = 1:length(M)

    % set up a plotting window and label it
    %
    h1 = figure('name', 'rms plot', 'numbertitle', 'off');
    for n = 1:length(N)
        
        % call a function to compute the rms vector
        %
        rms(m,n,:) = compute_rms(sig, M(m), N(n));
        
        % label the plot:
        %  include information about the parameters for each plot
        %
        figure(h1);
        str = sprintf('frame duration: %d   window duration = %d', M(m), N(n));
        subplot( 1+length(N), 1, n );

        % plot the rms contour
        %
        plot(squeeze(rms(m,n,:)));

        % label the axes
        %
        title(str);
        xlabel('time');
        ylabel('rms');
    end

    % plot the signal:
    %  this is the last plot on the page
    %
    figure(h1);
    subplot( 1+length(N),1,n+1);
    plot(sig);

    % label the axes
    %
    title('Input Signal');
    xlabel('time');
    ylabel('amplitude');
end

% exit gracefully
%
end



