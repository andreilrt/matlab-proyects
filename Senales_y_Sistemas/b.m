t=-4:0.01:4;
x=R(t,0).*U(-t,1);
plot(t,x)
h1=U(t,-1)-U(t,-2);
y1=Convolucion(x,h1,t);
plot(t,y1)