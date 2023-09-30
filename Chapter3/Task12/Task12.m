first = 1/7;
next = mod(5*first,1)
while floor(next*7) ~= floor(first*7)
    next = mod(5*next,1)
end
