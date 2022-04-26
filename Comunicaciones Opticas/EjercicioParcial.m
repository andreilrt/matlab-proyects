%Ejercicio BER
%Constantes
c = 3e8; %Velocidad de la luz
k = 1.3806488e-23; %Constante de boltzman
h = 6.62606957e-34; %Constante de plank;
e = 1.602176565e-19; % Constante de carga del electrón;

%Datos del ejercicio
L = 20e3;%Longitud de enlace(m)
Lambda = 850e-9; %Longitud de onda (m)
Alpha = 1.5; %Coeficiente de atenuación (dB/Km)
RL = 200;%Resistencia de carga (Ohms)
T = 300;%Temperatura (K)
Lc = 2*2; %Perdida por conector (dB)
%n1 = 1.5; %Indice de refracción n1
%n2 = 1.48; %Indice de refracción n2
Pe = 1e-4;%Tasa de error de bit
DF = 1e6;%Ancho de banda
n = 0.5; %Eficiencia cuántica
%D = 50e-6; %Diametro

%Datos Calculados
%F = c/Lambda; %Frecuencia (Hz)
%NA = Na(n1,n2);%Apertura Numerica
SN = ((erfinv(1-Pe*2))/0.354)^2;%Relación señal a ruido
PNT = 4*k*T*DF; % Potencia de Ruido Térmico
PES = PNT*SN; % Potencia Eléctrica de la señal
Is = sqrt(PES/RL); %Corriente sobre el fotodetector
PNS = 2*e*DF*Is*RL;%Ruido shoot
p = (n*e*Lambda)/(h*c); %Responsividad
Prx = Is/p; %Potencia óptica de entrada
%Rp = Prx/(h*F); %Número de fotones por segundo
%a = D/2; %Radio
%V = FrecuenciaNormalizada(a,NA,Lambda);