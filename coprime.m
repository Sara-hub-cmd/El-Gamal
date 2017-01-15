function [ out ] = coprime( a,b )
%COPRIME Function that returns 1 if a is coprime to b, 0 otherwise
    out = gcd(a,b) == 1;
end

