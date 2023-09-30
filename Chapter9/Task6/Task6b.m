x(1) = 1/5;
y(1) = 1/5;
for i = 2:20
    [x(i),y(i)] = map2(x(i-1),y(i-1));
    txt = sprintf('x(%d) is :%f | y(%d) is :%f', i-1,x(i-1),i-1,y(i-1));
    disp(txt);
    if (i==20)
           txt = sprintf('x(%d) is :%f | y(%d) is :%f', i,x(i),i,y(i));
           disp(txt);
    end
end
