N = 20;
t = linspace(0,2,N);
dt = t(2)-t(1);
y(1) = 1;
y(2) = 1;
for j = 2:N-1
    y(j+1) = 2*y(j)-y(j-1) + dt^2*(t(j)*y(j) + sin(t(j)));
end
plot(t,y)