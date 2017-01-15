function [ prime ] = isPrime( n, k )
%ISPRIME Returns 1 if n is prime, 0 otherwise, tested over k iterations
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

