R1 = 1*10e3;
R2 = 1*10e3;
R3 = 500*10e3;

L = 1;
C = 1/4;

Num = [0 50050000 -2.50*10e14];
Den = [0 50100000000 2.505*10e14];
ft = tf(Num,Den)
figure('Name','Función Transferencia Pasa Altos');
bode(ft);