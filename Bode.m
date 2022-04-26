R = 800e3;
R1 = 10e3;
C = 10e-9;
L = 20e-3;

%Función 2
Num = [1 0 0];
Den = [1 (1/(C*R)+1/(C*R)+1/(C*R)) 1/(C*C*R*R)];
ft = tf(Num,Den)
figure('Name','Función Transferencia Pasa Altos');
bode(ft);