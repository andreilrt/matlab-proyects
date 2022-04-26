n=0:1:20;
d=(n==0:1:20);
f=1000;
fs=10000;
b=sin(2*pi*(f/fs)*n);
y=d.*b;
subplot(3,1,1)
plot(n,b);
title('Señal Senoidal y(t)');
subplot(3,1,2)
stem(n,d);
title('Tren de Pulsos');
subplot(3,1,3)
stem(n,y);
title('Señal Muestreada')