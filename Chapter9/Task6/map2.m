function [xn,yn] = map2(xo,yo)
xn = mod(xo+2*yo,1);
yn = mod(3*xo-2*yo,1);