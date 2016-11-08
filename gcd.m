function [ out ] = gcd( a,b )
%GCD Function to compute the gcd of two numbers
%   We use the euclidean algorithm of the gcd

while b ~= 0
    temp = b;
%     TODO: use our own mod implementation
    b = mod(a,b);
    a = temp;
end

out = a;

end

