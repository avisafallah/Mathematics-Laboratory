dt = pi/10;
t = 0.0:dt:10.0*pi;
y = zeros(size(t));
y(1) = 0;
for ii=1:(length(t)-1)
    y(ii+1) = y(ii) + dt * (sin(t(ii))+sin(y(ii)));
end
plot(t,y)