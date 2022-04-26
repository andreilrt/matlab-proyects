R = 1e3;
C = 10e-9;
L = 20e-3;

%Función 1
Num = [0 1 0];
Den = [0 1 1/(R*C)];
ft = tf(Num,Den)
figure('Name','Función Transferencia Pasa Altos');
bode(ft);

%Función 2
Num = [0 0 (R/L)];
Den = [0 1 (R/L)];
ft = tf(Num,Den)
figure('Name','Función Transferencia Pasa Bajos');
bode(ft);

%Función 3
Num = [0 1 0];
Den = [L/R 1 1/(R*C)];
ft = tf(Num,Den)
figure('Name','Función Transferencia Pasa Banda');
bode(ft)