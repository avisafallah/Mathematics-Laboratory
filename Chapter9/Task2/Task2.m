x = randn(1,1);
y = randn(1,1);
a = randn(1,1);
b = randn(1,1);
A = [x y a.*x+b];
R = corrcoef(A);
disp(R)
disp((a/abs(a)))