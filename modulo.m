function [ value ] = modulo( a,b )
%MODULO Return the result of a mod b
%   Detailed explanation goes here

x = floor(a/b);

value = a - x*b;
end

