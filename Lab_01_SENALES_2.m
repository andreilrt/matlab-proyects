t=0 : 0.1 : 7;
F1=2*R(t,-1)-3*R(t,-2)+R(t,-3)+R(t,-4)-3*R(t,-5)+2*R(t,-6);
figure('Name','FIGURA 1');
plot(t,F1,'C')
title('Grafica FIGURA 1');
axis([0 7 -0.5 2.5]);
xlabel("t");
ylabel("x(t)");
grid on;

t=-3:0.01:3;
F2=U(t,2)+U(t,1)-R(t,1)+2*R(t,0)-U(t,-1)-R(t,-1)-U(t,-2);
figure('Name','FIGURA 2');
plot(t,F2,'M')
title('Grafica FIGURA 2');
axis([-3 3 -0.5 2.5]);
xlabel("t");
ylabel("x(t)");
grid on;

t=0:0.01:5;
F3=U(t,-2)-R(t,-2)+2*R(t,-3)-R(t,-4)-U(t,-4);
figure('Name','FIGURA 3');
plot(t,F3,'Y')
title('Grafica FIGURA 3');
axis([0 5 -0.5 1.5]);
xlabel("t");
ylabel("x(t)");
grid on;

t=0:0.01:5;
F4=sin(2*pi*t).*(U(t,-1)-U(t,-4));
figure('Name','FIGURA 4');
plot(t,F4,'G')
title('Grafica FIGURA 4');
axis([0 5 -1.5 1.5 ]);
xlabel("t");
ylabel("x(t)");
grid on;