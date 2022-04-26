Zo=75;%input('Digite la Inpedancia Caracteristica:');
l=10;%input('Digite la longitud:');
Er=2.6;%input('Digite la permitividad del dieléctrico:');
f=300e6;%input(' Digite la Frecuencia:');
zL=100;%input(' Digite la impedancia de carga:');
A=1;%input(' Digite la amplitud del generador:');
c=3e8;
alpha=0; % atenuacion
lambda=c/((f*sqrt(Er)));
Beta=(2*pi/lambda);
Gama=alpha+Beta*1i;
z=linspace(0,-l,200);
% 1.
pl=(zL-Zo)/(zL+Zo);
theta = angle(pl);
pv=pl*exp(-2*Gama.*z);
%pv=abs(pl)*exp((2*Beta.*z+theta)*1i);
plot(real(pv),imag(pv))

% 2.