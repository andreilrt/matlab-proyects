clearvars
clc
A = 3;
f = 100;
w = 2*pi*f;
Desfase = pi/2;
t = linspace(-10e-3,10e-3,40);
x1 = A*sin(w*(180/pi)*t+Desfase*(180/pi));
x2 = A*sin(w*(180/pi)*t);
x3 = A*sin(w*(180/pi)*t-Desfase*(180/pi));
figure
plot(t,x1);
hold on
plot(t,x2);
hold on
plot(t,x3);
xlabel('t(ms)');
ylabel('Voltios');
legend('3*Sen(2*pi*100*t+90)','3*Sen(2*pi*100*t)','3*Sen(2*pi*100*t-90)');

A = 3;
f = 100e3;
w = 2*pi*f;
Desfase = pi/2;
t = linspace(-10e-6,10e-6,40);
x1 = A*sin(w*t+Desfase);
x2 = A*sin(w*t);
x3 = A*sin(w*t-Desfase);
figure
plot(t,x1);
hold on
plot(t,x2);
hold on
plot(t,x3);
xlabel('t(us)');
ylabel('Voltios');
legend('3*Sen(2*pi*100k*t+90)','3*Sen(2*pi*100k*t)','3*Sen(2*pi*100k*t-90)');
