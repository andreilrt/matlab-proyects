%% Parte1 
n=input('Numero de muestras:');
n0=input('Retraso señal:');
ni=input('Muestra inicial:');
nf=input('Muestra final:');
nv=ni:(nf-ni)/(n-1):nf;
a=input('Coeficiente exponencial: ');
% a=EscalonDiscreto(nv,n0);
% stem(nv,a);
% b=RampaDiscreta(nv,n0);
% stem(nv,b);
% c=ImpulsoDiscreto(nv,n0);
% stem(nv,c);
% d=ExpDiscreta(a,nv,n0);
% stem(nv,d);

%% Figura1
n=41;
ni=-20;
nf=20;
nv=ni:(nf-ni)/(n-1):nf;
F1=10*EscalonDiscreto(nv,-10)-RampaDiscreta(nv,-10)-10*EscalonDiscreto(nv,11)+2*RampaDiscreta(nv,0)-1*RampaDiscreta(nv,10);
stem(nv,F1);

%% Figura2
n=61;
ni=-30;
nf=30;
nv=ni:(nf-ni)/(n-1):nf;
F2=RampaDiscreta(nv,-20)-RampaDiscreta(nv,-10)-10*EscalonDiscreto(nv,-9.5)-RampaDiscreta(nv,10)+10*EscalonDiscreto(nv,10)+RampaDiscreta(nv,20);
stem(nv,F2);

%% Figura3
n=61;
ni=-30;
nf=30;
nv=ni:(nf-ni)/(n-1):nf;
F3=10*EscalonDiscreto(nv,-20)-RampaDiscreta(nv,-20)+2*RampaDiscreta(nv,0)-RampaDiscreta(nv,20)-10*EscalonDiscreto(nv,21);
stem(nv,F3);

%%Parte 2

%% Figura1
n=41;
ni=-20;
nf=20;
nv=ni:(nf-ni)/(n-1):nf;
F1=10*EscalonDiscreto(nv,-10)-RampaDiscreta(nv,-10)-10*EscalonDiscreto(nv,11)+2*RampaDiscreta(nv,0)-1*RampaDiscreta(nv,10);
x=Submuestreo(F1,n,6);
figure('Name','original');
stem(nv,F1);
figure('Name','submuestreada');
stem(nv,x);

%% Figura2
n=61;
ni=-30;
nf=30;
nv=ni:(nf-ni)/(n-1):nf;
F2=RampaDiscreta(nv,-20)-RampaDiscreta(nv,-10)-10*EscalonDiscreto(nv,-9.5)-RampaDiscreta(nv,10)+10*EscalonDiscreto(nv,10)+RampaDiscreta(nv,20);
x2=Submuestreo(F2,n,7);
figure('Name','original');
stem(nv,F2);
figure('Name','submuestreada');
stem(nv, x2);

%% Figura 3
n=61;
ni=-30;
nf=30;
nv=ni:(nf-ni)/(n-1):nf;
F3=10*EscalonDiscreto(nv,-20)-RampaDiscreta(nv,-20)+2*RampaDiscreta(nv,0)-RampaDiscreta(nv,20)-10*EscalonDiscreto(nv,21);
x3=Submuestreo(F3,n,7);
figure('Name','original');
stem(nv,F3);
figure('Name','submuestreada');
stem(nv, x3);