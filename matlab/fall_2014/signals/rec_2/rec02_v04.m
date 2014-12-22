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

% function: compute_rms
%
% arguments:
%  sig_a:  the input signal (input)
%  fdur_a: the frame duration in samples (input)
%  wdur_a: the window duration in samples (input)
%
% return:
%  rms: a vector of rms values (output)
%
% Note that this function returns the rms counter as a sampled data
% signal that is the same length as the input signal. This is wasteful
% of memory, but makes it easy to produce a time-aligned plot.
%
% This algorithm computes the sum of squares for wdur_a samples.
%
function rms_full = compute_rms(sig_a, fdur_a, wdur_a)

% declare local variables
%
sig_wbuf = zeros(1, wdur_a);
num_samples = length(sig_a);
num_frames = round(num_samples / fdur_a);
rms_full = zeros(length(sig_a),1);

% loop over the entire signal
%
for i = 1:num_frames
    
    % generate the pointers for how we will move through the data signal.
    % the center tells us where our frame is located and the ptr and right
    % indicate the reach of our window around that frame
    %
    n_center = (i - 1) * fdur_a + (fdur_a / 2);
    n_left = n_center - (wdur_a / 2);
    n_right = n_left + wdur_a - 1;
    
    % when the pointers exceed the index of the input data we won't be
    % adding enough samples to fill the full window. to solve this zero
    % stuffing will occur to ensure the buffer is always full of the same
    % number of samples
    %
    if( (n_left < 0) || (n_right > num_samples) )
        sig_wbuf = zeros(1, wdur_a);
    end
    
    % transfer the data to this buffer:
    %  note that this is really expensive computationally
    %
    for j = 1:wdur_a
        index = n_left + (j - 1);
        if ((index > 0) && (index <= num_samples))
            sig_wbuf(j) = sig_a(index);
        end
    end
    
    % square the signal. divide it by the number of samples used and sum
    % the result to build the value for that frame
    %
    rms = sqrt( (1 / wdur_a) * sum(sig_wbuf.^2));
    
    % assign the rms value to the output signal:
    %  note that we write fdur_a values
    %
    for j = 1:fdur_a
        index = n_left + (j - 1) + (wdur_a/2);
        if ((index > 0) && (index <= num_samples))
            rms_full(index) = rms;
        end
    end
end

% exit gracefully
%
end

