    Fs = 1000;   %sampling rate
    Ts = 1/Fs; %sampling time interval
    t = -10:Ts:10-Ts; %sampling period
    n = length(t); %number of samples
    y = heaviside(t);%-heaviside(t-4); %the step curve
    
plot(t,y);

    matlabFFT = figure;  %create a new figure
    YfreqDomain = fft(y); %take the fft of our step funcion, y(t)
    y=abs(YfreqDomain);
    plot(y)
    xlabel('Sample Number')
    ylabel('Amplitude')
    title('Using the Matlab fft command')
    grid
    axis([-100,100,0,5000])
%% FT of the derivative of s

f = linspace(-1,1,1e3);

x =1 - exp(-j.*2.*pi.*f.*0.01);

plot(f,abs(x));
xlabel('freq');

%%
t = linspace(0,1,1e3);
m = 100;
b1 = 0;
b2 = 1;
y = m.*t + b1;
x = -m.*t + b2;
plot(t,y)

%% FT of the derivative of signal 4

w = linspace(-10,10,1e3);

x = (1./(j.*w)) + exp(-j.*w.*0.01);

plot(w,abs(x));