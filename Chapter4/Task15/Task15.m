x = 1;
for j = 1:10
x = x -ff(x)/fp(x);
end
disp(x);