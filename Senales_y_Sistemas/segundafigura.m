t=-3:0.001:3;
X=U(t,2)+U(t,1)-1*R(t,1)+2*R(t,0)-1*R(t,-1)-U(t,-1)-U(t,-2);
plot(t,X,'b')
grid on;