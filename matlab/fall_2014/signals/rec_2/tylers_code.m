%6
M = [40,80,160,320];
N = [80,160,320,640];
% window == [ M`/2-N/2 to M`/2+N/2-1 ]
% M` == M*i + M/2

% grab the audio file
fp=fopen('rec_01_chirp.raw','r');
y=fread(fp,inf,'short');
x=int16(y);

sampleNumber = length(x);

for a=1:4
    for b=1:4
        for i=1:sampleNumber/M(a)
            Mp = M(a)*(i-a);
            windowStart = Mp/2-N(b)/2;
            windowEnd = Mp/2+N(b)/2-1;
            % don't exceed input data dimensions
            if( windowStart < 1)
                windowStart = 1;
            end
            if( windowEnd > sampleNumber )
                windowEnd = sampleNumber;
            end
            window = (windowStart:windowEnd);
            signal = x(window).^2;
            % this isn't neccessary
            outputSignal(window) = sum(signal) / (windowEnd-windowStart);
            outputBins(i) = sum(signal) / (windowEnd-windowStart);
        end
        %figure;plot(outputSignal);
        figure;plot(outputBins);
        xlabel('Time (ms)');
        ylabel('Average Power(mW)');
        
    end
end