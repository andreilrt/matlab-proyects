fo=0.05;
a=1;
phi=0;
fs=fo*20;
ts=1/fs;
t=-20:ts:20;
xt=a*cos(2*pi*fo*t+phi);
stem(t,xt)