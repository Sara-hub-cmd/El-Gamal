function [ prime ] = isPrime( n, k )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    if(n == 2)
        prime = 1;
        return;
    end
    if(n <= 1 || modulo(n,2) == 0)
        prime = 0;
        return;
    end
    for i=1:k
        a = floor(rand()*(n-4)+2);
        if(millerTest(a, n))
            prime = 0;
            return;
        end
    end
    prime = 1;
end

