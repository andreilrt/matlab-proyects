%%SEÑALES REALES

%%SEÑAL EXPONENCIAL
%%X(t)=b*(e^a*t)

t=-2:0.5:10;
x=exp(t);
figure('Name','EXPONENCIAL 1');
plot(t,x)


b=1;
a=-1;
x=b*(exp(a*t));
figure('Name','EXPONENCIAL 2');
plot (t,x)

%%SEÑAL SENOIDAL
%%X(t)=a*e^(alpha*t)*sen(w*t+phi)

t=-2:0.5:10;
a=1;
w=1;
phi=0;
alpha=0;

x=sin(t);
figure('Name','SENOIDAL 1');
plot(t,x)

x=a*exp(alpha.*t).*sin(w.*t+phi);
figure('Name','SENOIDAL 2');
plot(t,x)

%%SEÑAL SENOIDAL AMORTIGUADAS EPONENCIALMENTE
%%X(t)=a*e^(-alpha*t)*sen(w*t+phi)

t=-10:0.05:10;
a=5;
w=2*pi;
phi=0;
alpha=1;

x=a*exp(-alpha.*t).*sin(w.*t+phi);
figure('Name','SENOIDAL AMORTIGUADA 1');
plot(t,x)

%%SEÑAL ESCALON UNIDAD
%%U(t)=[1, t>0][0, t<0]

t=-2:0.2:2;
U=t>=0;
x=U*2;
figure('Name','ESCALON UNITARIO 1');
plot(t,x)

%%SEÑAL RAMPA
%%r(t)=[t, t>=0][0, t<0]

t=-2:0.2:2;
U=t>=0;
r=t.*U;
figure('Name','SEÑAL RAMPA');
plot(t,r)

%%SEÑAL IMPULSO
%%S(t)=0 t!=0

t=-1:0.01:1;
I=t==0;
figure('Name','SEÑAL IMPULSO');
plot(t,I)


%%SEÑAL MUESTREO
%%Sa(x)=sin(x)/x

t=-100:1:100;
Sa=sin(t)./t;
figure('Name','SEÑAL MUESTREO');
plot(t,Sa)








