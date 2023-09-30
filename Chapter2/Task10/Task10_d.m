% we can debug our code like below :

w = ones(1,9);
w(1) = 1;
for j = 1:4
    w(2*j) = 3;
    w(2*j+1) = 2*j+1;
end