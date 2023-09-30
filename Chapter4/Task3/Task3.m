b = input("enter Value of b: ");
x = -10:0.1:10;
f = x.^2 + b*x + 1;
plot(x,f)