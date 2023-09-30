% we can write it in 2 different style of coding
% in first one we can use if and elseif(Task20a):

n = input('please enter the number of power ');
b = [0 1; -1 0];
i = [1 0; 0 1];
if mod(n,4) == 0
    disp("yes")
    disp(i)
elseif mod(n,4) == 1
    disp(b)
elseif mod(n,4) == 2
    disp(-1*i)
elseif mod(n,4) == 3
    disp(-1*b)
end
