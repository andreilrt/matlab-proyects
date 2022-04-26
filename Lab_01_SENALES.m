% X1 debe ser una señal senoidal con periodo fundamental T=2s y amplitud 3,5  
t=-10:0.01:10;
A1=3.5;
T1=2;
W1=2*pi/T1;
X1=A1*sin(W1.*t);
figure('Name','SEÑALES X1(t),X2(t),X3(t)');
subplot(3,1,1);
p=plot(t,X1); 
p.Color = 'M';
title('Grafica X1(t)')
axis([-6 6 -5 5])
xlabel("t");
ylabel("x(t)");
grid on;

% X2 señal senoidal con frecuencia angular ω=3*π, fase Φ=1s y amplitud 2,5
t=-10:0.01:10;
A2=2.5;
P2=1;
W2=3*pi;
X2=A2*sin(W2.*(t+P2));
subplot(3,1,2);
p=plot(t,X2); 
p.Color = 'C';
title('Grafica X2(t)')
axis([-6 6 -5 5])
xlabel("t");
ylabel("x(t)");
grid on;

% X3 señal tipo seno con periodo fundamental T=400*π ms, fase Φ=1,5s y amplitud 4. 
t=-10:0.01:10;
A3=4;
T3=(400*pi)*10^(-3);
P3=1.5;
W3=2*pi/T3;
X3=A3*sin(W3.*(t+P3));
subplot(3,1,3);
p=plot(t,X3); 
p.Color = 'R';
title('Grafica X3(t)')
axis([-6 6 -5 5])
xlabel("t");
ylabel("x(t)");
grid on;

% X4(t)= X1(t)-X2(t)
figure('Name','X4(t)=X1(t)-X2(t)');
subplot(2,1,1);
X4=X1-X2;
p=plot(t,X1,'b--'); 
p.Color = 'B';
title('Grafica X1(t)-X2(t)');
hold on;
p=plot(t,X2,'b--');
p.Color = 'Y';
hold off;
legend('X1','X2');
axis([-4 4 -6 6]);
xlabel("t");
ylabel("x(t)");
grid on;
subplot(2,1,2);
p=plot(t,X4); 
p.Color = 'G';
title('Grafica X4(t)');
axis([-4 4 -6 6]);
xlabel("t");
ylabel("x(t)");
grid on;

% X5(t)=X1(t)*X2(t)
figure('Name','X5(t)=X1(t)*X2(t)');
subplot(2,1,1);
X5=X1.*X2;
p=plot(t,X1,'b--'); 
p.Color = 'B';
title('Grafica X1(t)*X2(t)');
hold on;
p=plot(t,X2,'b--');
p.Color = 'R';
hold off;
legend('X1','X2');
axis([-4 4 -8 8]);
xlabel("t");
ylabel("x(t)");
grid on;
subplot(2,1,2);
p=plot(t,X5); 
p.Color = 'M';
title('Grafica X5(t)');
axis([-4 4 -10 8]);
xlabel("t");
ylabel("x(t)");
grid on;

% X6(t)=X1(t)*X3(t) + X2(t)
figure('Name','X6(t)=X1(t)*X3(t) + X2(t)');
subplot(2,1,1);
X6=(X1.*X3)+X2;
p=plot(t,X1,'b--'); 
p.Color = 'R';
title('Grafica X1(t)*X3(t) + X2(t)');
hold on;
p=plot(t,X2,'b--');
p.Color = 'G';
p=plot(t,X3,'b--');
p.Color = 'B';
hold off;
legend('X1','X2','X3');
axis([-4 4 -8 8]);
xlabel("t");
ylabel("x(t)");
grid on;
subplot(2,1,2);
p=plot(t,X6); 
p.Color = 'C';
title('Grafica X6(t)');
axis([-4 4 -15 17]);
xlabel("t");
ylabel("x(t)");
grid on;

% Determine de forma analítica cuáles de las últimas 3 señales generadas es periódica y cuál es su
% periodo fundamental.

f = msgbox({'-------------X4(t)= X1(t)-X2(t)-------------';
    'TX1=2';
    'TX2=2*pi/W2;';
    'SI K ES UN NUMERO RACIONAL SE AFIRMA QUE LA SEÑAL ES PERIODICA';
    'K=TX1/TX2 -->2/(2/3)';
    'K=3/1';
    '----> X4 ES UNA SEÑAL PERIODICA';
    'TX2*3=2';
    'TX1*1=2';
    'EL PERIODO DE LA SEÑAL ES 2';
    ' ';
    '-------------X5(t)= X1(t)*X2(t)-------------';
    'ES NECESARIO REESCRIBIR LA OPERACION COMO SUMA DE COSENOS';
    '1/2((Cos(2π/2 t-(3πt+1)))-(Cos(2π/2 t+(3πt+1))))';
    '1/2 ((Cos(-2πt-1))-(Cos(4πt+1)))';
    'T1=(2*π)/(-2π)=1';
    'T2=(2*π)/4π=1/2';
    'K=TX1/TX2 --> 1/(1/2)' ;
    'K=2/1';
    '----> X5 ES UNA SEÑAL PERIODICA';
    'TX2*2=1';
    'TX1*1=1';
    'EL PERIODO DE LA SEÑAL ES 1';
    ' ';
    '-------------X6(t)=X1(t)*X3(t) + X2(t)-------------';
    'ES NECESARIO REESCRIBIR LA OPERACION COMO SUMA DE COSENOS';
    '1/2 ((Cos(2π/2 t-(5t+1.5)))-(Cos(2π/2 t+(5t+1.5))))';
    '1/2 ((Cos((π-5)t-1.5))-(Cos((π+5)t+1.5)))';
    'T1=(2*π)/(π-5)=IRRACIONAL';
    'T3=(2*π)/(π+5)=IRRACIONAL';
    'K=TX1/TX3';
    'K=[(2*π)/(π-5)]/[(2*π)/(π+5)]=IRRACIONAL';
    '----> X6 ES UNA SEÑAL APERIODICA ';
    '';},'FORMA ANALÍTICA');

set(f,'color','W');




