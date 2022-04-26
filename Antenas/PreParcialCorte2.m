x1 = linspace(-50, 50, 50);
y1 = linspace(-50, 50, 50);
[x, y] = meshgrid(x1, y1);
z = x.^2+y.^2-1
surf(x,y,z);



%%
r = 5;
[X,Y,Z] = cylinder(r);
h = 20;
Z = Z*h;
surf(Y,Z,X)
hold on;
x = 20;
surf(Y,Z+x+0.1,X+0.5)
hold on;

axis off;
