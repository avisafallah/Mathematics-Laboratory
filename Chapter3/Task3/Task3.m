I(1) = f(1);
for N=2:20
    I(N) = I(N-1) +  f(N);
end
disp(['Values of I_N'])
disp([1:N; I])
