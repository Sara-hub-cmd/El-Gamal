function [ gamma,delta ] = signature( x, alpha, beta, p, a)
%SIGNATURE Function to sign using El-Gamal

k = round(rand()*(p-2)+1);

while(~coprime(k,p-1))
    k = round(rand()*(p-2)+1);
end

gamma = modExp(alpha,k,p);

delta = modulo((x-a.*gamma)*inverseMod(k,p-1),p-1);



end

