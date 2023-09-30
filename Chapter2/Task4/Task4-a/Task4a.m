x = 0.0:pi/10:2*pi;
y = x;
[X,Y] = meshgrid(x,y);
f = func(X,Y);
contour(X,Y,f)
axis([0 2*pi 0 2*pi])
axis equal