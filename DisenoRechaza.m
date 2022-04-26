% Diseño de filtro rechaza banda

%% Pasa-Bajos

Ap = 3;
As = 50;
Fp = 2e3;
Fs = 13e3;

E1 = sqrt(10^(0.1*Ap)-1);
E2 = sqrt(10^(0.1*As)-1);

nB = log10(E2/E1)/log10(Fs/Fp);
nC = log(2*E2/E1)/sqrt(2*((Fs/Fp)-1));

R = 1e3;
C1 = 3.546/(2*pi*Fp*R);
C2 = 1.392/(2*pi*Fp*R);
C3 = 0.2024/(2*pi*Fp*R);

%% Pasa-Altos

Ap = 3;
As = 50;
Fp = 38e3;
Fs = 13e3;

E1 = sqrt(10^(0.1*Ap)-1);
E2 = sqrt(10^(0.1*As)-1);

nB = log10(E2/E1)/log10(Fp/Fs);
nC = log(2*E2/E1)/sqrt(2*((Fp/Fs)-1));

C = 1e-9;
R = 1/(2*pi*Fp*C);
R1 = R/11.23;
R2 = R/2.250;
R3 = R/0.8985;