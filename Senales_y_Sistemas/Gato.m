t=0:0.001:7;
X=2*R(t,-1)-3*R(t,-2)+R(t,-3)+R(t,-4)-3*R(t,-5)+2*R(t,-6);
plot(t,X,'m')
grid on;