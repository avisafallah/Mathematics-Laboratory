a = input('Enter a : ');
b = input('Enter b : ');
res = a.^b;
str1 = 'The answer is ';
str2 = ' when ' ;
str3 = ' is raised to the power ';
disp([str1 num2str(res) str2 ...
num2str(a) str3 num2str(b)]);