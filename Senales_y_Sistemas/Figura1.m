t=-6:0.001:6;
x=2*(U(t,-1)-U(t,-2));
h=R(t,-1)-2*R(t,-2)+R(t,-3);
y=Convolucion(x,h,t);
figure(1)
subplot(3,1,1)
plot(t,x)
grid on;
subplot(3,1,2)
plot(t,h)
grid on;
subplot(3,1,3)
plot(t,y)
grid on;