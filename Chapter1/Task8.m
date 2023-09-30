x = -2:0.1:-1;
y = 1./(x.^3)+1./(x.^2)+3./x;
disp(['the answer for function is: ' num2str(y)])

% also we can write :
x = -2:0.1:-1;
f = 1./x;
y = f.^3 + f.^2 + 3*f;
disp(['the answer for function is: ' num2str(y)])


