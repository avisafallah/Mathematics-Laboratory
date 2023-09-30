x = linspace(-pi/2,pi/2);
f = x./(1+x.^2);
g = tan(x);
fg = g./(1+g.^2);
gf = f./(1+f.^2);
plot(x,fg,x,gf)
