function [ out ] = modExp( a,b,n )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
initA = a;
if b == 0
    out = 1;
    return;
end

for i=2:b
    a = (initA*a);
    a = modulo(a,n);
end
out = a;
end