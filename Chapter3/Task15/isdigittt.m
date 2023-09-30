function [value] = isdigittt(character)
lchar = character(1);
if lchar>="0" && lchar <="9"
    value = 1;
else
    value = 0;
end