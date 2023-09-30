function [y] = fp(x)
y = (1+x.^2).*sin(x)-x.*cos(x);