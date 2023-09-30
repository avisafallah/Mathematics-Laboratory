N = 20;
t = linspace(0,2,N);
dt = t(2)-t(1);
A = zeros(N);
A = diag(-2/dt^2*ones(N,1)+t',0) + diag(1/dt^2*ones(N-1,1),-1) + diag(1/dt^2*ones(N-1,1),1);
r = transpose(sin(t));
A(1,:) = 0;
A(1,1) = 1; r(1) = 0;
A(N,:) = 0;
A(N,N) = 1; r(N) = 0;
res = A\r;
disp(res)
plot(t,res)