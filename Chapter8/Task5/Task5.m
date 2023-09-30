y0 = 0;
tspan = [0 2];
[t,y] = ode45(@(t,y) t^2-y^2,tspan,y0);
plot(t,y,'-o')