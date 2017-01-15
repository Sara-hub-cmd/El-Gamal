function [ prime ] = isPrime( n, k )
%ISPRIME Returns 1 if n is prime, 0 otherwise, tested over k iterations
%The implementation for this function is the Miller-Rabin test
    if(n == 2)
        prime = 1;
        return;
    end
    if(n <= 1 || modulo(n,2) == 0)
        prime = 0;
        return;
    end
    %we made sure that n is odd, which is a condition for the algorithm to
    %work
    for i=1:k
        %a is randomly picked between [2, n-2]
        a = floor(rand()*(n-4)+2);
        %if the Miller test succeeds, n is not a prime
        if(millerTest(a, n))
            prime = 0;
            return;
        end
    end
    prime = 1;
end

