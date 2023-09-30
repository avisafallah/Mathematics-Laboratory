dt  = 0.05;
t = 0.0:dt:1.0;
y = zeros(size(t));
y(1) = 1;
for ii=1:(length(t)-1)
    y(ii+1) = y(ii) + dt * (-y(ii)*sqrt(t(ii)));
end
exact = exp(-2/3*(t).^(3/2));
plot(t,y,t,exact,"--")
