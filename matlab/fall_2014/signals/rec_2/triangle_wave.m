
tx = linspace (0,1,1e5);
ty = linspace (1,2,1e5);
x = tx;
y = 2 - ty;


hold on;
plot(tx,x,ty,y)
title('signal 3 and signal 2 superimposed');
xlabel('time (s)');
ylabel('signal (V)');

plot(tx,sin(pi*tx),ty,abs(sin(pi*ty)))
%%
syms t
int(abs(sin(pi*t)),t,0,2)
int(t,t,0,1) + int(2 - t,t,1,2)