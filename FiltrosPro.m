%Función 1
disp("Pasa Bajos")
[nb,db]=butter(4,1,'s')
[n1, d1]=lp2lp(nb,db,2*pi*10e3)
s=tf(n1,d1)
figure('Name','Función Transferencia Pasa Bajos');
bode(s)

%Función 2
disp("Pasa Altos")
[n2, d2]=lp2hp(nb,db,2*pi*100)
s=tf(n2, d2)
figure('Name','Función Transferencia Pasa Altos');
bode(s)

%Función 3
disp("Pasa Banda")
Wo1 = 2 * pi * sqrt (10e3 * 100); % de frecuencia central 
Bw1 = 2 * pi * (100-10e3); % banda ancha
[n3, d3]=lp2bp(nb,db, Wo1, Bw1)
s=tf(n3, d3)
figure('Name','Función Transferencia Pasa Banda');
bode(s)

%Función 4
disp("Rechaza Banda")
Wo2 = 2 * pi * sqrt (10e3 * 70e3); % de frecuencia central 
Bw2 = 2 * pi * (70e3-10e3); % banda ancha
[n4, d4]=lp2bs(nb,db,Wo2, Bw2)
s=tf(n4, d4)
figure('Name','Función Transferencia Rechaza Banda');
bode(s)

