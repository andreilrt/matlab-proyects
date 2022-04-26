t=0:0.001:5;
X=sin(2*pi*t).*(U(t,-1)-U(t,-4));
plot(t,X,'b')
grid on;