y0 = 0;
tspan = [0 2];
[t,y] = ode45('odes',tspan,y0);
plot(t,y,'-o')