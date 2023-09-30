mu = 0.4;
x = [0 0 0 0 0 0 0 0 0 0];
x(1) = 0.25;
for i = 1:9
    x(i+1) = map1(x(i),mu);
end
disp(x);
co = [-mu^3 2*mu^3 -mu^2*(1+mu) (mu^2-1) 0];
[r] = roots(co);
disp(r);