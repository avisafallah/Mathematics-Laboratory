n = 40;
x = linspace(1,3,n);
f = x.^2-3*x+2;
h = x(2)-x(1);
integral = (sum(f)-f(1)/2-f(n)/2)*h;
disp(integral)
m = 2/3;% antegrali ke be sorate dasti va daghigh mohasebe kardim v javab 2/3 shod 
err = m-integral;%khata
disp(err)