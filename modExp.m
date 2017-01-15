function [ out ] = modExp( a,b,n )
%MODEXP Function that computes the modular exponentiation of a^b mod n

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