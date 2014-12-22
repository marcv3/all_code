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