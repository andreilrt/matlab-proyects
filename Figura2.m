t=-8:0.001:8;
x=R(t,-2).*(U(t,-2)-U(t,-3));
h=U(t,0).*(exp(-t));
y=Convolucion(x,h,t);
figure(2)
tiledlayout(2,2)
nexttile
plot(t,x,'Y')
title('SEÑAL 1');
axis([-0.5 5 -0.5 1.5]);
xlabel("t");
ylabel("x(t)");
grid on;
nexttile
plot(t,h,'G')
title('SEÑAL 2');
axis([-0.5 5 -0.5 1.5]);
xlabel("t");
ylabel("h(t)");
grid on;
nexttile([1 2])
plot(t,y,'B')
title('CONVOLUCION');
axis([0 5 -0.5 1]);
xlabel("t");
ylabel("y(t)");
grid on;