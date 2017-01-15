function [ p, alpha,a,beta ] = generateKeys()
%GENERATE_KEYS Function that generates the keys, private and public
p = randomPrime(100,1000);
alpha = generator(p);
a =  round(rand()*(p-2)+1);
beta = modExp(alpha,a,p);
end

