s(1) = 1;
for n = 1:9000
    s(n+1) = s(n)+1/(n+1)^2;
end
txt = sprintf('%f', s(9001));
disp(txt);

% when N → ∞ ,S_N → π^2/c , so c → π^2/S_N 
c = pi^2 / s(n);
disp(num2str(c))