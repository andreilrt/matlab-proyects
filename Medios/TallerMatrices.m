clearvars;
close all;
clc;
%Parametros de entrada 
Zo=75;%input('Digite la impedancia caracteristica:');
ZL=100;%input(' Digite la impedancia de carga:');
f=300e6;%input(' Digite la Frecuencia:');
l=10;%input('Digite la longitud:');
Er=2.6;%input('Digite la permitividad del dieléctrico:');
Vg=1;%input(' Digite el voltaje del generador:');
Zg=25;%input(' Digite la impedancia del generador:');

%Calculo de parametros adicionales
c = 3e8;
Lambda = c/(f*sqrt(Er)); 
alpha = 0;
Beta = 2*pi/Lambda;
Gamma = alpha + 1i*Beta;
Ig = Vg/Zg;
%Matrices
A = [cosh(Gamma*l) -Zo*sinh(Gamma*l);
    -(l/Zo)*sinh(Gamma*l) cosh(Gamma*l)];
B = [Vg; Ig];
%Solucion de matrices
X = linsolve(A,B);
Vl = X(1);
Il = X(2);
%Punto 1
Mensaje = ['El voltaje en la carga es: ', num2str(Vl)];
disp(Mensaje);
Mensaje = ['La corriente en la carga es: ', num2str(Il)];
disp(Mensaje);
%Matrices
A = [cosh(Gamma*l) Zo*sinh(Gamma*l);
    (l/Zo)*sinh(Gamma*l) cosh(Gamma*l)];
B = [Vl; Il];
%Solucion Matrices
X = linsolve(A,B);
Vi = X(1);
Ii = X(2);
%Punto 2
Mensaje = ['El voltaje de entrada es: ', num2str(Vi)];
disp(Mensaje);
Mensaje = ['La corriente de entrada es: ', num2str(Ii)];
disp(Mensaje);