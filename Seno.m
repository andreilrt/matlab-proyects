t=-10:0.001:10;
t1=2;
t2=5;
w1=2*pi/t1;
w2=2*pi/t2;
x1=2*cos(w1*t);
x2=3*sin(w2*t);
subplot(1,2,1);
plot(t,x1);
axis([-10 10 -4 4]);
grid on;
subplot(1,2,2);
plot(t,x2);
axis([-10 10 -4 4]);
grid on;

