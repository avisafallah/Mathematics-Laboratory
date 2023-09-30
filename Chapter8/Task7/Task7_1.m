x = 0.0:0.1:1.0;
N = length(x);
h = x(2)-x(1);
a = 1/h^2*ones(size(x));
b = -2/h^2*ones(size(x));
c = 1/h^2*ones(size(x));
r = x.*cos(x);
a(1) = 0; b(1) = 1; r(1) = 1;
c(N) = 0; b(N) = 1; r(N) = 0;

for j = 2:N
b(j) = b(j)-c(j)*a(j-1)/b(j-1);
r(j) = r(j)-c(j)*r(j-1)/b(j-1);
end

y(N) = r(N)/b(N);
for j = (N-1):-1:1
y(j) = r(j)/b(j)-a(j)*y(j+1)/b(j);
end

Y = [y(1) y(2) y(3) y(4) y(5) y(6) y(7) y(8) y(9) y(10) y(11)];


%exact func
y0 = 1;
x0 = 0;
for N = 1:11
    ex(N) = 2.*sin(x0) - x0.*cos(x0) + x0.*(-2.*sin(1) + cos(1) - 1) + 1;
    x0 = x0+0.1;
end
disp(Y)
disp(ex)
plot(x,Y,x,ex,"--")