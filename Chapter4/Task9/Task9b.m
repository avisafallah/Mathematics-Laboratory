% The Newton Raphson Method for second function ((x^3-x)*sinx)
clc;
close all;
clear all;
syms x;
f= (x.^3-x).*sin(x); % Function
g = (3*x.^2-1).*sin(x)+(x.^3-x).*cos(x); % Function Derivative
n=input('Please enter the number of decimal places:');
epsilon = 5*10^-(n+1);
x0 = input('Please enter the intial approximation:');
for i=1:100
     f0=vpa(subs(f,x,x0)); % Calculating the value of function at x0
     f0_der=vpa(subs(g,x,x0)); % Calculating the value of function derivative at x0
  y=x0-f0/f0_der; % Formula
err=abs(y-x0);
if err<epsilon % checking the amount of error at each iteration
break
end
x0=y;
end
y = y - rem(y,10^-n); % Displaying up to required decimal places
fprintf('The Root is : %f \n',y);
fprintf('No. of Iterations : %d\n',i);