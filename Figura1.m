t=-6:0.001:6;
x=2*(U(t,-1)-2*(U(t,-2)));
h=U(t,0).*(exp(-t));
y=Convolucion(x,h,t);
figure(1)
tiledlayout(2,2)
nexttile
plot(t,x,'M')
title('SEÑAL 1');
axis([-0.5 5 -0.5 2.5]);
xlabel("t");
ylabel("x(t)");
grid on;
nexttile
plot(t,h,'C')
title('SEÑAL 2');
axis([-0.5 5 -0.5 1.5]);
xlabel("t");
ylabel("h(t)");
grid on;
nexttile([1 2])
plot(t,y,'R')
title('CONVOLUCION');
axis([0 5 -0.5 2]);
xlabel("t");
ylabel("y(t)");
grid on;