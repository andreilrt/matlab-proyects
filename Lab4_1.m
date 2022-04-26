%%fig1
num=Fourier(15);
n=-num:num;

syms t f d e m;
A=-t*exp((-1i*f*n)*t);
B=t*exp((-1i*f*n)*t);
x=int (A,t,d,e);
y=int (B,t,e,m);
a=subs(x,{d,e,f},{-1,0,pi});
w=subs(y,{e,m,f},{0,1,pi});
t=a+w;
m=simplify(t);
r=abs(m);
v=angle(m);

figure
stem(n,r,'LineWidth',1);
title('Modulo 1');
grid on

figure
stem(n,v,'LineWidth',1);
title('Fase 1');
grid on

%%fig2
%%num=Fourier(entrada);
n=-num:num;

syms t f d e m;

A=3/4*exp((-1i*f*n)*t);
B=-1/4*exp((-1i*f*n)*t);
x=int (A,t,d,e);
y=int (B,t,e,m);
a=subs(x,{d,e,f},{0,3,pi/2});
w=subs(y,{e,m,f},{3,4,pi/2});
t=a+w;
m=simplify(t);
r=abs(m); 
v=angle(m); 

figure
stem(n,r,'LineWidth',1);
title('Modulo 2');
grid on

figure
stem(n,v,'LineWidth',1);
title('Fase 2');
grid on