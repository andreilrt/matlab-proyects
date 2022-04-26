R = 500;
L = 10e-3;
C = 0.1e-6;

Num = [R/L 0];
Den = [1 R/L 1/(L*C)];
ft = tf(Num,Den)
figure('Name','Función Transferencia 1');
bode(ft);

Num = (1/(L*C));
Den = [1 R/L 1];
ft = tf(Num,Den)
figure('Name','Función Transferencia 2');
bode(ft);

Num = [1 0 0];
Den = [1 R/L 1/(L*C)];
ft = tf(Num,Den)
figure('Name','Función Transferencia 3');
bode(ft);

Num = [1 0 1/(L*C)];
Den = [1 R/L 1/(L*C)];
ft = tf(Num,Den)
figure('Name','Función Transferencia 4');
bode(ft);