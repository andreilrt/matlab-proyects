t=-10:0.5:10;
X= t.*cos(2.*t)+t.^2;
figure('Name','Señal Completa');
plot(t,X)

X= t.^2;
figure('Name','Parte Par');
plot(t,X)

X= t.*cos(2.*t);
figure('Name','Parte Impar');
plot(t,X)

