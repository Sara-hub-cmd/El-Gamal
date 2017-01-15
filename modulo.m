function [ value ] = modulo( a,b )
%MODULO Return the result of a mod b

% We take the euclidean division of a and b
x = floor(a/b);
% We remove x times b from a to get the remainder
value = a - x*b;
end

