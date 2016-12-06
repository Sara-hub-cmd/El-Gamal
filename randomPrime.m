function [ n ] = randomPrime( min, max )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
x = 1;
while(~isPrime(x, 10))
    x = round(rand()*(max-min)+min);
end
n = x;
end

