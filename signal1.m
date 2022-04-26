t=-6:0.01:6;
x=R(t,0)-R(t,-1)-U(t,-2)+U(t,-3)-R(t,-3)+R(t,-4);
y = (x.*40)+40;
v = floor(y);
plot(v);
sprintf('x"%x",',v)