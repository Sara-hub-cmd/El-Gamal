function [ n ] = randomPrime( min, max )
%RANDOM_PRIME Function that returns a random prime in the interval
%[min:max]

x = 1;
while(~isPrime(x, 10))
    x = round(rand()*(max-min)+min);
end
n = x;
end