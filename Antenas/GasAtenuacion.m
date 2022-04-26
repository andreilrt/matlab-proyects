freq = (1:1000)*1e9;
R = 1000.0;
T = 15;
P = 101300.0;
W = 7.5;
L = gaspl(R,freq,T,P,W);
L0 = gaspl(R,freq,T,P,0.0);
semilogy(freq/1e9,L)
hold on
semilogy(freq/1e9,L0)
grid
xlabel('Frequency (GHz)')
ylabel('Specific Attenuation (dB)')
hold off
%%
%Pérdidas por lluvía
clc
D = 50e3; %Distancia en m
F = 6.175e9;%Frecuencia
rr = 65;%Intensidad de lluvía mm/h
Angulo = 1.0866; %Ángulo de elevación
LR = rainpl(D,F,rr,Angulo,0,0.03);
fprintf("Pérdidas por lluvia: %f\n",LR);
