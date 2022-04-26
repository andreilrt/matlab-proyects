% t=-0.1:0.01:6;
% % x=R(t,0)-R(t,-1)-U(t,-2)+U(t,-3)-R(t,-3)+R(t,-4);
% x=U(t,0)-R(t,0)+2*R(t,-1)-U(t,-2)-R(t,-2);
% plot(t,x)
% v = floor(x.*44)+44;
% plot(v);
% sprintf('x"%x",',v)


t=-0.001:0.01:6;
% x=R(t,0)-R(t,-1)-U(t,-2)+U(t,-3)-R(t,-3)+R(t,-4);
x=U(t,0)-R(t,0)+2*R(t,-1)-U(t,-2)-R(t,-2);
plot(t,x)
v = floor(x.*255);
plot(v);
sprintf('x"%x",',v) 
