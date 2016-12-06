function [ out ] = coprime( a,b )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    out = gcd(a,b) == 1;
end

