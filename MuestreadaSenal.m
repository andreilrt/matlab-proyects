T=1;
t=-20:0.1:20;
y=sin(t);
pdirac=0.0;

for n=min(t):max(t)
    pdirac=pdirac+100*sinc(100*(t-T*n));
end

subplot(3,1,1)
plot(t,y);
title('Señal Senoida y(t)');
subplot(3,1,2)
plot(t,pdirac)
title('Tren de Pulsos');
mult=y.*(pdirac);
subplot(3,1,3)
plot(t,mult)
title('Señal Muestreada');