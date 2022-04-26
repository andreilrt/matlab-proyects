A1=7/2;
T1=4;
W1=(2*pi)/T1;
X1=A1*sin(W1*t);

A2=5/2;
W2=3*pi;
Ph2=1;
X2=A2*sin(W2*t+Ph2);

A3=3;
T3=(400*pi)*10^(-3);
W3=(2*pi)/T3;
Ph3=3/2;
X3=A3*sin(W3*t+Ph3);
X4=X1+X2;
X5=X1.*X2;
X6=((X1.*X3)-X2);

figure(1)
subplot(3,2,1)
plot(t,X1,'g')
xlabel('t')
ylabel('X1')
grid on;
subplot(3,2,3)
plot(t,X2,'b')
xlabel('t')
ylabel('X2')
grid on;
subplot(3,2,5)
plot(t,X3,'y')
xlabel('t')
ylabel('X3')
grid on;
subplot(3,2,2)
plot(t,X4,'r')
xlabel('t')
ylabel('X1+X2')
grid on;
subplot(3,2,4)
plot(t,X5,'c')
xlabel('t')
ylabel('X1*X2')
grid on;
subplot(3,2,6)
plot(t,X6,'m')
xlabel('t')
ylabel('(X1*X3)-X2')
grid on;

