x = 1:0.1:2;

y = x.^3+3*x.^2+1;
disp(['the answer for first function is: ' num2str(y)])

y = sin(x.^2);
disp(['the answer for second function is: ' num2str(y)])

y = (sin(x)).^2;
disp(['the answer for third function is: ' num2str(y)])

y = sin(2*x) + x.*cos(4*x);
disp(['the answer for fourth function is: ' num2str(y)])

y = x./((x.^2)+1);
disp(['the answer for fifth function is: ' num2str(y)])

y = cos(x)./(1+sin(x));
disp(['the answer for sixth function is: ' num2str(y)])

y = 1./x + x.^3./(x.^4+5*x.*sin(x));
disp(['the answer for seventh function is: ' num2str(y)])