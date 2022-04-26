t=-8:0.001:8;
x=U(t,-1)-3*U(t,-2)+5*U(t,-3)-3*U(t,-4);
h=U(t,0).*(exp(-t));
y=Convolucion(x,h,t);
figure(3)
tiledlayout(2,2)
nexttile
plot(t,x,'C')
title('SEÑAL 1');
axis([-0.5 7 -3 3.5]);
xlabel("t");
ylabel("x(t)");
grid on;
nexttile
plot(t,h,'R')
title('SEÑAL 2');
axis([-0.5 7 -0.5 1.5]);
xlabel("t");
ylabel("h(t)");
grid on;
nexttile([1 2])
plot(t,y,'G')
title('CONVOLUCION');
axis([0 6 -1.5 2]);
xlabel("t");
ylabel("y(t)");
grid on;