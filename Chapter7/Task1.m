f = [0 0 0 0 0 0 0 0 0 0 0 0];
for i = 1:12
    if mod(i,3) == 0
        f(i)= 1;
    elseif mod(i,3) == 1
        f(i)= 2;
    elseif mod(i,3) == 2
        f(i)= 3;
    end
end
disp(f)