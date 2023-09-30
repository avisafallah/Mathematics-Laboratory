% in second one we can use switch :

n = input('please enter the number of power ');
b = [0 1; -1 0];
i = [1 0; 0 1];
switch mod(n,4)
    case 0
        disp(i)
    case 1
        disp(b)
    case 2
        disp(-1*i)
    case 3
        disp(-1*b)
end




