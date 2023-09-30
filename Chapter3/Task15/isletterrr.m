function [value] = isletterrr(character)
lchar = lower(character(1));
if lchar>="a" && lchar <="z"
    value = 1;
else
    value = 0;
end