sys=linmod('untitled');
Tss=ss(sys.a,sys.b,sys.c,sys.d);
[n,d]=tfdata(Tss,'v');
T=tf(n,d)