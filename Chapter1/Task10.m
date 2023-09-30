% we can debug our code like below:
x = linspace(-2,2,20);
c = [1 0 0 0 -1];
y = polyval(c,x);
plot(x,y)