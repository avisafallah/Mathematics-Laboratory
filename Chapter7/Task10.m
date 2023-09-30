syms x f0 f1 f2 x0 x1 x2 a1 a2 a0 y
a0 = f0;
a1 = (f1-f0)/(x1-x0);
a2 = ( (f2-f0)*(x1-x0) - (f1-f0)*(x2-x0) ) / ( (x1-x0)*(x2-x0)*(x2-x1) );
y = a0 + (x-x0)*a1 + (x-x0)*(x-x1)*a2;
q = int(y,x0,x2);
simplify(q);