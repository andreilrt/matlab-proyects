t=-8:0.001:8;
x=U(t,-1)-3*U(t,-2)+5*U(t,-3)-3*U(t,-4);
h=U(t,0).*(exp(-t));
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