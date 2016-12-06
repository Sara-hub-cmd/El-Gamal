function [ out ] = gcd( a,b )
%GCD Function to compute the gcd of two numbers
%   We use the euclidean algorithm of the gcd

if b == 0
    out = a;
else
    temp = b;
    b = modulo(a,b);
    a = temp;
    out = gcd(a,b);
end

end

