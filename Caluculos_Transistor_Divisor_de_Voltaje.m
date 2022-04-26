%Diseño Amplificador con Polarización por divisor de Voltaje
Vbe = 0.7; %Constante por material - Silicio
Vcc = 16;
Ic = 1e-3;
Vce = 7;
Beta = 270;
DV = 100;
Ib = Ic/Beta;
re = 25e-3/Ic;
Rc = DV*re;
Re = ((Vcc-Vce)/Ic)-Rc;
Rb = 0.1*Beta*Re;
Vbb = Ib*Rb+Vbe+Ic*Re;
R1 = Vcc*Rb/Vbb; %33k y 2.7k
R2 = Vcc*Rb/(Vcc-Vbb); 
Issat = Vcc/Rc;

%%
%Con carga
Rc = ;
RL = 1e3;
DV = 100;
Ic = 10e-3;
re = 25e-3/Ic;
disp((Rc*RL/(Rc+RL))/re);
Vbe = 0.7; %Constante por material - Silicio
Vcc = 20;
Ic = 10e-3;
Vce = 10;
Beta = 250;
Ib = Ic/Beta;
Re = ((Vcc-Vce)/Ic)-Rc;
Rb = 0*Beta*Re;
Vbb = Ib*Rb+Vbe+Ic*Re;
R1 = Vcc*Rb/Vbb;
R2 = Vcc*Rb/(Vcc-Vbb);
Issat = Vcc/Rc;