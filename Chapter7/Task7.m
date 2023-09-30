inp = [1 10 100 1000 10000];
for i = 1:5
    n = ceil(inp(i))*3;
    x = linspace(0,inp(i),n);
    h = x(2)-x(1);
    f = 1./sqrt(x.^2+1);
    int = (sum(f)-f(1)/2-f(n)/2)*h;
    disp(int);
end
