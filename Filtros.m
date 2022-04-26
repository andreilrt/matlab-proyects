%Ap = atenuación en dB para la banda de paso
%As = atenuación en dB para la banda de rechazo (stop)
%Fp = Frecuencia de paso - En la cual se presenta Ap
%Fs = Frecuencia de rechazo (stop) - En la cual se presenta As
%nB = Orden de Butterworth
%nC = Orden de Chebyshev
%R = Resistencia
Ap = 3;%input('Digite valor de Ap: ');
As = 30;%input('Digite valor de As: ');
Fp = 70e3;%input('Digite valor de Fp: ');
Fs = 30e3;%input('Digite valor de Fs: ');
E1 = sqrt(10^(0.1*Ap)-1);
E2 = sqrt(10^(0.1*As)-1);
if Fs>Fp
    nB = log10(E2/E1)/log10(Fs/Fp);
    nC = log(2*E2/E1)/sqrt(2*((Fs/Fp)-1));
else
    nB = log10(E2/E1)/log10(Fp/Fs);
    nC = log(2*E2/E1)/sqrt(2*((Fp/Fs)-1));
end
C = 1e-9;
R = 1e3;
R1=1/(2*pi*Fp*C*1.082);
R2=1/(2*pi*Fp*C*0.9241);
R3=1/(2*pi*Fp*C*2.613);
R4=1/(2*pi*Fp*C*0.3825);
