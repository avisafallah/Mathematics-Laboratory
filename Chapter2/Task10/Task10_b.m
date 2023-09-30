% we can debug our code like below :

N = input('Enter N  ');
sum = 0;
for j = 1:N
    sum = sum + 1/j+ 1/((j+2)*(j+3));
end
disp(['The answer is ' num2str(sum)])