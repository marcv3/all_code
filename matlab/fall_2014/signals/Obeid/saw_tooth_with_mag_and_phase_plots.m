t = linspace(-15,15,1e5);

x = 0*t;
y = sawtooth(t);

T = 2*pi;
w1 = 2*pi/T;

for n = 1:1000
   w = n*w1;
   An = (1/(pi*n))*exp(j*(.5+n/3)*pi);
   x = x + 2*abs(An) * cos(w*t + angle(An));
end

plot(t,x,t,y);
grid('on');

%%

n = 1:100;
 An = (1./(pi*n)).*exp(j*(.5+n/3)*pi);
 figure(2);clf;
 subplot(2,1,1); % two rows, one column
 stem(w1*n,abs(An));
 title('amplitude of sawtooth function');
 xlabel('frequency in rads/s');
 ylabel('magnitude');
 
 subplot(2,1,2);
 stem(w1*n,angle(An));
 title('phase of sawtooth function');
 xlabel('frequency in rads/s');
 ylabel('phase');