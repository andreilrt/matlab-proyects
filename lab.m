% t=0:0.01:5;
% x=U(t,-2)-R(t,-2)+2*R(t,-3)-R(t,-4)-U(t,-4);
% y = (x.*40)+40;
% v = floor(y);
% plot(v)
% sprintf('x"%x",',v)


t=-0.0001:0.000001:6;
% x=R(t,0)-R(t,-1)-U(t,-2)+U(t,-3)-R(t,-3)+R(t,-4);
x=U(t,0)-R(t,0)+2*R(t,-1)-U(t,-2)-R(t,-2);
plot(t,x)
v = floor(x.*44)+44;
plot(v);
sprintf('x"%x",',v)

% t=-0.0001:0.00001:6;
% % x=R(t,0)-R(t,-1)-U(t,-2)+U(t,-3)-R(t,-3)+R(t,-4);
% x=U(t,0)-R(t,0)+2*R(t,-1)-U(t,-2)-R(t,-2);
% plot(t,x)
% v = floor(x.*255)+255;
% plot(v);
% sprintf('x"%x",',v)