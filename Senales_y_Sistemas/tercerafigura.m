t=0:0.001:5;
X=U(t,-2)-R(t,-2)+2*R(t,-3)-R(t,-4)-U(t,-4);
plot(t,X,'g')
grid on;