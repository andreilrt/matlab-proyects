t=-10:0.001:10;
x = sinc(t); 
figure('Name','Seno Cardinal');
p=plot(t,x) 
p.Color = 'r';
legend('sinc)')
title('Grafica Seno Cardinal')
axis([-10 10 -2 2])
xlabel("t");
ylabel("x(t)");
grid on;